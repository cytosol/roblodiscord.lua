--execdiscord
local webhook = ""
local discord = {}

discord.WebhookGet = function()
  return webhook
end
function discord.SetWebhook(newweb)
  if newweb then webhook = newweb end
end
function discord.SendMessage(c, istts) -- Send a message with properties
  if game.HttpService.HttpEnabled == true then
    payloade = game.HttpService:JSONEncode({
        content = c;
        tts = false
    })
    game.HttpService:PostAsync(webhook, payloade)
  end
end
function discord.EditMessage(c)
  if game.HttpService.HttpEnabled == true then
    payload = game.HttpService:JSONEncode({
        content = c
    })
    game.HttpService:PostAsync(webhook, payload)
  end
end

return discord
