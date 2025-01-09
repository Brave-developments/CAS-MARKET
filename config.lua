
CAS = {}
CAS.Framework = "qb" -- Options: 'qb' or 'esx'
CAS.Inventory = 'DEFAULT' -- Choose from: 'ox_inventory', 'qb-inventory' (new version), 'ps-inventory', or 'DEFAULT'
CAS.RandomSpawn = false -- Add this to toggle random spawn behavior
CAS.PedCoords = { -- Updated to allow multiple spawn points for random spawn functionality
    vector4(467.51, -1189.23, 29.29, 269.08),
    vector4(470.00, -1190.00, 29.29, 90.00),
    vector4(465.00, -1188.00, 29.29, 180.00)
}
CAS.CompleteText = "Your order is complete! Please check your inventory."
CAS.PedHash = "csb_grove_str_dlr" -- Model hash for the ped
CAS.DrawText = "Open Market"
CAS.DrawDistance = 5.0 -- Maximum distance to show interaction prompt
CAS.Ped = nil -- This will store the created ped entity
CAS.DrawDistance = 3
CAS.Items = {
    ["weapon_pistol"] = {
        label = "Weapon Pistol",
        price = 100,
        imageSrc = "weapon_pistol",
        type = "weapon"
    },
    ["weapon_heavypistol"] = {
        label = "Heavy Pistol",
        price = 300,
        imageSrc = "weapon_heavypistol",
        type = "weapon"
    },
    ["lockpick"] = {
        label = "Lockpick",
        price = 300,
        imageSrc = "lockpick",
        type = "other"
    },
    ["armor"] = {
        label = "Armor",
        price = 100,
        imageSrc = "armor",
        type = "other"
    },
    ["bandage"] = {
        label = "Bandage",
        price = 300,
        imageSrc = "bandage",
        type = "other"
    },
    ["acetone"] = {
        label = "Acetone",
        price = 300,
        imageSrc = "acetone",
        type = "other"
    },
    ["cocaineleaf"] = {
        label = "Cocaine Leaf",
        price = 300,
        imageSrc = "cocaineleaf",
        type = "other"
    },
    ["binoculars"] = {
        label = "Binoculars",
        price = 300,
        imageSrc = "binoculars",
        type = "other"
    },
    ["cryptostick"] = {
        label = "Crypto Stick",
        price = 300,
        imageSrc = "cryptostick",
        type = "other"
    },
   

}
