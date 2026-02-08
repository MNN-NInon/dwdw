-- =====================================================
-- N-HUB LOADER (Single Source Auth)
-- =====================================================

print("N-HUB LOADER START")

-- ===== CHECK KEY INPUT =====
if not _G.KEY then
    warn("❌ PLEASE INPUT KEY")
    return
end

-- ===== LOADER TOKEN =====
_G.NHUB_LOADER = true

-- ===== LOAD CORE =====
local CoreURL = "https://raw.githubusercontent.com/MNN-NInon/N-HUB/refs/heads/main/My%20Tycoon%20Farm.lua"

loadstring(game:HttpGet(CoreURL))()
