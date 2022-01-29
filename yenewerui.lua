local Library = {}
-- i have no idea why code went like that
print("UI By Gelatek, Please don't remove credits if you gonna use it.")

function Library:Create(name)


	local GelatekUI2 = Instance.new("ScreenGui")


	local Main = Instance.new("Frame")


	local MainUICorner = Instance.new("UICorner")


	local SideBarOpener = Instance.new("ImageButton")


	local Text = Instance.new("TextLabel")


	local Exit = Instance.new("ImageButton")


	local Shadow = Instance.new("ImageLabel")


	local SideBar = Instance.new("Frame")


	local TabsScrollingFrame = Instance.new("ScrollingFrame")


	local TabsScrollFrameUIC = Instance.new("UIGridLayout")


	local Tabs = Instance.new("Folder")




	GelatekUI2.Name = "GelatekUI2"


	GelatekUI2.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")



	Main.Name = "Main"


	Main.Parent = GelatekUI2


	Main.BackgroundColor3 = Color3.fromRGB(13, 13, 13)


	Main.BackgroundTransparency = 0.200


	Main.BorderSizePixel = 0


	Main.ClipsDescendants = true


	Main.Position = UDim2.new(0.370144695, 0, 0.289889514, 0)


	Main.Size = UDim2.new(0, 341, 0, 359)



	MainUICorner.CornerRadius = UDim.new(0.00999999978, 1)


	MainUICorner.Name = "MainUICorner"


	MainUICorner.Parent = Main



	SideBarOpener.Name = "SideBarOpener"


	SideBarOpener.Parent = Main


	SideBarOpener.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


	SideBarOpener.BackgroundTransparency = 1.000


	SideBarOpener.Position = UDim2.new(0.855000019, 0, 0.00200000009, 0)


	SideBarOpener.Size = UDim2.new(0, 22, 0, 22)


	SideBarOpener.Image = "rbxassetid://3944704135"


	SideBarOpener.ImageTransparency = 0.100


	SideBarOpener.ScaleType = Enum.ScaleType.Fit



	Text.Name = "Text"


	Text.Parent = Main


	Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


	Text.BackgroundTransparency = 1.000


	Text.Position = UDim2.new(0.0234604105, 0, 0.0194986071, 0)


	Text.Size = UDim2.new(0, 149, 0, 15)


	Text.Font = Enum.Font.Gotham


	Text.Text = name


	Text.TextColor3 = Color3.fromRGB(255, 255, 255)


	Text.TextSize = 14.000


	Text.TextTransparency = 0.200


	Text.TextXAlignment = Enum.TextXAlignment.Left



	Exit.Name = "Exit"


	Exit.Parent = Main


	Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


	Exit.BackgroundTransparency = 1.000


	Exit.Position = UDim2.new(0.919090927, 0, 0.00221448462, 0)


	Exit.Size = UDim2.new(0, 22, 0, 22)


	Exit.Image = "rbxassetid://3944676352"


	Exit.ImageTransparency = 0.100


	Exit.ScaleType = Enum.ScaleType.Fit



	Shadow.Name = "Shadow"


	Shadow.Parent = Main


	Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


	Shadow.BackgroundTransparency = 1.000


	Shadow.Position = UDim2.new(-0.0733137801, 0, -0.0668523684, 0)


	Shadow.Rotation = 0.001


	Shadow.Size = UDim2.new(0, 390, 0, 407)


	Shadow.ZIndex = -1


	Shadow.Image = "rbxassetid://1316045217"


	Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)


	Shadow.ImageTransparency = 0.400



	SideBar.Name = "SideBar"


	SideBar.Parent = Main


	SideBar.BackgroundColor3 = Color3.fromRGB(27, 27, 27)


	SideBar.BorderSizePixel = 0


	SideBar.Position = UDim2.new(-0.5, 0, 0, 0)


	SideBar.Size = UDim2.new(0, 157, 0, 359)


	SideBar.ZIndex = 2



	TabsScrollingFrame.Name = "TabsScrollingFrame"


	TabsScrollingFrame.Parent = SideBar


	TabsScrollingFrame.Active = true


	TabsScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


	TabsScrollingFrame.BackgroundTransparency = 1.000


	TabsScrollingFrame.BorderSizePixel = 0


	TabsScrollingFrame.Position = UDim2.new(0.0499998443, 0, 0.0194986071, 0)


	TabsScrollingFrame.Size = UDim2.new(0, 140, 0, 345)


	TabsScrollingFrame.ZIndex = 2


	TabsScrollingFrame.ScrollBarThickness = 0



	TabsScrollFrameUIC.Name = "TabsScrollFrameUIC"


	TabsScrollFrameUIC.Parent = TabsScrollingFrame


	TabsScrollFrameUIC.HorizontalAlignment = Enum.HorizontalAlignment.Center


	TabsScrollFrameUIC.SortOrder = Enum.SortOrder.LayoutOrder


	TabsScrollFrameUIC.CellSize = UDim2.new(0, 135, 0, 25)



	Tabs.Name = "Tabs"


	Tabs.Parent = Main


	local function WAKXD_fake_script() -- SideBarOpener.Opener 


		local script = Instance.new('LocalScript', SideBarOpener)



		-- {0, 0},{0, 0}   Normally


		-- {-0.5, 0},{0, 0} Hidden


		function Open()


			script.Disabled = true


			script.Parent.Parent.SideBar:TweenPosition(


				UDim2.new(0, 0, 0, 0),


				nil,


				Enum.EasingStyle.Bounce,


				0.6


			)


			wait(0.6)


			script.Disabled = false


		end



		function Hide()


			script.Disabled = true


			script.Parent.Parent.SideBar:TweenPosition(


				UDim2.new(-0.5, 0, 0, 0),


				nil,


				Enum.EasingStyle.Bounce,


				0.6


			)


			wait(0.6)


			script.Disabled = false


		end



		script.Parent.MouseButton1Down:Connect(function()


			if script.Parent.Parent.SideBar.Position == UDim2.new({0, 0},{0, 0}) then


				Hide()


			else


				Open()


			end


		end)


	end


	coroutine.wrap(WAKXD_fake_script)()




	local function HRRSVTA_fake_script() -- Exit.ExitAnims 


		local script = Instance.new('LocalScript', Exit)



		local tabs = script.Parent.Parent.Tabs:GetChildren()


		script.Parent.MouseButton1Down:Connect(function()


			script.Disabled = true


			local sound = Instance.new("Sound", workspace.Camera)


			sound.SoundId = "rbxassetid://6426919033"


			sound:Play()


			wait(0.5)


			script.Parent:TweenPosition(


				UDim2.new(-0.6, 0, 0, 0),


				nil,


				Enum.EasingStyle.Quint,


				1


			)



			script.Parent.Parent.Text:TweenPosition(


				UDim2.new(-0.4, 0, 0, 0),


				nil,


				Enum.EasingStyle.Quint,


				1


			)



			script.Parent.Parent.SideBarOpener:TweenPosition(


				UDim2.new(-0.6, 0, 0, 0),


				nil,


				Enum.EasingStyle.Quint,


				1


			)


			script.Parent.Parent.SideBar:TweenPosition(


				UDim2.new(-0.5, 0, 0, 0),


				nil,


				Enum.EasingStyle.Quint,


				1


			)


			for i, v in pairs(tabs) do


				v:TweenPosition(


					UDim2.new(-2, 0, 0, 0),


					nil,


					Enum.EasingStyle.Quint,


					1


				)


			end


			wait(0.5)


			for i = 0, 1, 0.1 do -- Starting at 0 transparency, ending at 1 transparency, adding 0.1 to the transparency


				script.Parent.Parent.BackgroundTransparency = i


				script.Parent.Parent.Shadow.ImageTransparency = i


				wait(0.05)


			end


			wait(2)


			sound:Destroy()


			script.Parent.Parent.Parent:Destroy()


		end)


	end


	coroutine.wrap(HRRSVTA_fake_script)()


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


		local Tab = Instance.new("ScrollingFrame")


		local ListLayout = Instance.new("UIListLayout")


		TabButton.Name = "TabButton"


		TabButton.Parent = TabsScrollingFrame


		TabButton.BackgroundColor3 = Color3.fromRGB(44, 42, 52)


		TabButton.BorderSizePixel = 0


		TabButton.Size = UDim2.new(0, 131, 0, 28)


		TabButton.ZIndex = 2


		TabButton.Text = name


		TabButton.Font = Enum.Font.Gotham


		TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)


		TabButton.TextSize = 13.000


		TabButton.TextTransparency = 0.200



		TabButtonUICorner.CornerRadius = UDim.new(0.100000001, 1)


		TabButtonUICorner.Name = "TabButtonUICorner"


		TabButtonUICorner.Parent = TabButton



		Tab.Name = "Tab"


		Tab.Parent = Tabs


		Tab.Active = true


		Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


		Tab.BackgroundTransparency = 1.000


		Tab.BorderSizePixel = 0


		Tab.Position = UDim2.new(0.0234604105, 0, 0.0891364887, 0)


		Tab.Size = UDim2.new(0, 321, 0, 320)


		Tab.ScrollBarThickness = 0



		ListLayout.Name = "ListLayout"


		ListLayout.Parent = Tab


		ListLayout.SortOrder = Enum.SortOrder.LayoutOrder


		ListLayout.Padding = UDim.new(0, 5)	


		TabButton.MouseButton1Click:Connect(function()


			for i,v in next, Tabs:GetChildren() do


				v.Visible = false


			end


			Tab.Visible = true


		end)



		local Elements = {}


		function Elements:Button(name,callback)


			local callback = callback or function() end


			local Button = Instance.new("TextButton")


			local ButtonText = Instance.new("TextLabel")


			local ButtonLogo = Instance.new("ImageLabel")


			local ButtonUICorner = Instance.new("UICorner")	



			Button.Name = "Button"


			Button.Parent = Tab


			Button.BackgroundColor3 = Color3.fromRGB(44, 42, 52)


			Button.BorderColor3 = Color3.fromRGB(27, 42, 53)


			Button.BorderSizePixel = 0


			Button.Size = UDim2.new(0, 319, 0, 26)


			Button.Font = Enum.Font.Gotham


			Button.Text = " "


			Button.TextColor3 = Color3.fromRGB(255, 255, 255)


			Button.TextSize = 14.000



			ButtonText.Name = "ButtonText"


			ButtonText.Parent = Button


			ButtonText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


			ButtonText.BackgroundTransparency = 1.000


			ButtonText.Position = UDim2.new(0.0219435729, 0, 0, 0)


			ButtonText.Size = UDim2.new(0, 289, 0, 26)


			ButtonText.Font = Enum.Font.Gotham


			ButtonText.Text = name


			ButtonText.TextColor3 = Color3.fromRGB(255, 255, 255)


			ButtonText.TextSize = 14.000


			ButtonText.TextXAlignment = Enum.TextXAlignment.Left



			ButtonLogo.Name = "ButtonLogo"


			ButtonLogo.Parent = Button


			ButtonLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


			ButtonLogo.BackgroundTransparency = 1.000


			ButtonLogo.Position = UDim2.new(0.92900002, 0, 0.064000003, 0)


			ButtonLogo.Size = UDim2.new(0, 20, 0, 20)


			ButtonLogo.Image = "http://www.roblox.com/asset/?id=6031229361"



			ButtonUICorner.CornerRadius = UDim.new(0.100000001, 1)


			ButtonUICorner.Name = "ButtonUICorner"


			ButtonUICorner.Parent = Button


			pcall(function() Button.MouseButton1Click:Connect(callback) end)


		end


		function Elements:Label(name,callback)


			local Label = Instance.new("Frame")


			local LabelUICorner = Instance.new("UICorner")


			local LabelLogo = Instance.new("ImageLabel")


			local LabelText = Instance.new("TextLabel")


			Label.Name = "Label"


			Label.Parent = Tab


			Label.BackgroundColor3 = Color3.fromRGB(44, 42, 52)


			Label.Position = UDim2.new(0, 0, 0.193749994, 0)


			Label.Size = UDim2.new(0, 319, 0, 26)



			LabelUICorner.CornerRadius = UDim.new(0.100000001, 1)


			LabelUICorner.Name = "LabelUICorner"


			LabelUICorner.Parent = Label



			LabelLogo.Name = "LabelLogo"


			LabelLogo.Parent = Label


			LabelLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


			LabelLogo.BackgroundTransparency = 1.000


			LabelLogo.Position = UDim2.new(0.92900002, 0, 0.064000003, 0)


			LabelLogo.Size = UDim2.new(0, 20, 0, 20)


			LabelLogo.Image = "http://www.roblox.com/asset/?id=6034925612"



			LabelText.Name = "LabelText"


			LabelText.Text = name


			LabelText.Parent = Label


			LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


			LabelText.BackgroundTransparency = 1.000


			LabelText.Position = UDim2.new(0.0219435729, 0, 0, 0)


			LabelText.Size = UDim2.new(0, 289, 0, 26)


			LabelText.Font = Enum.Font.Gotham


			LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)


			LabelText.TextSize = 14.000


			LabelText.TextXAlignment = Enum.TextXAlignment.Left


		end


		function Elements:Toggle(name,callback)


			local Toggle = Instance.new("TextButton")


			local ToggleUICorner = Instance.new("UICorner")


			local ToggleText = Instance.new("TextLabel")


			local ToggleLogo = Instance.new("ImageLabel")


			local ToggleCallback = Instance.new("ImageLabel")



			Toggle.Name = "Toggle"


			Toggle.Parent = Tab


			Toggle.BackgroundColor3 = Color3.fromRGB(44, 42, 52)


			Toggle.BorderSizePixel = 0


			Toggle.Size = UDim2.new(0, 319, 0, 26)


			Toggle.Font = Enum.Font.Gotham


			Toggle.Text = ""


			Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)


			Toggle.TextSize = 14.000



			ToggleUICorner.CornerRadius = UDim.new(0.100000001, 1)


			ToggleUICorner.Name = "ToggleUICorner"


			ToggleUICorner.Parent = Toggle



			ToggleText.Name = "ToggleText"


			ToggleText.Parent = Toggle


			ToggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


			ToggleText.BackgroundTransparency = 1.000


			ToggleText.Position = UDim2.new(0.0219435729, 0, 0, 0)


			ToggleText.Size = UDim2.new(0, 258, 0, 26)


			ToggleText.Font = Enum.Font.Gotham


			ToggleText.Text = name


			ToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)


			ToggleText.TextSize = 14.000


			ToggleText.TextXAlignment = Enum.TextXAlignment.Left



			ToggleLogo.Name = "ToggleLogo"


			ToggleLogo.Parent = Toggle


			ToggleLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


			ToggleLogo.BackgroundTransparency = 1.000


			ToggleLogo.Position = UDim2.new(0.92900002, 0, 0.064000003, 0)


			ToggleLogo.Size = UDim2.new(0, 20, 0, 20)


			ToggleLogo.Image = "http://www.roblox.com/asset/?id=6022668951"



			ToggleCallback.Name = "ToggleCallback"


			ToggleCallback.Parent = Toggle


			ToggleCallback.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


			ToggleCallback.BackgroundTransparency = 1.000


			ToggleCallback.Position = UDim2.new(0.830721021, 0, 0.038019035, 0)


			ToggleCallback.Size = UDim2.new(0, 23, 0, 23)


			ToggleCallback.Image = "http://www.roblox.com/asset/?id=6031068420"


			Toggle.MouseButton1Click:Connect(function()


				state = not state


				callback(state)


				if state then


					ToggleCallback.Image = "rbxassetid://6031068421"


				else


					ToggleCallback.Image = "rbxassetid://6031068420"


				end


			end)



		end


		function Elements:Textbox(name,callback)


			local Textbox = Instance.new("Frame")


			local TextBoxUICorner = Instance.new("UICorner")


			local TextBoxLogo = Instance.new("ImageLabel")


			local TextBoxText = Instance.new("TextLabel")


			local BaseTextBox = Instance.new("TextBox")


			local BaseTextBoxUICorner = Instance.new("UICorner")



			Textbox.Name = "Textbox"


			Textbox.Parent = Tab


			Textbox.BackgroundColor3 = Color3.fromRGB(44, 42, 52)


			Textbox.Position = UDim2.new(0, 0, 0.193749994, 0)


			Textbox.Size = UDim2.new(0, 319, 0, 26)



			TextBoxUICorner.CornerRadius = UDim.new(0.100000001, 1)


			TextBoxUICorner.Name = "TextBoxUICorner"


			TextBoxUICorner.Parent = Textbox



			TextBoxLogo.Name = "TextBoxLogo"


			TextBoxLogo.Parent = Textbox


			TextBoxLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


			TextBoxLogo.BackgroundTransparency = 1.000


			TextBoxLogo.Position = UDim2.new(0.92900002, 0, 0.064000003, 0)


			TextBoxLogo.Size = UDim2.new(0, 20, 0, 20)


			TextBoxLogo.Image = "rbxassetid://4400700924"


			TextBoxLogo.ScaleType = Enum.ScaleType.Fit



			TextBoxText.Name = "TextBoxText"


			TextBoxText.Parent = Textbox


			TextBoxText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


			TextBoxText.BackgroundTransparency = 1.000


			TextBoxText.Position = UDim2.new(0.0219435729, 0, 0, 0)


			TextBoxText.Size = UDim2.new(0, 190, 0, 26)


			TextBoxText.Font = Enum.Font.Gotham


			TextBoxText.Text = name


			TextBoxText.TextColor3 = Color3.fromRGB(255, 255, 255)


			TextBoxText.TextSize = 14.000


			TextBoxText.TextXAlignment = Enum.TextXAlignment.Left



			BaseTextBox.Name = "BaseTextBox"


			BaseTextBox.Parent = Textbox


			BaseTextBox.BackgroundColor3 = Color3.fromRGB(56, 54, 67)


			BaseTextBox.Position = UDim2.new(0.631172419, 0, 0.0769230798, 0)


			BaseTextBox.Size = UDim2.new(0, 86, 0, 21)


			BaseTextBox.ClearTextOnFocus = false


			BaseTextBox.Font = Enum.Font.SourceSans


			BaseTextBox.Text = ""


			BaseTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)


			BaseTextBox.TextSize = 14.000


			BaseTextBox.TextWrapped = true



			BaseTextBoxUICorner.CornerRadius = UDim.new(0.100000001, 1)


			BaseTextBoxUICorner.Name = "BaseTextBoxUICorner"


			BaseTextBoxUICorner.Parent = BaseTextBox


			BaseTextBox.FocusLost:Connect(function(enterPressed)


				if enterPressed then


					if callback then


						callback(BaseTextBox.Text)


					end


					BaseTextBox.Text = ""


				end


			end)


		end


		function Elements:Line()


			local Line = Instance.new("Frame")


			local LineUICorner = Instance.new("UICorner")



			Line.Name = "Line"


			Line.Parent = Tab


			Line.BackgroundColor3 = Color3.fromRGB(44, 42, 52)


			Line.Position = UDim2.new(0, 0, 0.387499988, 0)


			Line.Size = UDim2.new(0, 319, 0, 2)



			LineUICorner.CornerRadius = UDim.new(0.5, 1)


			LineUICorner.Name = "LineUICorner"


			LineUICorner.Parent = Line


		end


		return Elements


	end


	return Elements


end


return Library
