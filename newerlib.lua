
local Library = {}

function Library:Create(name,theme)
if theme == "Sentinel" then
	CustomTheme = {
	Main = Color3.fromRGB(34, 34, 34),
	Top = Color3.fromRGB(34, 34, 34),
	Text = Color3.fromRGB(119, 209, 138),
	Elements = Color3.fromRGB(230, 35, 69),
	TextBox = Color3.fromRGB(125, 18, 38)
}
elseif theme == "Dark" then
	CustomTheme = {
	Main = Color3.fromRGB(25,25,25),
	Top = Color3.fromRGB(40,40,40),
	Text = Color3.fromRGB(255, 255, 255),
	Elements = Color3.fromRGB(60, 60, 60),
	TextBox = Color3.fromRGB(100,100,100)
}
elseif theme == "FNF" then
	CustomTheme = {
	Main = Color3.fromRGB(134,160,173),
	Top = Color3.fromRGB(17,200,5),
	Text = Color3.fromRGB(9,249,254),      
	Elements = Color3.fromRGB(251,60,67),
	TextBox = Color3.fromRGB(190,75,152),
}
elseif theme == "Red" then
	CustomTheme = {
	Main = Color3.fromRGB(112, 37, 37),
	Top = Color3.fromRGB(145, 44, 44),
	Text = Color3.fromRGB(255,255,255),      
	Elements = Color3.fromRGB(189, 100, 94),
	TextBox = Color3.fromRGB(255, 173, 173),
}
end

	local ScreenGui = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local TopBar = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local Exit = Instance.new("ImageButton")
	local TopBarUICorner = Instance.new("UICorner")
	local MainUICorner = Instance.new("UICorner")
	local TabsFolder = Instance.new("Folder")	
	local TabsFrame = Instance.new("Frame")
	local TabsUICorner = Instance.new("UICorner")
	local Tabs = Instance.new("ScrollingFrame")
	local GridLayoutTabs = Instance.new("UIGridLayout")
	local Shadow = Instance.new("ImageLabel")
	

	ScreenGui.Name = "GelatekUI"
	pcall(function()
	if gethui then
	ScreenGui.Parent = gethui()
	else
	ScreenGui.Parent = game.CoreGui
	end
	end)

	Main.Name = "Main"
	Main.Parent = ScreenGui
	Main.BackgroundColor3 = CustomTheme.Main or Color3.fromRGB(34, 34, 34)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.296351433, 0, 0.291228086, 0)
	Main.Size = UDim2.new(0, 462, 0, 330)

	TopBar.Name = "TopBar"
	TopBar.Parent = Main
	TopBar.BackgroundColor3 = CustomTheme.Top or Color3.fromRGB(22, 22, 22)
	TopBar.BorderSizePixel = 0
	TopBar.Size = UDim2.new(0, 462, 0, 29)
	TopBar.ZIndex = 2

	Title.Name = "Title"
	Title.Parent = TopBar
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0, 0, 0.0434780791, 0)
	Title.Size = UDim2.new(0, 147, 0, 26)
	Title.ZIndex = 2
	Title.Font = Enum.Font.Gotham
	Title.Text = name
	Title.TextColor3 = CustomTheme.Text or Color3.fromRGB(119, 209, 138)
	Title.TextSize = 14.000
	Title.TextTransparency = 0.200

	Exit.Name = "Exit"
	Exit.Parent = TopBar
	Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Exit.BackgroundTransparency = 1.000
	Exit.Position = UDim2.new(0.941470981, 0, 0.1109998, 0)
	Exit.Size = UDim2.new(0, 21, 0, 21)
	Exit.ZIndex = 2
	Exit.Image = "http://www.roblox.com/asset/?id=6035047409"
	Exit.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
	end)
	TopBarUICorner.CornerRadius = UDim.new(0.15, 1)
	TopBarUICorner.Name = "TopBarUICorner"
	TopBarUICorner.Parent = TopBar

	MainUICorner.CornerRadius = UDim.new(0.011, 1)
	MainUICorner.Name = "MainUICorner"
	MainUICorner.Parent = Main

	TabsFolder.Name = "TabsFolder"
	TabsFolder.Parent = Main

	TabsFrame.Name = "TabsFrame"
	TabsFrame.Parent = Main
	TabsFrame.BackgroundColor3 = CustomTheme.Main or Color3.fromRGB(22, 22, 22)
	TabsFrame.ClipsDescendants = true
	TabsFrame.Position = UDim2.new(0, 0, 1.0181818, 0)
	TabsFrame.Size = UDim2.new(0, 462, 0, 34)

	TabsUICorner.CornerRadius = UDim.new(0.100000001, 1)
	TabsUICorner.Name = "TabsUICorner"
	TabsUICorner.Parent = TabsFrame

	Tabs.Name = "Tabs"
	Tabs.Parent = TabsFrame
	Tabs.Active = true
	Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tabs.BackgroundTransparency = 1.000
	Tabs.BorderSizePixel = 0
	Tabs.ClipsDescendants = false
	Tabs.Position = UDim2.new(0.00999999978, 0, 0, 0)
	Tabs.Size = UDim2.new(0, 444, 0, 34)
	Tabs.CanvasSize = UDim2.new(2, 0, 0, 0)
	Tabs.ScrollBarThickness = 0

	Shadow.Name = "Shadow"
	Shadow.Parent = Main
	Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow.BackgroundTransparency = 1.000
	Shadow.Position = UDim2.new(-0.0541125536, 0, -0.0545454547, 0)
	Shadow.Size = UDim2.new(0, 512, 0, 366)
	Shadow.Image = "rbxassetid://5554236805"
	Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	
	GridLayoutTabs.Name = "GridLayoutTabs"
	GridLayoutTabs.Parent = Tabs
	GridLayoutTabs.SortOrder = Enum.SortOrder.LayoutOrder
	GridLayoutTabs.VerticalAlignment = Enum.VerticalAlignment.Center
	GridLayoutTabs.CellSize = UDim2.new(0, 125, 0, 25)
	
			pcall(function()
			function dragify(Frame)
				dragToggle = nil
				dragSpeed = .25 -- You can edit this.
				dragInput = nil
				dragStart = nil
				dragPos = nil

				function updateInput(input)
					Delta = input.Position - dragStart
					Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
					game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
				end

				Frame.InputBegan:Connect(function(input)
					if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
						dragToggle = true
						dragStart = input.Position
						startPos = Frame.Position
						input.Changed:Connect(function()
							if (input.UserInputState == Enum.UserInputState.End) then
								dragToggle = false
							end
						end)
					end
				end)

				Frame.InputChanged:Connect(function(input)
					if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
						dragInput = input
					end
				end)

				game:GetService("UserInputService").InputChanged:Connect(function(input)
					if (input == dragInput and dragToggle) then
						updateInput(input)
					end
				end)
			end
		end)
		dragify(Main)
		
	local Elements = {}
		function Elements:MakeTab(name)
		local TabButton = Instance.new("TextButton")
		local TabButtonUICorner = Instance.new("UICorner")
		local ListLayoutTabs = Instance.new("UIListLayout")
		local TabUiCorner = Instance.new("UICorner")
		local Tab = Instance.new("ScrollingFrame")
		
		Tab.Visible = false
		Tab.Name = name
		Tab.Parent = TabsFolder
		Tab.Active = true
		Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tab.BackgroundTransparency = 1.000
		Tab.BorderSizePixel = 0
		Tab.Position = UDim2.new(0, 0, 0.109090909, 0)
		Tab.Size = UDim2.new(0, 462, 0, 294)
		Tab.ZIndex = 2
		Tab.ScrollBarThickness = 0

		TabButton.Name = "TabButton1"
		TabButton.Parent = Tabs
		TabButton.BackgroundColor3 = CustomTheme.Elements or Color3.fromRGB(230, 35, 69)
		TabButton.ClipsDescendants = true
		TabButton.Position = UDim2.new(0, 0, 0.308823526, 0)
		TabButton.Size = UDim2.new(0, 125, 0, 36)
		TabButton.Font = Enum.Font.Gotham
		TabButton.Text = name
		TabButton.TextColor3 = CustomTheme.Text or Color3.fromRGB(119, 209, 138)
		TabButton.TextSize = 14.000
		TabButton.TextTransparency = 0.200

		TabButtonUICorner.CornerRadius = UDim.new(0.100000001, 1)
		TabButtonUICorner.Name = "TabButtonUICorner"
		TabButtonUICorner.Parent = TabButton
		ListLayoutTabs.Name = "ListLayoutTabs"
		ListLayoutTabs.Parent = Tab
		ListLayoutTabs.HorizontalAlignment = Enum.HorizontalAlignment.Center
		ListLayoutTabs.SortOrder = Enum.SortOrder.LayoutOrder
		ListLayoutTabs.Padding = UDim.new(0, 5)

		TabUiCorner.CornerRadius = UDim.new(0.300000012, 1)
		TabUiCorner.Name = "TabUiCorner"
		TabUiCorner.Parent = Tab
		
		TabButton.MouseButton1Click:Connect(function()
			for i,v in next, TabsFolder:GetChildren() do
				v.Visible = false
			end
			Tab.Visible = true
		end)
			local Elements = {}
			function Elements:Label(text)				
				local Label = Instance.new("Frame")
				local LabelUICorner = Instance.new("UICorner")
				local LabelLabel = Instance.new("TextLabel")
				local LabelImage = Instance.new("ImageLabel")
				
				Label.Name = "Label"
				Label.Parent = Tab
				Label.BackgroundColor3 = CustomTheme.Elements or Color3.fromRGB(230, 35, 69)
				Label.BorderSizePixel = 0
				Label.Position = UDim2.new(0.0248917751, 0, 0, 0)
				Label.Size = UDim2.new(0, 439, 0, 26)
				Label.ZIndex = 2

				LabelUICorner.CornerRadius = UDim.new(0.100000001, 1)
				LabelUICorner.Name = "LabelUICorner"
				LabelUICorner.Parent = Label

				LabelLabel.Name = "LabelLabel"
				LabelLabel.Parent = Label
				LabelLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelLabel.BackgroundTransparency = 1.000
				LabelLabel.Position = UDim2.new(0.0136674261, 0, 0, 0)
				LabelLabel.Size = UDim2.new(0, 411, 0, 26)
				LabelLabel.ZIndex = 2
				LabelLabel.Text = text
				LabelLabel.Font = Enum.Font.Gotham
				LabelLabel.TextColor3 = CustomTheme.Text or Color3.fromRGB(119, 209, 138)
				LabelLabel.TextSize = 14.000
				LabelLabel.TextXAlignment = Enum.TextXAlignment.Left

				LabelImage.Name = "LabelImage"
				LabelImage.Parent = Label
				LabelImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelImage.BackgroundTransparency = 1.000
				LabelImage.Position = UDim2.new(0.949999988, 0, 0.115000002, 0)
				LabelImage.Size = UDim2.new(0, 20, 0, 20)
				LabelImage.ZIndex = 2
				LabelImage.Image = "http://www.roblox.com/asset/?id=6034925612"
			end
			function Elements:Button(text,callback)
				local Button = Instance.new("TextButton")
				local ButtonImage = Instance.new("ImageLabel")
				local ButtonLabel = Instance.new("TextLabel")
				local ButtonUICorner = Instance.new("UICorner")
				Button.Name = "Button"
				Button.Parent = Tab
				Button.BackgroundColor3 = CustomTheme.Elements or Color3.fromRGB(230, 35, 69)
				Button.Size = UDim2.new(0, 439, 0, 26)
				Button.Font = Enum.Font.SourceSans
				Button.Text = ""
				Button.TextColor3 = Color3.fromRGB(0, 0, 0)
				Button.TextSize = 14.000

				ButtonImage.Name = "ButtonImage"
				ButtonImage.Parent = Button
				ButtonImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonImage.BackgroundTransparency = 1.000
				ButtonImage.Position = UDim2.new(0.949999988, 0, 0.115000002, 0)
				ButtonImage.Size = UDim2.new(0, 20, 0, 20)
				ButtonImage.ZIndex = 2
				ButtonImage.Image = "http://www.roblox.com/asset/?id=6031229361"

				ButtonLabel.Name = "ButtonLabel"
				ButtonLabel.Parent = Button
				ButtonLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonLabel.BackgroundTransparency = 1.000
				ButtonLabel.Position = UDim2.new(0.0136674261, 0, 0, 0)
				ButtonLabel.Size = UDim2.new(0, 411, 0, 26)
				ButtonLabel.ZIndex = 2
				ButtonLabel.Font = Enum.Font.Gotham
				ButtonLabel.Text = text
				ButtonLabel.TextColor3 = CustomTheme.Text or Color3.fromRGB(119, 209, 138)
				ButtonLabel.TextSize = 14.000
				ButtonLabel.TextXAlignment = Enum.TextXAlignment.Left

				ButtonUICorner.CornerRadius = UDim.new(0.100000001, 1)
				ButtonUICorner.Name = "ButtonUICorner"
				ButtonUICorner.Parent = Button
				local callback = callback or function() end
				pcall(function() Button.MouseButton1Click:Connect(callback) end)
			end
			function Elements:Toggle(text,callback)
				local Toggle = Instance.new("TextButton")
				local ToggleImage = Instance.new("ImageLabel")
				local ToggleText = Instance.new("TextLabel")
				local ToggableImageThing = Instance.new("ImageLabel")
				local ToggleUICorner = Instance.new("UICorner")
				Toggle.Name = "Toggle"
				Toggle.Parent = Tab
				Toggle.BackgroundColor3 = CustomTheme.Elements or Color3.fromRGB(230, 35, 69)
				Toggle.Position = UDim2.new(-0.00432900432, 0, -0.0075757578, 0)
				Toggle.Size = UDim2.new(0, 439, 0, 26)
				Toggle.Font = Enum.Font.SourceSans
				Toggle.Text = ""
				Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
				Toggle.TextSize = 14.000

				ToggleImage.Name = "ToggleImage"
				ToggleImage.Parent = Toggle
				ToggleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleImage.BackgroundTransparency = 1.000
				ToggleImage.Position = UDim2.new(0.949999988, 0, 0.115000002, 0)
				ToggleImage.Size = UDim2.new(0, 20, 0, 20)
				ToggleImage.ZIndex = 2
				ToggleImage.Image = "http://www.roblox.com/asset/?id=6031233863"

				ToggleText.Name = "ToggleText"
				ToggleText.Parent = Toggle
				ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleText.BackgroundTransparency = 1.000
				ToggleText.Position = UDim2.new(0.0136674261, 0, 0, 0)
				ToggleText.Size = UDim2.new(0, 372, 0, 26)
				ToggleText.ZIndex = 2
				ToggleText.Font = Enum.Font.Gotham
				ToggleText.Text = text
				ToggleText.TextColor3 = CustomTheme.Text or Color3.fromRGB(119, 209, 138)
				ToggleText.TextSize = 14.000
				ToggleText.TextXAlignment = Enum.TextXAlignment.Left

				ToggableImageThing.Name = "ToggableImageThing"
				ToggableImageThing.Parent = Toggle
				ToggableImageThing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggableImageThing.BackgroundTransparency = 1.000
				ToggableImageThing.Position = UDim2.new(0.892938495, 0, 0.134615391, 0)
				ToggableImageThing.Size = UDim2.new(0, 19, 0, 19)
				ToggableImageThing.Image = "http://www.roblox.com/asset/?id=6031068420"

				ToggleUICorner.CornerRadius = UDim.new(0.100000001, 1)
				ToggleUICorner.Name = "ToggleUICorner"
				ToggleUICorner.Parent = Toggle
				Toggle.MouseButton1Click:Connect(function()
				state = not state
				callback(state)
					if state then
						ToggableImageThing.Image = "rbxassetid://6031068421"
					else
						ToggableImageThing.Image = "rbxassetid://6031068420"
					end
				end)
			end
			function Elements:TextBox(text,callback)
				
			local TextBox = Instance.new("Frame")
			local TextBoxUICorner = Instance.new("UICorner")
			local TextBoxLabel = Instance.new("TextLabel")
			local TextBoxImage = Instance.new("ImageLabel")
			local TextBox_2 = Instance.new("TextBox")
			local TextBoxUICornerInside = Instance.new("UICorner")
			TextBox.Name = "TextBox"
			TextBox.Parent = Tab
			TextBox.BackgroundColor3 = CustomTheme.Elements or Color3.fromRGB(230, 35, 69)
			TextBox.BorderSizePixel = 0
			TextBox.Position = UDim2.new(0.0248917751, 0, 0, 0)
			TextBox.Size = UDim2.new(0, 439, 0, 26)
			TextBox.ZIndex = 2

			TextBoxUICorner.CornerRadius = UDim.new(0.100000001, 1)
			TextBoxUICorner.Name = "TextBoxUICorner"
			TextBoxUICorner.Parent = TextBox

			TextBoxLabel.Name = "TextBoxLabel"
			TextBoxLabel.Parent = TextBox
			TextBoxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextBoxLabel.BackgroundTransparency = 1.000
			TextBoxLabel.Position = UDim2.new(0.0136674261, 0, 0, 0)
			TextBoxLabel.Size = UDim2.new(0, 287, 0, 26)
			TextBoxLabel.ZIndex = 2
			TextBoxLabel.Font = Enum.Font.Gotham
			TextBoxLabel.Text = text
			TextBoxLabel.TextColor3 = CustomTheme.Text or Color3.fromRGB(119, 209, 138)
			TextBoxLabel.TextSize = 14.000
			TextBoxLabel.TextXAlignment = Enum.TextXAlignment.Left

			TextBoxImage.Name = "TextBoxImage"
			TextBoxImage.Parent = TextBox
			TextBoxImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextBoxImage.BackgroundTransparency = 1.000
			TextBoxImage.Position = UDim2.new(0.949999988, 0, 0.115000002, 0)
			TextBoxImage.Size = UDim2.new(0, 20, 0, 20)
			TextBoxImage.ZIndex = 2
			TextBoxImage.Image = "http://www.roblox.com/asset/?id=6034818398"

			TextBox_2.Parent = TextBox
			TextBox_2.BackgroundColor3 = CustomTheme.TextBox or Color3.fromRGB(125, 18, 38)
			TextBox_2.Position = UDim2.new(0.683371305, 0, 0.115384623, 0)
			TextBox_2.Size = UDim2.new(0, 111, 0, 20)
			TextBox_2.ZIndex = 2
			TextBox_2.Font = Enum.Font.Gotham
			TextBox_2.Text = ""
			TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextBox_2.TextSize = 13.000
			TextBox_2.TextWrapped = true

			TextBoxUICornerInside.CornerRadius = UDim.new(0.100000001, 1)
			TextBoxUICornerInside.Name = "TextBoxUICornerInside"
			TextBoxUICornerInside.Parent = TextBox_2
			TextBox_2.FocusLost:Connect(function(enterPressed)
				if enterPressed then
					if callback then
						callback(TextBox_2.Text)
					end
					TextBox_2.Text = ""
				end
			end)
		end
			
			return Elements
		end
		
	return Elements
end
return Library
