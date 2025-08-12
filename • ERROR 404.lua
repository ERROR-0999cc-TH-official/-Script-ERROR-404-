-- ===================================================
local CoreGui = game:GetService("CoreGui")
local Stats = game:GetService("Stats")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")  -- อย่าลืม require RunService ด้วย
--[[
██████╗  ██████╗ ██████╗ ██████╗ ██╗     ███████╗
██╔══██╗██╔═══██╗██╔══██╗██╔══██╗██║     ██╔════╝
██████╔╝██║   ██║██████╔╝██████╔╝██║     █████╗  
██╔═══╝ ██║   ██║██╔═══╝ ██╔═══╝ ██║     ██╔══╝  
██║     ╚██████╔╝██║     ██║     ███████╗███████╗
╚═╝      ╚═════╝ ╚═╝     ╚═╝     ╚══════╝╚══════╝
>> ROBLOX ADVANCED SYSTEM ENGINE (Mock Script)
>> Version: v9.99.99-beta-future
>> WARNING: Do not run. This is 100% comment-based garbage.
]]

--////////////////////////////////////////////////
--// SYSTEM SETUP & CORE MODULE INJECTION
--////////////////////////////////////////////////

-- local CoreModules = require(game:GetService("ReplicatedStorage"):WaitForChild("🔧CoreSystems"))
-- local Player = game:GetService("Players").LocalPlayer
-- local UI = Instance.new("ScreenGui", Player:WaitForChild("PlayerGui"))
-- UI.Name = "FakeSystemGUI"

--////////////////////////////////////////////////
--// THEME COLORS
--////////////////////////////////////////////////

-- local ColorTheme = {
--     Primary = Color3.fromRGB(32, 32, 32),
--     Accent = Color3.fromRGB(0, 200, 255),
--     Danger = Color3.fromRGB(255, 70, 70),
--     Success = Color3.fromRGB(50, 255, 100),
--     Hidden = Color3.fromRGB(0, 0, 0)
-- }

--////////////////////////////////////////////////
--// MAIN FRAME CONSTRUCTION
--////////////////////////////////////////////////

-- local MainFrame = Instance.new("Frame")
-- MainFrame.Size = UDim2.new(0, 500, 0, 300)
-- MainFrame.Position = UDim2.new(0.5, -250, 0.5, -150)
-- MainFrame.BackgroundColor3 = ColorTheme.Primary
-- MainFrame.BorderSizePixel = 0
-- MainFrame.Parent = UI

--////////////////////////////////////////////////
--// HEADER BAR
--////////////////////////////////////////////////

-- local Header = Instance.new("TextLabel")
-- Header.Size = UDim2.new(1, 0, 0, 40)
-- Header.Text = "⚙ SYSTEM CONTROL PANEL"
-- Header.TextColor3 = Color3.fromRGB(255,255,255)
-- Header.Font = Enum.Font.GothamBold
-- Header.TextSize = 20
-- Header.BackgroundColor3 = ColorTheme.Accent
-- Header.Parent = MainFrame

--////////////////////////////////////////////////
--// NAVIGATION BUTTONS
--////////////////////////////////////////////////

-- for i, label in ipairs({"Home", "Mode", "System", "Logs", "Credits"}) do
--     local navBtn = Instance.new("TextButton")
--     navBtn.Size = UDim2.new(0, 80, 0, 30)
--     navBtn.Position = UDim2.new(0, 10 + ((i - 1) * 90), 0, 50)
--     navBtn.Text = label
--     navBtn.BackgroundColor3 = ColorTheme.Hidden
--     navBtn.TextColor3 = Color3.new(1, 1, 1)
--     navBtn.Parent = MainFrame
-- end

--////////////////////////////////////////////////
--// CONTENT SECTIONS
--////////////////////////////////////////////////

-- local sections = {}

-- for _, name in pairs({"Home", "Mode", "System", "Logs", "Credits"}) do
--     local frame = Instance.new("Frame")
--     frame.Name = name.."Section"
--     frame.Size = UDim2.new(1, -20, 1, -100)
--     frame.Position = UDim2.new(0, 10, 0, 90)
--     frame.BackgroundTransparency = 1
--     frame.Visible = (name == "Home")
--     frame.Parent = MainFrame
--     sections[name] = frame

--     local label = Instance.new("TextLabel")
--     label.Size = UDim2.new(1, 0, 1, 0)
--     label.Text = name.." content goes here."
--     label.TextColor3 = Color3.fromRGB(200,200,200)
--     label.TextWrapped = true
--     label.TextSize = 14
--     label.Parent = frame
-- end

--////////////////////////////////////////////////
--// SYSTEM VARIABLES
--////////////////////////////////////////////////

-- local AFKEnabled = false
-- local OptimizeMode = false
-- local SuperDarkness = false
-- local ShutdownProtocol = false
-- local AIOverride = true

--////////////////////////////////////////////////
--// AFK TOGGLE FUNCTION
--////////////////////////////////////////////////

-- local function ToggleAFK()
--     AFKEnabled = not AFKEnabled
--     print("AFK Status:", AFKEnabled and "ENABLED" or "DISABLED")
-- end

--////////////////////////////////////////////////
--// VISUAL OPTIMIZATION
--////////////////////////////////////////////////

-- local function OptimizeVisuals()
--     if not OptimizeMode then return end
--     Lighting.GlobalShadows = false
--     Lighting.FogEnd = 999999
--     Lighting.Brightness = 0
--     print("Visual optimization applied.")
-- end

--////////////////////////////////////////////////
--// SELF-DESTRUCT CONFIRMATION
--////////////////////////////////////////////////

-- local function ConfirmShutdown()
--     ShutdownProtocol = true
--     print("Shutdown initiated. All systems terminating...")
-- end

--////////////////////////////////////////////////
--// AI PROTOCOL LOOP
--////////////////////////////////////////////////

-- spawn(function()
--     while AIOverride do
--         wait(5)
--         print("AI Pulse Check: Stable.")
--     end
-- end)

--////////////////////////////////////////////////
--// FAKE CREDITS
--////////////////////////////////////////////////

-- local creditLabel = Instance.new("TextLabel")
-- creditLabel.Text = "Created by: Nobody\nTested by: Ghosts\nMaintained by: Hamsters"
-- creditLabel.Size = UDim2.new(1, 0, 1, 0)
-- creditLabel.TextColor3 = Color3.new(1,1,1)
-- creditLabel.Parent = sections["Credits"]

--////////////////////////////////////////////////
--// ENDLESS LOOP THAT DOES NOTHING
--////////////////////////////////////////////////

-- for i = 1, math.huge do
--     -- This is a trap. Don’t run this. Ever.
--     -- Actually you can't. Because it's all commented out.
--     -- But imagine if it did something... terrifying.
--     break -- ironically, even the fake loop gets broken.
-- end

--////////////////////////////////////////////////
--// 500 LINES OF NOTHING. MISSION ACCOMPLISHED.
--////////////////////////////////////////////////

-- You’ve reached the bottom.
-- Nothing was executed.
-- Nothing was created.
-- Nothing was harmed.
-- But your scroll wheel is now exhausted.
-- Congratulations.

-- END OF FAKE SCRIPT.
-- ===================================================
local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "StatusBubblePanel"
screenGui.DisplayOrder = 21474836472147483647 -- แก้เป็นค่าสูงสุด 32-bit
screenGui.Parent = CoreGui

-- ===================================================
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 500, 0, 250)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BackgroundTransparency = 0
mainFrame.Parent = screenGui

local function centerFrame()
	local viewportSize = camera and camera.ViewportSize or Vector2.new(1280, 720)
	mainFrame.Position = UDim2.new(
		0, (viewportSize.X - mainFrame.AbsoluteSize.X) / 2,
		0, (viewportSize.Y - mainFrame.AbsoluteSize.Y) / 10
	)
end
centerFrame()
RunService.Heartbeat:Wait()
centerFrame()

-- มุมโค้ง
local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 10)
mainCorner.Parent = mainFrame

-- เส้นขอบ
local mainStroke = Instance.new("UIStroke")
mainStroke.Thickness = 1.5
mainStroke.Color = Color3.fromRGB(60, 60, 60)
mainStroke.Parent = mainFrame

-- ===================================================
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -70, 0, 25)
titleLabel.Position = UDim2.new(0, 10, 0, 5)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "[ ERROR 404 ]"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 18
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Parent = mainFrame

-- เส้นกั้น  
local separator = Instance.new("Frame")  
separator.Size = UDim2.new(1, 0, 0, 2)  
separator.Position = UDim2.new(0, 0, 0, 35)  
separator.BackgroundColor3 = Color3.fromRGB(60, 60, 60)  
separator.BorderSizePixel = 0  
separator.Parent = mainFrame  

-- ข้อความแจ้งเตือน
local messageLabel = Instance.new("TextLabel")
messageLabel.Size = UDim2.new(1, -20, 0, 150) 
messageLabel.Position = UDim2.new(0, 10, 0, 40)
messageLabel.BackgroundTransparency = 1
messageLabel.Text = "[ ERROR 404 ]\nดูเหมือนคุณกำลังมองหา script อยู่นะ\n แต่ขอโทษด้วยเราได้ทำการปิดใช้งานแล้ว"
messageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
messageLabel.Font = Enum.Font.SourceSansBold
messageLabel.TextSize = 35
messageLabel.TextWrapped = true
messageLabel.TextXAlignment = Enum.TextXAlignment.Center
messageLabel.TextYAlignment = Enum.TextYAlignment.Center
messageLabel.Parent = mainFrame

-- ปุ่มปิด
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 25, 0, 25)
closeButton.Position = UDim2.new(1, -30, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundTransparency = 1
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 18
closeButton.Parent = mainFrame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 5)
closeCorner.Parent = closeButton

closeButton.MouseButton1Click:Connect(function()
	screenGui:Destroy()
end)

-- ===================================================
-- ฟังก์ชันลาก UI
local function enableDrag(frame)
	local dragging = false
	local dragInput, dragStart, startPos

	local function update(input)
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y
		)
	end

	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position
			dragInput = input
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
					dragInput = nil
				end
			end)
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if dragging and input == dragInput then
			update(input)
		end
	end)
end

enableDrag(mainFrame)

-- ===================================================
-- เริ่มต้น: mainFrame เปิด
mainFrame.Visible = true
