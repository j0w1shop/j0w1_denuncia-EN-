ESX = exports["es_extended"]:getSharedObject()

local DiscordWebhook = Config.WebhookURL

RegisterServerEvent('denuncia:enviar')
AddEventHandler('denuncia:enviar', function(nombre, telefono, motivo)
    local embed = {
        {
            ["title"] = "**⚠️ New Report**",
        ["description"] = "Hello guys! I’m Manolo and here I leave you a complaint that just put:",
            ["color"] = 000080,  --Blue in decimal (0xFF0000 en hexadecimal)
            ["fields"] = {
                {
                    ["name"] = "**📛 nAme:**",
                    ["value"] = string.format("`%s`", nombre),
                    ["inline"] = true
                },
                {
                    ["name"] = "**📞 Telephone:**",
                    ["value"] = string.format("`%s`", telefono),
                    ["inline"] = true
                },
                {
                    ["name"] = "**📝 Motive of the report:**",
                    ["value"] = string.format("*%s*", motivo),
                    ["inline"] = false
                }
            },
            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
        }
    }

    PerformHttpRequest(DiscordWebhook, function(err, text, headers) end, 'POST', json.encode({embeds = embed}), { ['Content-Type'] = 'application/json' })
end)
