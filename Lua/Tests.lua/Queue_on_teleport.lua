getgenv().players = game:GetService'Players'
getgenv().host = players.LocalPlayer

warn('warn')

host.OnTeleport:Connect(function(file)
  if file == Enum.TeleportState.Started then
   syn.queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/Not-Kyle/Treelands/main/test.lua"))()')
  end
end)

host.Chatted:connect(function(chat)
    if (string.lower(chat) == '.r') then
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)
