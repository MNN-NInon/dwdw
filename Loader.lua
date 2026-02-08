-- =====================================================
-- N-HUB | LOADER
-- =====================================================

repeat task.wait() until game:IsLoaded()

-- ===== SETTINGS =====
local HUB_NAME = "N-HUB | My Tycoon Farm"
local VERSION  = "1.3.4b-r1"

-- 🔑 KEY SYSTEM
local VALID_KEY = "NONON123"

if not _G.KEY or _G.KEY ~= VALID_KEY then
	warn("❌ INVALID KEY")
	return
end

-- 🔔 NOTIFY LOAD
pcall(function()
	game.StarterGui:SetCore("SendNotification",{
		Title = HUB_NAME,
		Text = "Loading Core...",
		Duration = 3
	})
end)

-- =====================================================
-- 🔗 CORE LINK (เปลี่ยนลิงก์มึงตรงนี้)
-- =====================================================

local CORE_URL = "https://raw.githubusercontent.com/MNN-NInon/N-HUB/refs/heads/main/My%20Tycoon%20Farm.lua"

-- =====================================================
-- 🚀 LOAD CORE
-- =====================================================

local success,err = pcall(function()
	loadstring(game:HttpGet(CORE_URL))()
end)

if not success then
	warn("❌ LOAD CORE FAILED :",err)

	pcall(function()
		game.StarterGui:SetCore("SendNotification",{
			Title = HUB_NAME,
			Text = "Core Load Failed",
			Duration = 5
		})
	end)
else
	print("✅ CORE LOADED | VERSION :",VERSION)
end
