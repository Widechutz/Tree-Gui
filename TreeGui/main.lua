if SaveMode then
    getgenv().SecureMode = true
end

local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()

local Window = ArrayField:CreateWindow({
    Name = "Tree Gui",
    LoadingTitle = "Loading Tree Gui",
    LoadingSubtitle = "🌲",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "TreeGui"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Tree Gui",
       Subtitle = "Tree Key System",
       Note = "I don't know, Is ist really that hard to guess?",
       FileName = "TreeKEYS", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
       Actions = {
             [1] = {
                 Text = 'Hint, Click to copy the key link',
                 OnPress = function()
                        setClipboard("https://de.wikipedia.org/wiki/Baum")
                 end,
                 }
             },
       Key = {"Baum"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 Window:Prompt({
   Title = 'Tree Gui',
   SubTitle = 'Wellcome',
   Content = 'Wellcome to Tree Gui. Hope you enjoy',
   Actions = {
       Accept = {
           Name = 'Dive in',
           Callback = function()
               print('Wellcome to Tree Guy')
           end,
       }
   }
})

local Tab = Window:CreateTab("Executer", 18267128591)