if getgenv().Importer then
    return;
end

getgenv().Importer = true;

local Cloneref = cloneref;
local UrlRequest = (syn and syn.request) or (http and http.request) or http_request or request

local Format, Tostring = string.format, tostring;
local SetMetatable, Loadstring, Pcall, Xpcall, Setfenv, Getfenv = setmetatable, loadstring, pcall, xpcall, setfenv, getfenv;
local Warn, Typeof = warn, typeof;
local Traceback = debug.traceback;
local RawGame = game;

local RunGame, GameResult = Pcall(Cloneref, RawGame);
local Game = (RunGame and Typeof(GameResult) == 'Instance') and GameResult or RawGame;

local Repository = {
    Domain = 'raw.githubusercontent.com',
    Owner = 'Not-Kyle',
    Name = 'mawborn.xml',
    Commit = 'ec278a',
}

local BaseUrl = Format('https://%s/%s/%s/%s/', Repository.Domain, Repository.Owner, Repository.Name, Repository.Commit)
local Cache = {};

local function RequestHttp(Url)
    local Success, Result = Pcall(function()
        return UrlRequest({
            Url = Url,
            Method = 'GET',
            Headers = {['Cache-Control'] = 'no-cache'}
        })
    end)

    if Success and Result and Result.StatusCode == 200 then
        return Result.Body
    end
    
    -- Fallback to HttpGet if request fails or doesn't exist
    local GetSuccess, GetResult = Pcall(Game.HttpGet, Game, Url)
    if GetSuccess then return GetResult end
    
    return nil, (Result and Result.StatusCode or 'Unknown Error')
end

local Version, Error = RequestHttp('https://raw.githubusercontent.com/Not-Kyle/mawborn.xml/master/Version.json')

if not Version then
    Warn('HTTP request failed: ' .. Tostring(Error));
end

local function Import(Path: string)
    if Cache[Path] then return Cache[Path] end;

    local Url = BaseUrl .. Path;
    local Success, Source, Error = Pcall(RequestHttp, Url);

    if not Success or not Source then
        return nil, 'Importer failed: ' .. Tostring(Error or Source);
    end

    local Chunk, CompileError = Loadstring(Source, '=' .. Path);
    if not Chunk then
        Warn(Format('[Mawborn.xml]: Syntax Error in %s (%s)', Path, Tostring(CompileError)));
        return nil;
    end

    local Proxy = SetMetatable({ -- Creating a sandbox
        script = {Name = Path},
        MawbornVersion = Version,
        Import = function(PATH) return Import(PATH) end
    }, {
        __index = Getfenv(),
        __metatable = 'Locked',
    })

    Setfenv(Chunk, Proxy);

    local function SendHandlerError(Err)
        return Format('Error in [%s]: %s \nTraceback: %s', Path, Tostring(Err), Traceback());
    end

    local Result;
    local HandlerSuccess, HandlerError = Xpcall(function() -- xpcall for custom error handling
        Result = Chunk();
    end, SendHandlerError);

    if not HandlerSuccess then
        Warn(HandlerError);
        return nil;
    end

    Cache[Path] = Result or true;
    return Cache[Path];
end

getgenv().Mawborn = {
    Version = '0.9.98';
    Library = {};
};

Import('src/Source.lua');

return Import;
