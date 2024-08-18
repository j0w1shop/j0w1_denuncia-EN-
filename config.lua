Config = {}

-- Usar ox_target (true) o marker (false)
Config.UseOxTarget = true

--MSG of the notifications (esx_notify)
Config.NotifyMSG = "Manolo has already written down the complaint and sent it. They will tell you something as soon as possible"
-- Configuración del NPC
Config.NPC = {
    model = "s_m_y_cop_01", -- Model of del the
    coords = vector3(441.5454, -978.8573, 29.6896), -- Coords del NPC
    heading = 180.0, --The rotation of NPC (Rotación NPC)
    Scenario = 'WORLD_HUMAN_CLIPBOARD'
}

-- Here you have to put the discord webhook to register
Config.WebhookURL = "https://discord.com/api/webhooks/1274492221965471754/_wmMUDwNUcGLl_X6H3YOhplMtD5hcUdvEuV-vMbOq-y-ZzJDXO6z1g3XrjlAonsi2bwS" -- Your discord webwook.

