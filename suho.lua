-- Cek informasi target (termasuk perangkat)
local targetInfo = gg.getTargetInfo()
local currentDeviceId = targetInfo and targetInfo.device or "Unknown Device"

-- Ganti "Unknown Device" dengan ID atau deskripsi default jika `getTargetInfo()` tidak tersedia.

-- Deklarasi untuk teks modifikasi dengan tema SuhooFight
local inputUsername = " OWNER "  -- Ganti dengan cara untuk mendapatkan username, jika ada
local SuhoFight = [[
      🌟 SCRIPT BY SUHOOFIGHT 🌟

           ┌────────⋆⋅☆⋅⋆────────┐

            👤Username  : ]] .. inputUsername .. [[
             
             
             📱Device     : ]] .. currentDeviceId .. [[
             
             
             📅 Date      : ]] .. os.date("%Y/%m/%d") .. [[
             
             
             ⏰ Time      : ]] .. os.date("%H:%M:%S") .. [[
             
             
            ⏳ Expired   : 2025/01/01

           └────────⋆⋅☆⋅⋆────────┘
]]

-- Menampilkan alert dengan header SuhooFight
gg.alert(SuhoFight)

gg.setVisible(true)
if os.date("%Y%m%d") >= "20250102" then 
    gg.alert("Script Has Expired⚠️\nContact Script Owner Via Discord")
    os.exit() 
end

gg.alert("Before selecting a menu, make sure you are in Stat Player, and make sure you read the notes first so that no errors occur\n\nHave Fun😈")

gg.showUiButton()

-- Fungsi Fast Reload
function fastReload()
  gg.setVisible(false)
  gg.toast("Please wait until Done")
  gg.sleep(1000)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(".035", gg.TYPE_FLOAT)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Fast Reload[✓]")
  gg.sleep(1000)
  gg.setVisible(true)
end

-- Fungsi No Weight Run
function noWeightRun()
  gg.setVisible(false)
  gg.toast("Please wait until Done")
  gg.sleep(1000)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(".03", gg.TYPE_FLOAT)
  gg.getResults(100)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("No Weight Run[✓]")
  gg.sleep(1000)
  gg.setVisible(true)
end

-- Fungsi Cash Per Match
function cashPerMatch()
  local choice = gg.choice(
    {"X 50", "X 100", "Back"},
    nil,
    "Just turn on one of them!"
  )
  
  if choice == 1 then
    gg.setVisible(false)
    gg.toast("cashPerMatch X 50")
    gg.sleep(1000)
    gg.toast("Please wait until Done")
    gg.sleep(1000)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber(".125", gg.TYPE_FLOAT)
    gg.getResults(700)
    gg.editAll("50", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Cash per match X 50[✓]")
    gg.sleep(1000)
    gg.setVisible(true)
  
  elseif choice == 2 then
    gg.setVisible(false)
    gg.toast("cashPerMatch X 100")
    gg.sleep(1000)
    gg.toast("Please wait until Done")
    gg.sleep(1000)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber(".125", gg.TYPE_FLOAT)
    gg.getResults(700)
    gg.editAll("100", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Cash per match X 100[✓]")
    gg.sleep(1000)
    gg.setVisible(true)
  
  elseif choice == 3 then
    return menuUtama()-- Keluar dari fungsi untuk kembali ke menu utama
  
  else
    gg.toast("No option selected ⚠️")
  end
end

-- Fungsi Droprate & Ammo
function droprateAmmo()
  local choice = gg.choice(
    {"Drop rate Only%", "Drop rate and Ammo", "Back"},
    nil,
    "Just turn on one of them!"
  )

  if choice == 1 then
    gg.setVisible(false)
    gg.toast("Droprate only%")
    gg.sleep(1000)
    gg.toast("Please wait until Done")
    gg.sleep(1000)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber(".01", gg.TYPE_FLOAT)
    gg.getResults(100)
    gg.editAll("1", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setVisible(true)
  
  elseif choice == 2 then
    gg.setVisible(false)
    gg.toast("Droprate and ammo")
    gg.sleep(1000)
    gg.toast("Please wait until Done")
    gg.sleep(1000)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber(".01", gg.TYPE_FLOAT)
    gg.getResults(100)
    gg.editAll("1", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber(".15;100", gg.TYPE_FLOAT)
    gg.getResults(100)
    gg.editAll("100000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Droprate dan ammo[✓]")
    gg.sleep(1000)
    gg.setVisible(true)
  
  elseif choice == 3 then
    return menuUtama()-- Keluar dari fungsi untuk kembali ke menu utama
  
  else
    gg.toast("No option selected ⚠️")
  end
end
  

-- Fungsi Rate Of Fire
function rateOfFire()
  gg.setVisible(false)
  gg.toast("Please wait until Done")
  gg.sleep(1000)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber(".01", gg.TYPE_FLOAT)
  gg.getResults(100)
  gg.editAll("0.21", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Rate of fire[✓]")
  gg.sleep(1000)
  gg.setVisible(true)
end

-- Fungsi Crit Chance & Damage
function critChanceDamage()
  gg.setVisible(false)
  gg.toast("Please wait until Done")
  gg.sleep(1000)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(".04", gg.TYPE_FLOAT)
  gg.getResults(500)
  gg.editAll("1000000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Crit chance dan damage[✓]")
  gg.sleep(1000)
  gg.setVisible(true)
end

-- Fungsi God Armor
function godArmor()
  gg.setVisible(false)
  gg.toast("Please wait until Done")
  gg.sleep(1000)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(".07", gg.TYPE_FLOAT)
  gg.getResults(100)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("God Armor[✓]")
  gg.sleep(1000)
  gg.setVisible(true)
end

-- Fungsi Regen Health
function regenHealth()
  gg.setVisible(false)
  gg.toast("Please wait until Done")
  gg.sleep(1000)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.5;300", gg.TYPE_FLOAT)
  gg.getResults(500)
  gg.refineNumber("2.5", gg.TYPE_FLOAT)
  gg.getResults(100)
  gg.editAll("10000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Regen health[✓]")
  gg.sleep(1000)
  gg.setVisible(true)
end

-- Fungsi Regen Energy
function unliorregenEnergy()
  local choice = gg.choice( -- Ganti `==` dengan `=`
    {"Regen Energy", "Unlimited Energy (Not Safe)", "Back"}, nil,
    "Just Turn on one of them"
  )
  
  if choice == 1 then
    gg.setVisible(false)
    gg.toast("Please wait until Done")
    gg.sleep(1000)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("0.25;10", gg.TYPE_FLOAT)
    gg.getResults(500)
    gg.refineNumber("0.25", gg.TYPE_FLOAT)
    gg.getResults(100)
    gg.editAll("10000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Regen energy[✓]")
    gg.sleep(1000)
    gg.setVisible(true)
  
  elseif choice == 2 then
    gg.setVisible(false)
    gg.clearResults()
    gg.clearList()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("4656722015804719104", gg.TYPE_QWORD)
    gg.getResults(5)
    gg.editAll("4656722014701092864", gg.TYPE_QWORD)
    gg.clearResults()
    gg.clearList()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("4510805389598523392", gg.TYPE_QWORD)
    gg.getResults(5)
    gg.editAll("4510805388492275712", gg.TYPE_QWORD)
    gg.clearResults()
    gg.clearList()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("4884153796994007040", gg.TYPE_QWORD)
    gg.getResults(5)
    gg.editAll("4884153795883302912", gg.TYPE_QWORD)
    gg.clearResults()
    gg.clearList()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("5024750547868057600", gg.TYPE_QWORD)
    gg.getResults(5)
    gg.editAll("5024750546750275584", gg.TYPE_QWORD)
    gg.clearResults()
    gg.clearList()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("10;0;0;0.5;0;1;0;0.05000000075;0;200", gg.TYPE_FLOAT)
    gg.getResults(10)
    gg.refineNumber("10", gg.TYPE_FLOAT)
    gg.getResults(1)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Unlimited Energy[✓]")
    gg.sleep(1000)
    gg.setVisible(true)
  
  elseif choice == 3 then
    return menuUtama() -- Keluar dari fungsi untuk kembali ke menu utama
  
  else
    gg.toast("No option selected ⚠️")
  end
end
    
-- Fungsi No CD KnockDown
function noCdKnockDown()
  gg.setVisible(false)
  gg.toast("Please wait until Done")
  gg.sleep(1000)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber(".10;10", gg.TYPE_FLOAT)
  gg.getResults(100)
  gg.refineNumber(".10", gg.TYPE_FLOAT)
  gg.getResults(100)
  gg.editAll("10000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("No CD KnockDown[✓]")
  gg.sleep(1000)
  gg.setVisible(true)
end

function freeShop()
  gg.setVisible(false)
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("2500;40000;1000;15000;500;7500;250;3500", gg.TYPE_DWORD)
  gg.getResults(10)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Free Shop Faction[✓]")
  gg.sleep(1000)
  gg.setVisible(true)
end

function skillCharacter()
  local choice = gg.choice(
    {"Medic (Coming Soon)", "Assault", "Heavy (Coming Soon)", "Back"}, nil,
    "Choose one that suits your current class"
  )

  if choice == 1 then
    gg.setVisible(false)
    gg.alert("Coming Soon 💪😊")
    return menuUtama() -- Kembali ke menu utama
  
  elseif choice == 2 then
    local subChoice = gg.choice(
      {"No Cd Skill Adrenalin", "Back"}, nil,
      "Select an option"
    )
    if subChoice == 1 then
      gg.setVisible(false)
      gg.clearResults()
      gg.clearList()
      gg.setRanges(gg.REGION_C_ALLOC)
      gg.searchNumber("4503599628471500800", gg.TYPE_QWORD)
      gg.getResults(1)
      gg.editAll("4503599627370496000", gg.TYPE_QWORD)
      gg.clearResults()
      gg.toast("No Cd Skill Adrenalin[✓]")
      gg.sleep(1000)
      gg.setVisible(true)
    elseif subChoice == 2 then
      return menuUtama() -- Kembali ke menu utama
    else
      gg.toast("No option selected ⚠️")
    end

  elseif choice == 3 then
    gg.setVisible(false)
    gg.alert("Coming Soon 💪😊")
    gg.setVisible(true)
    return menuUtama() -- Kembali ke menu utama

  elseif choice == 4 then
    return menuUtama() -- Pilihan "Back", kembali ke menu utama
  
  else
    gg.toast("No option selected ⚠️")
  end
end

-- Fungsi Note
function showNote()
  local choice = gg.choice(
    {"Note 1📑", "Note 2📑", "Back"},
    nil,
    "Read in the order of the numbers provided"
  )

  if choice == 1 then
    gg.setVisible(false)
    gg.alert("Place at least 1 stat for the hack to work, because if the stat is 0 the hack will not work")
    gg.setVisible(true)
    return showNote() -- Kembali ke menu utama setelah menampilkan alert

  elseif choice == 2 then
    gg.setVisible(false)
    gg.alert("Sometimes error, To fix this Go back to the main menu then go back to Stat for Hacking and if it still gives an error/cannot be read, just repeat it over and over again\nSubscribe For Update Script\n\nHave Fun and Destroy 😈")
    gg.setVisible(true)
    return showNote() -- Kembali ke menu utama setelah menampilkan alert

  elseif choice == 3 then
    return menuUtama() -- Kembali ke menu utama tanpa aksi tambahan

  else
    gg.toast("No option selected ⚠️")
  end
end

-- Fungsi untuk keluar dari skrip
function exitScript()
  -- Menyembunyikan UI sebelum keluar
  gg.setVisible(false)

  -- Mencetak informasi ke konsol
  print("𝙈𝙖𝙞𝙣 𝙄𝙣𝙛𝙤 \n\n𝘾𝙧𝙚𝙖𝙩𝙤𝙧 : ❚█══SuhoFight══█❚")
  print("𝙇𝙤𝙜 𝘽𝙮 : 𝙎𝙪𝙝𝙤𝙤𝙁𝙞𝙜𝙝𝙩")
  print("𝙑𝙚𝙧𝙨𝙞𝙤𝙣 : 3.0")  -- Versi skrip Anda
  print("𝙎𝙞𝙣𝙘𝙚 : 01 / 12 / 2024")
  print("𝙇𝙖𝙨𝙩 𝙐𝙥𝙙𝙖𝙩𝙚 : 09 / 12 / 2024")
  print("𝙑𝙚𝙧𝙨𝙞𝙤𝙣 𝙂𝙖𝙢𝙚𝙂𝙪𝙖𝙧𝙙𝙞𝙖𝙣 : " .. gg.VERSION)  -- Menampilkan versi GameGuardian secara otomatis
  print("𝙎𝙤𝙨𝙞𝙖𝙡 𝙈𝙚𝙙𝙞𝙖 : Discord : @_suhooo / Insta : @junchrooo")
  print("🇮🇩𝙎𝙐𝘽𝙎𝘾𝙍𝙄𝘽𝙀 𝙈𝙔 𝘾𝙃𝘼𝙉𝙉𝙀𝙇 : 𝙅𝙪𝙣𝙋𝙚𝙞𝙞𝙞🇮🇩")
  -- Lua script with ASCII art template

-- Function to print ASCII art template
function printAsciiArt()
    local art = [[
..... ▄▄ ▄▄
......▄▌▒▒▀▒▒▐▄
.... ▐▒▒▒▒▒▒▒▒▒▌
... ▐▒▒▒▒▒▒▒▒▒▒▒▌
....▐▒▒▒▒▒▒▒▒▒▒▒▌
....▐▀▄▄▄▄▄▄▄▄▄▀▌
....▐░░░░░░░░░░░▌
....▐░░░░░░░░░░░▌
....▐░░░░░░░░░░░▌
....▐░░░░░░░░░░░▌
....▐░░░░░░░░░░░▌
....▐░░░░░░░░░░░▌
....▐░░░░░░░░░░░▌
....▐░░░░░░░░░░░▌
....▐░░░░░░░░░░░▌
....▐░░░░░░░░░░░▌
....▐░░░░░░░░░░░▌
....▐░░░░░░░░░░░▌
...▄█▓░░░░░░░░░▓█▄
..▄▀░░░░░░░░░░░░░ ▀▄
.▐░░░░░░░▀▄▒▄▀░░░░░░▌
▐░░░░░░░▒▒▐▒▒░░░░░░░▌
▐▒░░░░░▒▒▒▐▒▒▒░░░░░▒▌
.▀▄▒▒▒▒▒▄▀▒▀▄▒▒▒▒▒▄▀
.. ▀▀▀▀▀ ▀▀▀▀▀
    ]]
    
    -- Print the ASCII art
    print(art)
end

-- Call the function to display the ASCII art
printAsciiArt()

  -- Konfirmasi keluar skrip
  local choice = gg.alert("Are you sure you want to exit the script?", "[✓] [𝗬𝗲𝘀]", "[✗] [𝗡𝗼]")

  if choice == 1 then
    gg.toast("Exiting script [✓]")
    os.exit() -- Keluar dari skrip
  elseif choice == 2 then
    gg.toast("You're Back Into The Script 😊")
  else
    gg.toast("No options selected ⚠️")
  end
end

-- Variabel kontrol untuk status fitur
local featureStatus = {
  fastReload = false,
  noWeightRun = false,
  cashPerMatch = false,
  droprateAmmo = false,
  rateOfFire = false,
  critChanceDamage = false,
  godArmor = false,
  regenHealth = false,
  unliorregenEnergy = false,
  noCdKnockDown = false,
  freeShop = false,
  skillCharacter = false,
}

-- Modifikasi fungsi untuk menu On/Off
local function toggleFeature(featureName, featureFunction)
  featureStatus[featureName] = not featureStatus[featureName]
  gg.toast(featureName .. (featureStatus[featureName] and " Enabled [✓]" or " Disabled [✗]"))
  if featureStatus[featureName] then
    featureFunction()
  end
end

-- Menu Utama
function menuUtama()
  local menu = gg.choice(
    {
      (featureStatus.fastReload and "[✓] " or "[✗] ") .. "Fast Reload 🧤",
      (featureStatus.noWeightRun and "[✓] " or "[✗] ") .. "No Weight Run 🏃",
      (featureStatus.cashPerMatch and "[✓] " or "[✗] ") .. "Cash Per Match 💰",
      (featureStatus.droprateAmmo and "[✓] " or "[✗] ") .. "Droprate & Ammo 🔫",
      (featureStatus.rateOfFire and "[✓] " or "[✗] ") .. "Rate Of Fire 🔫",
      (featureStatus.critChanceDamage and "[✓] " or "[✗] ") .. "CritChance & CritDamage 😈",
      (featureStatus.godArmor and "[✓] " or "[✗] ") .. "God Armor 🛡️",
      (featureStatus.regenHealth and "[✓] " or "[✗] ") .. "Regen Health 💉",
      (featureStatus.unliorregenEnergy and "[✓] " or "[✗] ") .. "Unli or Regen Energy ⚡",
      (featureStatus.noCdKnockDown and "[✓] " or "[✗] ") .. "No CD KnockDown ⌛",
      (featureStatus.freeShop and "[✓] " or "[✗] ") .. "Free Shop Faction💵",
      "Skill Character 👤",
      "Note 📜",
      "Exit"
    },
    nil,
    "Game : SAS ZOMBIE ASSAULT 4\nVersion : 2.2\nSelect a menu:"
  )

  if menu == nil then
    gg.toast("No menu selected ⚠️")
  else
    if menu == 1 then toggleFeature("fastReload", fastReload) end
    if menu == 2 then toggleFeature("noWeightRun", noWeightRun) end
    if menu == 3 then toggleFeature("cashPerMatch", cashPerMatch) end
    if menu == 4 then toggleFeature("droprateAmmo", droprateAmmo) end
    if menu == 5 then toggleFeature("rateOfFire", rateOfFire) end
    if menu == 6 then toggleFeature("critChanceDamage", critChanceDamage) end
    if menu == 7 then toggleFeature("godArmor", godArmor) end
    if menu == 8 then toggleFeature("regenHealth", regenHealth) end
    if menu == 9 then toggleFeature("unliorregenEnergy", unliorregenEnergy) end
    if menu == 10 then toggleFeature("noCdKnockDown", noCdKnockDown) end
    if menu == 11 then toggleFeature("freeShop", freeShop) end
    if menu == 12 then skillCharacter() end
    if menu == 13 then showNote() end -- Memanggil fungsi showNote
    if menu == 14 then exitScript() end
  end
end

-- Variabel kontrol untuk menghentikan loop
isRunning = true

-- Loop Utama
while isRunning do
  if gg.isClickedUiButton() then
    gg.setVisible(false) -- Menyembunyikan GameGuardian sebelum menu
    menuUtama()
  end
  gg.sleep(100)
end
