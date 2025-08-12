-- ===================================================
local CoreGui = game:GetService("CoreGui")
local Stats = game:GetService("Stats")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")  -- อย่าลืม require RunService ด้วย

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