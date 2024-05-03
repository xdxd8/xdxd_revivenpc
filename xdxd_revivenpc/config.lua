Config                      = {}
Config.Locale               = GetConvar('esx:locale', 'en') -- en / hu
Config.pedModel             = `s_m_m_doctor_01` -- PED MODEL
Config.enableBlips          = true -- true / false
Config.blipSprite           = 280
Config.blipColor            = 2
Config.drawDistance         = 20 -- Changes the distance at which the ped spawns || Módosítja azt a távolságot, amelyen belül a ped spawnol
Config.revivePrice          = 3000 -- Revive price || Revive ára
Config.healPrice            = 500 -- Heal price || Heal ára
Config.maxLife              = 200 -- Max life || Max élet
Config.allowBankPayment     = true -- Allows bank payment || Engedélyezi a bank-os fizetést || true/false
Config.debug                = true -- Allows debug || Debug engedélyezése
Config.duty                 = true -- If true peds will only spawn when there is less EMS than indicated in Config.maxEMS || Ha a Config.maxEMS-nél több mentős elérhető akkor az NPC eltűnik || true/false
Config.maxEMS               = 1 -- How many EMS should be conected to disable the peds (only works if Config.duty is true) || Mennyi legyen a maximum ems aminél eltűnik az NPC ha be van kapcsolva a Config.duty
Config.pedMedics            = {
    -- Add as many as you want || Adjon hozzá annyit, amennyit akar
    -- vector4(x, y, z, heading)
    vector4(307.3178, -583.7087, 42.2841, 166.9109),
    vector4(1827.3035, 3679.7698, 33.2710, 302.8912)
}