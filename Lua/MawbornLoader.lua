if getgenv().Importer then
    return
end

getgenv().Importer = true;

local Repository = {
    Domain = 'raw.githubusercontent.com',
    Owner = 'Not-Kyle',
    Name = 'mawborn.xml',
    Commit = 'db929f9',
}

local BaseUrl = string.format( 'https://%s/%s/%s/%s/', Repository.Domain, Repository.Owner, Repository.Name, Repository.Commit )
local Request = (syn and syn.request) or (http and http.request) or http_request or request;
local Cached = {};

local function RequestHttp(Url: string)
    local Domain = string.match(Url, '^https?://([^/]+)')
    if Domain ~= Repository.Domain then
        return nil, 'Domain not allowed: ' .. tostring(Domain)
    end

    if Request then
        local Success, Result = pcall(function()
            return Request({
                Url = Url,
                Method = 'GET'
            })
        end)

        if not Success then
            return nil, 'Request error: ' .. tostring(Result)
        end

        if not Result or Result.StatusCode ~= 200 then
            return nil, 'Request failed: ' .. (Result and Result.StatusCode or 'nil')
        end

        return Result.Body
    end

    local Success, Result = pcall(function()
        return game:HttpGet(Url)
    end)

    if not Success then
        return nil, Result
    end

    return Result
end

function Import(Path: string): any
    if Cached[Path] then
        return Cached[Path];
    end

    local Url = BaseUrl .. Path
    local Source, Error = RequestHttp(Url)

    if not Source then
        return warn('Import failed: ' .. tostring(Error))
    end

    local Chunk, CompileError = loadstring(Source, '@' .. Path)

    if not Chunk then
        return warn('Compile error: ' .. CompileError)
    end

    local Env = setmetatable({}, {__index = getfenv()});
    setfenv(Chunk, Env);

    local Result;
    local function HandleError(Error)
        warn(string.format('[%s]: %s\n%s', Path, tostring(Error), debug.traceback()))
        return false
    end

    local Success = xpcall(function()
        Result = Chunk()
    end, HandleError)

    if not Success then
        return
    end

    Cached[Path] = Result
    return Result
end

getgenv().Import = Import
getgenv().Mawborn = {
    Version = '0.9.97';
    Library = {};
};

Import('src/Source.lua');
