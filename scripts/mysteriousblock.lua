if not game.Players.LocalPlayer.Character:FindFirstChild("Rig") then
	game.StarterGui:SetCore("SendNotification",{
		Title = "Project: Terminate",
		Text = "Not Reanimated.",
	})
	return
end
if not game.Players.LocalPlayer.Character:FindFirstChild("PirateCaptain_HatAccessory") then
	game.StarterGui:SetCore("SendNotification",{
		Title = "Project: Terminate",
		Text = "Missing Hat.",
	})
	return
end
if game.Players.LocalPlayer.Character:FindFirstChild("Anti") then
	game.StarterGui:SetCore("SendNotification",{
		Title = "Project: Terminate",
		Text = "Script Already Running.",
	})
	return
end

local aadfs = Instance.new("Part", game.Players.LocalPlayer.Character)
aadfs.Name = "Anti"
aadfs.Transparency = 1 
aadfs.Anchored = true

_G.AttackWait1 = 0.5
_G.AttackWait2 = 0.5
local Special = false
local Attack = false
local AttackFrame = 0
local Locked = false
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Character = Player.Character.Rig
Character.Animate:Destroy()
wait(0.5)
local Torso = Character:FindFirstChild("Torso")
local Humanoid = Character:FindFirstChildOfClass("Humanoid")
local RS = Torso:FindFirstChild("Right Shoulder")
local LS = Torso:FindFirstChild("Left Shoulder")
local RH = Torso:FindFirstChild("Right Hip")
local LH = Torso:FindFirstChild("Left Hip")
local Root = Character:FindFirstChild("HumanoidRootPart")
local Neck = Torso:FindFirstChild("Neck")
local RJ = Root:FindFirstChild("RootJoint")
local UserInputService = game:GetService("UserInputService")
	
pcall(function() Player.Character['PirateCaptain_HatAccessory'].Handle.SpecialMesh:Destroy() end)

local Hat = Player.Character:FindFirstChild("PirateCaptain_HatAccessory")
local Clone = Hat:Clone()
Clone.Parent = Character
Clone.Handle.Transparency = 1
local function Align(P0,P1,Position,Orientation)
    local AlignPosition = Instance.new("AlignPosition", P0)
    local AlignOrientation = Instance.new("AlignOrientation", P0)
    local Attachment1 = Instance.new("Attachment", P0)
    local Attachment2 = Instance.new("Attachment", P1)
    -- Main Attach Thingy:
    AlignPosition.Attachment0,AlignPosition.Attachment1 = Attachment1,Attachment2 -- Shortcut
    AlignOrientation.Attachment0,AlignOrientation.Attachment1 = Attachment1,Attachment2 -- Shortcut
    -- Properties:

    AlignPosition.MaxForce = 9e9
    AlignOrientation.MaxTorque = 9e9
    AlignPosition.Responsiveness = 200
    AlignOrientation.Responsiveness = 200

    -- Rotate/Position
    Attachment1.Position = Position or Vector3.new(0,0,0)
    Attachment1.Orientation = Orientation or Vector3.new(0,0,0)
end
Hat.Handle.AccessoryWeld:Destroy()
Align(Hat.Handle,Clone.Handle)

if Player.Character:FindFirstChild("Bullet") then
local Character = game.Players.LocalPlayer.Character
local Bullet = Character['Bullet']
local Part1 = Player.Character:FindFirstChild("PirateCaptain_HatAccessory").Handle
Bullet:ClearAllChildren()
local BP = Instance.new("BodyPosition", Bullet)
local BT = Instance.new("BodyThrust", Bullet)
BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BP.D = 125
BP.P = 12500
BT.Location = Vector3.new(10,5,-10)
local Mouse = game.Players.LocalPlayer:GetMouse()
local MouseHolding = false
Mouse.Button1Down:Connect(function()
    MouseHolding = true --BP.Position = Mouse.Hit.p
    BT.Force = Vector3.new(3000,3000,3000)
end)
        
Mouse.Button1Up:Connect(function()
    MouseHolding = false --BP.Position = Character.Torso.Position
end)
        
game:GetService("RunService").Stepped:Connect(function()
	BP.Position = Part1.Position
end)

        
Bullet.Transparency = 0
local Outline = Instance.new("SelectionBox", Bullet)
Outline.Adornee = Bullet
	
end

UserInputService.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		if Locked == false then
		Attack = true
		Locked = true
		AttackFrame = 1
		wait(_G.AttackWait1)
		AttackFrame = 2
		wait(_G.AttackWait2)
		Attack = false
		AttackFrame = 0
		Locked = false
		end
	end
end)

spawn(function() while game:GetService("RunService").RenderStepped:Wait() do
	if Root.Velocity.y > 1 and Attack == false then
		Position = "Jump"
	elseif Root.Velocity.y < -1 and Attack == false and Special == false then
		Position = "Fall"
	elseif Root.Velocity.Magnitude < 2 and Attack == false and Special == false then -- idle
		Position = "Idle"
	elseif Root.Velocity.Magnitude < 20 and Attack == false and Special == false then -- idle
		Position = "Walk"
	elseif Root.Velocity.Magnitude > 20 and Attack == false and Special == false then -- idle
		Position = "Run"
	elseif Attack == true and Special == false and AttackFrame == 1 then
		Position = "Attack1"
	elseif Attack == true and Special == false and AttackFrame == 2 then
		Position = "Attack2"
	elseif Special == true and Attack == false then
		Position = "Special"
	end
end end)
local Sine = 1
local Speed = 1
-- combability with nexo
local sine = 1
local speed = 1
local CF = CFrame.new
local RAD = math.rad
local ANGLES = CFrame.Angles

-- combability with nexo
local NECK = Torso:FindFirstChild("Neck")
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(-0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
function HatSetup(Hat,Part,C1,C0,Number)
Character[Hat].Handle.AccessoryWeld.Part1=Character[Part]
Character[Hat].Handle.AccessoryWeld.C1=C1 or CFrame.new()
Character[Hat].Handle.AccessoryWeld.C0=C0 or CFrame.new()--3bbb322dad5929d0d4f25adcebf30aa5
end

HatSetup('PirateCaptain_HatAccessory','Right Arm',CFrame.new(),Character['PirateCaptain_HatAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/6),2+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+360*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),1),true)
spawn(function()
	while game:GetService("RunService").RenderStepped:Wait() do
		Sine = Sine + Speed
		-- combability with nexo
		sine =sine + speed
		if Position == "Idle" then
			NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(14+0*math.cos(sine/13))),.3)
			LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-2+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-19+0*math.cos(sine/13))),.3)
			RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(50+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-53+0*math.cos(sine/13))),.3)
			LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(94+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(39+0*math.cos(sine/13))),.3)
			Character['PirateCaptain_HatAccessory'].Handle.AccessoryWeld.C0 = Character['PirateCaptain_HatAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/6),2+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+360*math.sin(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
		elseif Position == "Walk" then
			NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-13+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(14+0*math.cos(sine/13))),.3)
			LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-2+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-19+0*math.cos(sine/13))),.3)
			RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(50+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-53+0*math.cos(sine/13))),.3)
			LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(94+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(39+0*math.cos(sine/13))),.3)
			Character['PirateCaptain_HatAccessory'].Handle.AccessoryWeld.C0 = Character['PirateCaptain_HatAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/6),2+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+360*math.sin(sine/6)),RAD(0+0*math.cos(sine/6))),.3)				

		elseif Position == "Jump" then
			NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(18+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(14+0*math.cos(sine/13))),.3)
			LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-2+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-19+0*math.cos(sine/13))),.3)
			RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(50+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-53+0*math.cos(sine/13))),.3)
			LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(94+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(39+0*math.cos(sine/13))),.3)
			Character['PirateCaptain_HatAccessory'].Handle.AccessoryWeld.C0 = Character['PirateCaptain_HatAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/6),2+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+360*math.sin(sine/6)),RAD(0+0*math.cos(sine/6))),.3)				
		elseif Position == "Fall" then
			NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-19+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(14+0*math.cos(sine/13))),.3)
			LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-2+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-19+0*math.cos(sine/13))),.3)
			RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(50+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-53+0*math.cos(sine/13))),.3)
			LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(94+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(39+0*math.cos(sine/13))),.3)	
			Character['PirateCaptain_HatAccessory'].Handle.AccessoryWeld.C0 = Character['PirateCaptain_HatAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/6),2+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+360*math.sin(sine/6)),RAD(0+0*math.cos(sine/6))),.3)				
		elseif Position == "Attack1" then
			NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-57+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(1+0*math.cos(sine/13))),.3)
			LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-2+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-19+0*math.cos(sine/13))),.3)
			RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(50+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-53+0*math.cos(sine/13))),.3)
			LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(94+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(39+0*math.cos(sine/13))),.3)
			Character['PirateCaptain_HatAccessory'].Handle.AccessoryWeld.C0 = Character['PirateCaptain_HatAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/6),2+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+360*math.sin(sine/6)),RAD(0+0*math.cos(sine/6))),.3)					
		elseif Position == "Attack2" then
			NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-4+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
			RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-236+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-19+0*math.cos(sine/13))),.3)
			LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-2+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-19+0*math.cos(sine/13))),.3)
			RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(50+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-53+0*math.cos(sine/13))),.3)
			LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(94+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(39+0*math.cos(sine/13))),.3)
			Character['PirateCaptain_HatAccessory'].Handle.AccessoryWeld.C0 = Character['PirateCaptain_HatAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(-1+0*math.cos(sine/6),7+0*math.cos(sine/6),-8+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+0*math.sin(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
		end
	end
end)
	
	
