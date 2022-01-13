if not getgenv().Velocity then getgenv().Velocity = Vector3.new(0,30,0) end
if not getgenv().Fling then getgenv().Fling = false end
if not getgenv().Animations then getgenv().Animations = false end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Project: Terminate", "Sentinel")
function Notification(text)
	game.StarterGui:SetCore("SendNotification", {
	Title = "Project: Terminate",
	Text = text
	})
end

local Sound1 = Instance.new("Sound",game.CoreGui)
Sound1.Name = "PTSoundYes"
Sound1.SoundId = "rbxassetid://472556995"

local Sound2 = Instance.new("Sound",game.CoreGui)
Sound2.Name = "PTSoundNo"
Sound2.SoundId = "rbxassetid://5914602124"

function Pos()
	Sound1:Play()
end
function Neg()
	Sound2:Play()
end
function AntiScriptLoad()
		local bwae = Instance.new("Part")
		bwae.Name = "BBBBB"
		bwae.Parent = game.Players.LocalPlayer.Character
		bwae.Transparency = 1
		bwae.Anchored = true
		bwae.CanCollide = false
end
local Tab = Window:NewTab("Home")
local Tab2 = Window:NewTab("Reanimations")
local Tab3 = Window:NewTab("Scripts")

local Section = Tab:NewSection("Home")
local Section2 = Tab2:NewSection("Reanimations")
local Section3A = Tab3:NewSection("Scripts")
local Section3B = Tab3:NewSection("Hat Scripts")



--/ Reanims

local function Align(P0,P1,Position,Orientation)
    local AlignPosition = Instance.new("AlignPosition", P0)
    local AlignOrientation = Instance.new("AlignOrientation", P0)
    local Attachment1 = Instance.new("Attachment", P0)
    local Attachment2 = Instance.new("Attachment", P1)
    -- Main Attach Thingy:
    AlignPosition.Attachment0,AlignPosition.Attachment1 = Attachment1,Attachment2 -- Shortcut
    AlignOrientation.Attachment0,AlignOrientation.Attachment1 = Attachment1,Attachment2 -- Shortcut
    -- Properties:
    AlignPosition.RigidityEnabled = true
    AlignOrientation.MaxTorque = 16000000000000
    AlignPosition.Responsiveness = 200
    AlignOrientation.Responsiveness = 200
    -- Rotate/Position
    Attachment1.Position = Position or Vector3.new(0,0,0)
    Attachment1.Orientation = Orientation or Vector3.new(0,0,0)
end
Section2:NewToggle("Enable Fling", "ToggleInfo", function(state)
	getgenv().Fling = state
end)

Section2:NewButton("R6 Reanimate", "ButtonInfo", function()
    if game.Players.LocalPlayer.Character:FindFirstChild("TalentlessDumbass") or game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso") then
    	Neg()
    	Notification("Already Reanimated/R15 Detected! >:(")
	else
    	local Character = game.Players.LocalPlayer.Character
    	local Stepped = game:GetService("RunService").Stepped
    	local Heartbeat = game:GetService("RunService").Heartbeat
    	Character.Archivable = true
    	local Reanimate = Character:Clone()
    	Reanimate.Parent = Character
    	Reanimate.Name = "TalentlessDumbass"
    	Dead = false
    	local Netless
    	local Noclip
    	
    	local Humanoid = Reanimate:FindFirstChildOfClass("Humanoid")
		local Humanoid2 = Character:FindFirstChildOfClass("Humanoid")

    	for i,v in pairs(Reanimate:GetDescendants()) do
    		if v:IsA("BasePart") or v:IsA("Decal") then
    			v.Transparency = 1
			end
		end
		function FNoclip()
			for i, v in pairs(Character:GetDescendants()) do
				if v:IsA("BasePart") or v:IsA("MeshPart") then
					v.CanCollide = false
				end
			end
			Humanoid:Move(Humanoid2.MoveDirection)
				for i, v in pairs(Humanoid2:GetPlayingAnimationTracks()) do
					v:Stop()
				end
		end

			Character.Animate:Destroy()
			
		Noclip = Stepped:Connect(FNoclip)
    	function FNetless()
    		for i, v in pairs(Character:GetChildren()) do
				if v:IsA("BasePart") or v:IsA("MeshPart") and v.Name ~= "Torso" then
					v.Velocity = getgenv().Velocity
				elseif v:IsA("Accessory") then
					v.Handle.Velocity = getgenv().Velocity
				end
			end
			local Torso = Character:FindFirstChild("Torso")
			if getgenv().Fling == true then
				Torso.Velocity = Vector3.new(1000,2000,4000)
				else
				Torso.Velocity = getgenv().Velocity
			end
		end
		Netless = Heartbeat:Connect(FNetless)
		Character.Humanoid.Died:Connect(function()
			Dead = true
			Reanimate:BreakJoints()
			Netless:Disconnect()
			Noclip:Disconnect()
		end)
		game:GetService("UserInputService").JumpRequest:Connect(function()
            pcall(function()
            Humanoid.Jump = true
            Humanoid.Sit = false
            end)
        end)
			
		Reanimate.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame
		Character.HumanoidRootPart:Destroy()
		Character.Torso['Right Shoulder']:Destroy()
		Character.Torso['Left Shoulder']:Destroy()
		Character.Torso['Right Hip']:Destroy()
		Character.Torso['Left Hip']:Destroy()
		Align(Character.Torso,Reanimate.Torso)
		Align(Character["Left Leg"],Reanimate["Left Leg"])
		Align(Character["Right Leg"],Reanimate["Right Leg"])
		Align(Character["Left Arm"],Reanimate["Left Arm"])
		Align(Character["Right Arm"],Reanimate["Right Arm"])

		workspace.Camera.CameraSubject = Humanoid
		Pos()
		Notification("Reanimated! :)")
	end
end)

Section2:NewButton("R15 Reanimate", "ButtonInfo", function()
    if game.Players.LocalPlayer.Character:FindFirstChild("TalentlessDumbass") or game.Players.LocalPlayer.Character:FindFirstChild("Torso") then
    	Neg()
    	Notification("Already Reanimated/R6 Detected! >:(")
	else
    	local Character = game.Players.LocalPlayer.Character
    	local Stepped = game:GetService("RunService").Stepped
    	local Heartbeat = game:GetService("RunService").Heartbeat
    	Character.Archivable = true
    	local Reanimate = game:GetObjects('rbxassetid://8440552086')[1]
    	Reanimate.Parent = Character
    	Reanimate.Name = "TalentlessDumbass"
    	Dead = false
    	local Netless
    	local Noclip
    	
    	local Humanoid = Reanimate:FindFirstChildOfClass("Humanoid")
		local Humanoid2 = Character:FindFirstChildOfClass("Humanoid")

    	for i,v in pairs(Reanimate:GetDescendants()) do
    		if v:IsA("BasePart") or v:IsA("Decal") then
    			v.Transparency = 1
			end
		end
		function FNoclip()
			for i, v in pairs(Character:GetDescendants()) do
				if v:IsA("BasePart") or v:IsA("MeshPart") then
					v.CanCollide = false
				end
			end
			Humanoid:Move(Humanoid2.MoveDirection)
				for i, v in pairs(Humanoid2:GetPlayingAnimationTracks()) do
					v:Stop()
				end
		end
			Character.Animate.Disabled = true
			
		Noclip = Stepped:Connect(FNoclip)
    	function FNetless()
    		for i, v in pairs(Character:GetChildren()) do
				if v:IsA("BasePart") or v:IsA("MeshPart") then
					v.Velocity = getgenv().Velocity
				elseif v:IsA("Accessory") then
					v.Handle.Velocity = getgenv().Velocity
				end
			end
		end
		Netless = Heartbeat:Connect(FNetless)
		Character.Humanoid.Died:Connect(function()
			Dead = true
			Reanimate:BreakJoints()
			Netless:Disconnect()
			Noclip:Disconnect()
		end)
		game:GetService("UserInputService").JumpRequest:Connect(function()
            pcall(function()
            Humanoid.Jump = true
            Humanoid.Sit = false
            end)
        end)
			
		Reanimate.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame
        function Attach(Part1,Part2,Position,Rotate)
            for i,v in pairs(Part1:GetChildren()) do
                if v:IsA('Motor6D') and v.Name ~= "Neck" then 
                    v:Destroy() 
                end
            end
            Align(Part1,Part2,Position,Rotate)
        end
        if getgenv().Fling == false then
        Character.HumanoidRootPart:Destroy() 
		end
        Attach(Character.UpperTorso, Reanimate['Torso'], Vector3.new(0, -0.03, 0), Vector3.new(0, 0, 0))
        Attach(Character.LowerTorso, Reanimate['Torso'], Vector3.new(0, 0.85, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightHand, Reanimate['Right Arm'], Vector3.new(0, 0.9, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftHand, Reanimate['Left Arm'], Vector3.new(0, 0.9, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightFoot, Reanimate['Right Leg'], Vector3.new(0, 0.85, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftFoot, Reanimate['Left Leg'], Vector3.new(0, 0.85, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightUpperArm, Reanimate['Right Arm'], Vector3.new(0, -0.242, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftUpperArm, Reanimate['Left Arm'], Vector3.new(0, -0.242, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftUpperLeg, Reanimate['Left Leg'], Vector3.new(0, -0.48, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightUpperLeg, Reanimate['Right Leg'], Vector3.new(0, -0.48, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightLowerArm, Reanimate['Right Arm'], Vector3.new(0, 0.35, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftLowerArm, Reanimate['Left Arm'], Vector3.new(0, 0.35, 0), Vector3.new(0, 0, 0))
        Attach(Character.LeftLowerLeg, Reanimate['Left Leg'], Vector3.new(0, 0.3, 0), Vector3.new(0, 0, 0))
        Attach(Character.RightLowerLeg, Reanimate['Right Leg'], Vector3.new(0, 0.3, 0), Vector3.new(0, 0, 0))
        if getgenv().Fling == true then 
		   Attach(Character.HumanoidRootPart, Reanimate['Torso'], Vector3.new(0, 0, 0), Vector3.new(0, 0, 0))
		   wait(1)
		 local Bullet = Character['HumanoidRootPart']
        local BP = Instance.new("BodyPosition", Bullet)
        local BT = Instance.new("BodyAngularVelocity", Bullet)
        BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        BP.D = 125000000
        BP.P = 12500000000000
        BT.P = 10000
        BT.MaxTorque = Vector3.new(9e99,9e99,9e99)
        BT.AngularVelocity = Vector3.new(3000,3000,3000)

        Bullet.Transparency = 0.95
		end
		
		workspace.Camera.CameraSubject = Humanoid
		Pos()
		Notification("Reanimated! :)")
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Gelatek/Gelatek-Hub/main/Main/Something2.lua'))()
	end
end)


Section3A:NewButton("Krystal Dance", "Created by: Supr14,KrystalTeam", function()
	if game.Players.LocalPlayer.Character:FindFirstChild("TalentlessDumbass") then
	wait(0.15)
	Pos()
	Player=game.Players.LocalPlayer
	Character=Player.Character.TalentlessDumbass
	if Player.Character:FindFirstChild("BBBBB") then
		Notification("You are already running a script! reset to change script!")
		return
	end
	AntiScriptLoad()
	hum = Character.Humanoid
	LeftArm=Character["Left Arm"]
	LeftLeg=Character["Left Leg"]
	RightArm=Character["Right Arm"]
	RightLeg=Character["Right Leg"]
	Root=Character["HumanoidRootPart"]
	Head=Character["Head"]
	Torso=Character["Torso"]
	Neck=Torso["Neck"]
	mouse = Player:GetMouse()
	walking = false
	jumping = false
	attacking = false
	firsttime = false
	tauntdebounce = false
	position = nil
	MseGuide = true
	running = false
	settime = 0
	sine = 0
	t = 0
	ws = 14
	change = 1
	combo1 = true
	dancing = false
	equip = false
	dgs = 75
	combo2 = false
	switch1 = true
	switch2 = false
	firsttime2 = false
	combo3 = false
	gunallowance = false
	shooting = false
	RunSrv = game:GetService("RunService")
	RenderStepped = game:GetService("RunService").RenderStepped
	removeuseless = game:GetService("Debris")

	screenGui = Instance.new("ScreenGui")
	screenGui.Parent = script.Parent

	local HEADLERP = Instance.new("ManualWeld")
	HEADLERP.Parent = Head
	HEADLERP.Part0 = Head
	HEADLERP.Part1 = Head
	HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

	local TORSOLERP = Instance.new("ManualWeld")
	TORSOLERP.Parent = Root
	TORSOLERP.Part0 = Torso
	TORSOLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

	local ROOTLERP = Instance.new("ManualWeld")
	ROOTLERP.Parent = Root
	ROOTLERP.Part0 = Root
	ROOTLERP.Part1 = Torso
	ROOTLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

	local RIGHTARMLERP = Instance.new("ManualWeld")
	RIGHTARMLERP.Parent = RightArm
	RIGHTARMLERP.Part0 = RightArm
	RIGHTARMLERP.Part1 = Torso
	RIGHTARMLERP.C0 = CFrame.new(-1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

	local LEFTARMLERP = Instance.new("ManualWeld")
	LEFTARMLERP.Parent = LeftArm
	LEFTARMLERP.Part0 = LeftArm
	LEFTARMLERP.Part1 = Torso
	LEFTARMLERP.C0 = CFrame.new(1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

	local RIGHTLEGLERP = Instance.new("ManualWeld")
	RIGHTLEGLERP.Parent = RightLeg
	RIGHTLEGLERP.Part0 = RightLeg
	RIGHTLEGLERP.Part1 = Torso
	RIGHTLEGLERP.C0 = CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

	local LEFTLEGLERP = Instance.new("ManualWeld")
	LEFTLEGLERP.Parent = LeftLeg
	LEFTLEGLERP.Part0 = LeftLeg
	LEFTLEGLERP.Part1 = Torso
	LEFTLEGLERP.C0 = CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

	local function weldBetween(a, b)
		local weld = Instance.new("ManualWeld", a)
		weld.Part0 = a
		weld.Part1 = b
		weld.C0 = a.CFrame:inverse() * b.CFrame
		return weld
	end

	function MAKETRAIL(PARENT,POSITION1,POSITION2,LIFETIME,COLOR)
	A = Instance.new("Attachment", PARENT)
	A.Position = POSITION1
	A.Name = "A"
	B = Instance.new("Attachment", PARENT)
	B.Position = POSITION2
	B.Name = "B"
	tr1 = Instance.new("Trail", PARENT)
	tr1.Attachment0 = A
	tr1.Attachment1 = B
	tr1.Enabled = true
	tr1.Lifetime = LIFETIME
	tr1.TextureMode = "Static"
	tr1.LightInfluence = 0
	tr1.Color = COLOR
	tr1.Transparency = NumberSequence.new(0, 1)
	end

	introsound = Instance.new("Sound",Head)
	introsound.SoundId = "rbxassetid://236146895"
	introsound.Volume = 8
	introsound:Play()


	fedora = Instance.new("Part",Character)
	fedora.Transparency = 1
	fedora.Size = Vector3.new(2,2,2)
	fedora.CFrame = Head.CFrame
	fedora.CanCollide = false
	fedoraweld = Instance.new("Weld",fedora)
	fedoraweld.Part0 = fedora
	fedoraweld.Part1 = Head
	fedoraweld.C0 = fedora.CFrame:inverse() * Head.CFrame * CFrame.new(0,-.75,0)
	mfedora = Instance.new("SpecialMesh", fedora)
	mfedora.MeshType = "FileMesh"
	mfedora.Scale = Vector3.new(.97, .97, .97)
	mfedora.MeshId,mfedora.TextureId = 'http://www.roblox.com/asset/?id=13640868','http://www.roblox.com/asset/?id=18987684'

	shades = Instance.new("Part",Character)
	shades.Size = Vector3.new(2,2,2)
	shades.Transparency = 1
	shades.CFrame = Head.CFrame
	shades.CanCollide = false
	shadesweld = Instance.new("Weld",shades)
	shadesweld.Part0 = shades
	shadesweld.Part1 = Head
	shadesweld.C0 = shades.CFrame:inverse() * Head.CFrame * CFrame.new(0,-.2,.15)
	mshades = Instance.new("SpecialMesh", shades)
	mshades.MeshType = "FileMesh"
	mshades.Scale = Vector3.new(1.04, 1.28, 1.04)
	mshades.MeshId,mshades.TextureId = 'http://www.roblox.com/asset/?id=1577360','http://www.roblox.com/asset/?id=1577349'



	coroutine.wrap(function()
	while wait() do
	hum.WalkSpeed = ws
	end
	end)()



	coroutine.wrap(function()
	for i,v in pairs(Character:GetChildren()) do
	if v.Name == "Animate" then v:Remove()
	end
	end
	end)()

	function damagealll(Radius,Position)		
		local Returning = {}		
		for _,v in pairs(workspace:GetChildren()) do		
			if v~=Character and v:FindFirstChildOfClass('Humanoid') and v:FindFirstChild('Torso') or v:FindFirstChild('UpperTorso') then
	if v:FindFirstChild("Torso") then		
				local Mag = (v.Torso.Position - Position).magnitude		
				if Mag < Radius then		
					table.insert(Returning,v)		
				end
	elseif v:FindFirstChild("UpperTorso") then	
				local Mag = (v.UpperTorso.Position - Position).magnitude		
				if Mag < Radius then		
					table.insert(Returning,v)		
				end
	end	
			end		
		end		
		return Returning		
	end

	ArtificialHB = Instance.new("BindableEvent", script)
	ArtificialHB.Name = "Heartbeat"
	script:WaitForChild("Heartbeat")

	frame = 1 / 60
	tf = 0
	allowframeloss = false
	tossremainder = false


	lastframe = tick()
	script.Heartbeat:Fire()


	game:GetService("RunService").Heartbeat:connect(function(s, p)
		tf = tf + s
		if tf >= frame then
			if allowframeloss then
				script.Heartbeat:Fire()
				lastframe = tick()
			else
				for i = 1, math.floor(tf / frame) do
					script.Heartbeat:Fire()
				end
				lastframe = tick()
			end
			if tossremainder then
				tf = 0
			else
				tf = tf - frame * math.floor(tf / frame)
			end
		end
	end)

	function swait(num)
		if num == 0 or num == nil then
			game:service("RunService").Stepped:wait(0)
		else
			for i = 0, num do
				game:service("RunService").Stepped:wait(0)
			end
		end
	end


	intro = true
	ws = 0

	bigfedora = Instance.new("Part",Character)
	bigfedora.Size = Vector3.new(2,2,2)
	bigfedora.CFrame = bigfedora.CFrame:inverse() * Root.CFrame * CFrame.new(math.random(-60,60),-.2,math.random(-60,60)) * CFrame.Angles(0,math.rad(math.random(-180,180)),0)
	bigfedora.CanCollide = false
	bigfedora.Anchored = true
	bigfedora.Name = "mbigf"
	mbigfedora = Instance.new("SpecialMesh", bigfedora)
	mbigfedora.MeshType = "FileMesh"
	mbigfedora.Scale = Vector3.new(6, 7, 7)
	mbigfedora.MeshId,mbigfedora.TextureId = 'http://www.roblox.com/asset/?id=13640868','http://www.roblox.com/asset/?id=18987684'

	for i = 1, 60 do
	bigfedora.CFrame = bigfedora.CFrame:lerp(CFrame.new(Root.Position) * CFrame.new(0,-.1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.09)
	swait()
	end
	wait(.25)

	for i = 1, 50 do
	bigfedora.CFrame = bigfedora.CFrame:lerp(CFrame.new(fedora.Position),.05)
	swait()
	end
	zmc = 0
	for i = 1, 29 do
	zmc = zmc + 2
	mbigfedora.Scale = mbigfedora.Scale - Vector3.new(.25,.25,.25)
	bigfedora.CFrame = bigfedora.CFrame * CFrame.Angles(math.rad(0),math.rad(zmc),0)
	swait()
	end
	bigfedora:Remove()

	ws = 14

	function SOUND(PARENT,ID,VOL,LOOP,REMOVE)
	so = Instance.new("Sound")
	so.Parent = PARENT
	so.SoundId = "rbxassetid://"..ID
	so.Volume = VOL
	so.Looped = LOOP

	so:Play()
	removeuseless:AddItem(so,REMOVE)
	end

	mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='k' then
	if dancing then
	dancing = false
	else
	dancing = true
	ws = 0
	change = .5
	attacking = true
	jam = Instance.new("Sound",Torso)
	jam.SoundId = "rbxassetid://665751753"
	jam.Volume = 8
	jam.Looped = true
	jam.TimePosition = 22.3
	jam:Play()
	lol90 = 0
	coroutine.wrap(function()
	while dancing do
	lol90 = lol90 + 11
	ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(1 * math.sin(sine/10),.1 + .8 * math.sin(sine/3),0) * CFrame.Angles(math.rad(0),math.rad(0 * math.sin(sine/8)),math.rad(8 * math.sin(sine/7))),.25)
	ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0 * math.sin(sine/14),0,0) * CFrame.Angles(math.rad(0),math.rad(lol90),0),.25)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,1.45,0) * CFrame.Angles(math.rad(180),math.rad(-5 * math.sin(sine/3)),math.rad(-6 * math.sin(sine/3))),0.25)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.4,1.45,0) * CFrame.Angles(math.rad(180),math.rad(5 * math.sin(sine/3)),math.rad(6 * math.sin(sine/3))), 0.25)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 , 0) * CFrame.Angles(0, math.rad(0), math.rad(-10 + 5 * math.sin(sine/3))), 0.25)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(0, math.rad(0), math.rad(10 - 5 * math.sin(sine/3))), 0.25)
	swait()
	end
	ws = 14
	jam:Remove()
	ROOTLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
	attacking = false
	end)()
	end
	end
	end)

	mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='j' then
	if dancing then
	dancing = false
	else
	dancing = true
	ws = 3
	change = .5
	attacking = true
	g1 = Instance.new("BodyGyro", Root)
	g1.D = 175
	g1.P = 20000
	g1.MaxTorque = Vector3.new(0,9000,0)
	herecomesthemoney = Instance.new("Sound",Torso)
	herecomesthemoney.Pitch = 1
	herecomesthemoney.SoundId = "rbxassetid://2426693638"
	herecomesthemoney.Volume = 8
	herecomesthemoney.Looped = true
	herecomesthemoney:Play()
	robuxpile = Instance.new("Part",Torso)
	robuxpile.Size = Vector3.new(1,1,1)
	robuxpile.CFrame = LeftArm.CFrame
	robuxpile.CanCollide = false
	robuxpileweld = Instance.new("Weld",robuxpile)
	robuxpileweld.Part0 = robuxpile
	robuxpileweld.Part1 = Torso
	robuxpileweld.C0 = robuxpile.CFrame:inverse() * LeftArm.CFrame * CFrame.new(1,-.7,1.4)
	mrobuxpile = Instance.new("SpecialMesh", robuxpile)
	mrobuxpile.MeshType = "FileMesh"
	mrobuxpile.Scale = Vector3.new(0.85, .85, .85)
	mrobuxpile.MeshId,mrobuxpile.TextureId = 'http://www.roblox.com/asset/?id=1285245','http://www.roblox.com/asset/?id=8587344'
	coroutine.wrap(function()
	coroutine.wrap(function()
	while wait(.35) do
	if not dancing then break end
	local robux = Instance.new("Part",Torso)
	robux.CFrame = robuxpile.CFrame * CFrame.Angles(math.rad(0),math.rad(90),math.rad(90))
	robux.Anchored = false
	robux.CanCollide = true
	robux.Size = Vector3.new(1,1,1)
	removeuseless:AddItem(robux,4)
	mrobux = Instance.new("SpecialMesh", robux)
	mrobux.MeshType = "FileMesh"
	mrobux.Scale = Vector3.new(1.25, 1.25, 1.25)
	mrobux.MeshId,mrobux.TextureId = 'http://www.roblox.com/asset/?id=667285348','http://www.roblox.com/asset/?id=665939136'
	bov = Instance.new("BodyVelocity",robux)
	bov.maxForce = Vector3.new(99999,99999,99999)
	robux.CFrame = CFrame.new(robux.Position,mouse.Hit.p)
	bov.velocity = robux.CFrame.lookVector*45
	removeuseless:AddItem(bov,.1)
	end
	end)()
	while dancing do
	g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
	ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,-.3,0) * CFrame.Angles(math.rad(20),math.rad(0 * math.sin(sine/8)),math.rad(0)),.25)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,.5 + .5 * math.sin(sine/2),.5) * CFrame.Angles(math.rad(-97),math.rad(40 - 20 * math.sin(sine/2)),math.rad(0)), 0.25)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1,.5,.5) * CFrame.Angles(math.rad(-87),math.rad(-20),math.rad(0)), 0.25)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 , .5) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-10)), 0.25)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, .5) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(10)), 0.25)
	swait()
	end
	ws = 14
	removeuseless:AddItem(g1,.001)
	robuxpile:Remove()
	attacking = false
	end)()
	end
	end
	end)

	mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='h' then
	if dancing then
	dancing = false
	else
	dancing = true
	ws = 0
	change = .5
	attacking = true
	jellyfishjam = Instance.new("Sound",Torso)
	jellyfishjam.SoundId = "rbxassetid://840189092"
	jellyfishjam.Volume = 8
	jellyfishjam.Looped = true
	jellyfishjam.TimePosition = 14.8
	jellyfishjam:Play()
	coroutine.wrap(function()
	while dancing do
	for i = 1, 15 do
	if not dancing then break end
	ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(.5,-.4 + .1 * math.sin(sine/4),0) * CFrame.Angles(math.rad(0),math.rad(20 * math.sin(sine/8)),math.rad(20)),.25)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(50 + 3 * math.sin(sine/12)),math.rad(3 - 1 * math.sin(sine/12))),.3)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(-50 - 3 * math.sin(sine/12)),math.rad(-3 + 1 * math.sin(sine/12))), .3)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.25, 2.05,-0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-35)), 0.25)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.31, 2.05,-0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(14)), 0.25)
	swait()
	end
	for i = 1, 15 do
	if not dancing then break end
	ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,-.1 * math.sin(sine/4),0) * CFrame.Angles(math.rad(0),math.rad(20 * math.sin(sine/8)),math.rad(0)),.25)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(50 + 3 * math.sin(sine/12)),math.rad(3 - 1 * math.sin(sine/12))),.3)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(-50 - 3 * math.sin(sine/12)),math.rad(-3 + 1 * math.sin(sine/12))), .3)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.25, .7,1.5) * CFrame.Angles(math.rad(72), math.rad(25), math.rad(-2)), 0.25)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(0, math.rad(0), math.rad(10)), 0.25)
	swait()
	end
	for i = 1, 15 do
	if not dancing then break end
	ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(-.5,-.4 + .1 * math.sin(sine/4),0) * CFrame.Angles(math.rad(0),math.rad(20 * math.sin(sine/8)),math.rad(-20)),.25)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(50 + 3 * math.sin(sine/12)),math.rad(3 - 1 * math.sin(sine/12))),.3)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(-50 - 3 * math.sin(sine/12)),math.rad(-3 + 1 * math.sin(sine/12))), .3)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 , 0) * CFrame.Angles(0, math.rad(0), math.rad(-10)), 0.25)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(-0.25, 2.05,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(35)), 0.25)
	swait()
	end
	for i = 1, 15 do
	if not dancing then break end
	ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(-.5,-.1,0) * CFrame.Angles(math.rad(0),math.rad(20 * math.sin(sine/8)),math.rad(0)),.25)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(50 + 3 * math.sin(sine/12)),math.rad(3 - 1 * math.sin(sine/12))),.3)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(-50 - 3 * math.sin(sine/12)),math.rad(-3 + 1 * math.sin(sine/12))), .3)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.31, 2.05,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-14)), 0.3)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.25, .7,1.5) * CFrame.Angles(math.rad(72), math.rad(-25), math.rad(-2)), 0.25)
	swait()
	end
	swait()
	end
	ws = 14
	attacking = false
	end)()
	end
	end
	end)

	mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='g' then
	if dancing then
	dancing = false
	else
	dancing = true
	ws = 0
	change = .5
	attacking = true
	deadmau7 = Instance.new("Sound",Torso)
	deadmau7.SoundId = "rbxassetid://168166611"
	deadmau7.Volume = 8
	deadmau7.Looped = true
	deadmau7:Play()
	coroutine.wrap(function()
	coroutine.wrap(function()
	while dancing do
	ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(2 * math.sin(sine/9),-.4 + .1 * math.sin(sine/3),0) * CFrame.Angles(math.rad(0),math.rad(20 * math.sin(sine/9)),0),.25)
	swait()
	end
	end)()
	while dancing do
	for i = 1, 28 do
	if not dancing then break end
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(50 + 3 * math.sin(sine/12)),math.rad(3 - 1 * math.sin(sine/12))),.2)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,1.5,0) * CFrame.Angles(math.rad(180 - 7 * math.sin(sine/3)),math.rad(7 * math.sin(sine/3)),math.rad(7*math.sin(sine/3))), 0.2)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, .7,1) * CFrame.Angles(math.rad(75 - 10 * math.sin(sine/2)), math.rad(0), math.rad(0)), 0.25)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.31, 2.05,-.1) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-2)), 0.3)
	swait()
	end
	for i = 1, 28 do
	if not dancing then break end
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.9,.65 + .4 * math.sin(sine/12),1.2) * CFrame.Angles(math.rad(-35 - 15 * math.sin(sine/12)),math.rad(50 + 3 * math.sin(sine/12)),math.rad(3 - 1 * math.sin(sine/12))),.2)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,1.5,0) * CFrame.Angles(math.rad(180 - 7 * math.sin(sine/3)),math.rad(7 * math.sin(sine/3)),math.rad(7*math.sin(sine/3))), 0.2)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.31, 2.05,.1) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(-8)), 0.25)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, .7,1.1) * CFrame.Angles(math.rad(75 - 10 * math.sin(sine/2)), math.rad(0), math.rad(-2)), 0.25)
	swait()
	end
	swait()
	end
	ws = 14
	deadmau7:Remove()
	attacking = false
	end)()
	end
	end
	end)

	mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='f' then
	if dancing then
	dancing = false
	else
	dancing = true
	ws = 6
	change = .5
	attacking = true
	bennyhill = Instance.new("Sound",Torso)
	bennyhill.SoundId = "rbxassetid://138211362"
	bennyhill.Volume = 8
	bennyhill.Looped = true
	bennyhill:Play()
	coroutine.wrap(function()
	while dancing do
	ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(0,-.4,0) * CFrame.Angles(math.rad(20 + 5 * math.sin(sine/2)),math.rad(10 * math.sin(sine/4)),0),.25)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.89 - .4 * -math.sin(sine/2),.49) * CFrame.Angles(math.rad(-70 + 20 * -math.sin(sine/2)),0,math.rad(0)),.25)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.89 - .4 * math.sin(sine/2),.49) * CFrame.Angles(math.rad(-70  + 20 * math.sin(sine/2)),0,math.rad(0)),.25)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.33, 2, -.2 + .3 * math.sin(sine/2)) * CFrame.Angles(math.rad(-20 - 20 * -math.sin(sine/2)), math.rad(0), math.rad(-8)), 0.25)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.33, 2.0,-.2 - .3 * math.sin(sine/2)) * CFrame.Angles(math.rad(-20 - 20 * math.sin(sine/2)), math.rad(0), math.rad(8)), 0.25)
	swait()
	end
	ws = 14
	bennyhill:Remove()
	attacking = false
	end)()
	end
	end
	end)

	mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='p' then
	if dancing then
	dancing = false
	else
	dancing = true
	ws = 0
	change = .5
	attacking = true
	barrelspin = 0
	barrelrollsound = Instance.new("Sound",Torso)
	barrelrollsound.SoundId = "rbxassetid://505320170"
	barrelrollsound.Volume = 8
	barrelrollsound.Looped = true
	barrelrollsound:Play()
	barrol = Instance.new("Part",Torso)
	barrol.Size = Vector3.new(1,1,1)
	barrol.CFrame = Torso.CFrame
	barrol.CanCollide = false
	barrolweld = Instance.new("Weld",barrol)
	barrolweld.Part0 = barrol
	barrolweld.Part1 = Torso
	barrolweld.C0 = barrol.CFrame:inverse() * Torso.CFrame * CFrame.new(0,0,0)
	mbarrol = Instance.new("SpecialMesh", barrol)
	mbarrol.MeshType = "FileMesh"
	mbarrol.Scale = Vector3.new(1.05, .95, 1.05)
	mbarrol.MeshId,mbarrol.TextureId = 'http://www.roblox.com/asset/?id=29873142','http://www.roblox.com/asset/?id=31082268'
	coroutine.wrap(function()
	while dancing do
	ROOTLERP.C0 = ROOTLERP.C0:Lerp(CFrame.new(5 * math.sin(sine/8),-1.8,0) * CFrame.Angles(math.rad(-90),math.rad(180 * math.sin(sine/8)),0),.25)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,1.5,0) * CFrame.Angles(math.rad(180),0,math.rad(0)),.25)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,1.5,0) * CFrame.Angles(math.rad(180),0,math.rad(0)),.25)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(.5,2,0) * CFrame.Angles(0,0,0),.25)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.5,2,0) * CFrame.Angles(0,0,0),.25)
	swait()
	end
	ws = 14
	barrol:Remove()
	attacking = false
	end)()
	end
	end
	end)

	mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='q' then
	if dancing then
	dancing = false
	else
	dancing = true
	ws = 0
	change = .5
	spinningmove = 0
	dbwouldlovethis = Instance.new("Sound",Torso)
	dbwouldlovethis.SoundId = "rbxassetid://1532157598"
	dbwouldlovethis.Volume = 8
	dbwouldlovethis.Looped = true
	dbwouldlovethis:Play()
	attacking = true
	coroutine.wrap(function()
	while dancing do
	spinningmove = spinningmove + 10
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.9, -.35) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)),.2)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.9, .35) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)),.2)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.2 * math.sin(sine/3), -.52, .2 * math.sin(sine/4)) * CFrame.Angles(math.rad(180),math.rad(spinningmove),math.rad(15 * math.sin(sine/9))),.2)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,1.45,0) * CFrame.Angles(math.rad(180),math.rad(-1),math.rad(-3 * math.sin(sine/2))),0.3)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.4,1.45,0) * CFrame.Angles(math.rad(180),math.rad(1),math.rad(3 * math.sin(sine/2))), 0.3)
	swait()
	end
	ws = 14
	dbwouldlovethis:Remove()
	attacking = false
	end)()
	end
	end
	end)


	mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='u' then
	if dancing then
	dancing = false
	else
	dancing = true
	ws = 6
	change = .5
	attacking = true
	slavdance = Instance.new("Sound",Torso)
	slavdance.SoundId = "rbxassetid://2341226836"
	slavdance.Volume = 6
	slavdance.Looped = true
	slavdance:Play()
	coroutine.wrap(function()
	while dancing do
	for i = 1, 17 do
	if not dancing then break end
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.5, -.5) * CFrame.Angles(math.rad(-60), math.rad(0), math.rad(0)),.2)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.2, .55) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)),.2)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.8 + .1 * math.sin(sine/3), 0) * CFrame.Angles(math.rad(22 - 2 * math.sin(sine/3)),math.rad(0),math.rad(0)),.2)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-87 + .01 * math.sin(sine/9)),math.rad(80 - 3 * math.sin(sine/9)),math.rad(0)), 0.3)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.7,-.2,.4) * CFrame.Angles(math.rad(-87 - .01 * math.sin(sine/9)),math.rad(-88 + .7 * math.sin(sine/9)),math.rad(0)), 0.3)
	swait()
	end
	for i = 1, 17 do
	if not dancing then break end
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.52, 1.2, .55) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)),.2)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.52, 1.5, -.5) * CFrame.Angles(math.rad(-60), math.rad(0), math.rad(0)),.2)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.8 + .1 * math.sin(sine/3), 0) * CFrame.Angles(math.rad(22 - 2 * math.sin(sine/3)),math.rad(0),math.rad(0)),.2)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-87 + .01 * math.sin(sine/9)),math.rad(80 - 3 * math.sin(sine/9)),math.rad(0)), 0.3)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.7,-.2,.4) * CFrame.Angles(math.rad(-87 - .01 * math.sin(sine/9)),math.rad(-88 + .7 * math.sin(sine/9)),math.rad(0)), 0.3)
	swait()
	end
	swait()
	end
	ws = 14
	slavdance:Remove()
	attacking = false
	end)()
	end
	end
	end)

	mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='y' then
	if dancing then
	dancing = false
	else
	dancing = true
	ws = 0
	change = .5
	walkforward = 0
	walkrotation = 0
	attacking = true
	truelegend = Instance.new("Sound",Torso)
	truelegend.SoundId = "rbxassetid://487872908"
	truelegend.TimePosition = 13.98
	truelegend.Volume = 8
	truelegend.Looped = true
	truelegend:Play()
	coroutine.wrap(function()
	while dancing do
	for i = 1, 100 do
	if not dancing then break end
	walkforward = walkforward + .1
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.31, 2.05 , .1 * math.sin(sine/4)) * CFrame.Angles(math.rad(10 * math.sin(sine/4)), math.rad(0), math.rad(-8)), 0.3)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.31, 2.05, -.15 * math.sin(sine/4)) * CFrame.Angles(math.rad(-10 * math.sin(sine/4)), math.rad(0), math.rad(8)), 0.3)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, walkforward) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.2)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(0,0,math.rad(0)),.3)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,0,0) * CFrame.Angles(0,0,math.rad(0)),.3)
	swait()
	end
	for i = 1, 50 do
	if not dancing then break end
	walkrotation = walkrotation + 15
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, walkforward) * CFrame.Angles(math.rad(0),math.rad(walkrotation),math.rad(-0)),.2)
	swait()
	end
	walkrotation = 0
	for i = 1, 100 do
	if not dancing then break end
	walkforward = walkforward - .1
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.31, 2 , .1 * math.sin(sine/4)) * CFrame.Angles(math.rad(10 * math.sin(sine/4)), math.rad(0), math.rad(-8)), 0.3)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.31, 2, -.15 * math.sin(sine/4)) * CFrame.Angles(math.rad(-10 * math.sin(sine/4)), math.rad(0), math.rad(8)), 0.3)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, walkforward) * CFrame.Angles(math.rad(0),math.rad(-180),math.rad(-0)),.2)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3,.7,.2) * CFrame.Angles(math.rad(220),math.rad(0),math.rad(-30)), 0.4)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,0,0) * CFrame.Angles(0,0,math.rad(0)),.3)
	swait()
	end
	for i = 1, 50 do
	if not dancing then break end
	walkrotation = walkrotation + 15
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(0,0,math.rad(0)),.1)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, walkforward) * CFrame.Angles(math.rad(0),math.rad(walkrotation),math.rad(-0)),.2)
	swait()
	end
	walkrotation = 0
	swait()
	end
	ws = 14
	truelegend:Remove()
	attacking = false
	end)()
	end
	end
	end)

	mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='t' then
	if dancing then
	dancing = false
	else
	dancing = true
	ws = 0
	change = .5
	attacking = true
	plummusic = Instance.new("Sound",Torso)
	plummusic.Volume = 8
	plummusic.Looped = true
	plummusic.SoundId = "rbxassetid://2526093213"
	plummusic:Play()
	coroutine.wrap(function()
	while dancing do
	for i = 1, 20 do
	if not dancing then break end
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.33, 2 , .05) * CFrame.Angles(math.rad(3), math.rad(0), math.rad(-8)), 0.2)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.33, 2.0, -.05) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(8)), 0.2)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0),math.rad(0*math.sin(sine/4)),math.rad(15)),.2)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(.5,1.98,.05) * CFrame.Angles(0,0,math.rad(-140)),.2)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,1.3,.05) * CFrame.Angles(0,0,math.rad(50)),.2)
	swait()
	end
	for i = 1, 20 do
	if not dancing then break end
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.33, 2, .05) * CFrame.Angles(math.rad(3), math.rad(0), math.rad(-8)), 0.2)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.33, 2.0, -.05) * CFrame.Angles(math.rad(-3), math.rad(0), math.rad(8)), 0.2)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0),math.rad(0*math.sin(sine/4)),math.rad(-15)),.2)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1,1.4,.05) * CFrame.Angles(0,0,math.rad(-50)),.2)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(-.6,2,.05) * CFrame.Angles(0,0,math.rad(140)),.2)
	swait()
	end
	swait()
	end
	ws = 14
	plummusic:Remove()
	attacking = false
	end)()
	end
	end
	end)

	mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='e' then
	if dancing then
	dancing = false
	else
	dancing = true
	ws = 0
	change = .5
	attacking = true
	mrozo = Instance.new("Sound",Torso)
	mrozo.Volume = 8
	mrozo.SoundId = "rbxassetid://335701357"
	mrozo.Looped = true
	mrozo.TimePosition = 10
	mrozo:Play()
	coroutine.wrap(function()
	while dancing do
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 , 0) * CFrame.Angles(0, math.rad(0), math.rad(-10)), 0.1)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(0, math.rad(0), math.rad(10)), 0.1)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0),math.rad(0*math.sin(sine/4)),math.rad(15*math.sin(sine/4))),.2)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.3 + .3 * math.sin(sine/3.5),.5 * -math.sin(sine/3.5),.1) * CFrame.Angles(math.rad(0 * math.sin(sine/2)),0,math.rad(30 * math.sin(sine/3.5))),.2)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3 + .3 * math.sin(sine/3.5),.5 * math.sin(sine/3.5),.1) * CFrame.Angles(math.rad(0 * math.sin(sine/2)),0,math.rad(30 * math.sin(sine/3.5))),.2)
	swait()
	end
	mrozo:Remove()
	ws = 14
	attacking = false
	end)()
	end
	end
	end)

	mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='r' then
	if dancing then
	dancing = false
	else
	ws = 6
	recordbaby = 0
	dancing = true
	change = .5
	attacking = true
	spinme = Instance.new("Sound",Torso)
	spinme.Volume = 8
	spinme.SoundId = "rbxassetid://145799973"
	spinme.Looped = true
	spinme:Play()
	coroutine.wrap(function()
	while dancing do
	recordbaby = recordbaby + 10
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.27, 2 , .1 * math.sin(sine/4)) * CFrame.Angles(math.rad(10 * math.sin(sine/4)), math.rad(0), math.rad(-8)), 0.3)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.27, 2.0, -.1 * math.sin(sine/4)) * CFrame.Angles(math.rad(-10 * math.sin(sine/4)), math.rad(0), math.rad(8)), 0.3)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.5 * math.sin(sine/5), -.2, .5 * math.sin(sine/4)) * CFrame.Angles(math.rad(0),math.rad(recordbaby),math.rad(0)),.3)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5,1.98,0) * CFrame.Angles(0,0,math.rad(-90)),.3)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.5,1.98,0) * CFrame.Angles(0,0,math.rad(90)),.3)
	swait()
	end
	spinme:Remove()
	ws = 14
	attacking = false
	end)()
	end
	end
	end)

	function ray(pos, dir, rang, ignoredesc)
		return workspace:FindPartOnRay(Ray.new(pos, dir.unit * rang), ignoredesc)
	end

	function ray2(startpos, endpos, distance, ignore)
	local dir = CFrame.new(startpos,endpos).lookVector
	return ray(startpos, dir, distance, ignore)
	end

	checks1 = coroutine.wrap(function() -------Checks
	while true do
	hf = ray(Root.Position,(CFrame.new(Root.Position,Root.Position+Vector3.new(0,-1,0))).lookVector,3*3,Character)
	if Root.Velocity.y > 1 then
	position = "Jump"
	elseif Root.Velocity.y < -1 then
	position = "Falling"
	elseif Root.Velocity.Magnitude < 2 then
	position = "Idle"
	elseif Root.Velocity.Magnitude > 2 then
	position = "Walking"
	elseif Root.Velocity.Magnitude > 20 then
	position = "Running"
	else
	end
	wait()
	end
	end)
	checks1()

	function ray(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
		return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
	end

	function ray2(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CFrame.new(StartPos,EndPos).lookVector
	return ray(StartPos, DIRECTION, Distance, Ignore)
	end

	OrgnC0 = Neck.C0
	local movelimbs = coroutine.wrap(function()
	while RunSrv.RenderStepped:wait() do
	TrsoLV = Torso.CFrame.lookVector
	Dist = nil
	Diff = nil
	if not MseGuide then
	print("Failed to recognize")
	else
	local _, Point = Workspace:FindPartOnRay(Ray.new(Head.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
	Dist = (Head.CFrame.p-Point).magnitude
	Diff = Head.CFrame.Y-Point.Y
	local _, Point2 = Workspace:FindPartOnRay(Ray.new(LeftArm.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
	Dist2 = (LeftArm.CFrame.p-Point).magnitude
	Diff2 = LeftArm.CFrame.Y-Point.Y
	HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
	Neck.C0 = Neck.C0:lerp(OrgnC0*CFrame.Angles((math.tan(Diff/Dist)*1), 0, (((Head.CFrame.p-Point).Unit):Cross(Torso.CFrame.lookVector)).Y*1), .1)
	end
	end
	end)
	movelimbs()
	immortal = {}
	for i,v in pairs(Character:GetDescendants()) do
		if v:IsA("BasePart") and v.Name ~= "lmagic" and v.Name ~= "rmagic" then
			if v ~= Root and v ~= Torso and v ~= Head and v ~= RightArm and v ~= LeftArm and v ~= RightLeg and v.Name ~= "lmagic" and v.Name ~= "rmagic" and v ~= LeftLeg then
				v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
			end
			table.insert(immortal,{v,v.Parent,v.Material,v.Color,v.Transparency})
		elseif v:IsA("JointInstance") then
			table.insert(immortal,{v,v.Parent,nil,nil,nil})
		end
	end
	for e = 1, #immortal do
		if immortal[e] ~= nil then
			local STUFF = immortal[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
	if levitate then
			if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= eyo1 and PART.Name ~= eyo2 and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			PART.AncestryChanged:connect(function()
				PART.Parent = PARENT
			end)
	else
			if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			PART.AncestryChanged:connect(function()
				pcall(function()
				PART.Parent = PARENT
			end)
			end)
	end
		end
	end
	function immortality()
		
	end
	coroutine.wrap(function()
	while true do
	if hum.Health < .1 then

	end
	wait()
	end
	end)()

	local anims = coroutine.wrap(function()
	while true do
	settime = 0.05
	sine = sine + change
	if position == "Jump" and attacking == false then
	change = 1
	spin = false
	for i,v in pairs(Torso:GetChildren()) do if v:IsA("Sound") then v:Remove() end end
	LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
	RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
	LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(-3),math.rad(-4)), 0.2)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.2)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
	elseif position == "Falling" and attacking == false then
	change = 1
	spin = false
	for i,v in pairs(Torso:GetChildren()) do if v:IsA("Sound") then v:Remove() end end
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.15)
	LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
	RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
	LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.2)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(-4), math.rad(0)), 0.2)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.94 + .02 * math.sin(sine/12),-0) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(45)), 0.2)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.94 + .02 * math.sin(sine/12),-0) * CFrame.Angles(math.rad(28 + 5 * math.sin(sine/12)),math.rad(0),math.rad(-45)), 0.2)
	elseif position == "Walking" and attacking == false and running == false then
	change = 1.2
	walking = true
	spin = false
	for i,v in pairs(Torso:GetChildren()) do if v:IsA("Sound") then v:Remove() end end
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5 + Root.RotVelocity.Y / 85,.35,-.5*math.sin(sine/11)) * CFrame.Angles(math.rad(35*math.sin(sine/11)),math.rad(0*math.sin(sine/11)),math.rad(-10 + Root.RotVelocity.Y / 10, math.sin(-20 * math.sin(sine/4)))),.3)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5 + Root.RotVelocity.Y / 85,.45,.5*math.sin(sine/11)) * CFrame.Angles(math.rad(-55*math.sin(sine/11)),math.rad(-5*math.sin(sine/8)),math.rad(10 + Root.RotVelocity.Y / 10, math.sin(20 * math.sin(sine/4)))),.3)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.15 * 0.6*-math.sin(sine/5.5), 0) * CFrame.Angles(math.rad(10), math.rad(12 * -math.sin(sine/11)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/10))), 0.3)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/11)/2.8, -.2  + 0.2 - math.sin(sine/11)/3.4) * CFrame.Angles(math.rad(25 - 25) + -math.sin(sine/11)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0), math.cos(-15 * 25 * math.cos(sine/11))), 0.3)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/11)/2.8, -.2 + 0.2 + math.sin(sine/11)/3.4) * CFrame.Angles(math.rad(25 - 25) - -math.sin(sine/11)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0) , math.cos(-15 * 25 * math.cos(sine/11))), 0.3)
	elseif position == "Idle" and attacking == false and running == false then
	change = .5
	spin = true
	for i,v in pairs(Torso:GetChildren()) do if v:IsA("Sound") then v:Remove() end end
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(6 * -math.sin(sine/12)),math.rad(0),math.rad(0)),.1)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.27 + .02 * math.sin(sine/12),.20 * -math.sin(sine/12)) * CFrame.Angles(math.rad(20 * math.sin(sine/12)),math.rad(0),math.rad(10)), 0.1)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.27 + .02 * math.sin(sine/12),.20 * -math.sin(sine/12)) * CFrame.Angles(math.rad(20 * math.sin(sine/12)),math.rad(0),math.rad(-10)), 0.1)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(6 * -math.sin(sine/12)), math.rad(0), math.rad(-10)), 0.1)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(6 * -math.sin(sine/12)), math.rad(0), math.rad(10)), 0.1)
	elseif position == "Running" and attacking == false then
	change = 1
	for i,v in pairs(Torso:GetChildren()) do if v:IsA("Sound") then v:Remove() end end
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(0, .5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.3)
	LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(-1.24+.6*math.sin(sine/4)/1.4, 0.54, 0-0.8*math.sin(sine/4))*CFrame.Angles(math.rad(6+140*math.sin(sine/4)/1.2), math.rad(0), math.rad(20+70*math.sin(sine/4))), 0.3)
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0,.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.3)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(-20 - 0 * math.sin(sine/4)), math.rad(0 + 6 * math.sin(sine/4)), math.rad(0) + Root.RotVelocity.Y / 30, math.sin(10 * math.sin(sine/4))), 0.3)
	RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,-.2 + .5*-math.sin(sine/4)),.3)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.6+0.1*math.sin(sine/4),.7*-math.sin(sine/4)) * CFrame.Angles(math.rad(15+ -50 * math.sin(sine/4)),0,0),.3)
	LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,-.2 + .5*math.sin(sine/4)),.3)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.6-0.1*math.sin(sine/4),.7*math.sin(sine/4)) * CFrame.Angles(math.rad(15 + 50 * math.sin(sine/4)),0,0),.3)
	end
	swait()
	end
	end)
	anims()
	else
		Neg()
		Notification("Not Reanimated! >:(")
	end
end)

Section3A:NewButton("Ender", "Created by: makhail07", function()
	if game.Players.LocalPlayer.Character:FindFirstChild("TalentlessDumbass") then
		
	-----------------------
	--[[ Organization : Insanity ]]--
	--[[ Name : Ender (Thou who collects the souls of innocents) ]]--
	--[[ Creator / Captain : DATA RESTRICTED ]]--
	-------------------------------------------------------
	--A script By makhail07

	--Discord Creterisk#2958

	--This script is a fucking mistake have fun skids
	-------------------------------------------------------

	local FavIDs = {
		340106355, --Nefl Crystals
		927529620, --Dimension
		876981900, --Fantasy
		398987889, --Ordinary Days
		1117396305, --Oh wait, it's you.
		885996042, --Action Winter Journey
		919231299, --Sprawling Idiot Effigy
		743466274, --Good Day Sunshine
		727411183, --Knife Fight
		1402748531, --The Earth Is Counting On You!
		595230126 --Robot Language
		}


	loadstring(game:HttpGet("https://pastebin.com/raw/uxN7jP7X"))()
	print("Creator: makhail07")
	wait()
	local plr = game.Players.LocalPlayer
	local char = plr.Character.TalentlessDumbass
	if plr.Character:FindFirstChild("BBBBB") then
		Notification("You are already running a script! reset to change script!")
	return
	end
	AntiScriptLoad()
	char.Animate:Destroy()
	local hum = char.Humanoid
	local ra = char["Right Arm"]
	local la= char["Left Arm"]
	local rl= char["Right Leg"]
	local ll = char["Left Leg"]
	local hed = char.Head
	local root = char.HumanoidRootPart
	local rootj = root.RootJoint
	local tors = char.Torso
	local mouse = plr:GetMouse()
	local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
	local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
	local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)

	-------------------------------------------------------
	--Start Good Stuff--
	-------------------------------------------------------
	CF = CFrame.new
	angles = CFrame.Angles
	attack = false
	Euler = CFrame.fromEulerAnglesXYZ
	Rad = math.rad
	IT = Instance.new
	BrickC = BrickColor.new
	Cos = math.cos
	Acos = math.acos
	Sin = math.sin
	Asin = math.asin
	Abs = math.abs
	Mrandom = math.random
	Floor = math.floor
	-------------------------------------------------------
	--End Good Stuff--
	-------------------------------------------------------
	necko = CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
	RSH, LSH = nil, nil 
	RW = Instance.new("Weld") 
	LW = Instance.new("Weld")
	RH = tors["Right Hip"]
	LH = tors["Left Hip"]
	RSH = tors["Right Shoulder"] 
	LSH = tors["Left Shoulder"] 
	RSH.Parent = nil 
	LSH.Parent = nil 
	RW.Name = "RW"
	RW.Part0 = tors 
	RW.C0 = CF(1.5, 0.5, 0)
	RW.C1 = CF(0, 0.5, 0) 
	RW.Part1 = ra
	RW.Parent = tors 
	LW.Name = "LW"
	LW.Part0 = tors 
	LW.C0 = CF(-1.5, 0.5, 0)
	LW.C1 = CF(0, 0.5, 0) 
	LW.Part1 = la
	LW.Parent = tors
	Effects = {}

	-------------------------------------------------------
	--Start HeartBeat--
	-------------------------------------------------------
	ArtificialHB = Instance.new("BindableEvent", script)
	ArtificialHB.Name = "Heartbeat"
	script:WaitForChild("Heartbeat")

	frame = 1 / 60
	tf = 0
	allowframeloss = false
	tossremainder = false


	lastframe = tick()
	script.Heartbeat:Fire()


	game:GetService("RunService").Heartbeat:connect(function(s, p)
		tf = tf + s
		if tf >= frame then
			if allowframeloss then
				script.Heartbeat:Fire()
				lastframe = tick()
			else
				for i = 1, math.floor(tf / frame) do
					script.Heartbeat:Fire()
				end
				lastframe = tick()
			end
			if tossremainder then
				tf = 0
			else
				tf = tf - frame * math.floor(tf / frame)
			end
		end
	end)
	-------------------------------------------------------
	--End HeartBeat--
	-------------------------------------------------------

	-------------------------------------------------------
	--Start Important Functions--
	-------------------------------------------------------
	function swait(num)
		if num == 0 or num == nil then
			game:service("RunService").Stepped:wait(0)
		else
			for i = 0, num do
				game:service("RunService").Stepped:wait(0)
			end
		end
	end
	function thread(f)
		coroutine.resume(coroutine.create(f))
	end
	function clerp(a, b, t)
		local qa = {
			QuaternionFromCFrame(a)
		}
		local qb = {
			QuaternionFromCFrame(b)
		}
		local ax, ay, az = a.x, a.y, a.z
		local bx, by, bz = b.x, b.y, b.z
		local _t = 1 - t
		return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
	end
	function QuaternionFromCFrame(cf)
		local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
		local trace = m00 + m11 + m22
		if trace > 0 then
			local s = math.sqrt(1 + trace)
			local recip = 0.5 / s
			return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
		else
			local i = 0
			if m00 < m11 then
				i = 1
			end
			if m22 > (i == 0 and m00 or m11) then
				i = 2
			end
			if i == 0 then
				local s = math.sqrt(m00 - m11 - m22 + 1)
				local recip = 0.5 / s
				return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
			elseif i == 1 then
				local s = math.sqrt(m11 - m22 - m00 + 1)
				local recip = 0.5 / s
				return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
			elseif i == 2 then
				local s = math.sqrt(m22 - m00 - m11 + 1)
				local recip = 0.5 / s
				return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
			end
		end
	end
	function QuaternionToCFrame(px, py, pz, x, y, z, w)
		local xs, ys, zs = x + x, y + y, z + z
		local wx, wy, wz = w * xs, w * ys, w * zs
		local xx = x * xs
		local xy = x * ys
		local xz = x * zs
		local yy = y * ys
		local yz = y * zs
		local zz = z * zs
		return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
	end
	function QuaternionSlerp(a, b, t)
		local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
		local startInterp, finishInterp
		if cosTheta >= 1.0E-4 then
			if 1 - cosTheta > 1.0E-4 then
				local theta = math.acos(cosTheta)
				local invSinTheta = 1 / Sin(theta)
				startInterp = Sin((1 - t) * theta) * invSinTheta
				finishInterp = Sin(t * theta) * invSinTheta
			else
				startInterp = 1 - t
				finishInterp = t
			end
		elseif 1 + cosTheta > 1.0E-4 then
			local theta = math.acos(-cosTheta)
			local invSinTheta = 1 / Sin(theta)
			startInterp = Sin((t - 1) * theta) * invSinTheta
			finishInterp = Sin(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
		return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
	end
	function rayCast(Position, Direction, Range, Ignore)
		return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
	end
	local RbxUtility = LoadLibrary("RbxUtility")
	local Create = RbxUtility.Create

	-------------------------------------------------------
	--Start Damage Function--
	-------------------------------------------------------
	function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)

	end
	-------------------------------------------------------
	--End Damage Function--
	-------------------------------------------------------

	-------------------------------------------------------
	--Start Damage Function Customization--
	-------------------------------------------------------
	function ShowDamage(Pos, Text, Time, Color)
		local Rate = (1 / 30)
		local Pos = (Pos or Vector3.new(0, 0, 0))
		local Text = (Text or "")
		local Time = (Time or 2)
		local Color = (Color or Color3.new(1, 0, 1))
		local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
		EffectPart.Anchored = true
		local BillboardGui = Create("BillboardGui"){
			Size = UDim2.new(3, 0, 3, 0),
			Adornee = EffectPart,
			Parent = EffectPart,
		}
		local TextLabel = Create("TextLabel"){
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Text = Text,
			Font = "Bodoni",
			TextColor3 = Color,
			TextScaled = true,
			TextStrokeColor3 = Color3.fromRGB(0,0,0),
			Parent = BillboardGui,
		}
		game.Debris:AddItem(EffectPart, (Time))
		EffectPart.Parent = game:GetService("Workspace")
		delay(0, function()
			local Frames = (Time / Rate)
			for Frame = 1, Frames do
				wait(Rate)
				local Percent = (Frame / Frames)
				EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
				TextLabel.TextTransparency = Percent
			end
			if EffectPart and EffectPart.Parent then
				EffectPart:Destroy()
			end
		end)
	end
	-------------------------------------------------------
	--End Damage Function Customization--
	-------------------------------------------------------

	function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
	 
	end


	CFuncs = {
		Part = {
			Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
				local Part = Create("Part")({
					Parent = Parent,
					Reflectance = Reflectance,
					Transparency = Transparency,
					CanCollide = false,
					Locked = true,
					BrickColor = BrickColor.new(tostring(BColor)),
					Name = Name,
					Size = Size,
					Material = Material
				})
				RemoveOutlines(Part)
				return Part
			end
		},
		Mesh = {
			Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
				local Msh = Create(Mesh)({
					Parent = Part,
					Offset = OffSet,
					Scale = Scale
				})
				if Mesh == "SpecialMesh" then
					Msh.MeshType = MeshType
					Msh.MeshId = MeshId
				end
				return Msh
			end
		},
		Mesh = {
			Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
				local Msh = Create(Mesh)({
					Parent = Part,
					Offset = OffSet,
					Scale = Scale
				})
				if Mesh == "SpecialMesh" then
					Msh.MeshType = MeshType
					Msh.MeshId = MeshId
				end
				return Msh
			end
		},
		Weld = {
			Create = function(Parent, Part0, Part1, C0, C1)
				local Weld = Create("Weld")({
					Parent = Parent,
					Part0 = Part0,
					Part1 = Part1,
					C0 = C0,
					C1 = C1
				})
				return Weld
			end
		},
		Sound = {
			Create = function(id, par, vol, pit)
				coroutine.resume(coroutine.create(function()
					local S = Create("Sound")({
						Volume = vol,
						Pitch = pit or 1,
						SoundId = id,
						Parent = par or workspace
					})
					wait()
					S:play()
					game:GetService("Debris"):AddItem(S, 6)
				end))
			end
		},
		ParticleEmitter = {
			Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
				local fp = Create("ParticleEmitter")({
					Parent = Parent,
					Color = ColorSequence.new(Color1, Color2),
					LightEmission = LightEmission,
					Size = Size,
					Texture = Texture,
					Transparency = Transparency,
					ZOffset = ZOffset,
					Acceleration = Accel,
					Drag = Drag,
					LockedToPart = LockedToPart,
					VelocityInheritance = VelocityInheritance,
					EmissionDirection = EmissionDirection,
					Enabled = Enabled,
					Lifetime = LifeTime,
					Rate = Rate,
					Rotation = Rotation,
					RotSpeed = RotSpeed,
					Speed = Speed,
					VelocitySpread = VelocitySpread
				})
				return fp
			end
		}
	}
	function RemoveOutlines(part)
		part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
	end
	function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
		local Part = Create("Part")({
			formFactor = FormFactor,
			Parent = Parent,
			Reflectance = Reflectance,
			Transparency = Transparency,
			CanCollide = false,
			Locked = true,
			BrickColor = BrickColor.new(tostring(BColor)),
			Name = Name,
			Size = Size,
			Material = Material
		})
		RemoveOutlines(Part)
		return Part
	end
	function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
		local Msh = Create(Mesh)({
			Parent = Part,
			Offset = OffSet,
			Scale = Scale
		})
		if Mesh == "SpecialMesh" then
			Msh.MeshType = MeshType
			Msh.MeshId = MeshId
		end
		return Msh
	end
	function CreateWeld(Parent, Part0, Part1, C0, C1)
		local Weld = Create("Weld")({
			Parent = Parent,
			Part0 = Part0,
			Part1 = Part1,
			C0 = C0,
			C1 = C1
		})
		return Weld
	end


	-------------------------------------------------------
	--Start Effect Function--
	-------------------------------------------------------
	EffectModel = Instance.new("Model", char)
	Effects = {
	  Block = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
		  local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
		  prt.Anchored = true
		  prt.CFrame = cframe
		  local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
		  game:GetService("Debris"):AddItem(prt, 10)
		  if Type == 1 or Type == nil then
			table.insert(Effects, {
			  prt,
			  "Block1",
			  delay,
			  x3,
			  y3,
			  z3,
			  msh
			})
		  elseif Type == 2 then
			table.insert(Effects, {
			  prt,
			  "Block2",
			  delay,
			  x3,
			  y3,
			  z3,
			  msh
			})
		  else
			table.insert(Effects, {
			  prt,
			  "Block3",
			  delay,
			  x3,
			  y3,
			  z3,
			  msh
			})
		  end
		end
	  },
	  Sphere = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
		  local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
		  prt.Anchored = true
		  prt.CFrame = cframe
		  local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
		  game:GetService("Debris"):AddItem(prt, 10)
		  table.insert(Effects, {
			prt,
			"Cylinder",
			delay,
			x3,
			y3,
			z3,
			msh
		  })
		end
	  },
	  Cylinder = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
		  local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
		  prt.Anchored = true
		  prt.CFrame = cframe
		  local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
		  game:GetService("Debris"):AddItem(prt, 10)
		  table.insert(Effects, {
			prt,
			"Cylinder",
			delay,
			x3,
			y3,
			z3,
			msh
		  })
		end
	  },
	  Wave = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
		  local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
		  prt.Anchored = true
		  prt.CFrame = cframe
		  local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1 / 60, y1 / 60, z1 / 60))
		  game:GetService("Debris"):AddItem(prt, 10)
		  table.insert(Effects, {
			prt,
			"Cylinder",
			delay,
			x3 / 60,
			y3 / 60,
			z3 / 60,
			msh
		  })
		end
	  },
	  Ring = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
		  local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
		  prt.Anchored = true
		  prt.CFrame = cframe
		  local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
		  game:GetService("Debris"):AddItem(prt, 10)
		  table.insert(Effects, {
			prt,
			"Cylinder",
			delay,
			x3,
			y3,
			z3,
			msh
		  })
		end
	  },
	  Break = {
		Create = function(brickcolor, cframe, x1, y1, z1)
		  local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
		  prt.Anchored = true
		  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
		  local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
		  local num = math.random(10, 50) / 1000
		  game:GetService("Debris"):AddItem(prt, 10)
		  table.insert(Effects, {
			prt,
			"Shatter",
			num,
			prt.CFrame,
			math.random() - math.random(),
			0,
			math.random(50, 100) / 100
		  })
		end
	  },
	Spiral = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
		  local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
		  prt.Anchored = true
		  prt.CFrame = cframe
		  local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://1051557", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
		  game:GetService("Debris"):AddItem(prt, 10)
		  table.insert(Effects, {
			prt,
			"Cylinder",
			delay,
			x3,
			y3,
			z3,
			msh
		  })
		end
	  },
	Push = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
		  local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
		  prt.Anchored = true
		  prt.CFrame = cframe
		  local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://437347603", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
		  game:GetService("Debris"):AddItem(prt, 10)
		  table.insert(Effects, {
			prt,
			"Cylinder",
			delay,
			x3,
			y3,
			z3,
			msh
		  })
		end
	  }
	}
	-------------------------------------------------------
	--End Effect Function--
	-------------------------------------------------------

	function CreateSound(ID, PARENT, VOLUME, PITCH)
		local NSound = nil
		coroutine.resume(coroutine.create(function()
			NSound = Instance.new("Sound", PARENT)
			NSound.Volume = VOLUME
			NSound.Pitch = PITCH
			NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
			swait()
			NSound:play()
			game:GetService("Debris"):AddItem(NSound, 10)
		end))
		return NSound
	end

	function Eviscerate(dude)
		
	end
	function SphereAura(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos)
		local type = type
		local rng = Instance.new("Part", char)
		rng.Anchored = true
		rng.BrickColor = color
		rng.CanCollide = false
		rng.FormFactor = 3
		rng.Name = "Ring"
		rng.Material = "Neon"
		rng.Size = Vector3.new(1, 1, 1)
		rng.Transparency = 0
		rng.TopSurface = 0
		rng.BottomSurface = 0
		rng.CFrame = pos
		rng.CFrame = rng.CFrame + rng.CFrame.lookVector * outerpos
		local rngm = Instance.new("SpecialMesh", rng)
		rngm.MeshType = "Sphere"
		rngm.Scale = Vector3.new(x1, y1, z1)
		local scaler2 = 1
		local speeder = FastSpeed
		if type == "Add" then
			scaler2 = 1 * value
		elseif type == "Divide" then
			scaler2 = 1 / value
		end
		coroutine.resume(coroutine.create(function()
			for i = 0, 10 / bonuspeed, 0.1 do
				swait()
				if type == "Add" then
					scaler2 = scaler2 - 0.01 * value / bonuspeed
				elseif type == "Divide" then
					scaler2 = scaler2 - 0.01 / value * bonuspeed
				end
							rng.BrickColor = BrickColor.random()
				speeder = speeder - 0.01 * FastSpeed * bonuspeed
				rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
				rng.Transparency = rng.Transparency + 0.01 * bonuspeed
				rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
			end
			rng:Destroy()
		end))
	end

	function FindNearestHead(Position, Distance, SinglePlayer)
		if SinglePlayer then
			return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
		end
		local List = {}
		for i, v in pairs(workspace:GetChildren()) do
			if v:IsA("Model") and v:findFirstChild("Head") and v ~= char and Distance >= (v.Head.Position - Position).magnitude then
				table.insert(List, v)
			end
		end
		return List
	end
	function SoulSteal(dude)

	end
	function FaceMouse()
	local	Cam = workspace.CurrentCamera
		return {
			CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
			Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
		}
	end
	-------------------------------------------------------
	--End Important Functions--
	-------------------------------------------------------
	--[[
			Thanks for using Build-To-Lua by jarredbcv.
	]]--

	New = function(Object, Parent, Name, Data)
		local Object = Instance.new(Object)
		for Index, Value in pairs(Data or {}) do
			Object[Index] = Value
		end
		Object.Parent = Parent
		Object.Name = Name
		return Object
	end
		
	Gaunty = New("Model",char,"Gaunty",{})
	Handle = New("Part",Gaunty,"Handle",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1.26999998, 1),CFrame = CFrame.new(-5.67319345, 3.02064276, -77.6615906, 0.999894261, 0.010924357, 0.00963267777, -0.0110270018, 0.999882579, 0.0106679145, -0.00951499958, -0.0107729975, 0.999897003),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	Mesh = New("BlockMesh",Handle,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.82765579, 3.62595344, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.161155701, 0.603512526, 0.00862884521, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-6.13765526, 3.62595367, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.471122265, 0.600126028, 0.00564575195, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.5176549, 3.62595415, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.148812294, 0.606899738, 0.0116195679, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.21765471, 3.62595463, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.448780537, 0.610177517, 0.014503479, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-6.13765526, 2.53595448, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.459102631, -0.489744425, -0.00598144531, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.82765627, 2.53595448, -77.6579285, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.149136543, -0.486357927, -0.00299835205, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.51765537, 2.53595448, -77.6579361, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.160831451, -0.48297143, -1.52587891e-05, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.21765566, 2.53595424, -77.6579361, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.460799217, -0.479694128, 0.00286865234, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.07999992, 0.279999971, 1.06999993),CFrame = CFrame.new(-5.66865063, 3.64553881, -77.6613617, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(-0.00235080719, 0.624869347, 0.00694274902, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66490126, 3.73544312, -77.6652145, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.000443935394, 0.714845657, 0.00408172607, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66480446, 3.52554965, -77.65522, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.00275993347, 0.504870415, 0.0118331909, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.07999992, 0.279999971, 1.06999993),CFrame = CFrame.new(-5.6686511, 2.55553746, -77.6613541, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.00966835022, -0.465003252, -0.00468444824, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66490126, 2.64544272, -77.6652145, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.0124630928, -0.375026226, -0.00754547119, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66480494, 2.43554902, -77.65522, 0.999894857, 0.0109243635, 0.00963268708, -0.0110270083, 0.999883175, 0.0106679257, -0.00951500144, -0.0107729994, 0.999897599),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),C1 = CFrame.new(0.0147790909, -0.585001707, 0.000205993652, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 3.62595463, -78.1079407, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(-0.0018901825, 0.61005497, -0.439842224, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 3.62595558, -77.8179321, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(-0.00464963913, 0.606931448, -0.149864197, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 3.62595606, -77.4879303, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(-0.00278997421, 0.603431463, 0.180152893, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 3.62595654, -77.1979294, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(-0.00554895401, 0.600307703, 0.470123291, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 2.53595638, -77.1979294, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.0064702034, -0.489563704, 0.458496094, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 2.53595614, -77.4879303, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.00922966003, -0.486439705, 0.168525696, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265558, 2.53595638, -77.8179245, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.00736999512, -0.482939243, -0.161483765, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 2.53595614, -78.1079254, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.0101289749, -0.479815245, -0.451454163, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765547, 3.62595677, -77.1979218, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(-0.00554943085, 0.600307941, 0.47013092, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 3.62595701, -77.4879303, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(-0.00278949738, 0.603432655, 0.180152893, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765451, 3.62595749, -77.8179321, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.000350952148, 0.606987953, -0.149810791, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765451, 3.62595749, -78.107933, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.00311040878, 0.61011219, -0.439788818, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.53595734, -78.107933, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.0151295662, -0.479759216, -0.451416016, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.5359571, -77.8179245, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.0123701096, -0.482883692, -0.161437988, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.5359571, -77.4879227, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.00923013687, -0.48643899, 0.168533325, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.53595686, -77.1979218, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(0.00647068024, -0.489563227, 0.458503723, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-6.13765478, 3.62595701, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.471121788, 0.600129128, 0.00566101074, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.82765484, 3.62595725, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.161154747, 0.603516102, 0.008644104, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.51765442, 3.62595773, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.148812771, 0.606903076, 0.0116348267, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.21765375, 3.6259582, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.44878149, 0.610180855, 0.0145187378, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.21765327, 2.53595781, -77.6579132, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.460801125, -0.47969079, 0.00289154053, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.51765299, 2.53595757, -77.6579208, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.160833359, -0.48296833, 0, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.82765341, 2.53595734, -77.6579208, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.149133682, -0.486355066, -0.00299072266, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-6.13765383, 2.53595734, -77.6579208, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(-0.4591012, -0.489741802, -0.00597381592, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("WedgePart",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.25000003),CFrame = CFrame.new(-5.66203499, 3.4509573, -77.7865677, 1.0000006, -6.18456397e-10, 3.7252903e-09, -6.18456397e-10, 1.0000006, 4.65661287e-09, 3.7252903e-09, 4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C1 = CFrame.new(0.00760126114, 0.431732178, -0.120269775, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("WedgePart",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.280000031),CFrame = CFrame.new(-5.66203451, 3.45095778, -77.5215683, -1.0000006, -6.18456397e-10, -9.12696123e-08, 6.18456397e-10, 1.0000006, -4.65661287e-09, 8.38190317e-08, 4.65661287e-09, -1.0000006),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 8.74227766e-08, 0, 1, 0, -8.74227766e-08, 0, -1),C1 = CFrame.new(0.00508022308, 0.428877592, 0.144706726, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("WedgePart",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.25000003),CFrame = CFrame.new(-5.66203403, 2.81095791, -77.7865601, -1.0000006, 8.81700544e-08, 3.7252903e-09, -8.69331416e-08, -1.0000006, 4.65661287e-09, -3.7252903e-09, -4.65661287e-09, 1.0000006),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, -8.74227766e-08, 0, 8.74227766e-08, -1, 0, 0, 0, 1),C1 = CFrame.new(0.0146594048, -0.208191872, -0.127082825, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("WedgePart",Gaunty,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.280000031),CFrame = CFrame.new(-5.66203356, 2.8209579, -77.5215607, 1.0000006, -8.69331416e-08, 8.38190317e-08, -8.81700544e-08, -1.0000006, -4.65661287e-09, 9.12696123e-08, -4.65661287e-09, -1.0000006),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, -8.74227766e-08, 8.74227766e-08, -8.74227766e-08, -1, -7.64274186e-15, 8.74227766e-08, 0, -1),C1 = CFrame.new(0.0120282173, -0.201047897, 0.137992859, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Wedge = New("WedgePart",Gaunty,"Wedge",{BrickColor = BrickColor.new("Black"),Size = Vector3.new(1.1099999, 0.569999993, 1.13),CFrame = CFrame.new(-5.6508193, 4.06113148, -77.6620178, -4.74974513e-08, -6.18456397e-10, 1.0000006, -5.58793545e-09, 1.0000006, -1.5279511e-10, -1.0000006, 4.65661287e-09, -4.00468707e-08),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Wedge,"mot",{Part0 = Wedge,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08),C1 = CFrame.new(0.0109024048, 1.04061508, 0.010887146, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})

	Gaunty2 = New("Model",char,"Gaunty2",{})
	Handle2 = New("Part",Gaunty2,"Handle2",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 1.26999998, 1),CFrame = CFrame.new(-5.67319345, 3.02064276, -77.6615906, 0.999894261, 0.010924357, 0.00963267777, -0.0110270018, 0.999882579, 0.0106679145, -0.00951499958, -0.0107729975, 0.999897003),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	Mesh = New("BlockMesh",Handle2,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.82765579, 3.62595367, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.161155701, 0.603512764, 0.00862884521, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-6.13765526, 3.62595439, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.471122265, 0.600126743, 0.00564575195, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.51765394, 3.6259551, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.148813248, 0.606900692, 0.0116195679, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.21765375, 3.62595558, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.44878149, 0.610178471, 0.014503479, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-6.13765621, 2.535954, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.459103584, -0.489744902, -0.00598144531, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.82765722, 2.535954, -77.6579285, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.149137497, -0.486358404, -0.00299835205, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.5176549, 2.53595448, -77.6579514, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.160831928, -0.482971191, -3.05175781e-05, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.21765566, 2.535954, -77.6579361, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.460799217, -0.479694366, 0.00286865234, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.07999992, 0.279999971, 1.06999993),CFrame = CFrame.new(-5.66865063, 3.64554, -77.661377, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(-0.00235033035, 0.624870777, 0.00692749023, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.6649003, 3.73544407, -77.6652145, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(0.000444412231, 0.714846611, 0.00408172607, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66480446, 3.5255506, -77.65522, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(0.00275993347, 0.504871368, 0.0118331909, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.07999992, 0.279999971, 1.06999993),CFrame = CFrame.new(-5.6686511, 2.55553699, -77.6613541, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(0.00966835022, -0.465003729, -0.00468444824, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66490126, 2.64544272, -77.6652145, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(0.0124630928, -0.375026226, -0.00754547119, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1.08999991, 0.0599999577, 1.07999992),CFrame = CFrame.new(-5.66480589, 2.43554854, -77.65522, 0.999896049, 0.0109243765, 0.00963270571, -0.0110270213, 0.999884367, 0.010667949, -0.0095150033, -0.0107730031, 0.999898791),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	Mesh = New("BlockMesh",NeonPart,"Mesh",{Scale = Vector3.new(1.03999996, 1, 1.03999996),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0.999895453, -0.0110270148, -0.00951500237, 0.01092437, 0.999883771, -0.0107730012, 0.0096326964, 0.0106679378, 0.999898195),C1 = CFrame.new(0.0147781372, -0.585002184, 0.000205993652, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 3.62595463, -78.1079407, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.0018901825, 0.61005497, -0.439842224, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265511, 3.6259563, -77.8179169, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.00464916229, 0.606932163, -0.149848938, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765451, 3.62595701, -77.4879303, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.00278902054, 0.603432655, 0.180152893, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 3.62595749, -77.1979294, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.00554895401, 0.600308895, 0.470123291, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 2.53595638, -77.1979294, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.0064702034, -0.489563704, 0.458496094, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.13999987, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.66765547, 2.53595614, -77.4879303, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00922966003, -0.486439705, 0.168525696, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265558, 2.53595638, -77.8179092, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00736999512, -0.482939243, -0.161468506, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("Part",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.12999988, 0.109999999, 0.109999999),CFrame = CFrame.new(-5.67265606, 2.53595567, -78.1079254, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.0101289749, -0.479815722, -0.451454163, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765451, 3.62595749, -77.1979218, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.00554847717, 0.600308895, 0.47013092, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765404, 3.62595797, -77.4879303, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(-0.0027885437, 0.603433609, 0.180152893, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765356, 3.6259594, -77.8179321, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.000351905823, 0.606989861, -0.149810791, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765356, 3.62595844, -78.107933, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00311136246, 0.610113144, -0.439788818, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.53595734, -78.107933, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.0151295662, -0.479759216, -0.451416016, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.5359571, -77.8179092, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.0123701096, -0.48288393, -0.161422729, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.5359571, -77.4879227, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00923013687, -0.48643899, 0.168533325, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.66765499, 2.53595662, -77.1979218, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00647068024, -0.489563465, 0.458503723, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-6.13765478, 3.62595797, -77.6579132, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.471121788, 0.600130081, 0.00566101074, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.82765484, 3.6259582, -77.6579132, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.161154747, 0.603517056, 0.008644104, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.51765347, 3.62595868, -77.6579132, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.148813725, 0.60690403, 0.0116348267, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.2176528, 3.62595916, -77.6579132, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.448782444, 0.610181808, 0.0145187378, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.21765327, 2.53595757, -77.6579132, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.460801601, -0.479691029, 0.00289154053, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.51765299, 2.53595757, -77.6579361, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.160833836, -0.48296833, -1.52587891e-05, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-5.82765436, 2.5359571, -77.6579208, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.149134636, -0.486355305, -0.00299072266, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Part = New("Part",Gaunty2,"Part",{BrickColor = BrickColor.new("Black"),Material = Enum.Material.Metal,Shape = Enum.PartType.Cylinder,Size = Vector3.new(1.15999985, 0.0700000003, 0.0700000003),CFrame = CFrame.new(-6.13765478, 2.53595734, -77.6579208, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Part,"mot",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(-0.459102154, -0.489741802, -0.00597381592, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("WedgePart",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.25000003),CFrame = CFrame.new(-5.66203403, 3.45095801, -77.7865524, 1.00000179, -2.26282282e-09, 1.11758709e-08, -2.28465069e-09, 1.00000179, 1.39698386e-08, 1.11758709e-08, 1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -1.44791557e-09, 7.4505806e-09, -1.44063961e-09, 1.00000119, 9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.00760221481, 0.431732655, -0.120254517, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("WedgePart",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.280000031),CFrame = CFrame.new(-5.66203356, 3.45095849, -77.521553, -1.00000179, -2.26282282e-09, -9.87201929e-08, 2.28465069e-09, 1.00000179, -1.39698386e-08, 7.63684511e-08, 1.39698386e-08, -1.00000179),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -1.00000119, 1.45519152e-09, 8.00937414e-08, -1.44063961e-09, 1.00000119, 9.31322575e-09, -9.49949026e-08, -9.31322575e-09, -1.00000119),C1 = CFrame.new(0.00508117676, 0.428878307, 0.144721985, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("WedgePart",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.25000003),CFrame = CFrame.new(-5.66203308, 2.81095791, -77.7865601, -1.00000179, 8.98216967e-08, 1.11758709e-08, -8.52742232e-08, -1.00000179, 1.39698386e-08, -1.11758709e-08, -1.39698386e-08, 1.00000179),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -1.00000119, -8.61036824e-08, -7.4505806e-09, 8.89922376e-08, -1.00000119, -9.31322575e-09, 7.4505806e-09, 9.31322575e-09, 1.00000119),C1 = CFrame.new(0.0146603584, -0.208191872, -0.127082825, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	NeonPart = New("WedgePart",Gaunty2,"NeonPart",{BrickColor = BrickColor.new("Institutional white"),Material = Enum.Material.Neon,Size = Vector3.new(1.14999998, 0.640000045, 0.280000031),CFrame = CFrame.new(-5.6620326, 2.82095814, -77.5215454, 1.00000179, -8.52887752e-08, 7.63684511e-08, -8.98362487e-08, -1.00000179, -1.39698386e-08, 9.87201929e-08, -1.39698386e-08, -1.00000179),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.972549, 0.972549, 0.972549),})
	mot = New("Motor",NeonPart,"mot",{Part0 = NeonPart,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1.00000119, -8.89995135e-08, 9.49949026e-08, -8.61109584e-08, -1.00000119, -9.31322575e-09, 8.00937414e-08, -9.31322575e-09, -1.00000119),C1 = CFrame.new(0.012029171, -0.201047897, 0.138008118, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})
	Wedge = New("WedgePart",Gaunty2,"Wedge",{BrickColor = BrickColor.new("Black"),Size = Vector3.new(1.1099999, 0.569999993, 1.13),CFrame = CFrame.new(-5.6508193, 4.06113243, -77.6620178, -5.49480319e-08, -2.26282282e-09, 1.00000179, -1.67638063e-08, 1.00000179, -1.8189894e-09, -1.00000179, 1.39698386e-08, -3.25962901e-08),BottomSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.105882, 0.164706, 0.207843),})
	mot = New("Motor",Wedge,"mot",{Part0 = Wedge,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -5.12227416e-08, -1.11758709e-08, -1.00000119, -1.44063961e-09, 1.00000119, 9.31322575e-09, 1.00000119, -9.89530236e-10, -3.63215804e-08),C1 = CFrame.new(0.0109024048, 1.04061604, 0.010887146, 0.999894261, -0.0110270018, -0.00951499958, 0.010924357, 0.999882579, -0.0107729975, 0.00963267777, 0.0106679145, 0.999897003),})


	NewInstance = function(instance,parent,properties)
		local inst = Instance.new(instance,parent)
		if(properties)then
			for i,v in next, properties do
				pcall(function() inst[i] = v end)
			end
		end
		return inst;
	end

	local HW = NewInstance('Motor', char, {Part0 = ra, Part1 = Handle, C0 = CF(0,-.51,0)})
	local HW2 = NewInstance('Motor', char, {Part0 = la, Part1 = Handle2, C0 = CF(0,-.51,0) * angles(Rad(0),Rad(180),Rad(0))})

	for _,v in next, Gaunty:children() do
		v.CanCollide = false
	end
	for _,v in next, Gaunty2:children() do
		v.CanCollide = false
	end
	local all, last = {}, nil
	ArmourParts = {}
	NeonParts = {}
	function scan(p)
	  for _, v in pairs(p:GetChildren()) do
		if v:IsA("BasePart") then
		  if v.BrickColor == BrickColor.new("Black") then
			table.insert(ArmourParts, v)
		  end
		  if v.BrickColor == BrickColor.new("Institutional white") then
			table.insert(NeonParts, v)
		  end
		  if last then
			local w = Instance.new("Weld")
			w.Part0, w.Part1 = last, v
			w.C0 = v.CFrame:toObjectSpace(last.CFrame):inverse()
			w.Parent = last
		  end
		  table.insert(all, v)
		  last = v
		end
		scan(v)
	  end
	end
	scan(Gaunty)
	local all2, last2 = {}, nil
	ArmourParts2 = {}
	NeonParts2 = {}
	function scan2(p)
	  for _, v in pairs(p:GetChildren()) do
		if v:IsA("BasePart") then
		  if v.BrickColor == BrickColor.new("Black") then
			table.insert(ArmourParts2, v)
		  end
		  if v.BrickColor == BrickColor.new("Institutional white") then
			table.insert(NeonParts2, v)
		  end
		  if last2 then
			local w = Instance.new("Weld")
			w.Part0, w.Part1 = last2, v
			w.C0 = v.CFrame:toObjectSpace(last2.CFrame):inverse()
			w.Parent = last2
		  end
		  table.insert(all2, v)
		  last2 = v
		end
		scan2(v)
	  end
	end
	scan2(Gaunty2)
	for i, v in pairs(ArmourParts) do
		 v.BrickColor = BrickC("Black")
			end
	for i, v in pairs(NeonParts) do
		 v.BrickColor = BrickC("Really red")
			end
	for i, v in pairs(ArmourParts2) do
		 v.BrickColor = BrickC("Black")
			end
	for i, v in pairs(NeonParts2) do
		 v.BrickColor = BrickC("Really red")
			end
	maincolor = BrickC("Really red")
	-------------------------------------------------------
	--Start Music Option--
	-------------------------------------------------------
	local Music = Instance.new("Sound",char)
	Music.Volume = 2.5
	Music.SoundId = "rbxassetid://550578451"
	Music.Looped = true
	Music.Pitch = 1 --Pitcher
	Music:Play()
	-------------------------------------------------------
	--End Music Option--
	-------------------------------------------------------
	local naeeym2 = Instance.new("BillboardGui",char)
	naeeym2.AlwaysOnTop = true
	naeeym2.Size = UDim2.new(5,35,2,35)
	naeeym2.StudsOffset = Vector3.new(0,2,0)
	naeeym2.Adornee = hed
	naeeym2.Name = "Name"

	local tecks2 = Instance.new("TextLabel",naeeym2)
	tecks2.BackgroundTransparency = 1
	tecks2.TextScaled = true
	tecks2.BorderSizePixel = 0
	tecks2.Text = "Ender"
	tecks2.Font = "Garamond"
	tecks2.TextSize = 30
	tecks2.TextStrokeTransparency = 0
	tecks2.TextColor3 = Color3.new(0,0,0)
	tecks2.TextStrokeColor3 = Color3.new(0, 0, 0)
	tecks2.Size = UDim2.new(1,0,0.5,0)
	tecks2.Parent = naeeym2

	function chatfunc(text, color)
		local chat = coroutine.wrap(function()
			if char:FindFirstChild("TalkingBillBoard") ~= nil then
				char:FindFirstChild("TalkingBillBoard"):destroy()
			end
			local naeeym2 = Instance.new("BillboardGui", char)
			naeeym2.Size = UDim2.new(0, 100, 0, 40)
			naeeym2.StudsOffset = Vector3.new(0, 5, 0)
			naeeym2.Adornee = hed
			naeeym2.Name = "TalkingBillBoard"
			local tecks2 = Instance.new("TextLabel", naeeym2)
			tecks2.BackgroundTransparency = 1
			tecks2.BorderSizePixel = 0
			tecks2.Text = ""
			tecks2.Font = "SciFi"
			tecks2.TextSize = 30
			tecks2.TextStrokeTransparency = 0
			tecks2.TextColor3 = color
			tecks2.TextStrokeColor3 = Color3.new(0, 0, 0)
			tecks2.Size = UDim2.new(1, 0, 0.5, 0)
			local tecks3 = Instance.new("TextLabel", naeeym2)
			tecks3.BackgroundTransparency = 1
			tecks3.BorderSizePixel = 0
			tecks3.Text = ""
			tecks3.Font = "SciFi"
			tecks3.TextSize = 30
			tecks3.TextStrokeTransparency = 0
			tecks3.TextColor3 = Color3.new(0, 0, 0)
			tecks3.TextStrokeColor3 = color
			tecks3.Size = UDim2.new(1, 0, 0.5, 0)
			coroutine.resume(coroutine.create(function()
				while true do
					swait(1)
						tecks2.TextColor3 = BrickColor.random().Color
						tecks3.TextStrokeColor3 = BrickColor.random().Color
					tecks2.Position = UDim2.new(0, math.random(-5, 5), 0, math.random(-5, 5))
					tecks3.Position = UDim2.new(0, math.random(-5, 5), 0, math.random(-5, 5))
					tecks2.Rotation = math.random(-5, 5)
					tecks3.Rotation = math.random(-5, 5)
				end
			end))
			for i = 1, string.len(text) do
				CFuncs.Sound.Create("rbxassetid://274118116", char, 0.25, 0.115)
				tecks2.Text = string.sub(text, 1, i)
				tecks3.Text = string.sub(text, 1, i)
				swait(1)
			end
			wait(1)
			local randomrot = math.random(1, 2)
			if randomrot == 1 then
				for i = 1, 50 do
					swait()
					tecks2.Rotation = tecks2.Rotation - 0.75
					tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency + 0.04
					tecks2.TextTransparency = tecks2.TextTransparency + 0.04
					tecks3.Rotation = tecks2.Rotation + 0.75
					tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency + 0.04
					tecks3.TextTransparency = tecks2.TextTransparency + 0.04
				end
			elseif randomrot == 2 then
				for i = 1, 50 do
					swait()
					tecks2.Rotation = tecks2.Rotation + 0.75
					tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency + 0.04
					tecks2.TextTransparency = tecks2.TextTransparency + 0.04
					tecks3.Rotation = tecks2.Rotation - 0.75
					tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency + 0.04
					tecks3.TextTransparency = tecks2.TextTransparency + 0.04
				end
			end
			naeeym2:Destroy()
		end)
		chat()
	end
	-------------------------------------------------------
	--Start Attacks N Stuff--
	-------------------------------------------------------
	local sine=0
	function HitboxFunction(Pose, lifetime, siz1, siz2, siz3, Radie, Min, Max, kb, atype)
	  local Hitboxpart = Instance.new("Part", EffectModel)
	  RemoveOutlines(Hitboxpart)
	  Hitboxpart.Size = Vector3.new(siz1, siz2, siz3)
	  Hitboxpart.CanCollide = false
	  Hitboxpart.Transparency = 1
	  Hitboxpart.Anchored = true
	  Hitboxpart.CFrame = Pose
	  game:GetService("Debris"):AddItem(Hitboxpart, lifetime)
	  MagniDamage(Hitboxpart, Radie, Min, Max, kb, atype)
	end
	wait2 = false
	combo = 1
	mouse.Button1Down:connect(function(key)
	  if attack == false then
		attack = true
		hum.WalkSpeed = 3.01
		if combo == 1 and wait2 == false then
		  wait2 = true
			for i = 0, 1.2, 0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, 0) * angles(math.rad(-5), math.rad(0), math.rad(-65)), 0.3)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(-65)), 0.1)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.8) * angles(math.rad(90), math.rad(0), math.rad(20)), 0.1)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-25), math.rad(0), math.rad(40)), 0.3)
			RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.2) * RHCF * angles(math.rad(-2.5), math.rad(0), math.rad(-0)), 0.3)
			LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * angles(math.rad(-2.5), math.rad(15), math.rad(-20)), 0.3)
			  end
			CreateSound("138097048", ra, 3, .8)
			HitboxFunction(ra.CFrame, 0.01, 1, 1, 1, 7, 6, 9, 3, "Normal")
		  for i = 0, 1.2, 0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(55)), 0.3)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.1)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.8) * angles(math.rad(95), math.rad(0), math.rad(40)), 0.1)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-25), math.rad(0), math.rad(-10)), 0.3)
			RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * angles(math.rad(-2.5), math.rad(-25), math.rad(-17)), 0.3)
			LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * angles(math.rad(-2.5), math.rad(-0), math.rad(0)), 0.3)
		  end
		  combo = 2
		end
		if combo == 2 and wait2 == false then
		  wait2 = true
	   for i = 0, 1.2, 0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, 0) * angles(math.rad(-5), math.rad(0), math.rad(65)), 0.3)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(65)), 0.1)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.8) * angles(math.rad(-25), math.rad(0), math.rad(40)), 0.1)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(20)), 0.3)
			RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.2) * RHCF * angles(math.rad(-2.5), math.rad(0), math.rad(-0)), 0.3)
			LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * angles(math.rad(-2.5), math.rad(15), math.rad(-20)), 0.3)
			  end
			CreateSound("138097048", ra, 3, .8)
			HitboxFunction(ra.CFrame, 0.01, 1, 1, 1, 7, 6, 9, 3, "Normal")
		  for i = 0, 1.2, 0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(-55)), 0.3)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.1)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-25), math.rad(0), math.rad(10)), 0.1)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, -0.8) * angles(math.rad(95), math.rad(0), math.rad(-40)), 0.3)
			RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * angles(math.rad(-2.5), math.rad(-25), math.rad(-17)), 0.3)
			LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * angles(math.rad(-2.5), math.rad(-0), math.rad(0)), 0.3)
		  end
		  combo = 3
		end
	   if combo == 3 and wait2 == false then
		wait2 = true
		for i = 0, 1.2, 0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, 0) * angles(math.rad(-5), math.rad(0), math.rad(-35)), 0.3)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.1)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.8) * angles(math.rad(90), math.rad(0), math.rad(20)), 0.1)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-25), math.rad(0), math.rad(-10)), 0.3)
			RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.2) * RHCF * angles(math.rad(-2.5), math.rad(0), math.rad(-0)), 0.3)
			LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * angles(math.rad(-2.5), math.rad(15), math.rad(-20)), 0.3)
		  end
		CreateSound("138097048", ra, 3, .8)
		  HitboxFunction(ra.CFrame, 0.01, 1, 1, 1, 7, 24, 36, 3, "Normal")
		  for i = 0, 1.2, 0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(35)), 0.3)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.1)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.8) * angles(math.rad(96), math.rad(0), math.rad(10)), 0.1)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-25), math.rad(0), math.rad(-10)), 0.3)
			RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * angles(math.rad(-2.5), math.rad(-25), math.rad(-0)), 0.3)
			LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * angles(math.rad(-2.5), math.rad(-0), math.rad(0)), 0.3)
		  end
			Effects.Sphere.Create(maincolor, ra.CFrame * CFrame.new(0,-2,0) , 85, 85, 85, 1.1, 1.1, 1.1, 0.02)
			Effects.Ring.Create(maincolor, ra.CFrame * CFrame.new(0,-2,0) , 2, 2, 2, 1.1, 1.1, 1.1, 0.03)
			for i = 0, 2 do
				SphereAura(2, 0.2, "Add", ra.CFrame * CFrame.Angles(math.rad(-90 + math.random(-20, 20)), math.rad(math.random(-20, 20)), math.rad(math.random(-20, 20))), 0.5, 0.5, 5, -0.005, maincolor, 0)
				end
			coroutine.resume(coroutine.create(function() 
			for i = 0,1.8,0.1 do
				swait()
				hum.CameraOffset = Vector3.new(Mrandom(-1,1),0,Mrandom(-1,1))
			end
			for i = 0,1.8,0.1 do
				swait()
			hum.CameraOffset = Vector3.new(0,0,0)
			end
		  end))
			HitboxFunction(ra.CFrame, 0.01, 1, 1, 1, 7, 24, 36, 3, "Normal")
		for i = 0, 1.2, 0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, 0) * angles(math.rad(5), math.rad(0), math.rad(-35)), 0.3)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), 0.1)
			RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, -0.8) * angles(math.rad(25), math.rad(0), math.rad(10)), 0.1)
			LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-25), math.rad(0), math.rad(-10)), 0.3)
			RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0) * RHCF * angles(math.rad(-2.5), math.rad(-25), math.rad(-0)), 0.3)
			LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0) * LHCF * angles(math.rad(-2.5), math.rad(-0), math.rad(0)), 0.3)
		  end
		  combo = 4
		end
		if combo == 4 and wait2 == false then
		for i = 0,1.2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(200), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
		end
	SphereAura(6, 0.3, "Add", root.CFrame * CF(0,-2,0) * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 0.5, 0.5, 5, -0.005, maincolor, 0)
			SphereAura(6, 0.3, "Add", root.CFrame * CF(0,-2,0) * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 0.5, 0.5, 5, -0.005, maincolor, 0)
			Effects.Sphere.Create(maincolor, root.CFrame * CFrame.new(0,-2,0) , 85, 85, 85, 15.1, 15.1, 15.1, 0.01)
		CreateSound("331666100", char, 10, 1)
			for i, v in pairs(FindNearestHead(tors.CFrame.p, 14.5)) do
			if v:FindFirstChild("Head") then
				SoulSteal(v)
				Eviscerate(v)
			end
		end
		coroutine.resume(coroutine.create(function() 
			for i = 0,1.8,0.1 do
				swait()
				hum.CameraOffset = Vector3.new(Mrandom(-1,1),0,Mrandom(-1,1))
			end
			for i = 0,1.8,0.1 do
				swait()
			hum.CameraOffset = Vector3.new(0,0,0)
			end
		  end))
		for i = 1,4.7,0.1 do
		rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -1.4 + 0.1 * Cos(sine / 20)) * angles(Rad(45), Rad(0), Rad(0)), 0.15)
		tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(35), Rad(0), Rad(0)), 0.3)
		RH.C0 = clerp(RH.C0, CF(1, .4 - 0.1 * Cos(sine / 20), -.6 + 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-5), Rad(0), Rad(45)), 0.15)
		LH.C0 = clerp(LH.C0, CF(-1, -0.6 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-5), Rad(0), Rad(-0)), 0.15)
		RW.C0 = clerp(RW.C0, CF(1.2, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(-34)), 0.1)
		LW.C0 = clerp(LW.C0, CF(-1.2, 0.1 + 0.05 * Sin(sine / 30), -.4 + 0.025 * Cos(sine / 20)) * angles(Rad(65), Rad(0), Rad(34)), 0.1)
		end
		  wait(.6)
		combo = 1
		end
		hum.WalkSpeed = 16
		wait2 = false
		attack = false
		end
	end)
	function Destruction()
		attack = true
		local Ring1 = Instance.new("Part", char)
		Ring1.Anchored = true
		Ring1.BrickColor = maincolor
		Ring1.CanCollide = false
		Ring1.FormFactor = 3
		Ring1.Name = "Ring"
		Ring1.Material = "Neon"
		Ring1.Size = Vector3.new(1, 0.05, 1)
		Ring1.Transparency = 1
		Ring1.TopSurface = 0
		Ring1.BottomSurface = 0
		local Ring1Mesh = Instance.new("SpecialMesh", Ring1)
		Ring1Mesh.MeshType = "Brick"
		Ring1Mesh.Name = "SizeMesh"
		Ring1Mesh.Scale = Vector3.new(0, 1, 0)
		local InnerRing1 = Ring1:Clone()
		InnerRing1.Parent = char
		InnerRing1.Transparency = 0
		InnerRing1.BrickColor = BrickColor.new("New Yeller")
		InnerRing1.Size = Vector3.new(1, 1, 1)
		local InnerRing1Mesh = InnerRing1.SizeMesh
		InnerRing1Mesh.Scale = Vector3.new(0, 0, 0)
		InnerRing1Mesh.MeshType = "Sphere"
		Ring1:Destroy()
		for i = 0, 5, 0.1 do
			swait()
			SphereAura(7, 0.12, "Add", ra.CFrame * CF(0,-2,0) * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 0.5, 0.5, 5, -0.005, maincolor, 0)
			SphereAura(7, 0.12, "Add", ra.CFrame * CF(0,-2,0) * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 0.5, 0.5, 5, -0.005, BrickC("Institutional white"), 0)
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(5), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-4.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-12.5 + 3 * Sin(sine / 20)), Rad(0), Rad(0 + 2.5 * Sin(sine / 20))), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-2.5 + 3 * Sin(sine / 20)), Rad(0), Rad(0 + 2.5 * Sin(sine / 20))), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.1, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(-25)), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.1, 0.5 + 0.05 * Sin(sine / 30), 0.025 * Cos(sine / 20)) * angles(Rad(90), Rad(0), Rad(25)), 0.1)
			root.CFrame = FaceMouse()[1]
		end
		InnerRing1.Transparency = 1
		InnerRing1.CFrame = root.CFrame * CF(0, 0.5, 0) + root.CFrame.lookVector * 5
		CreateSound("294188875", char, 2.3, 1)
		local a = IT("Part", char)
		a.Name = "Direction"
		a.Anchored = true
		a.BrickColor = maincolor
		a.Material = "Neon"
		a.Transparency = 0
		a.Shape = "Cylinder"
		a.CanCollide = false
		local a2 = IT("Part", char)
		a2.Name = "Direction"
		a2.Anchored = true
		a2.BrickColor = maincolor
		a2.Color = maincolor.Color
		a2.Material = "Neon"
		a2.Transparency = 0.5
		a2.Shape = "Cylinder"
		a2.CanCollide = false
		local ba = IT("Part", char)
		ba.Name = "HitDirect"
		ba.Anchored = true
		ba.BrickColor = maincolor
		ba.Material = "Neon"
		ba.Transparency = 1
		ba.CanCollide = false
		local ray = Ray.new(InnerRing1.CFrame.p, (mouse.Hit.p - InnerRing1.CFrame.p).unit * 1000)
		local ignore = char
		local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
		a.BottomSurface = 10
		a.TopSurface = 10
		a2.BottomSurface = 10
		a2.TopSurface = 10
		local distance = (InnerRing1.CFrame.p - position).magnitude
		a.Size = Vector3.new(distance, 1, 1)
		a.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
		a2.Size = Vector3.new(distance, 1, 1)
		a2.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
		ba.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance)
		a.CFrame = a.CFrame * angles(0, Rad(90), 0)
		a2.CFrame = a2.CFrame * angles(0, Rad(90), 0)
		game:GetService("Debris"):AddItem(a, 20)
		game:GetService("Debris"):AddItem(a2, 20)
		game:GetService("Debris"):AddItem(ba, 20)
		local msh = Instance.new("SpecialMesh", a)
		msh.MeshType = "Sphere"
		msh.Scale = Vector3.new(1, 25, 25)
		local msh2 = Instance.new("SpecialMesh", a2)
		msh2.MeshType = "Sphere"
		msh2.Scale = Vector3.new(1, 30, 30)
		for i = 0, 10, 0.1 do
			swait()
			root.CFrame = FaceMouse()[1]
			hum.CameraOffset = Vector3.new(Mrandom(-1,1),0,Mrandom(-1,1))
			a2.Color = maincolor.Color
			InnerRing1.CFrame = root.CFrame * CF(0, 0.5, 0) + root.CFrame.lookVector * 4
			ray = Ray.new(InnerRing1.CFrame.p, (mouse.Hit.p - InnerRing1.CFrame.p).unit * 1000)
			hit, position, normal = workspace:FindPartOnRay(ray, ignore)
			distance = (InnerRing1.CFrame.p - position).magnitude
			a.Size = Vector3.new(distance, 1, 1)
			a.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
			a2.Size = Vector3.new(distance, 1, 1)
			a2.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance / 2)
			ba.CFrame = CF(InnerRing1.CFrame.p, position) * CF(0, 0, -distance)
			a.CFrame = a.CFrame * angles(0, Rad(90), 0)
			a2.CFrame = a2.CFrame * angles(0, Rad(90), 0)
			msh.Scale = msh.Scale - Vector3.new(0, 0.25, 0.25)
			msh2.Scale = msh2.Scale - Vector3.new(0, 0.3, 0.3)
			SphereAura(5, 0.15, "Add", ba.CFrame * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 15, 15, 25, -0.15, maincolor, 0)
			SphereAura(5, 0.15, "Add", ba.CFrame * angles(Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360)), Rad(Mrandom(-360, 360))), 15, 15, 25, -0.15, maincolor, 0)
			for i, v in pairs(FindNearestHead(ba.CFrame.p, 14.5)) do
			if v:FindFirstChild("Head") then
				Eviscerate(v)
				SoulSteal(v)
			end
		end
		end
		a:Destroy()
		a2:Destroy()
		ba:Destroy()
		InnerRing1:Destroy()
		attack = false
		hum.CameraOffset = Vector3.new(0,0,0)
	end
	function BURN_IN_HELL()
		attack = true
		chatfunc("BURN....", BrickColor.random().Color)
		for i = 0,5.2,0.1 do
			swait()
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(-20)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.3 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(25)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(135), Rad(0), Rad(-45 - 2.5 * Sin(sine / 20))), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(135), Rad(0), Rad(45 + 2.5 * Sin(sine / 20))), 0.1)
		end	
		chatfunc("IN....", BrickColor.random().Color)
		wait(2)
		CreateSound("331666100", char, 10, 1)
		Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
		Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
		Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
		Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 10.6, 10.6, 0.05)
		Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -1, 0), 2, 2, 2, 10.6, 35.6, 10.6, 0.05)
		Effects.Sphere.Create(BrickColor.Random(), root.CFrame * CF(0, -3, 0), 2, 2, 2, 150.6, .4, 150.6, 0.05)
		chatfunc("HELL!!!!!", BrickColor.random().Color)
		for i, v in pairs(FindNearestHead(tors.CFrame.p, 52.5)) do
			if v:FindFirstChild("Head") then
				Eviscerate(v)
				SoulSteal(v)
			end
		end
		coroutine.resume(coroutine.create(function() 
			for i = 0,2.8,0.1 do
				swait()
				hum.CameraOffset = Vector3.new(Mrandom(-3,3),Mrandom(-3,3),Mrandom(-3,3))
			end
			for i = 0,1.8,0.1 do
				swait()
			hum.CameraOffset = Vector3.new(0,0,0)
			end
		end))
		for i = 0,3.7,0.1 do
			SphereAura(2.5, 0.75, "Add", root.CFrame * CFrame.new(math.random(-52.5, 52.5), -5, math.random(-52.5, 52.5)) * CFrame.Angles(math.rad(90 + math.rad(math.random(-45, 45))), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))), 2.5, 2.5, 25, -0.025, BrickColor.random(), 0)
			SphereAura(2.5, 0.75, "Add", root.CFrame * CFrame.new(math.random(-52.5, 52.5), -5, math.random(-52.5, 52.5)) * CFrame.Angles(math.rad(90 + math.rad(math.random(-45, 45))), math.rad(math.random(-45, 45)), math.rad(math.random(-45, 45))), 2.5, 2.5, 25, -0.025, BrickColor.random(), 0)
			rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(0)), 0.15)
			tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(20 - 2.5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
			RH.C0 = clerp(RH.C0, CF(1, -0.9 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-4.5), Rad(0), Rad(20)), 0.15)
			LH.C0 = clerp(LH.C0, CF(-1, -0.9 - 0.1 * Cos(sine / 20), -.4 + 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-6.5), Rad(5 * Cos(sine / 20)), Rad(-25)), 0.15)
			RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-40), Rad(0), Rad(25 - 2.5 * Sin(sine / 20))), 0.1)
			LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(-40), Rad(0), Rad(-25 + 2.5 * Sin(sine / 20))), 0.1)
		end
		wait(.6)
		CreateSound("907332997", hed, 10, 1)
		attack = false
	end
	-------------------------------------------------------
	--End Attacks N Stuff--
	-------------------------------------------------------
	mouse.KeyDown:connect(function(key)
		if attack == false then
			if key == 'f' then
			Destruction()
			elseif key == 'r' then
				BURN_IN_HELL()
			elseif key == 't' then
				chatfunc("HM, HM, HAHAHAHAHAHA", BrickColor.random().Color)
				CreateSound("300208779", hed, 10, 1)
			end
		end
	end)






	-------------------------------------------------------
	--Start Animations--
	-------------------------------------------------------
	local equipped = false
	local idle = 0
	local change = 1
	local val = 0
	local toim = 0
	local idleanim = 0.4
	hum.Animator.Parent = nil
	while true do
		swait()
	for i, v in pairs(NeonParts) do
		 v.BrickColor = BrickColor.Random()
			end
	for i, v in pairs(NeonParts2) do
		 v.BrickColor = BrickColor.Random()
			end
	maincolor = BrickColor.Random()
	Music.Parent = char
	tecks2.TextStrokeColor3 = maincolor.Color
		sine = sine + change
		local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
		local velderp = root.Velocity.y
		hitfloor, posfloor = rayCast(root.Position, CFrame.new(root.Position, root.Position - Vector3.new(0, 1, 0)).lookVector, 4, char)
		if equipped == true or equipped == false then
			if attack == false then
				idle = idle + 1
			else
				idle = 0
			end
			if 1 < root.Velocity.y and hitfloor == nil then
				Anim = "Jump"
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * angles(math.min(math.max(root.Velocity.Y/100,-Rad(65)),Rad(65)),0,0),0.3)
					tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(-10), Rad(0), Rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CF(1.5, 0.5, 0) * angles(math.min(math.max(root.Velocity.Y/100,-Rad(65)),Rad(65)),0,Rad(15)),0.3)
					LW.C0 = clerp(LW.C0, CF(-1.5, 0.5, 0) * angles(math.min(math.max(root.Velocity.Y/100,-Rad(65)),Rad(65)),0,Rad(-15)),0.3)
					LH.C0=clerp(LH.C0, CF(-1,-.4-0.1 * Cos(sine / 20), -.6) * LHCF * angles(Rad(-5), Rad(-0), Rad(20)), 0.15)
					RH.C0=clerp(RH.C0, CF(1,-1-0.1 * Cos(sine / 20), -.3) * angles(Rad(0), Rad(90), Rad(0)), .3)
				end
			elseif -1 > root.Velocity.y and hitfloor == nil then
				Anim = "Fall"
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * angles(math.min(math.max(root.Velocity.Y/100,-Rad(65)),Rad(65)),0,0),0.3)
					tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(10), Rad(0), Rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CF(1.5, 0.5, 0) * angles(math.min(math.max(root.Velocity.Y/100,-Rad(65)),Rad(65)),0,Rad(30)),0.3)
					LW.C0 = clerp(LW.C0, CF(-1.5, 0.5, 0) * angles(math.min(math.max(root.Velocity.Y/100,-Rad(65)),Rad(65)),0,Rad(-30)),0.3)
					LH.C0 = clerp(LH.C0, CF(-1,-.4-0.1 * Cos(sine / 20), -.6) * LHCF * angles(Rad(-5), Rad(-0), Rad(20)), 0.15)
					RH.C0 = clerp(RH.C0, CF(1,-1-0.1 * Cos(sine / 20), -.3) * angles(Rad(0), Rad(90), Rad(0)), .3)
				end
			elseif torvel < 1 and hitfloor ~= nil then
				Anim = "Idle"
				change = 1.9
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.1 + 0.1 * Cos(sine / 20)) * angles(Rad(30), Rad(0), Rad(0)), 0.15)
					tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(35 - 2.5 * Sin(sine / 20)), Rad(-5 * Cos(sine / 0.465)), Rad(-5 * Cos(sine / 0.465))), 0.3)
					RH.C0 = clerp(RH.C0, CF(1, -1 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * RHCF * angles(Rad(-7.5), Rad(0), Rad(30)), 0.15)
					LH.C0 = clerp(LH.C0, CF(-1, -1 - 0.1 * Cos(sine / 20), 0.025 * Cos(sine / 20)) * LHCF * angles(Rad(-7.5), Rad(0), Rad(-30)), 0.15)
					RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(35 - 5 * Cos(sine / 0.465)), Rad(-5 * Cos(sine / 0.465)), Rad(15 + 7 * Sin(sine / 25))), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 20), 0.025 * Cos(sine / 20)) * angles(Rad(35 - 5 * Cos(sine / 0.465)), Rad(-5 * Cos(sine / 0.465)), Rad(-15 - 7 * Sin(sine / 25))), 0.1)
				end
			elseif tors.Velocity.magnitude < 50 and hitfloor ~= nil then
				Anim = "Walk"
				change = 1
				if attack == false then
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0, 0, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7) * angles(Rad(15 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(4 * Cos(sine / 7))), 0.15)
					tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(Rad(13 - 2.5 * Sin(sine / 7)), Rad(-5 * Cos(sine / 0.465)), Rad(-5 * Cos(sine / 0.465))), 0.3)
					RH.C0 = clerp(RH.C0, CF(1, -0.925 - 0.5 * Cos(sine / 7) / 2, 0.5 * Cos(sine / 7) / 2) * angles(Rad(-15 - 5 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 0.1 * Cos(sine / 7)), Rad(0), Rad(15)), 0.3)
					LH.C0 = clerp(LH.C0, CF(-1, -0.925 + 0.5 * Cos(sine / 7) / 2, -0.5 * Cos(sine / 7) / 2) * angles(Rad(-15 + 5 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 0.1 * Cos(sine / 7)), Rad(0), Rad(-15)), 0.3)
					RW.C0 = clerp(RW.C0, CF(1.5, 0.5 + 0.05 * Sin(sine / 7), 0.025 * Cos(sine / 7)) * angles(Rad(65)  * Cos(sine / 7) , Rad(0), Rad(10 + 7 * Sin(sine / 7)) - ra.RotVelocity.Y / 75), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5, 0.5 + 0.05 * Sin(sine / 7), 0.025 * Cos(sine / 7)) * angles(Rad(-65)  * Cos(sine / 7) , Rad(0), Rad(-10 - 7 * Sin(sine / 7)) + la.RotVelocity.Y / 75), 0.1)
				end
			end
		end
		if 0 < #Effects then
			for e = 1, #Effects do
				if Effects[e] ~= nil then
					local Thing = Effects[e]
					if Thing ~= nil then
						local Part = Thing[1]
						local Mode = Thing[2]
						local Delay = Thing[3]
						local IncX = Thing[4]
						local IncY = Thing[5]
						local IncZ = Thing[6]
						if 1 >= Thing[1].Transparency then
							if Thing[2] == "Block1" then
								Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
								local Mesh = Thing[1].Mesh
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Block2" then
								Thing[1].CFrame = Thing[1].CFrame + Vector3.new(0, 0, 0)
								local Mesh = Thing[7]
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Block3" then
								Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) + Vector3.new(0, 0.15, 0)
								local Mesh = Thing[7]
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Cylinder" then
								local Mesh = Thing[1].Mesh
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Blood" then
								local Mesh = Thing[7]
								Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Elec" then
								local Mesh = Thing[1].Mesh
								Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Disappear" then
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Shatter" then
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
								Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
								Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
								Thing[6] = Thing[6] + Thing[5]
							end
						else
							Part.Parent = nil
							table.remove(Effects, e)
						end
					end
				end
			end
		end
	end
	-------------------------------------------------------
	--End Animations And Script--
	-------------------------------------------------------
	else
	Neg()
	Notification("Not Reanimated! >:(")
	end
end)

Section3B:NewButton("Chips", "Created by: makhail07", function()
	if game.Players.LocalPlayer.Character:FindFirstChild("TalentlessDumbass") then
	if not game.Players.LocalPlayer.Character:FindFirstChild("Pillow") then
		return
		Notification("Missing Hat: Pillow >:(")
	end
		-----------------------
		--[[ Name : Chips ]]--
		--[[ Description : I think I found my specialty in scripts ]]--
		--[[ \ None / ]]--
		-------------------------------------------------------
		--A script By Creterisk/makhail07
		--Discord Creterisk#2958 
		-------------------------------------------------------
			

		loadstring(game:HttpGet("https://pastebin.com/raw/uxN7jP7X"))()
		local plr = game.Players.LocalPlayer
		local mouse = plr:GetMouse()
		local char = plr.Character.TalentlessDumbass
		local hum = char:FindFirstChildOfClass'Humanoid'
		local hed = char.Head
		if plr.Character:FindFirstChild("BBBBB") then
		Notification("You are already running a script! reset to change script!")
		return
		end
		AntiScriptLoad()
		local root = char:FindFirstChild'HumanoidRootPart'
		local rootj = root.RootJoint
		local tors = char.Torso
		local ra = char["Right Arm"]
		local la = char["Left Arm"]
		local rl = char["Right Leg"]
		local ll = char["Left Leg"]
		local neck = tors["Neck"]
		local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
		local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
		local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
		local maincolor = BrickColor.new("Institutional white")
		-------------------------------------------------------
		--Start Good Stuff--
		-------------------------------------------------------
		cam = game.Workspace.CurrentCamera
		CF = CFrame.new
		angles = CFrame.Angles
		attack = false
		Euler = CFrame.fromEulerAnglesXYZ
		Rad = math.rad
		IT = Instance.new
		BrickC = BrickColor.new
		Cos = math.cos
		Acos = math.acos
		Sin = math.sin
		Asin = math.asin
		Abs = math.abs
		Mrandom = math.random
		Floor = math.floor
		-------------------------------------------------------
		--End Good Stuff--
		-------------------------------------------------------
		necko = CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
		RSH, LSH = nil, nil 
		RW = Instance.new("Weld") 
		LW = Instance.new("Weld")
		RH = tors["Right Hip"]
		LH = tors["Left Hip"]
		RSH = tors["Right Shoulder"] 
		LSH = tors["Left Shoulder"] 
		RSH.Parent = nil 
		LSH.Parent = nil 
		RW.Name = "RW"
		RW.Part0 = tors 
		RW.C0 = CF(1.5, 0.5, 0)
		RW.C1 = CF(0, 0.5, 0) 
		RW.Part1 = ra
		RW.Parent = tors 
		LW.Name = "LW"
		LW.Part0 = tors 
		LW.C0 = CF(-1.5, 0.5, 0)
		LW.C1 = CF(0, 0.5, 0) 
		LW.Part1 = la
		LW.Parent = tors
		Effects = {}
		newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
			local wld = Instance.new("Weld", wp1)
			wld.Part0 = wp0
			wld.Part1 = wp1
			wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
		end
		newWeld(tors, ll, -0.5, -1, 0)
		ll.Weld.C1 = CFrame.new(0, 1, 0)
		newWeld(tors, rl, 0.5, -1, 0)
		rl.Weld.C1 = CFrame.new(0, 1, 0)
		-------------------------------------------------------
		--Start HeartBeat--
		-------------------------------------------------------
		ArtificialHB = Instance.new("BindableEvent", script)
		ArtificialHB.Name = "Heartbeat"
		script:WaitForChild("Heartbeat")

		frame = 1 / 60
		tf = 0
		allowframeloss = false
		tossremainder = false


		lastframe = tick()
		script.Heartbeat:Fire()


		game:GetService("RunService").Heartbeat:connect(function(s, p)
			tf = tf + s
			if tf >= frame then
				if allowframeloss then
					script.Heartbeat:Fire()
					lastframe = tick()
				else
					for i = 1, math.floor(tf / frame) do
						script.Heartbeat:Fire()
					end
					lastframe = tick()
				end
				if tossremainder then
					tf = 0
				else
					tf = tf - frame * math.floor(tf / frame)
				end
			end
		end)
		-------------------------------------------------------
		--End HeartBeat--
		-------------------------------------------------------

		-------------------------------------------------------
		--Start Important Functions--
		-------------------------------------------------------
		function swait(num)
			if num == 0 or num == nil then
				game:service("RunService").Stepped:wait(0)
			else
				for i = 0, num do
					game:service("RunService").Stepped:wait(0)
				end
			end
		end
		function thread(f)
			coroutine.resume(coroutine.create(f))
		end
		function clerp(a, b, t)
			local qa = {
				QuaternionFromCFrame(a)
			}
			local qb = {
				QuaternionFromCFrame(b)
			}
			local ax, ay, az = a.x, a.y, a.z
			local bx, by, bz = b.x, b.y, b.z
			local _t = 1 - t
			return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
		end
		function QuaternionFromCFrame(cf)
			local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
			local trace = m00 + m11 + m22
			if trace > 0 then
				local s = math.sqrt(1 + trace)
				local recip = 0.5 / s
				return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
			else
				local i = 0
				if m00 < m11 then
					i = 1
				end
				if m22 > (i == 0 and m00 or m11) then
					i = 2
				end
				if i == 0 then
					local s = math.sqrt(m00 - m11 - m22 + 1)
					local recip = 0.5 / s
					return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
				elseif i == 1 then
					local s = math.sqrt(m11 - m22 - m00 + 1)
					local recip = 0.5 / s
					return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
				elseif i == 2 then
					local s = math.sqrt(m22 - m00 - m11 + 1)
					local recip = 0.5 / s
					return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
				end
			end
		end
		function QuaternionToCFrame(px, py, pz, x, y, z, w)
			local xs, ys, zs = x + x, y + y, z + z
			local wx, wy, wz = w * xs, w * ys, w * zs
			local xx = x * xs
			local xy = x * ys
			local xz = x * zs
			local yy = y * ys
			local yz = y * zs
			local zz = z * zs
			return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
		end
		function QuaternionSlerp(a, b, t)
			local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
			local startInterp, finishInterp
			if cosTheta >= 1.0E-4 then
				if 1 - cosTheta > 1.0E-4 then
					local theta = math.acos(cosTheta)
					local invSinTheta = 1 / Sin(theta)
					startInterp = Sin((1 - t) * theta) * invSinTheta
					finishInterp = Sin(t * theta) * invSinTheta
				else
					startInterp = 1 - t
					finishInterp = t
				end
			elseif 1 + cosTheta > 1.0E-4 then
				local theta = math.acos(-cosTheta)
				local invSinTheta = 1 / Sin(theta)
				startInterp = Sin((t - 1) * theta) * invSinTheta
				finishInterp = Sin(t * theta) * invSinTheta
			else
				startInterp = t - 1
				finishInterp = t
			end
			return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
		end
		function rayCast(Position, Direction, Range, Ignore)
			return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
		end
		local RbxUtility = LoadLibrary("RbxUtility")
		local Create = RbxUtility.Create

		-------------------------------------------------------
		--Start Damage Function--
		-------------------------------------------------------
		function Damage(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)

		end
		-------------------------------------------------------
		--End Damage Function--
		-------------------------------------------------------

		-------------------------------------------------------
		--Start Damage Function Customization--
		-------------------------------------------------------
		function ShowDamage(Pos, Text, Time, Color)
			local Rate = (1 / 30)
			local Pos = (Pos or Vector3.new(0, 0, 0))
			local Text = (Text or "")
			local Time = (Time or 2)
			local Color = (Color or Color3.new(1, 0, 1))
			local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
			EffectPart.Anchored = true
			local BillboardGui = Create("BillboardGui"){
				Size = UDim2.new(3, 0, 3, 0),
				Adornee = EffectPart,
				Parent = EffectPart,
			}
			local TextLabel = Create("TextLabel"){
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Text = Text,
				Font = "Bodoni",
				TextColor3 = Color,
				TextScaled = true,
				TextStrokeColor3 = Color3.fromRGB(0,0,0),
				Parent = BillboardGui,
			}
			game.Debris:AddItem(EffectPart, (Time))
			EffectPart.Parent = game:GetService("Workspace")
			delay(0, function()
				local Frames = (Time / Rate)
				for Frame = 1, Frames do
					wait(Rate)
					local Percent = (Frame / Frames)
					EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
					TextLabel.TextTransparency = Percent
				end
				if EffectPart and EffectPart.Parent then
					EffectPart:Destroy()
				end
			end)
		end
		-------------------------------------------------------
		--End Damage Function Customization--
		-------------------------------------------------------

		function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
		 
		end


		CFuncs = {
			Part = {
				Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
					local Part = Create("Part")({
						Parent = Parent,
						Reflectance = Reflectance,
						Transparency = Transparency,
						CanCollide = false,
						Locked = true,
						BrickColor = BrickColor.new(tostring(BColor)),
						Name = Name,
						Size = Size,
						Material = Material
					})
					RemoveOutlines(Part)
					return Part
				end
			},
			Mesh = {
				Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
					local Msh = Create(Mesh)({
						Parent = Part,
						Offset = OffSet,
						Scale = Scale
					})
					if Mesh == "SpecialMesh" then
						Msh.MeshType = MeshType
						Msh.MeshId = MeshId
					end
					return Msh
				end
			},
			Mesh = {
				Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
					local Msh = Create(Mesh)({
						Parent = Part,
						Offset = OffSet,
						Scale = Scale
					})
					if Mesh == "SpecialMesh" then
						Msh.MeshType = MeshType
						Msh.MeshId = MeshId
					end
					return Msh
				end
			},
			Weld = {
				Create = function(Parent, Part0, Part1, C0, C1)
					local Weld = Create("Weld")({
						Parent = Parent,
						Part0 = Part0,
						Part1 = Part1,
						C0 = C0,
						C1 = C1
					})
					return Weld
				end
			},
			Sound = {
				Create = function(id, par, vol, pit)
					coroutine.resume(coroutine.create(function()
						local S = Create("Sound")({
							Volume = vol,
							Pitch = pit or 1,
							SoundId = id,
							Parent = par or workspace
						})
						wait()
						S:play()
						game:GetService("Debris"):AddItem(S, 6)
					end))
				end
			},
			ParticleEmitter = {
				Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
					local fp = Create("ParticleEmitter")({
						Parent = Parent,
						Color = ColorSequence.new(Color1, Color2),
						LightEmission = LightEmission,
						Size = Size,
						Texture = Texture,
						Transparency = Transparency,
						ZOffset = ZOffset,
						Acceleration = Accel,
						Drag = Drag,
						LockedToPart = LockedToPart,
						VelocityInheritance = VelocityInheritance,
						EmissionDirection = EmissionDirection,
						Enabled = Enabled,
						Lifetime = LifeTime,
						Rate = Rate,
						Rotation = Rotation,
						RotSpeed = RotSpeed,
						Speed = Speed,
						VelocitySpread = VelocitySpread
					})
					return fp
				end
			}
		}
		function RemoveOutlines(part)
			part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
		end
		function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part")({
				formFactor = FormFactor,
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material
			})
			RemoveOutlines(Part)
			return Part
		end
		function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh)({
				Parent = Part,
				Offset = OffSet,
				Scale = Scale
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end
		function CreateWeld(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld")({
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1
			})
			return Weld
		end


		-------------------------------------------------------
		--Start Effect Function--
		-------------------------------------------------------
		EffectModel = Instance.new("Model", char)
		Effects = {
		  Block = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
			  local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			  prt.Anchored = true
			  prt.CFrame = cframe
			  local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			  game:GetService("Debris"):AddItem(prt, 10)
			  if Type == 1 or Type == nil then
				table.insert(Effects, {
				  prt,
				  "Block1",
				  delay,
				  x3,
				  y3,
				  z3,
				  msh
				})
			  elseif Type == 2 then
				table.insert(Effects, {
				  prt,
				  "Block2",
				  delay,
				  x3,
				  y3,
				  z3,
				  msh
				})
			  else
				table.insert(Effects, {
				  prt,
				  "Block3",
				  delay,
				  x3,
				  y3,
				  z3,
				  msh
				})
			  end
			end
		  },
		  Sphere = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			  local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			  prt.Anchored = true
			  prt.CFrame = cframe
			  local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			  game:GetService("Debris"):AddItem(prt, 10)
			  table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			  })
			end
		  },
		  Cylinder = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			  local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			  prt.Anchored = true
			  prt.CFrame = cframe
			  local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			  game:GetService("Debris"):AddItem(prt, 10)
			  table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			  })
			end
		  },
		  Wave = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			  local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			  prt.Anchored = true
			  prt.CFrame = cframe
			  local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1 / 60, y1 / 60, z1 / 60))
			  game:GetService("Debris"):AddItem(prt, 10)
			  table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3 / 60,
				y3 / 60,
				z3 / 60,
				msh
			  })
			end
		  },
		  Ring = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			  local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			  prt.Anchored = true
			  prt.CFrame = cframe
			  local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			  game:GetService("Debris"):AddItem(prt, 10)
			  table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			  })
			end
		  },
		  Break = {
			Create = function(brickcolor, cframe, x1, y1, z1)
			  local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			  prt.Anchored = true
			  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			  local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			  local num = math.random(10, 50) / 1000
			  game:GetService("Debris"):AddItem(prt, 10)
			  table.insert(Effects, {
				prt,
				"Shatter",
				num,
				prt.CFrame,
				math.random() - math.random(),
				0,
				math.random(50, 100) / 100
			  })
			end
		  },
		Spiral = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			  local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			  prt.Anchored = true
			  prt.CFrame = cframe
			  local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://1051557", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			  game:GetService("Debris"):AddItem(prt, 10)
			  table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			  })
			end
		  },
		Push = {
			Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			  local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			  prt.Anchored = true
			  prt.CFrame = cframe
			  local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://437347603", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			  game:GetService("Debris"):AddItem(prt, 10)
			  table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			  })
			end
		  }
		}
		function part(formfactor ,parent, reflectance, transparency, brickcolor, name, size)
			local fp = IT("Part")
			fp.formFactor = formfactor 
			fp.Parent = parent
			fp.Reflectance = reflectance
			fp.Transparency = transparency
			fp.CanCollide = false 
			fp.Locked = true
			fp.BrickColor = brickcolor
			fp.Name = name
			fp.Size = size
			fp.Position = tors.Position 
			RemoveOutlines(fp)
			fp.Material = "SmoothPlastic"
			fp:BreakJoints()
			return fp 
		end 
		 
		function mesh(Mesh,part,meshtype,meshid,offset,scale)
			local mesh = IT(Mesh) 
			mesh.Parent = part
			if Mesh == "SpecialMesh" then
				mesh.MeshType = meshtype
			if meshid ~= "nil" then
				mesh.MeshId = "http://www.roblox.com/asset/?id="..meshid
				end
			end
			mesh.Offset = offset
			mesh.Scale = scale
			return mesh
		end

		function Magic(bonuspeed, type, pos, scale, value, color, MType)
			local type = type
			local rng = Instance.new("Part", char)
			rng.Anchored = true
			rng.BrickColor = color
			rng.CanCollide = false
			rng.FormFactor = 3
			rng.Name = "Ring"
			rng.Material = "Neon"
			rng.Size = Vector3.new(1, 1, 1)
			rng.Transparency = 0
			rng.TopSurface = 0
			rng.BottomSurface = 0
			rng.CFrame = pos
			local rngm = Instance.new("SpecialMesh", rng)
			rngm.MeshType = MType
			rngm.Scale = scale
			local scaler2 = 1
			if type == "Add" then
				scaler2 = 1 * value
			elseif type == "Divide" then
				scaler2 = 1 / value
			end
			coroutine.resume(coroutine.create(function()
				for i = 0, 10 / bonuspeed, 0.1 do
					swait()
					if type == "Add" then
						scaler2 = scaler2 - 0.01 * value / bonuspeed
					elseif type == "Divide" then
						scaler2 = scaler2 - 0.01 / value * bonuspeed
					end
					rng.Transparency = rng.Transparency + 0.01 * bonuspeed
					rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, scaler2 * bonuspeed)
				end
				rng:Destroy()
			end))
		end

		function Eviscerate(dude)
			if dude.Name ~= char then
				local bgf = IT("BodyGyro", dude.Head)
				bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
				local val = IT("BoolValue", dude)
				val.Name = "IsHit"
				local ds = coroutine.wrap(function()
					dude:WaitForChild("Head"):BreakJoints()
					wait(0.5)
					target = nil
					coroutine.resume(coroutine.create(function()
						for i, v in pairs(dude:GetChildren()) do
							if v:IsA("Accessory") then
								v:Destroy()
							end
							if v:IsA("Humanoid") then
								v:Destroy()
							end
							if v:IsA("CharacterMesh") then
								v:Destroy()
							end
							if v:IsA("Model") then
								v:Destroy()
							end
							if v:IsA("Part") or v:IsA("MeshPart") then
								for x, o in pairs(v:GetChildren()) do
									if o:IsA("Decal") then
										o:Destroy()
									end
								end
								coroutine.resume(coroutine.create(function()
									v.Material = "Neon"
									v.CanCollide = false
									local PartEmmit1 = IT("ParticleEmitter", v)
									PartEmmit1.LightEmission = 1
									PartEmmit1.Texture = "rbxassetid://284205403"
									PartEmmit1.Color = ColorSequence.new(maincolor.Color)
									PartEmmit1.Rate = 150
									PartEmmit1.Lifetime = NumberRange.new(1)
									PartEmmit1.Size = NumberSequence.new({
										NumberSequenceKeypoint.new(0, 0.75, 0),
										NumberSequenceKeypoint.new(1, 0, 0)
									})
									PartEmmit1.Transparency = NumberSequence.new({
										NumberSequenceKeypoint.new(0, 0, 0),
										NumberSequenceKeypoint.new(1, 1, 0)
									})
									PartEmmit1.Speed = NumberRange.new(0, 0)
									PartEmmit1.VelocitySpread = 30000
									PartEmmit1.Rotation = NumberRange.new(-500, 500)
									PartEmmit1.RotSpeed = NumberRange.new(-500, 500)
									local BodPoss = IT("BodyPosition", v)
									BodPoss.P = 3000
									BodPoss.D = 1000
									BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
									BodPoss.position = v.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
									v.Color = maincolor.Color
									coroutine.resume(coroutine.create(function()
										for i = 0, 49 do
											swait(1)
											v.Transparency = v.Transparency + 0.08
										end
										wait(0.5)
										PartEmmit1.Enabled = false
										wait(3)
										v:Destroy()
										dude:Destroy()
									end))
								end))
							end
						end
					end))
				end)
				ds()
			end
		end

		function FindNearestHead(Position, Distance, SinglePlayer)
			if SinglePlayer then
				return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
			end
			local List = {}
			for i, v in pairs(workspace:GetChildren()) do
				if v:IsA("Model") and v:findFirstChild("Head") and v ~= char and Distance >= (v.Head.Position - Position).magnitude then
					table.insert(List, v)
				end
			end
			return List
		end

		function Aura(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos, MType)
			local type = type
			local rng = Instance.new("Part", char)
			rng.Anchored = true
			rng.BrickColor = color
			rng.CanCollide = false
			rng.FormFactor = 3
			rng.Name = "Ring"
			rng.Material = "Neon"
			rng.Size = Vector3.new(1, 1, 1)
			rng.Transparency = 0
			rng.TopSurface = 0
			rng.BottomSurface = 0
			rng.CFrame = pos
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector * outerpos
			local rngm = Instance.new("SpecialMesh", rng)
			rngm.MeshType = MType
			rngm.Scale = Vector3.new(x1, y1, z1)
			local scaler2 = 1
			local speeder = FastSpeed
			if type == "Add" then
				scaler2 = 1 * value
			elseif type == "Divide" then
				scaler2 = 1 / value
			end
			coroutine.resume(coroutine.create(function()
				for i = 0, 10 / bonuspeed, 0.1 do
					swait()
					if type == "Add" then
						scaler2 = scaler2 - 0.01 * value / bonuspeed
					elseif type == "Divide" then
						scaler2 = scaler2 - 0.01 / value * bonuspeed
					end
					speeder = speeder - 0.01 * FastSpeed * bonuspeed
					rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
					rng.Transparency = rng.Transparency + 0.01 * bonuspeed
					rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
				end
				rng:Destroy()
			end))
		end

		function SoulSteal(dude)
		if dude.Name ~= char then
		local bgf = IT("BodyGyro", dude.Head)
		bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
		local val = IT("BoolValue", dude)
		val.Name = "IsHit"
		local torso = (dude:FindFirstChild'Head' or dude:FindFirstChild'Torso' or dude:FindFirstChild'UpperTorso' or dude:FindFirstChild'LowerTorso' or dude:FindFirstChild'HumanoidRootPart')
		local soulst = coroutine.wrap(function()
		local soul = Instance.new("Part",dude)
		soul.Size = Vector3.new(1,1,1)
		soul.CanCollide = false
		soul.Anchored = false
		soul.Position = torso.Position
		soul.Transparency = 1
		local PartEmmit1 = IT("ParticleEmitter", soul)
		PartEmmit1.LightEmission = 1
		PartEmmit1.Texture = "rbxassetid://569507414"
		PartEmmit1.Color = ColorSequence.new(maincolor.Color)
		PartEmmit1.Rate = 250
		PartEmmit1.Lifetime = NumberRange.new(1.6)
		PartEmmit1.Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1, 0),
			NumberSequenceKeypoint.new(1, 0, 0)
		})
		PartEmmit1.Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0, 0),
			NumberSequenceKeypoint.new(1, 1, 0)
		})
		PartEmmit1.Speed = NumberRange.new(0, 0)
		PartEmmit1.VelocitySpread = 30000
		PartEmmit1.Rotation = NumberRange.new(-360, 360)
		PartEmmit1.RotSpeed = NumberRange.new(-360, 360)
		local BodPoss = IT("BodyPosition", soul)
		BodPoss.P = 3000
		BodPoss.D = 1000
		BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
		BodPoss.position = torso.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
		wait(1.6)
		soul.Touched:connect(function(hit)
			if hit.Parent == char then
			soul:Destroy()
			end
		end)
		wait(1.2)
		while soul do
			swait()
			PartEmmit1.Color = ColorSequence.new(maincolor.Color)
			BodPoss.Position = tors.Position
		end
		end)
			soulst()
			end
		end
		function FaceMouse()
		local	Cam = workspace.CurrentCamera
			return {
				CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
				Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
			}
		end
		Effects = {
			Block = function(cf,partsize,meshstart,meshadd,matr,colour,spin,inverse,factor)
			local p = Instance.new("Part",EffectModel)
			p.BrickColor = BrickColor.new(colour)
			p.Size = partsize
			p.Anchored = true
			p.CanCollide = false
			p.Material = matr
			p.CFrame = cf
			if inverse == true then
				p.Transparency = 1
			else
				p.Transparency = 0
			end
			local m = Instance.new("BlockMesh",p)
			m.Scale = meshstart
			coroutine.wrap(function()
				for i = 0, 1, factor do
					swait()
					if inverse == true then
						p.Transparency = 1-i
					else
						p.Transparency = i
					end
					m.Scale = m.Scale + meshadd
					if spin == true then
						p.CFrame = p.CFrame * CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
					end
				end
				p:Destroy()
			end)()
		return p
			end,
			Sphere = function(cf,partsize,meshstart,meshadd,matr,colour,inverse,factor)
			local p = Instance.new("Part",EffectModel)
			p.BrickColor = BrickColor.new(colour)
			p.Size = partsize
			p.Anchored = true
			p.CanCollide = false
			p.Material = matr
			p.CFrame = cf
			if inverse == true then
				p.Transparency = 1
			else
				p.Transparency = 0
			end
			local m = Instance.new("SpecialMesh",p)
			m.MeshType = "Sphere"
			m.Scale = meshstart
			coroutine.wrap(function()
				for i=0,1,factor do
					swait()
					if inverse == true then
						p.Transparency = 1-i
					else
						p.Transparency = i
					end
					m.Scale = m.Scale + meshadd
				end
			p:Destroy()
		end)()
		return p
			end,

			Cylinder = function(cf,partsize,meshstart,meshadd,matr,colour,inverse,factor)
			local p = Instance.new("Part",EffectModel)
			p.BrickColor = BrickColor.new(colour)
			p.Size = partsize
			p.Anchored = true
			p.CanCollide = false
			p.Material = matr
			p.CFrame = cf
			if inverse == true then
				p.Transparency = 1
			else
				p.Transparency = 0
			end
			local m = Instance.new("CylinderMesh",p)
			m.Scale = meshstart
			coroutine.wrap(function()
				for i=0,1,factor do
					swait()
					if inverse == true then
						p.Transparency = 1-i
					else
						p.Transparency = i
					end
					m.Scale = m.Scale + meshadd
				end
			p:Destroy()
		end)()
		return p
			end,

		Wave = function(cf,meshstart,meshadd,colour,spin,inverse,factor)
		local p = Instance.new("Part",EffectModel)
		p.BrickColor = BrickColor.new(colour)
		p.Size = Vector3.new()
		p.Anchored = true
		p.CanCollide = false
		p.CFrame = cf
		if inverse == true then
		p.Transparency = 1
		else
		p.Transparency = 0
		end
		local m = Instance.new("SpecialMesh",p)
		m.MeshId = "rbxassetid://20329976"
		m.Scale = meshstart
		coroutine.wrap(function()
		for i=0,1,factor do
		swait()
		if inverse == true then
		p.Transparency = 1-i
		else
		p.Transparency = i
		end
		m.Scale = m.Scale + meshadd
		p.CFrame = p.CFrame * CFrame.Angles(0,math.rad(spin),0)
		end
		p:Destroy()
		end)()
		return p
		end,

		Ring = function(cf,meshstart,meshadd,colour,inverse,factor)
		local p = Instance.new("Part",EffectModel)
		p.BrickColor = BrickColor.new(colour)
		p.Size = Vector3.new()
		p.Anchored = true
		p.CanCollide = false
		p.CFrame = cf
		if inverse == true then
		p.Transparency = 1
		else
		p.Transparency = 0
		end
		local m = Instance.new("SpecialMesh",p)
		m.MeshId = "rbxassetid://3270017"
		m.Scale = meshstart
		coroutine.wrap(function()
		for i=0,1,factor do
		swait()
		if inverse == true then
		p.Transparency = 1-i
		else
		p.Transparency = i
		end
		m.Scale = m.Scale + meshadd
		end
		p:Destroy()
		end)()
		return p
		end,

		Meshed = function(cf,meshstart,meshadd,colour,meshid,textid,spin,inverse,factor)
		local p = Instance.new("Part",EffectModel)
		p.BrickColor = BrickColor.new(colour)
		p.Size = Vector3.new()
		p.Anchored = true
		p.CanCollide = false
		p.CFrame = cf
		if inverse == true then
		p.Transparency = 1
		else
		p.Transparency = 0
		end
		local m = Instance.new("SpecialMesh",p)
		m.MeshId = meshid
		m.TextureId = textid
		m.Scale = meshstart
		coroutine.wrap(function()
		for i=0,1,factor do
		swait()
		if inverse == true then
		p.Transparency = 1-i
		else
		p.Transparency = i
		end
		m.Scale = m.Scale + meshadd
		p.CFrame = p.CFrame * CFrame.Angles(0,math.rad(spin),0)
		end
		p:Destroy()
		end)()
		return p
		end,

		Explode = function(cf,partsize,meshstart,meshadd,matr,colour,move,inverse,factor)
		local p = Instance.new("Part",EffectModel)
		p.BrickColor = BrickColor.new(colour)
		p.Size = partsize
		p.Anchored = true
		p.CanCollide = false
		p.Material = matr
		p.CFrame = cf * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
		if inverse == true then
		p.Transparency = 1
		else
		p.Transparency = 0
		end
		local m = Instance.new("SpecialMesh",p)
		m.MeshType = "Sphere"
		m.Scale = meshstart
		coroutine.wrap(function()
		for i=0,1,factor do
		swait()
		if inverse == true then
		p.Transparency = 1-i
		else
		p.Transparency = i
		end
		m.Scale = m.Scale + meshadd
		p.CFrame = p.CFrame * CFrame.new(0,move,0)
		end
		p:Destroy()
		end)()
		return p
		end,

		}
		-------------------------------------------------------
		--End Effect Function--
		-------------------------------------------------------
		function Cso(ID, PARENT, VOLUME, PITCH)
			local NSound = nil
			coroutine.resume(coroutine.create(function()
				NSound = IT("Sound", PARENT)
				NSound.Volume = VOLUME
				NSound.Pitch = PITCH
				NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
				swait()
				NSound:play()
				game:GetService("Debris"):AddItem(NSound, 10)
			end))
			return NSound
		end
		function CamShake(Length, Intensity)
			coroutine.resume(coroutine.create(function()
				local intensity = 1 * Intensity
				local rotM = 0.01 * Intensity
				for i = 0, Length, 0.1 do
					swait()
					intensity = intensity - 0.05 * Intensity / Length
					rotM = rotM - 5.0E-4 * Intensity / Length
					hum.CameraOffset = Vector3.new(Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)))
					cam.CFrame = cam.CFrame * CF(Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity))) * Euler(Rad(Mrandom(-intensity, intensity)) * rotM, Rad(Mrandom(-intensity, intensity)) * rotM, Rad(Mrandom(-intensity, intensity)) * rotM)
				end
				hum.CameraOffset = Vector3.new(0, 0, 0)
			end))
		end
		NewInstance = function(instance,parent,properties)
			local inst = Instance.new(instance)
			inst.Parent = parent
			if(properties)then
				for i,v in next, properties do
					pcall(function() inst[i] = v end)
				end
			end
			return inst;
		end
		hum.MaxHealth = 1.0E298
		hum.Health = 1.0E298
		game:GetService("RunService"):BindToRenderStep("HOT", 0, function()
		  if hum.Health > 0.1 and hum.Health < 1.0E298 then
			hum.MaxHealth = 1.0E298
			hum.Health = 1.0E298
		  end
		end)
		-------------------------------------------------------
		--End Important Functions--
		-------------------------------------------------------


		-------------------------------------------------------
		--Start Customization--
		-------------------------------------------------------
		local Player_Size = 1
		if Player_Size ~= 1 then
		root.Size = root.Size * Player_Size
		tors.Size = tors.Size * Player_Size
		hed.Size = hed.Size * Player_Size
		ra.Size = ra.Size * Player_Size
		la.Size = la.Size * Player_Size
		rl.Size = rl.Size * Player_Size
		ll.Size = ll.Size * Player_Size
		----------------------------------------------------------------------------------
		rootj.Parent = root
		neck.Parent = tors
		RW.Parent = tors
		LW.Parent = tors
		RH.Parent = tors
		LH.Parent = tors
		----------------------------------------------------------------------------------
		rootj.C0 = RootCF * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0))
		rootj.C1 = RootCF * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0))
		neck.C0 = necko * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0))
		neck.C1 = CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * angles(Rad(-90), Rad(0), Rad(180))
		RW.C0 = CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0)) --* RIGHTSHOULDERC0
		LW.C0 = CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0)) --* LEFTSHOULDERC0
		----------------------------------------------------------------------------------
		RH.C0 = CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
		LH.C0 = CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
		RH.C1 = CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
		LH.C1 = CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
		--hat.Parent = Character
		end
		----------------------------------------------------------------------------------
		local SONG = 525565668
		local SONG2 = 0
		local Music = Instance.new("Sound",tors)
		Music.Volume = 2.5
		Music.Looped = true
		Music.Pitch = 1 --Pitcher
		----------------------------------------------------------------------------------
		local equipped = false
		local idle = 0
		local change = 1
		local val = 0
		local toim = 0
		local idleanim = 0.4
		local sine = 0
		local Sit = 1
		local WasAir = false
		local InAir = false
		local LandTick = 0
		local movelegs = false


		local Speed = 56
		local Chips = "onebearnakedwoman"
		----------------------------------------------------------------------------------
		hum.JumpPower = 55
		hum.Animator.Parent = nil
		----------------------------------------------------------------------------------
		Chips = IT("Model")
		Chips.Parent = char
		Chips.Name = "Chips"
		RHe = IT("Part")
		RHe.Parent = Chips
		RHe.BrickColor = BrickColor.new("Really black")
		RHe.Locked = true
		RHe.CanCollide = false
		RHe.Transparency = 1
		local Hat = plr.Character.Pillow.Handle
		Hat.AccessoryWeld:Destroy()
		Align(Hat,RHe,Vector3.new(0, 0, 0.5),Vector3.new(-0, 90, 90))

		PMesh = IT("SpecialMesh")
		RHe.formFactor =  "Symmetric"
		PMesh.MeshType = "FileMesh"
		PMesh.MeshId = "rbxassetid://19106014"
		PMesh.TextureId = "rbxassetid://342435650"
		PMesh.Scale = Vector3.new(1, 1.4, 0.8)
		PMesh.Parent = RHe
		local RWeld = IT("Weld")
		RWeld.Parent = RHe
		RWeld.Part0 = RHe
		RWeld.Part1 = ra
		RWeld.C0 = CF(-1.2, -0.5, 0) * angles(Rad(90), Rad(0), Rad(90))
		-------------------------------------------------------
		--End Customization--
		-------------------------------------------------------


		-------------------------------------------------------
		--Start Attacks N Stuff--
		-------------------------------------------------------
		function AttackTemplate()
			attack = true
			for i = 0, 2, 0.1 do
				swait()
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.1)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.1)
				ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0 + 5 * Sin(sine / 20)), Rad(10 + 5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0 - 5 * Sin(sine / 20)), Rad(-10 - 5 * Sin(sine / 20))), 0.1)
			end
			attack = false
		end
		function HitboxFunction(Pose, lifetime, siz1, siz2, siz3, Radie, Min, Max, kb, atype)
		  local Hitboxpart = Instance.new("Part", EffectModel)
		  RemoveOutlines(Hitboxpart)
		  Hitboxpart.Size = Vector3.new(siz1, siz2, siz3)
		  Hitboxpart.CanCollide = false
		  Hitboxpart.Transparency = 1
		  Hitboxpart.Anchored = true
		  Hitboxpart.CFrame = Pose
		  game:GetService("Debris"):AddItem(Hitboxpart, lifetime)
		  MagniDamage(Hitboxpart, Radie, Min, Max, kb, atype)
		end
		wait2 = false
		combo = 1
		mouse.Button1Down:connect(function(key)
		  if attack == false then
			attack = true
			Speed = 3.01
			if combo == 1 and wait2 == false then
			  wait2 = true
				for i = 0, 1.6, 0.1 do
					swait()
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(-45)), 0.2)
					neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(0), Rad(45)), 0.2)
					rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-45), Rad(0)) * angles(Rad(0), Rad(0), Rad(15)), 0.2)
					ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-15)), 0.2)
					RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(180), Rad(0 + 5 * Sin(sine / 20)), Rad(25 + 5 * Sin(sine / 20))), 0.2)
					LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-20), Rad(0 - 5 * Sin(sine / 20)), Rad(-10 - 5 * Sin(sine / 20))), 0.2)
				end
				Cso("138097048", ra, 1.2, 0.8)
				HitboxFunction(ra.CFrame, 0.01, 1, 1, 1, 7, 6, 9, 3, "Normal")
				for i = 0, 1.2, 0.1 do
					swait()
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(20), Rad(0), Rad(45)), 0.3)
					neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(20 - 5 * Sin(sine / 20)), Rad(0), Rad(-45)), 0.3)
					rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(20), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(15)), 0.3)
					ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-20), Rad(45), Rad(0)) * angles(Rad(0), Rad(0), Rad(-15)), 0.3)
					RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(85), Rad(0 + 5 * Sin(sine / 20)), Rad(45 + 5 * Sin(sine / 20))), 0.3)
					LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-45), Rad(0 - 5 * Sin(sine / 20)), Rad(-25 - 5 * Sin(sine / 20))), 0.3)
				end
			  combo = 1
			end
			Speed = 56
			wait2 = false
			attack = false
			HighLight.Transparency = 1
			end
		end)
		function Taunt()
			attack = true
			Speed = 3
			if Chips == "onebearnakedwoman" then
				local Munch = Cso("1575472350", hed, 5, 1)
				swait(2)
				repeat
					swait()
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.2 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.3)
					neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-35 - 5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
					rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-20), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.3)
					ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-20), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.3)
					RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.1 + 0.1 * Sin(sine / 20)* Player_Size, -0.6* Player_Size) * angles(Rad(160), Rad(0), Rad(-35)), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-20), Rad(0 - 5 * Sin(sine / 20)), Rad(-10 - 5 * Sin(sine / 20))), 0.3)
				until Munch.Playing == false
			elseif Chips == "layonme" then
				for i = 0, 6, 0.1 do
					swait()
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
					neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0 - 255.45 * i)), 0.15)
					rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.1)
					ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
					RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(30 + 5 * Sin(sine / 20)), Rad(45 + 5 * Sin(sine / 20))), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(10), Rad(-30 - 5 * Sin(sine / 20)), Rad(-45 - 5 * Sin(sine / 20))), 0.1)
				end
			elseif Chips == "howitfeelstochew5gum" then
				local Munch = Cso("1575472350", hed, 5, 1)
				swait(2)
				repeat
					swait()
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.2 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.3)
					neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-35 - 5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.3)
					rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-20), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.3)
					ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-20), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.3)
					RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.1 + 0.1 * Sin(sine / 20)* Player_Size, -0.6* Player_Size) * angles(Rad(160), Rad(0), Rad(-35)), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(-20), Rad(0 - 5 * Sin(sine / 20)), Rad(-10 - 5 * Sin(sine / 20))), 0.3)
				until Munch.Playing == false
				Cso("172324194", hed, 5, 1)
				for i = 0, 5, 0.1 do
					swait()
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.2 * Player_Size) * angles(Rad(-20), Rad(0), Rad(0)), 0.3)
					neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-35), Rad(0), Rad(0)), 0.3)
					rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 * Player_Size, 0* Player_Size) * angles(Rad(-20), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.3)
					ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 * Player_Size, 0* Player_Size) * angles(Rad(-20), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.3)
					RW.C0 = clerp(RW.C0, CF(1* Player_Size, 0.1* Player_Size, -0.6* Player_Size) * angles(Rad(160), Rad(0), Rad(-35)), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5* Player_Size, 0* Player_Size) * angles(Rad(-20), Rad(0), Rad(-10)), 0.3)
				end
				local RUN = Cso("957655044", hed, 5, 1)
				swait(2)
				repeat
					swait()
					Speed = 56
					local WALKSPEEDVALUE = 6 / (hum.WalkSpeed / 16)
					root.Velocity = root.CFrame.lookVector * 75
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.3 - 0.65 * Cos(sine / ( WALKSPEEDVALUE / 2 ))) * angles(Rad(-25), Rad(0), Rad(0 - 1.75 * Cos(sine / ( WALKSPEEDVALUE / 2))) + root.RotVelocity.Y / 75), 0.1)
					neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-20 + 5 * Sin(sine / (WALKSPEEDVALUE / 2))), Rad(0), Rad(0) + root.RotVelocity.Y / 13), 0.1)
					rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.8 - 0.5 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size, 0.6 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size)  * angles(Rad(-15 - 95 * Cos(sine / WALKSPEEDVALUE)) - root.RotVelocity.Y / 75 + -Sin(sine / WALKSPEEDVALUE) / 2.5, Rad(0 - 10 * Cos(sine / WALKSPEEDVALUE)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / WALKSPEEDVALUE)), Rad(0), Rad(0)), 0.3)
					ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.8 + 0.5 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size, -0.6 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size) * angles(Rad(-15 + 95 * Cos(sine / WALKSPEEDVALUE)) + root.RotVelocity.Y / -75 + Sin(sine / WALKSPEEDVALUE) / 2.5, Rad(0 - 10 * Cos(sine / WALKSPEEDVALUE)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / WALKSPEEDVALUE)), Rad(0), Rad(0)), 0.3)
					RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / WALKSPEEDVALUE)* Player_Size, 0* Player_Size) * angles(Rad(215), Rad(0), Rad(45)), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / WALKSPEEDVALUE)* Player_Size, 0* Player_Size) * angles(Rad(215), Rad(0), Rad(-45)), 0.1)
				until RUN.Playing == false
			elseif Chips == "5gumdowngrade" then
				Cso("1826625760", hed, 5, 1)
				for i = 0, 5, 0.1 do
					swait()
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(0)), 0.1)
					neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(20 - 5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.1)
					rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.1)
					ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
					RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0 + 5 * Sin(sine / 20)), Rad(10 + 5 * Sin(sine / 20))), 0.1)
					LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0 - 5 * Sin(sine / 20)), Rad(-10 - 5 * Sin(sine / 20))), 0.1)
				end
			end
			Speed = 56
			movelegs = false
			attack = false
		end
		function Gum()
			attack = true
			Speed = 0
			local Senses = Cso("605297168", hed, 6, 1)
			swait(2)
			repeat
				swait()
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0), Rad(0), Rad(20)), 0.2)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(0), Rad(-20)), 0.2)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.2)
				ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.2)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0 + 5 * Sin(sine / 20)), Rad(10 + 5 * Sin(sine / 20))), 0.2)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(-90)), 0.2)
			until Senses.TimePosition > 2.7
			for i = 0, 3, 0.1 do
				swait()
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size) * angles(Rad(-30), Rad(0), Rad(0)), 0.5)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 0.5)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.5)
				ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(10)), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(-90)), 0.5)
			end
			root.Anchored = true
			repeat
				swait()
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -2.7 + 0.1* Player_Size) * angles(Rad(90), Rad(0), Rad(0)), 0.5)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 0.5)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.5)
				ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.5)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(10)), 0.5)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(-90)), 0.5)
			until Senses.Playing == false
			Speed = 56
			attack = false
			root.Anchored = false
		end
		function OHHHHHHH()
			attack = true
			Speed = 0
			Cso("663306786", tors, 3, 1)
			for i = 0, 12, 0.1 do
				swait()
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0 + 1 * i * Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.1)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(20 - 5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.1)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(47), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.1)
				ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(65), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(75), Rad(0 + 5 * Sin(sine / 20)), Rad(10 + 5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(143), Rad(0 - 5 * Sin(sine / 20)), Rad(-10 - 5 * Sin(sine / 20))), 0.1)
			end
			Cso("663307468", tors, 6, 1)
			for i = 0, 6, 0.1 do
				swait()
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 4500 * Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(-20), Rad(0), Rad(0)), 0.15)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(20 - 5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.1)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(47), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.1)
				ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(65), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(75), Rad(0 + 5 * Sin(sine / 20)), Rad(10 + 5 * Sin(sine / 20))), 0.1)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(156), Rad(0 - 5 * Sin(sine / 20)), Rad(-10 - 5 * Sin(sine / 20))), 0.1)
			end
			Speed = 56
			attack = false
		end
		function WoodyGotWood()
			attack = true
			Speed = 0
			local Woodlenny = Cso("1764642350", hed, 6, 1)
			swait(2)
			repeat
				swait()
				rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 5)) * angles(Rad(20), Rad(0), Rad(5)), 0.2)
				neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(20), Rad(0), Rad(-5 - 15 * Sin(sine / 20))), 0.2)
				rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 5)* Player_Size, 0* Player_Size) * angles(Rad(20), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.2)
				ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 5)* Player_Size, 0* Player_Size) * angles(Rad(20), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.2)
				RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 5)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(10)), 0.2)
				LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 5)* Player_Size, 0* Player_Size) * angles(Rad(20), Rad(0), Rad(-10)), 0.2)
			until Woodlenny.TimePosition > 3.6
			root.Anchored = true
			repeat
				swait()
				for i = 0, 2, 0.1 do
					swait()
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -2.7 + 0.1* Player_Size) * angles(Rad(-90), Rad(0), Rad(0)), 0.5)
					neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 0.5)
					rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.5)
					ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.5)
					RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(90)), 0.5)
					LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(-90)), 0.5)
				end
				for i = 0, 1.6, 0.1 do
					swait()
					rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -2.4 + 0.1* Player_Size) * angles(Rad(-90), Rad(0), Rad(0)), 0.5)
					neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0)), 0.5)
					rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.5)
					ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.5)
					RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(75)), 0.5)
					LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(0), Rad(-75)), 0.5)
				end
			until Woodlenny.Playing == false
			Speed = 56
			attack = false
			root.Anchored = false
		end
		-------------------------------------------------------
		--End Attacks N Stuff--
		-------------------------------------------------------
		mouse.KeyDown:connect(function(key)
			if attack == false then
				if key == "t" then
					Taunt()
				elseif key == "z" then
					Gum()
				elseif key == "x" then
					OHHHHHHH()
				elseif key == "c" then
					WoodyGotWood() 
						elseif key == "f" then
					SONG = 690663957
					Music.TimePosition = 0
					PMesh.TextureId = "rbxassetid://206977326"
						Chips = "cheesexd"

				elseif key == "m" then
					SONG = 525565668
					Music.TimePosition = 0
					PMesh.TextureId = "rbxassetid://342435650"
					Chips = "onebearnakedwoman"
				elseif key == "n" then
					SONG = 937445925
					Music.TimePosition = 0
					PMesh.TextureId = "rbxassetid://342436716"
					Chips = "layonme"
				elseif key == "b" then
					SONG = 1386299751
					Music.TimePosition = 0
					PMesh.TextureId = "rbxassetid://341999291"
					Chips = "howitfeelstochew5gum"
				elseif key == "v" then
					SONG = 554967156
					Music.TimePosition = 0
					PMesh.TextureId = "rbxassetid://341999245"
					Chips = "5gumdowngrade"
				end
			end
		end)

		 






		-------------------------------------------------------
		--Start Animations--
		-------------------------------------------------------
		print("By Makhail07")
		while true do
			swait()
			sine = sine + change
			local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
			local velderp = root.Velocity.y
			hitfloor, posfloor = rayCast(root.Position, CFrame.new(root.Position, root.Position - Vector3.new(0, 1, 0)).lookVector, 4* Player_Size, char)
			if equipped == true or equipped == false then
				if attack == false then
					idle = idle + 1
				else
					idle = 0
				end
				local Landed = false
				if(hitfloor)then
					WasAir = false
				else
					WasAir = true
				end
				if(WasAir == false)then
					if(InAir == true)then
						LandTick = time()
						Landed = true
					end
				end
				if(time()-LandTick < .3)then
					Landed = true
				end
				if(hitfloor)then
					InAir = false
				else
					InAir = true
				end
				local WALKSPEEDVALUE = 6 / (hum.WalkSpeed / 16)
				local Walking = (math.abs(root.Velocity.x) > 1 or math.abs(root.Velocity.z) > 1)
				local State = (hum.PlatformStand and 'Paralyzed' or hum.Sit and 'Sit' or Landed and 'Land' or not hitfloor and root.Velocity.y < -1 and "Fall" or not hitfloor and root.Velocity.y > 1 and "Jump" or hitfloor and Walking and "Walk" or hitfloor and "Idle")
				if(State == 'Jump')then
					hum.JumpPower = 55
					if attack == false then
						rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(-16), Rad(0), Rad(0)), 0.1)
						neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
						rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -.2 - 0.1 * Cos(sine / 20), -.3* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.1)
						ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -.9 - 0.1 * Cos(sine / 20), -.5* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(-2.5), Rad(0), Rad(0)), 0.1)
						RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(13 + 4.5 * Sin(sine / 20))), 0.1)
						LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(-13 - 4.5 * Sin(sine / 20))), 0.1)
					end
				elseif(State == 'Fall')then
					if attack == false then
						rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(25), Rad(0), Rad(0)), 0.1)
						neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
						rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(25), Rad(0), Rad(0)), 0.1)
						ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -.8 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(25), Rad(0), Rad(0)), 0.1)
						RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(165), Rad(-.6), Rad(45 + 4.5 * Sin(sine / 20))), 0.1)
						LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(165), Rad(-.6), Rad(-45 - 4.5 * Sin(sine / 20))), 0.1)
					end
				elseif(State == 'Land')then
					hum.JumpPower = 0
					if attack == false then
						rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(10), Rad(0), Rad(0)), 0.15)
						neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(35 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.3)
						rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, 0.1 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * angles(Rad(0), Rad(-10), Rad(0)) * angles(Rad(-3.5), Rad(0), Rad(5)), 0.15)
						ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, 0.1 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * angles(Rad(0), Rad(10), Rad(0)) * angles(Rad(-3.5), Rad(0), Rad(-5)), 0.15)
						RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(65), Rad(0), Rad(25 + 4.5 * Sin(sine / 20))), 0.1)
						LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(55), Rad(0), Rad(-25 - 4.5 * Sin(sine / 20))), 0.1)
					end
				elseif(State == 'Idle')then
					change = 1
					if attack == false then
						rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 20)) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.1)
						neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(0), Rad(0)), 0.1)
						rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(-10), Rad(0)) * angles(Rad(0), Rad(0), Rad(5)), 0.1)
						ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.9 - 0.1 * Cos(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0 - 5 * Sin(sine / 20)), Rad(10), Rad(0)) * angles(Rad(0), Rad(0), Rad(-5)), 0.1)
						RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0 + 15 * Sin(sine / 20)), Rad(0 + 5 * Sin(sine / 20)), Rad(10 + 5 * Sin(sine / 20))), 0.1)
						LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(0 + 15 * Sin(sine / 20)), Rad(0 - 5 * Sin(sine / 20)), Rad(-10 - 5 * Sin(sine / 20))), 0.1)
					end
				elseif(State == 'Walk')then
					change = 0.55
					hum.JumpPower = 55
					if attack == false then
						rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.3 - 0.65 * Cos(sine / ( WALKSPEEDVALUE / 2 ))) * angles(Rad(-25), Rad(0), Rad(0 - 1.75 * Cos(sine / ( WALKSPEEDVALUE / 2))) + root.RotVelocity.Y / 75), 0.1)
						neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-20 + 5 * Sin(sine / (WALKSPEEDVALUE / 2))), Rad(0), Rad(0) + root.RotVelocity.Y / 13), 0.1)
						rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.8 - 0.5 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size, 0.6 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size)  * angles(Rad(-15 - 95 * Cos(sine / WALKSPEEDVALUE)) - root.RotVelocity.Y / 75 + -Sin(sine / WALKSPEEDVALUE) / 2.5, Rad(0 - 10 * Cos(sine / WALKSPEEDVALUE)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / WALKSPEEDVALUE)), Rad(0), Rad(0)), 0.3)
						ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.8 + 0.5 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size, -0.6 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size) * angles(Rad(-15 + 95 * Cos(sine / WALKSPEEDVALUE)) + root.RotVelocity.Y / -75 + Sin(sine / WALKSPEEDVALUE) / 2.5, Rad(0 - 10 * Cos(sine / WALKSPEEDVALUE)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / WALKSPEEDVALUE)), Rad(0), Rad(0)), 0.3)
						RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.1 * Sin(sine / WALKSPEEDVALUE)* Player_Size, 0* Player_Size) * angles(Rad(215), Rad(0), Rad(45)), 0.1)
						LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.1 * Sin(sine / WALKSPEEDVALUE)* Player_Size, 0* Player_Size) * angles(Rad(215), Rad(0), Rad(-45)), 0.1)
					elseif attack == true and movelegs == true then
						rl.Weld.C0 = clerp(rl.Weld.C0, CF(0.5* Player_Size, -0.8 - 0.5 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size, 0.6 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size)  * angles(Rad(-10 - 25 * Cos(sine / WALKSPEEDVALUE)) - root.RotVelocity.Y / 75 + -Sin(sine / WALKSPEEDVALUE) / 2.5, Rad(0 - 10 * Cos(sine / WALKSPEEDVALUE)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / WALKSPEEDVALUE)), Rad(0), Rad(0)), 0.3)
						ll.Weld.C0 = clerp(ll.Weld.C0, CF(-0.5* Player_Size, -0.8 + 0.5 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size, -0.6 * Cos(sine / WALKSPEEDVALUE) / 2* Player_Size) * angles(Rad(-10 + 25 * Cos(sine / WALKSPEEDVALUE)) + root.RotVelocity.Y / -75 + Sin(sine / WALKSPEEDVALUE) / 2.5, Rad(0 - 10 * Cos(sine / WALKSPEEDVALUE)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / WALKSPEEDVALUE)), Rad(0), Rad(0)), 0.3)
					end
				end
			end
			
			hum.WalkSpeed = Speed
			Music.SoundId = "rbxassetid://"..SONG
			Music.Looped = true
			Music.Pitch = 1
			Music.Volume = 1.5
			Music.Parent = tors
			Music.Playing = true
			if 0 < #Effects then
				for e = 1, #Effects do
					if Effects[e] ~= nil then
						local Thing = Effects[e]
						if Thing ~= nil then
							local Part = Thing[1]
							local Mode = Thing[2]
							local Delay = Thing[3]
							local IncX = Thing[4]
							local IncY = Thing[5]
							local IncZ = Thing[6]
							if 1 >= Thing[1].Transparency then
								if Thing[2] == "Block1" then
									Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
									local Mesh = Thing[1].Mesh
									Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
									Thing[1].Transparency = Thing[1].Transparency + Thing[3]
								elseif Thing[2] == "Block2" then
									Thing[1].CFrame = Thing[1].CFrame + Vector3.new(0, 0, 0)
									local Mesh = Thing[7]
									Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
									Thing[1].Transparency = Thing[1].Transparency + Thing[3]
								elseif Thing[2] == "Block3" then
									Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) + Vector3.new(0, 0.15, 0)
									local Mesh = Thing[7]
									Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
									Thing[1].Transparency = Thing[1].Transparency + Thing[3]
								elseif Thing[2] == "Cylinder" then
									local Mesh = Thing[1].Mesh
									Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
									Thing[1].Transparency = Thing[1].Transparency + Thing[3]
								elseif Thing[2] == "Blood" then
									local Mesh = Thing[7]
									Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
									Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
									Thing[1].Transparency = Thing[1].Transparency + Thing[3]
								elseif Thing[2] == "Elec" then
									local Mesh = Thing[1].Mesh
									Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
									Thing[1].Transparency = Thing[1].Transparency + Thing[3]
								elseif Thing[2] == "Disappear" then
									Thing[1].Transparency = Thing[1].Transparency + Thing[3]
								elseif Thing[2] == "Shatter" then
									Thing[1].Transparency = Thing[1].Transparency + Thing[3]
									Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
									Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
									Thing[6] = Thing[6] + Thing[5]
								end
							else
								Part.Parent = nil
								table.remove(Effects, e)
							end
						end
					end
				end
			end
		end

		-------------------------------------------------------
		--End Animations And Script--
		-------------------------------------------------------
	else
	Neg()
	Notification("Not Reanimated! >:(")
end
end)

Section3B:NewButton("Dual Swords", "Created by: Unknown", function()
	if game.Players.LocalPlayer.Character:FindFirstChild("TalentlessDumbass") then
	if not game.Players.LocalPlayer.Character:FindFirstChild("BladeMasterAccessory") and not game.Players.LocalPlayer.Character:FindFirstChild("BladeMasterAccessory") then
		return
		Notification("Missing Hat: ShadowBladeMasterAccessory/BladeMasterAccessory >:(")
	end
		Player=game:GetService("Players").LocalPlayer
		Character=Player.Character.TalentlessDumbass
		PlayerGui=Player.PlayerGui
		Backpack=Player.Backpack 
		Torso=Character.Torso 
		Head=Character.Head 
		if Player.Character:FindFirstChild("BBBBB") then
		Notification("You are already running a script! reset to change script!")
		return
	end
	AntiScriptLoad()
		Humanoid=Character.Humanoid
		m=Instance.new('Model',Character)
		LeftArm=Character["Left Arm"] 
		LeftLeg=Character["Left Leg"] 
		RightArm=Character["Right Arm"] 
		RightLeg=Character["Right Leg"] 
		LS=Torso["Left Shoulder"] 
		LH=Torso["Left Hip"] 
		RS=Torso["Right Shoulder"] 
		RH=Torso["Right Hip"] 
		Face = Head.face
		Neck=Torso.Neck
		it=Instance.new
		attacktype=1
		vt=Vector3.new
		cf=CFrame.new
		euler=CFrame.fromEulerAnglesXYZ
		angles=CFrame.Angles
		cloaked=false
		necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
		necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
		LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
		LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
		RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
		RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
		RootPart=Character.HumanoidRootPart
		RootJoint=RootPart.RootJoint
		RootCF=euler(-1.57,0,3.14)
		attack = false 
		attackdebounce = false 
		deb=false
		equipped=true
		hand=false
		MMouse=nil
		combo=0
		mana=0
		trispeed=.2
		attackmode='none'
		local idle=0
		local Anim="Idle"
		local Effects={}
		local gun=false
		local shoot=false
		player=nil 
		mana=0

		mouse=Player:GetMouse()
		--save shoulders 
		RSH, LSH=nil, nil 
		--welds 
		RW, LW=Instance.new("Weld"), Instance.new("Weld") 
		RW.Name="Right Shoulder" LW.Name="Left Shoulder"
		LH=Torso["Left Hip"]
		RH=Torso["Right Hip"]
		TorsoColor=Torso.BrickColor
		function NoOutline(Part)
		Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
		end
		player=Player 
		ch=Player.Character.TalentlessDumbass
		RSH=ch.Torso["Right Shoulder"] 
		LSH=ch.Torso["Left Shoulder"] 
		-- 
		RSH.Parent=nil 
		LSH.Parent=nil 
		-- 
		RW.Name="Right Shoulder"
		RW.Part0=ch.Torso 
		RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
		RW.C1=cf(0, 0.5, 0) 
		RW.Part1=ch["Right Arm"] 
		RW.Parent=ch.Torso 
		-- 
		LW.Name="Left Shoulder"
		LW.Part0=ch.Torso 
		LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
		LW.C1=cf(0, 0.5, 0) 
		LW.Part1=ch["Left Arm"] 
		LW.Parent=ch.Torso 

			Player=game:GetService('Players').LocalPlayer
			Character=Player.Character.TalentlessDumbass
			Mouse=Player:GetMouse()
			m=Instance.new('Model',Character)


			local function weldBetween(a, b)
				local weldd = Instance.new("ManualWeld")
				weldd.Part0 = a
				weldd.Part1 = b
				weldd.C0 = CFrame.new()
				weldd.C1 = b.CFrame:inverse() * a.CFrame
				weldd.Parent = a
				return weldd
			end
			
			function swait(num)
			if num==0 or num==nil then
			game:service'RunService'.Stepped:wait(0)
			else
			for i=0,num do
			game:service'RunService'.Stepped:wait(0)
			end
			end
				end
			
			function nooutline(part)
				part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
			end
			
			Player=game:GetService('Players').LocalPlayer
			Character=Player.Character.TalentlessDumbass
			Mouse=Player:GetMouse()
			m=Instance.new('Model',Character)


			local function weldBetween(a, b)
				local weldd = Instance.new("ManualWeld")
				weldd.Part0 = a
				weldd.Part1 = b
				weldd.C0 = CFrame.new()
				weldd.C1 = b.CFrame:inverse() * a.CFrame
				weldd.Parent = a
				return weldd
			end
			
			it=Instance.new
			
			function nooutline(part)
				part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
			end
			
			function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
				local fp=it("Part")
				fp.formFactor=formfactor
				fp.Parent=parent
				fp.Reflectance=reflectance
				fp.Transparency=transparency
				fp.CanCollide=false
				fp.Locked=true
				fp.BrickColor=BrickColor.new(tostring(brickcolor))
				fp.Name=name
				fp.Size=size
				fp.Position=Character.Torso.Position
				nooutline(fp)
				fp.Material=material
				fp:BreakJoints()
				return fp
			end
			
			function mesh(Mesh,part,meshtype,meshid,offset,scale)
				local mesh=it(Mesh)
				mesh.Parent=part
				if Mesh=="SpecialMesh" then
					mesh.MeshType=meshtype
					mesh.MeshId=meshid
				end
				mesh.Offset=offset
				mesh.Scale=scale
				return mesh
			end
			
			function weld(parent,part0,part1,c0,c1)
				local weld=it("Weld")
				weld.Parent=parent
				weld.Part0=part0
				weld.Part1=part1
				weld.C0=c0
				weld.C1=c1
				return weld
			end

		Aether=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.628554821, 1.32748795, 0.200000003))
		Aetherweld=weld(m,Character["Left Arm"],Aether,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.859289527, -0.0968446732, 0.0218138695, 0.0220653266, 0.99975431, -0.00205104053, 0.00974609517, 0.00183633971, 0.999950826, 0.99970907, -0.0220842306, -0.00970318168))
		mesh("CylinderMesh",Aether,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.934888721))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0482299328, -0.46901834, -0.00140285492, 0.866025388, 0.5, 4.34461981e-007, 0.5, -0.866025388, 2.34693289e-007, 4.92460458e-007, 1.21071935e-008, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0408809185, 0.540866375, -0.0013794899, 5.68735413e-006, -1.00000012, -1.12690032e-007, -1.00000012, -5.68758696e-006, 8.57362465e-008, -8.7031367e-008, 1.12690032e-007, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00239992142, -0.0296115875, 0.771736503, 8.24144081e-007, -5.30853868e-008, -1.00000012, -0.965925813, -0.258818716, -7.82543793e-007, -0.258818716, 0.965925992, -2.64495611e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00250148773, 0.0349569321, 0.746231079, -8.24144081e-007, 5.30853868e-008, 1.00000012, -5.69061376e-006, 1, -5.30853868e-008, -1, -5.69084659e-006, -8.25148163e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00358104706, -0.869184017, -0.00138282776, -0.866025507, -0.49999997, -2.67289579e-007, -0.49999994, 0.866025507, -2.67289579e-007, 3.64165317e-007, -9.96515155e-008, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.048207283, 0.848121047, 0.00165987015, 0.866025388, 0.5, 4.34461981e-007, -0.5, 0.866025388, -2.34693289e-007, -4.92460458e-007, -1.21071935e-008, 1))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0408153534, 1.29684615, -0.00142383575, 5.68735413e-006, -1.00000012, -1.12690032e-007, -1.00000012, -5.68758696e-006, 8.57362465e-008, -8.7031367e-008, 1.12690032e-007, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00249433517, -0.030421257, 0.769461155, 8.24144081e-007, -5.30853868e-008, -1.00000012, -0.866025567, -0.499999732, -6.88713044e-007, -0.499999762, 0.866025686, -4.59142029e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.200274855, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00255298615, 0.0175304413, 0.694089413, -8.24144081e-007, 5.30853868e-008, 1.00000012, -1, 5.00585884e-008, -8.24971721e-007, -5.00585884e-008, -1.00000012, 5.21540642e-008))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00361680984, -1.62502837, -0.00139760971, -0.866025507, -0.49999997, -2.67289579e-007, -0.49999994, 0.866025507, -2.67289579e-007, 3.64165317e-007, -9.96515155e-008, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00245523453, -0.0160694122, -0.768128753, -8.24144081e-007, 5.30853868e-008, 1.00000012, -1, 5.00585884e-008, -8.24971721e-007, -5.00585884e-008, -1.00000012, 5.21540642e-008))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00248527527, -0.0654726028, 0.760480046, 8.24144081e-007, -5.30853868e-008, -1.00000012, -0.499997318, -0.866026998, -3.66941094e-007, -0.866027057, 0.499997318, -7.41332769e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00253629684, -0.0646264553, 0.748324633, 8.24144081e-007, -5.30853868e-008, -1.00000012, -0.258814603, -0.965927124, -1.62981451e-007, -0.965927064, 0.258814663, -8.11880454e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0167102814, -0.91748333, -0.00139427185, -0.866026878, 0.499997616, 1.37835741e-007, 0.499997616, 0.866026759, -4.64729965e-007, -3.52476491e-007, -3.34344804e-007, -1.00000012))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00250673294, -0.0676466227, 0.777448893, -8.24144081e-007, 5.30853868e-008, 1.00000012, 0.258824974, -0.965924323, 2.64495611e-007, 0.965924263, 0.258824974, 7.8510493e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.201587483, 0.204107866, 0.20326753))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.102931261, 0.746011496, -0.00346374512, 5.68735413e-006, -1.00000012, -1.12690032e-007, -1.00000012, -5.68758696e-006, 8.57362465e-008, -8.7031367e-008, 1.12690032e-007, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00245761871, 0.0617038012, 0.698882341, -8.24144081e-007, 5.30853868e-008, 1.00000012, -0.86602658, 0.499997973, -7.40401447e-007, -0.499997973, -0.8660267, -3.67872417e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00255489349, -0.0120299459, 0.792168617, -8.24144081e-007, 5.30853868e-008, 1.00000012, 0.86602658, -0.499997973, 7.40401447e-007, 0.499997973, 0.8660267, 3.67872417e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0407748222, -0.917782784, 0.00175046921, 5.68735413e-006, -1.00000012, -1.12690032e-007, 1.00000012, 5.68758696e-006, -8.57362465e-008, 8.7031367e-008, -1.12690032e-007, 1))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.207467124, 0.200000003, 0.200747684))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.698031425, 0.199667215, -0.0031504631, -0.499997377, -0.866026998, 2.65426934e-007, -0.866026998, 0.499997318, -1.53668225e-007, -2.34831532e-009, -3.08267772e-007, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.974342167, 1))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0024805069, 0.0297365189, 0.693201661, 8.24144081e-007, -5.30853868e-008, -1.00000012, 0.866025567, 0.499999732, 6.88713044e-007, 0.499999762, -0.866025686, 4.59142029e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0246095657, 0.946931005, 0.00160741806, 5.68735413e-006, -1.00000012, -1.12690032e-007, 1.00000012, 5.68758696e-006, -8.57362465e-008, 8.7031367e-008, -1.12690032e-007, 1))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00253391266, -0.0274742842, 0.799907207, -8.24144081e-007, 5.30853868e-008, 1.00000012, 0.707110167, -0.707103372, 6.20726496e-007, 0.707103372, 0.707110226, 5.46686351e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00361967087, 1.24815178, 0.00166797638, -0.866025507, -0.49999997, -2.67289579e-007, 0.49999994, -0.866025507, 2.67289579e-007, -3.64165317e-007, 9.96515155e-008, 1))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00258970261, -0.0367918015, 0.760182619, -8.24144081e-007, 5.30853868e-008, 1.00000012, 5.69061376e-006, -1, 5.30853868e-008, 1, 5.69084659e-006, 8.25148163e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00249910355, 0.0319302082, 0.736921787, 8.24144081e-007, -5.30853868e-008, -1.00000012, 0.258814603, 0.965927124, 1.62981451e-007, 0.965927064, -0.258814663, 8.11880454e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0245614052, -1.32380986, -0.00139141083, 5.68735413e-006, -1.00000012, -1.12690032e-007, -1.00000012, -5.68758696e-006, 8.57362465e-008, -8.7031367e-008, 1.12690032e-007, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0024394989, -0.00593090057, 0.788860798, -8.24144081e-007, 5.30853868e-008, 1.00000012, 0.965926111, -0.25881815, 8.12113285e-007, 0.25881812, 0.965926111, 1.62050128e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00250387192, 0.0384171009, 0.715082526, 8.24144081e-007, -5.30853868e-008, -1.00000012, 0.707106292, 0.707107365, 5.46686351e-007, 0.707107306, -0.707106292, 6.21192157e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0245568752, -0.567831755, -0.00136518478, 5.68735413e-006, -1.00000012, -1.12690032e-007, -1.00000012, -5.68758696e-006, 8.57362465e-008, -8.7031367e-008, 1.12690032e-007, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0024433136, 0.00553488731, 0.692357302, -8.24144081e-007, 5.30853868e-008, 1.00000012, -0.965926111, 0.25881815, -8.12113285e-007, -0.25881812, -0.965926111, -1.62050128e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00244855881, 0.0087852478, 0.682419538, 8.24144081e-007, -5.30853868e-008, -1.00000012, 0.965925813, 0.258818716, 7.82543793e-007, 0.258818716, -0.965925992, 2.64495611e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00248146057, -0.0610060692, 0.789432049, -8.24144081e-007, 5.30853868e-008, 1.00000012, 0.500005364, -0.866022348, 4.58210707e-007, 0.866022289, 0.500005364, 6.88247383e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00248479843, 0.0247051716, 0.724541545, 8.24144081e-007, -5.30853868e-008, -1.00000012, 0.499997318, 0.866026998, 3.66941094e-007, 0.866027057, -0.499997318, 7.41332769e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0618763566, 0.844838619, 0.00165748596, 0.866026819, -0.499997675, -1.76951289e-008, 0.499997675, 0.866026819, -8.7544322e-008, 5.87260729e-008, 6.61239028e-008, 1.00000012))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.061909318, -1.22174335, -0.00138807297, 0.866026819, -0.499997675, -1.76951289e-008, -0.499997675, -0.866026819, 8.7544322e-008, -5.87260729e-008, -6.61239028e-008, -1.00000012))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0167390108, -1.67346716, -0.0013666153, -0.866026878, 0.499997616, 1.37835741e-007, 0.499997616, 0.866026759, -4.64729965e-007, -3.52476491e-007, -3.34344804e-007, -1.00000012))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0481948853, -1.22510386, -0.0013961792, 0.866025388, 0.5, 4.34461981e-007, 0.5, -0.866025388, 2.34693289e-007, 4.92460458e-007, 1.21071935e-008, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0167447329, 1.29658318, 0.00167179108, -0.866026878, 0.499997616, 1.37835741e-007, -0.499997616, -0.866026759, 4.64729965e-007, 3.52476491e-007, 3.34344804e-007, 1.00000012))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0619024634, -0.465797901, -0.00137424469, 0.866026819, -0.499997675, -1.76951289e-008, -0.499997675, -0.866026819, 8.7544322e-008, -5.87260729e-008, -6.61239028e-008, -1.00000012))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Lily white","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Aether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00246477127, -0.0393984318, 0.773224831, 8.24144081e-007, -5.30853868e-008, -1.00000012, -0.707106292, -0.707107365, -5.46686351e-007, -0.707107306, 0.707106292, -6.21192157e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.270463198, 0.200000003, 0.200000003))
		NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00296783447, -0.892157197, -0.0495495796, -8.24144081e-007, 5.30853868e-008, 1.00000012, -0.289944708, -0.957043409, -1.89058483e-007, 0.957043409, -0.289944708, 8.03964213e-007))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.0965944752, 0.0839949176))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
		NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0220781565, -0.875856161, -0.00244951248, 0.965505719, -0.260382056, 1.36205927e-007, -0.260382056, -0.965505779, 2.00234354e-007, 7.75817171e-008, -2.28174031e-007, -1.00000012))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.0839950144, 1))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.270463198, 0.200000003, 0.200000003))
		NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00298309326, 0.739748716, 0.227409244, -8.24144081e-007, 5.30853868e-008, 1.00000012, 0.485118002, 0.874448776, 3.55765224e-007, -0.874448717, 0.485117972, -7.45989382e-007))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.251985252, 0.0839949176))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
		NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.17238736, 0.25947094, -0.00244283676, -0.104480669, -0.994526982, -3.21306288e-007, -0.994526863, 0.104480661, -2.65077688e-007, 2.96309736e-007, 2.90572643e-007, -1.00000012))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.390576929, 1))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
		NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.192257524, -0.812019348, -0.00239419937, 0.895354569, -0.445353955, -4.33064997e-008, -0.445353985, -0.895354629, -4.56348062e-007, 1.6192098e-007, 4.25614417e-007, -1))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.390576929, 1))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.422494948, 0.272143304))
		NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0329217911, -0.964554191, 0.00242137909, -0.995991826, 0.0894442722, -2.12225132e-007, -0.0894442648, -0.995991766, 1.67638063e-008, -2.07572157e-007, 3.63215804e-008, 1))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.306580961, 1, 1))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.291462719, 0.272143304))
		NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.875645757, -0.439057112, 0.00245189667, -0.451866388, -0.892085612, -2.87778676e-007, 0.892085731, -0.451866418, 9.17352736e-008, -2.08923666e-007, -2.1327287e-007, 1.00000012))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 1, 1))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
		NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.16988111, -0.0580990314, -0.00243186951, 0.137960076, -0.990437865, 4.65661287e-009, -0.990437746, -0.137960061, -3.53320502e-007, 3.50833943e-007, 4.28408384e-008, -1))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.390576929, 1))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.270463198, 0.200000003, 0.200000003))
		NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00295591354, 0.59362936, 0.516537428, -8.24144081e-007, 5.30853868e-008, 1.00000012, 0.485118002, 0.874448776, 3.55765224e-007, -0.874448717, 0.485117972, -7.45989382e-007))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.432574511, 0.352778435))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.415775359, 0.272143304))
		NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.505042911, -0.851142645, 0.00249242783, -0.882199347, 0.470876366, -3.75322998e-007, -0.470876336, -0.882199347, 2.17929482e-007, -2.28741555e-007, 3.6880374e-007, 1.00000012))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.34437868, 1, 1))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
		NeonLetterweld=weld(m,Aether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.04437017, -0.460815907, -0.0024471283, 0.462649375, -0.886541367, -6.97560608e-007, -0.886541307, -0.462649375, -1.11293048e-007, -2.22287781e-007, 6.69620931e-007, -1.00000012))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.848349869, 1))
		Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.628554821, 0.267470866, 0.922772646))
		Partweld=weld(m,Aether,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.61204147e-005, 0.00246715546, -0.952003956, 1, 0, 1.11867848e-009, 2.55931809e-009, 2.05822289e-007, 1, 0, -1, 2.05822289e-007))
		mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
		BladeNeon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","BladeNeon",Vector3.new(0.405694813, 5.90820885, 0.200000003))
		BladeNeonweld=weld(m,Aether,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00310599804, -4.01893425, 0.000883102417, 1, 0, 1.11867848e-009, 0, -1, 0, -1.11867848e-009, 0, -1))
		mesh("SpecialMesh",BladeNeon,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.29999995, 1, 0.377976805))
		BladeNeon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","BladeNeon",Vector3.new(0.200000003, 0.64424175, 0.260384023))
		BladeNeonweld=weld(m,Aether,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00020647049, -7.29191971, 0.136616588, -8.24144081e-007, 5.30853868e-008, 1.00000012, 5.75021841e-006, -1, 5.21540642e-008, 1, 5.75045124e-006, 8.24569725e-007))
		mesh("SpecialMesh",BladeNeon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.362857431, 1, 1))
		BladeNeon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","BladeNeon",Vector3.new(0.200000003, 0.64424175, 0.264583766))
		BladeNeonweld=weld(m,Aether,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000224590302, -7.2902317, 0.127586007, 8.24144081e-007, -5.30853868e-008, -1.00000012, 5.75021841e-006, -1, 5.21540642e-008, -1, -5.75045124e-006, -8.24569725e-007))
		mesh("SpecialMesh",BladeNeon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.362857431, 1, 1))
		Blade=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.405694813, 5.84185266, 0.200000003))
		Bladeweld=weld(m,Aether,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00318789482, -4.05222178, 0.000928878784, 1, 0, 1.11867848e-009, 0, -1, 0, -1.11867848e-009, 0, -1))
		mesh("SpecialMesh",Blade,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.419974238))
		Blade=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.200000003, 0.522449017, 0.209147185))
		Bladeweld=weld(m,Aether,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000205039978, -7.23093414, 0.0965009928, 8.24144081e-007, -5.30853868e-008, -1.00000012, 5.75021841e-006, -1, 5.21540642e-008, -1, -5.75045124e-006, -8.24569725e-007))
		mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.403174937, 1, 1))
		Blade=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.200000003, 0.522449017, 0.200000003))
		Bladeweld=weld(m,Aether,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000283241272, -7.2334938, 0.1067518, -8.24144081e-007, 5.30853868e-008, 1.00000012, 5.75021841e-006, -1, 5.21540642e-008, 1, 5.75045124e-006, 8.24569725e-007))
		mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.403174937, 1, 0.995338917))

		Nether=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.628554821, 1.32748795, 0.200000003))
		Netherweld=weld(m,Character["Right Arm"],Nether,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.87177372, -0.0829503536, 0.0382533073, -0.0281696357, 0.999596834, -0.00352261961, -0.000984552898, 0.00349627063, 0.999993443, 0.999602675, 0.0281729139, 0.000885667396))
		mesh("CylinderMesh",Nether,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.934888721))
		Blade=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.405694813, 5.84185266, 0.200000003))
		Bladeweld=weld(m,Nether,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0030772686, -4.05209923, 0.000898361206, 1, 0, 6.13908924e-011, 0, -1.00000012, 0, -6.13908924e-011, 0, -1))
		mesh("SpecialMesh",Blade,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.419974238))
		Blade=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.200000003, 0.522449017, 0.209147185))
		Bladeweld=weld(m,Nether,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000222921371, -7.23093987, 0.0966489315, -1.9498998e-007, -1.84983946e-007, -1, 5.25335781e-006, -1.00000012, 1.84983946e-007, -1, -5.25335781e-006, 1.94589347e-007))
		mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.403174937, 1, 1))
		Blade=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Blade",Vector3.new(0.200000003, 0.522449017, 0.200000003))
		Bladeweld=weld(m,Nether,Blade,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000254154205, -7.23342943, 0.106646538, 1.9498998e-007, 1.84983946e-007, 1, 5.25335781e-006, -1.00000012, 1.84983946e-007, 1, 5.25335781e-006, -1.94589347e-007))
		mesh("SpecialMesh",Blade,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.403174937, 1, 0.995338917))
		BladeNeon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","BladeNeon",Vector3.new(0.200000003, 0.64424175, 0.264583766))
		BladeNeonweld=weld(m,Nether,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000238418579, -7.29017735, 0.127707481, -1.9498998e-007, -1.84983946e-007, -1, 5.25335781e-006, -1.00000012, 1.84983946e-007, -1, -5.25335781e-006, 1.94589347e-007))
		mesh("SpecialMesh",BladeNeon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.362857431, 1, 1))
		BladeNeon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","BladeNeon",Vector3.new(0.200000003, 0.64424175, 0.260384023))
		BladeNeonweld=weld(m,Nether,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00025844574, -7.29181671, 0.136456728, 1.9498998e-007, 1.84983946e-007, 1, 5.25335781e-006, -1.00000012, 1.84983946e-007, 1, 5.25335781e-006, -1.94589347e-007))
		mesh("SpecialMesh",BladeNeon,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.362857431, 1, 1))
		BladeNeon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","BladeNeon",Vector3.new(0.405694813, 5.90820885, 0.200000003))
		BladeNeonweld=weld(m,Nether,BladeNeon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00305366516, -4.01884222, 0.000908613205, 1, 0, 6.13908924e-011, 0, -1.00000012, 0, -6.13908924e-011, 0, -1))
		mesh("SpecialMesh",BladeNeon,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1.29999995, 1, 0.377976805))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0482237339, 0.848191738, 0.00165343285, 0.866025805, 0.499999255, -8.93487595e-008, -0.499999255, 0.866025925, -1.87952537e-007, -1.55712314e-008, 2.07568519e-007, 1))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
		Neon=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.201587483, 0.204107866, 0.20326753))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.102931023, 0.746085167, -0.00350427628, 5.15114516e-006, -1.00000012, 1.11933332e-007, -1, -5.15114516e-006, 8.4153271e-009, -8.98012331e-009, -1.11933332e-007, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0245368481, -1.32375312, -0.00137233734, 5.2258838e-006, -1.00000012, 1.14087015e-007, -1, -5.2258838e-006, -6.55222721e-009, 5.92854121e-009, -1.14087015e-007, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0245070457, -0.56784308, -0.00138664246, 5.2258838e-006, -1.00000012, 1.14087015e-007, -1, -5.2258838e-006, -6.55222721e-009, 5.92854121e-009, -1.14087015e-007, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0245621204, 0.946876049, 0.00165820122, 5.2258838e-006, -1.00000012, 1.14087015e-007, 1, 5.2258838e-006, 6.55222721e-009, -5.92854121e-009, 1.14087015e-007, 1))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0408022404, 0.540900946, -0.00139760971, 5.2258838e-006, -1.00000012, 1.14087015e-007, -1, -5.2258838e-006, -6.55222721e-009, 5.92854121e-009, -1.14087015e-007, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0407652855, -0.917833328, 0.00166773796, 5.2258838e-006, -1.00000012, 1.14087015e-007, 1, 5.2258838e-006, 6.55222721e-009, -5.92854121e-009, 1.14087015e-007, 1))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0408360958, 1.29686904, -0.00143361092, 5.2258838e-006, -1.00000012, 1.14087015e-007, -1, -5.2258838e-006, -6.55222721e-009, 5.92854121e-009, -1.14087015e-007, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00358486176, -0.869122982, -0.00142788887, -0.866025805, -0.499999255, 5.95464371e-008, -0.499999255, 0.866025925, -9.76142474e-008, -3.38104655e-009, -1.15134753e-007, -1.00000012))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00356197357, -1.62506747, -0.00138115883, -0.866025805, -0.499999255, 5.95464371e-008, -0.499999255, 0.866025925, -9.76142474e-008, -3.38104655e-009, -1.15134753e-007, -1.00000012))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00249695778, 0.0617160797, 0.698945522, 1.9498998e-007, 1.84983946e-007, 1, -0.866027296, 0.499996901, 7.64266588e-008, -0.499996871, -0.866027355, 2.58325599e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0035841465, 1.24818707, 0.00168299675, -0.866025805, -0.499999255, 5.95464371e-008, 0.499999255, -0.866025925, 9.76142474e-008, 3.38104655e-009, 1.15134753e-007, 1.00000012))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0167120695, -0.917606354, -0.00141716003, -0.866027117, 0.499997139, -2.43715476e-007, 0.499997109, 0.866027176, 8.61473382e-008, 2.55289933e-007, -4.703179e-008, -1.00000012))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0167376995, -1.67353034, -0.00138163567, -0.866027117, 0.499997139, -2.43715476e-007, 0.499997109, 0.866027176, 8.61473382e-008, 2.55289933e-007, -4.703179e-008, -1.00000012))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0167084932, 1.29656816, 0.00165486336, -0.866027117, 0.499997139, -2.43715476e-007, -0.499997109, -0.866027176, -8.61473382e-008, -2.55289933e-007, 4.703179e-008, 1.00000012))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0618534684, -0.465709448, -0.00136375427, 0.866027176, -0.49999702, 2.12166924e-007, -0.49999705, -0.866027296, 1.89756975e-008, 1.75463583e-007, -1.23225618e-007, -1.00000012))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.75464201, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0618223548, 0.84479332, 0.00163936615, 0.866027176, -0.49999702, 2.12166924e-007, 0.49999705, 0.866027296, -1.89756975e-008, -1.75463583e-007, 1.23225618e-007, 1.00000012))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(0.471740097, 1, 0.682904243))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0618728399, -1.22165966, -0.00139498711, 0.866027176, -0.49999702, 2.12166924e-007, -0.49999705, -0.866027296, 1.89756975e-008, 1.75463583e-007, -1.23225618e-007, -1.00000012))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0025229454, 0.00553905964, 0.69238019, 1.9498998e-007, 1.84983946e-007, 1, -0.96592629, 0.258817375, 1.39538315e-007, -0.258817375, -0.965926349, 2.29396392e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0482130051, -1.2250942, -0.00141119957, 0.866025805, 0.499999255, -8.93487595e-008, 0.499999255, -0.866025925, 1.87952537e-007, 1.55712314e-008, -2.07568519e-007, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.200274855, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00249862671, 0.0175659657, 0.69406867, 1.9498998e-007, 1.84983946e-007, 1, -1, -2.32830644e-010, 1.9551635e-007, 2.32830644e-010, -1.00000012, 1.84925739e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00248932838, 0.0247342587, 0.724454165, -1.9498998e-007, -1.84983946e-007, -1, 0.499999076, 0.866026044, -2.575689e-007, 0.866026044, -0.499999106, -7.65430741e-008))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00250530243, -0.0609382391, 0.789362431, 1.9498998e-007, 1.84983946e-007, 1, 0.500005364, -0.866022408, 6.35045581e-008, 0.866022229, 0.500005424, -2.62720278e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00251436234, -0.0160479546, -0.768103242, 1.9498998e-007, 1.84983946e-007, 1, -1, -2.32830644e-010, 1.9551635e-007, 2.32830644e-010, -1.00000012, 1.84925739e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00245881081, -0.0120127201, 0.792094946, 1.9498998e-007, 1.84983946e-007, 1, 0.866027117, -0.499997079, -7.66012818e-008, 0.499997109, 0.866027176, -2.58442014e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00251865387, -0.0275073051, 0.799879313, 1.9498998e-007, 1.84983946e-007, 1, 0.707110524, -0.707103193, -7.39237294e-009, 0.707103133, 0.707110465, -2.68802978e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00250387192, -0.0393373966, 0.773245454, -1.9498998e-007, -1.84983946e-007, -1, -0.707106709, -0.707106948, 2.70025339e-007, -0.707106948, 0.707106709, 6.81029633e-009))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0025036335, 0.0319125652, 0.736887157, -1.9498998e-007, -1.84983946e-007, -1, 0.258815348, 0.965926886, -2.2893073e-007, 0.965926766, -0.258815348, -1.39611075e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00251102448, 0.0297060013, 0.693159103, -1.9498998e-007, -1.84983946e-007, -1, 0.866025805, 0.499999285, -2.60683009e-007, 0.499999315, -0.866025984, 6.21657819e-008))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00252056122, -0.0655257702, 0.760563135, -1.9498998e-007, -1.84983946e-007, -1, -0.499999076, -0.866026044, 2.575689e-007, -0.866026044, 0.499999106, 7.65430741e-008))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00251436234, -0.0367987156, 0.760144949, 1.9498998e-007, 1.84983946e-007, 1, 5.25335781e-006, -1.00000012, 1.84983946e-007, 1, 5.25335781e-006, -1.94589347e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00248408318, -0.0303695202, 0.769465566, -1.9498998e-007, -1.84983946e-007, -1, -0.866025805, -0.499999285, 2.60683009e-007, -0.499999315, 0.866025984, -6.21657819e-008))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00249958038, 0.00876927376, 0.682365179, -1.9498998e-007, -1.84983946e-007, -1, 0.96592617, 0.258817852, -2.37778295e-007, 0.258817852, -0.96592629, 1.28813554e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00249004364, -0.067527771, 0.777368069, 1.9498998e-007, 1.84983946e-007, 1, 0.258825153, -0.965924203, 1.28289685e-007, 0.965924263, 0.258825183, -2.36876076e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00249266624, -0.0645384789, 0.748389721, -1.9498998e-007, -1.84983946e-007, -1, -0.258815348, -0.965926886, 2.2893073e-007, -0.965926766, 0.258815348, 1.39611075e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00249934196, 0.0384550095, 0.715066433, -1.9498998e-007, -1.84983946e-007, -1, 0.707106709, 0.707106948, -2.70025339e-007, 0.707106948, -0.707106709, -6.81029633e-009))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00247359276, -0.0059517622, 0.788795471, 1.9498998e-007, 1.84983946e-007, 1, 0.96592629, -0.258817375, -1.39538315e-007, 0.258817375, 0.965926349, -2.29396392e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00248098373, 0.0349800587, 0.746271133, 1.9498998e-007, 1.84983946e-007, 1, -5.25335781e-006, 1.00000012, -1.84983946e-007, -1, -5.25335781e-006, 1.94589347e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Brick,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.414578706, 0.267470866, 0.508193612))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00248861313, -0.0295228958, 0.771678805, -1.9498998e-007, -1.84983946e-007, -1, -0.96592617, -0.258817852, 2.37778295e-007, -0.258817852, 0.96592629, -1.28813554e-007))
		mesh("CylinderMesh",Neon,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.400000006))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.207467124, 0.200000003, 0.200747684))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.698108196, 0.199664474, -0.00309181213, -0.499998838, -0.866026163, -6.19329512e-008, -0.866026103, 0.499998808, -1.50990672e-007, 1.62069909e-007, -2.24099495e-008, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.974342167, 1))
		Neon=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Really black","Neon",Vector3.new(0.200000003, 0.200000003, 0.200000003))
		Neonweld=weld(m,Nether,Neon,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0482084751, -0.469145536, -0.00139713287, 0.866025805, 0.499999255, -8.93487595e-008, 0.499999255, -0.866025925, 1.87952537e-007, 1.55712314e-008, -2.07568519e-007, -1))
		mesh("SpecialMesh",Neon,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.474570572, 0.50816983, 0.470371157))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.270463198, 0.200000003, 0.200000003))
		NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00194454193, -1.06429565, -0.294578314, -1.9498998e-007, -1.84983946e-007, -1, 0.436867625, -0.89952594, 8.17235559e-008, -0.89952594, -0.436867625, 2.55706254e-007))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.621563315, 0.302381516))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
		NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.19455266, -0.800625026, 0.00243830681, -0.895353794, -0.445355684, -7.94534571e-008, 0.445355654, -0.895353794, 2.69035809e-007, -1.92516382e-007, 2.05182005e-007, 1))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.390576929, 1))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.270463198, 0.200000003, 0.200000003))
		NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0019402504, -0.881215215, -0.0536847115, -1.9498998e-007, -1.84983946e-007, -1, 0.289954394, -0.957040548, 1.20722689e-007, -0.957040489, -0.289954424, 2.41707312e-007))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.0965944752, 0.0839949176))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.270463198, 0.200000003, 0.200000003))
		NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00192308426, 0.728180289, 0.229098558, -1.9498998e-007, -1.84983946e-007, -1, -0.485126227, 0.874444187, -6.71716407e-008, 0.874444187, 0.485126287, -2.58820364e-007))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.251985252, 0.0839949176))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
		NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0265626907, -0.864977717, 0.0024471283, -0.965505838, -0.260381699, -2.91329343e-008, 0.260381699, -0.965505838, 7.95116648e-008, -4.86113549e-008, 6.90342858e-008, 1))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.0839950144, 1))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
		NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.03947759, -0.450213075, 0.0024869442, -0.462641776, -0.88654542, 1.23050995e-007, 0.88654536, -0.462641776, -1.10972906e-007, 1.54459713e-007, 5.76255843e-008, 1))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.848349869, 1))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.422494948, 0.272143304))
		NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0392067432, -0.954729676, -0.00247454643, 0.995991766, 0.089444153, 5.62213245e-008, 0.0894441605, -0.995991826, 1.16007868e-007, 6.55215899e-008, -1.10594556e-007, -1.00000012))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.306580961, 1, 1))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
		NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.16178858, -0.0497832298, 0.00244355202, -0.137950227, -0.990439177, 8.88248906e-008, 0.990439236, -0.137950242, 2.30327714e-007, -2.16429044e-007, 1.1944212e-007, 1))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.390576929, 1))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.200000003, 0.272143304))
		NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.16243589, 0.265618801, 0.0024394989, 0.104491726, -0.994525909, 5.90225682e-008, 0.99452585, 0.104491726, -2.46720447e-007, 2.40048166e-007, 8.44011083e-008, 1))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.0839947835, 0.390576929, 1))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.313301444, 0.272143304))
		NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.311394453, -0.842094541, -0.00247263908, 0.892084658, 0.451868415, -5.24159987e-008, 0.451868445, -0.892084718, 8.64965841e-008, -9.01673047e-009, -1.01572368e-007, -1))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.289781988, 1, 1))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.200000003, 0.415775359, 0.272143304))
		NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.506984472, -0.839653134, -0.00243520737, 0.882198989, 0.470877051, 3.44123691e-007, 0.470877022, -0.882198989, 1.79978088e-007, 3.8736448e-007, 2.6775524e-009, -1))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.34437868, 1, 1))
		Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.628554821, 0.267470866, 0.922772646))
		Partweld=weld(m,Nether,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.86781311e-006, 0.00250267982, -0.951990962, 1, 0, 6.13908924e-011, -6.46878107e-010, 2.01049261e-007, 1, 0, -1.00000012, 2.01107468e-007))
		mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
		NeonLetter=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Lily white","NeonLetter",Vector3.new(0.270463198, 0.200000003, 0.200000003))
		NeonLetterweld=weld(m,Nether,NeonLetter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.001922369, 0.582068503, 0.518258333, -1.9498998e-007, -1.84983946e-007, -1, -0.485126227, 0.874444187, -6.71716407e-008, 0.874444187, 0.485126287, -2.58820364e-007))
		mesh("SpecialMesh",NeonLetter,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.432574511, 0.352778435))
		-- Aether,Nether
		local function Align(P0,P1,Position,Rotate)
			local AlignPosition = Instance.new("AlignPosition", P0)
			local AlignOrientation = Instance.new("AlignOrientation", P0)
			local Attachment1 = Instance.new("Attachment", P0)
			local Attachment2 = Instance.new("Attachment", P1)
			-- Main Attach Thingy:
			AlignPosition.Attachment0,AlignPosition.Attachment1 = Attachment1,Attachment2 -- Shortcut
			AlignOrientation.Attachment0,AlignOrientation.Attachment1 = Attachment1,Attachment2 -- Shortcut
			-- Properties:
			AlignPosition.RigidityEnabled = true
			AlignOrientation.MaxTorque = 1600000000
			AlignPosition.Responsiveness = 200
			AlignOrientation.Responsiveness = 200
			-- Rotate/Position
			Attachment1.Position = Position or Vector3.new(0,0,0)
			Attachment1.Orientation = Rotate or Vector3.new(0,0,0)
		end
		local Charr = game.Players.LocalPlayer.Character
		local Hat1 = Charr:FindFirstChild("ShadowBladeMasterAccessory").Handle
		local Hat2 = Charr:FindFirstChild("BladeMasterAccessory").Handle
		Hat1.AccessoryWeld:Destroy()

		Align(Hat1,Nether,Vector3.new(1.8,1.5,0),Vector3.new(-0, -0, -45))

		Hat2.AccessoryWeld:Destroy()

		Align(Hat2,Aether,Vector3.new(1.8,1.5,0),Vector3.new(-0, -0, -45))
		for i, v in pairs(m:GetChildren()) do
			if v:IsA("BasePart") then v.Transparency = 1 end
		end
		----(Sky's Secret Settings)----
		local Player = game:getService("Players").LocalPlayer
		local Players = game.Players
		local Character = Player.Character.TalentlessDumbass
		me = game.Players.LocalPlayer
		----(Variables)----
		local player = game.Players.LocalPlayer
		local char = player.Character.TalentlessDumbass
		local a = Instance.new("Part", char)
		wait(0.00001)
		local a2 = Instance.new("Part", char)


		--[[for _, v in pairs(Character:GetChildren()) do
			if v:IsA("Part") then
				--table.insert(BodyParts, v)
				v.Transparency = 1
				if v:IsA("Hat") then
				v:Destroy()
			end
		end]]


		--[[
		wait(0.00001)
		local b = Instance.new("Part", char)
		wait(0.00001)
		local b2 = Instance.new("Part", char)
		wait(0.00001)
		local c = Instance.new("Part", char)
		wait(0.00001)
		local c2 = Instance.new("Part", char)
		]]--
		local pos = Player.Character.TalentlessDumbass.Torso.Position
		local chat = game:GetService("Chat")
		local mouse = player:GetMouse()
		local active = true
		local meshs = {};
		local sounds = {};

		local fly = Instance.new("BodyPosition", a)
		a.CanCollide = false
		a.Material = "Neon"
		a.Shape = Enum.PartType.Ball
		a.Size = Vector3.new(2.6, 2.6, 2.6)
		a.BrickColor = BrickColor.new("Intitutional white")
		a.Position = fly.position

		local fly2 = Instance.new("BodyPosition", a2)
		a2.CanCollide = false
		a2.Material = "Neon"
		a2.BrickColor = BrickColor.new("Really black")
		a2.Shape = Enum.PartType.Ball
		a2.Size = Vector3.new(2.6, 2.6, 2.6)
		a2.Position = fly2.position

		local p = Instance.new('Part', char.Torso)
		p.Name = 'Orb' --name it whatever you want
		p.Transparency = 1
		p.Anchored = false
		p.CanCollide = false
		p.Size = Vector3.new(1, 1, 1)
				local w = Instance.new('Weld', p)
				w.Part0 = p
				w.Part1 = char.Torso
				w.C0 = CFrame.new(3, -2, 0)  -- you can adjust the position the first ball will be in - josh50535

		local p2 = Instance.new('Part', char.Torso)
		p2.Name = 'AsdfOrb' --name it whatever you want
		p2.Transparency = 1
		p2.Anchored = false
		p2.CanCollide = false
		p2.Size = Vector3.new(1, 1, 1)
				local w = Instance.new('Weld', p2)
				w.Part0 = p2
				w.Part1 = char.Torso
				w.C0 = CFrame.new(-3, -2, 0)   -- you can adjust the position the second ball will be in - josh50535


		game:service'RunService'.RenderStepped:connect(function()
				fly.position = p.CFrame.p
				fly2.position = p2.CFrame.p
		end)



			
		local function CFrameFromTopBack(at, top, back)
		local right = top:Cross(back)
		return CFrame.new(at.x, at.y, at.z,
		right.x, top.x, back.x,
		right.y, top.y, back.y,
		right.z, top.z, back.z)
		end

		function Triangle(a, b, c)
		local edg1 = (c-a):Dot((b-a).unit)
		local edg2 = (a-b):Dot((c-b).unit)
		local edg3 = (b-c):Dot((a-c).unit)
		if edg1 <= (b-a).magnitude and edg1 >= 0 then
		a, b, c = a, b, c
		elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
		a, b, c = b, c, a
		elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
		a, b, c = c, a, b
		else
		assert(false, "unreachable")
		end
		 
		local len1 = (c-a):Dot((b-a).unit)
		local len2 = (b-a).magnitude - len1
		local width = (a + (b-a).unit*len1 - c).magnitude
		 
		local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
		 
		local list = {}

		local TrailColor = ("Dark grey")
		 
		if len1 > 0.01 then
		local w1 = Instance.new('WedgePart', m)
		game:GetService("Debris"):AddItem(w1,5)
		w1.Material = "SmoothPlastic"
		w1.FormFactor = 'Custom'
		w1.BrickColor = BrickColor.new(TrailColor)
		w1.Transparency = 0
		w1.Reflectance = 0
		w1.Material = "SmoothPlastic"
		w1.CanCollide = false
		NoOutline(w1)
		local sz = Vector3.new(0.2, width, len1)
		w1.Size = sz
		local sp = Instance.new("SpecialMesh",w1)
		sp.MeshType = "Wedge"
		sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
		w1:BreakJoints()
		w1.Anchored = true
		w1.Parent = workspace
		w1.Transparency = 0.7
		table.insert(Effects,{w1,"Disappear",.01})
		w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
		table.insert(list,w1)
		end
		 
		if len2 > 0.01 then
		local w2 = Instance.new('WedgePart', m)
		game:GetService("Debris"):AddItem(w2,5)
		w2.Material = "SmoothPlastic"
		w2.FormFactor = 'Custom'
		w2.BrickColor = BrickColor.new(TrailColor)
		w2.Transparency = 0
		w2.Reflectance = 0
		w2.Material = "SmoothPlastic"
		w2.CanCollide = false
		NoOutline(w2)
		local sz = Vector3.new(0.2, width, len2)
		w2.Size = sz
		local sp = Instance.new("SpecialMesh",w2)
		sp.MeshType = "Wedge"
		sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
		w2:BreakJoints()
		w2.Anchored = true
		w2.Parent = workspace
		w2.Transparency = 0.7
		table.insert(Effects,{w2,"Disappear",.01})
		w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
		table.insert(list,w2)
		end
		return unpack(list)
		end
			
			
		so = function(id,par,vol,pit) 
		coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound",par or workspace)
		sou.Volume=vol
		sou.Pitch=pit or 1
		sou.SoundId=id
		swait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou,6)
		end))
		end
		 
		function clerp(a,b,t) 
		local qa = {QuaternionFromCFrame(a)}
		local qb = {QuaternionFromCFrame(b)} 
		local ax, ay, az = a.x, a.y, a.z 
		local bx, by, bz = b.x, b.y, b.z
		local _t = 1-t
		return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
		end 
		 
		function QuaternionFromCFrame(cf) 
		local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
		local trace = m00 + m11 + m22 
		if trace > 0 then 
		local s = math.sqrt(1 + trace) 
		local recip = 0.5/s 
		return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
		else 
		local i = 0 
		if m11 > m00 then
		i = 1
		end
		if m22 > (i == 0 and m00 or m11) then 
		i = 2 
		end 
		if i == 0 then 
		local s = math.sqrt(m00-m11-m22+1) 
		local recip = 0.5/s 
		return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
		elseif i == 1 then 
		local s = math.sqrt(m11-m22-m00+1) 
		local recip = 0.5/s 
		return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
		elseif i == 2 then 
		local s = math.sqrt(m22-m00-m11+1) 
		local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
		end 
		end 
		end
		 
		function QuaternionToCFrame(px, py, pz, x, y, z, w) 
		local xs, ys, zs = x + x, y + y, z + z 
		local wx, wy, wz = w*xs, w*ys, w*zs 
		local xx = x*xs 
		local xy = x*ys 
		local xz = x*zs 
		local yy = y*ys 
		local yz = y*zs 
		local zz = z*zs 
		return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
		end
		 
		function QuaternionSlerp(a, b, t) 
		local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
		local startInterp, finishInterp; 
		if cosTheta >= 0.0001 then 
		if (1 - cosTheta) > 0.0001 then 
		local theta = math.acos(cosTheta) 
		local invSinTheta = 1/math.sin(theta) 
		startInterp = math.sin((1-t)*theta)*invSinTheta 
		finishInterp = math.sin(t*theta)*invSinTheta  
		else 
		startInterp = 1-t 
		finishInterp = t 
		end 
		else 
		if (1+cosTheta) > 0.0001 then 
		local theta = math.acos(-cosTheta) 
		local invSinTheta = 1/math.sin(theta) 
		startInterp = math.sin((t-1)*theta)*invSinTheta 
		finishInterp = math.sin(t*theta)*invSinTheta 
		else 
		startInterp = t-1 
		finishInterp = t 
		end 
		end 
		return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
		end

		--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


		function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
		return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
		end 

		Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
				if hit.Parent==nil then
						return
				end
				h=hit.Parent:FindFirstChild("Humanoid")
				for _,v in pairs(hit.Parent:children()) do
				if v:IsA("Humanoid") then
				h=v
				end
				end
				if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
				h=hit.Parent.Parent:FindFirstChild("Humanoid")
				end
				if hit.Parent.className=="Hat" then
				hit=hit.Parent.Parent:findFirstChild("Head")
				end
				if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
				if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
				--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
								return
						end]]
		--                        hs(hit,1.2) 
								c=Instance.new("ObjectValue")
								c.Name="creator"
								c.Value=game:service("Players").LocalPlayer
								c.Parent=h
								game:GetService("Debris"):AddItem(c,.5)
						Damage=0
		--                h:TakeDamage(Damage)
						blocked=false
						block=hit.Parent:findFirstChild("Block")
						if block~=nil then
						print(block.className)
						if block.className=="NumberValue" then
						if block.Value>0 then
						blocked=true
						if decreaseblock==nil then
						block.Value=block.Value-1
						end
						end
						end
						if block.className=="IntValue" then
						if block.Value>0 then
						blocked=true
						if decreaseblock~=nil then
						block.Value=block.Value-1
						end
						end
						end
						end
						if blocked==false then
		--                h:TakeDamage(Damage)
						h.Health=h.Health-Damage

						else
						h.Health=h.Health-(Damage/2)
					   
						end
						if Type=="Knockdown" then
						hum=hit.Parent.Humanoid
		hum.PlatformStand=true
		coroutine.resume(coroutine.create(function(HHumanoid)
		swait(1)
		HHumanoid.PlatformStand=false
		end),hum)
						local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
		--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
		local bodvol=Instance.new("BodyVelocity")
		bodvol.velocity=angle*knockback
		bodvol.P=5000
		bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
		bodvol.Parent=hit
		rl=Instance.new("BodyAngularVelocity")
		rl.P=3000
		rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
		rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
		rl.Parent=hit
		game:GetService("Debris"):AddItem(bodvol,.5)
		game:GetService("Debris"):AddItem(rl,.5)
						elseif Type=="Normal" then
						vp=Instance.new("BodyVelocity")
						vp.P=500
						vp.maxForce=Vector3.new(math.huge,0,math.huge)
		--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
						if KnockbackType==1 then
						vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
						elseif KnockbackType==2 then
						vp.velocity=Property.CFrame.lookVector*knockback
						end
						if knockback>0 then
								vp.Parent=hit.Parent.Torso
						end
						game:GetService("Debris"):AddItem(vp,.5)
						elseif Type=="Up" then
						local bodyVelocity=Instance.new("BodyVelocity")
						bodyVelocity.velocity=vt(0,60,0)
						bodyVelocity.P=5000
						bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
						bodyVelocity.Parent=hit
						game:GetService("Debris"):AddItem(bodyVelocity,1)
						rl=Instance.new("BodyAngularVelocity")
						rl.P=3000
						rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
						rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
						rl.Parent=hit
						game:GetService("Debris"):AddItem(rl,.5)
						elseif Type=="Snare" then
						bp=Instance.new("BodyPosition")
						bp.P=2000
						bp.D=100
						bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
						bp.position=hit.Parent.Torso.Position
						bp.Parent=hit.Parent.Torso
						game:GetService("Debris"):AddItem(bp,1)
						elseif Type=="Target" then
						if Targetting==false then
						ZTarget=hit.Parent.Torso
						coroutine.resume(coroutine.create(function(Part) 
						so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
						swait(5)
						so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
						end),ZTarget)
						TargHum=ZTarget.Parent:findFirstChild("Humanoid")
						targetgui=Instance.new("BillboardGui")
						targetgui.Parent=ZTarget
						targetgui.Size=UDim2.new(10,100,10,100)
						targ=Instance.new("ImageLabel")
						targ.Parent=targetgui
						targ.BackgroundTransparency=1
						targ.Image="rbxassetid://4834067"
						targ.Size=UDim2.new(1,0,1,0)
						cam.CameraType="Scriptable"
						cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
						dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
						workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
						Targetting=true
						RocketTarget=ZTarget
						for i=1,Property do
						--while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
						if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
						swait()
						end
						--workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
						cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
						dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
						cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
						end
						Targetting=false
						RocketTarget=nil
						targetgui.Parent=nil
						cam.CameraType="Custom"
						end
						end
								debounce=Instance.new("BoolValue")
								debounce.Name="DebounceHit"
								debounce.Parent=hit.Parent
								debounce.Value=true
								game:GetService("Debris"):AddItem(debounce,Delay)
								c=Instance.new("ObjectValue")
								c.Name="creator"
								c.Value=Player
								c.Parent=h
								game:GetService("Debris"):AddItem(c,.5)
						CRIT=false
						hitDeb=true
						AttackPos=6
				end
		end
		 
		showDamage=function(Char,Dealt,du,Color)
				m=Instance.new("Model")
				m.Name=tostring(Dealt)
				h=Instance.new("Humanoid")
				h.Health=0
				h.MaxHealth=0
				h.Parent=m
				c=Instance.new("Part")
				c.Transparency=0
				c.BrickColor=Color
				c.Name="Head"
				c.TopSurface=0
				c.BottomSurface=0
				c.formFactor="Plate"
				c.Size=Vector3.new(1,.4,1)
				ms=Instance.new("CylinderMesh")
				ms.Scale=Vector3.new(.8,.8,.8)
				if CRIT==true then
						ms.Scale=Vector3.new(1,1.25,1)
				end
				ms.Parent=c
				c.Reflectance=0
				Instance.new("BodyGyro").Parent=c
				c.Parent=m
				if Char:findFirstChild("Head")~=nil then
				c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
				elseif Char.Parent:findFirstChild("Head")~=nil then
				c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
				end
				f=Instance.new("BodyPosition")
				f.P=2000
				f.D=100
				f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
				f.position=c.Position+Vector3.new(0,3,0)
				f.Parent=c
				game:GetService("Debris"):AddItem(m,.5+du)
				c.CanCollide=false
				m.Parent=workspace
				c.CanCollide=false
		end

		function attackone()
			attack=true
			con1=Aether.Touched:connect(function(hit) Damagefunc(hit,12,30,math.random(5,10),"Normal",RootPart,.2,1) end) 
			for i=0,1,0.08 do
				swait()
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(20)),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
			end
			for i=0,1,0.08 do
				swait()
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(20)),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(80)),.3)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(10),math.rad(-80)),.3)
			end
			attack=false
			con1:disconnect()
		end

		function attacktwo()
		con1=Blade.Touched:connect(function(hit) Damagefunc(hit,15,25,math.random(5,10),"Normal",RootPart,.2,1) end) 
		con2=Blade.Touched:connect(function(hit) Damagefunc(hit,15,25,math.random(5,10),"Normal",RootPart,.2,1) end) 
		for i=0,1,0.2 do
		swait()
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,6)*angles(0,0,0),.3)
		end
		for i=0,1,1 do
		swait()
		for i=0,1,0.075 do
		swait()
		Torso.Velocity=RootPart.CFrame.lookVector*50
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,6)*angles(math.rad(0),math.rad(90),6*i),.3)
		end
		end
		for i=0,1,1 do
		swait()
		for i=0,1,0.075 do
		swait()
		Torso.Velocity=RootPart.CFrame.lookVector*50
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,6)*angles(math.rad(0),math.rad(90),6*i),.3)
		end
		end
		con1:disconnect()
		con2:disconnect()
		attack=false
		end

		function attackthree()
		attack=true
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
		con1=Aether.Touched:connect(function(hit) Damagefunc(hit,5,15,math.random(5,10),"Normal",RootPart,.2,1) end) 
		con2=Nether.Touched:connect(function(hit) Damagefunc(hit,5,15,math.random(5,10),"Normal",RootPart,.2,1) end) 
		for i=0,1,0.15 do
		swait()
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(0,0,0),.3)
		end
		for i=0,1,0.075 do
		swait()
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(0,0,6*i),.3)
		end
		con1:disconnect()
		con2:disconnect()
		attack=false
		end


		mouse.Button1Down:connect(function()
			if attack==false then
				if attacktype==1 then
					attack=true
					attacktype=2
					attackone()
				elseif attacktype==2 then
					attack=true
					attacktype=3
					attacktwo()
				elseif attacktype==3 then
					attack=true
					attacktype=4
					attackthree()
				elseif attacktype==4 then
					attack=true
					attacktype=1
					attackone()
				end
			end
		end)



		local sine = 0
		local change = 1
		local val = 0

		while true do
		swait()
		sine = sine + change
		local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
		local velderp=RootPart.Velocity.y
		hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
		if equipped==true or equipped==false then
		if attack==false then
		idle=idle+1
		else
		idle=0
		end
		if idle>=500 then
		if attack==false then
		--Sheath()
		end
		end
		if RootPart.Velocity.y > 1 and hitfloor==nil then 
		Anim="Jump"
		if attack==false then
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -.8, -.5) * angles(math.rad(0), math.rad(90), math.rad(-20)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -1, -.3) * angles(math.rad(0), math.rad(-90), math.rad(30)), .3)
		end
		elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
		Anim="Fall"
		if attack==false then
		RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), .3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(50)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-50)), 0.3)
		RH.C0 = clerp(RH.C0, cf(1, -.7, -.5) * angles(math.rad(0), math.rad(90), math.rad(-20)), .3)
		LH.C0 = clerp(LH.C0, cf(-1, -.9, -.3) * angles(math.rad(0), math.rad(-90), math.rad(30)), .3)
		end
		elseif torvel<1 and hitfloor~=nil then
		Anim="Idle"
		if attack==false then
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-10)),0.15)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(10)),0.15)
		RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(10)),0.15)
		LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(-10),math.rad(0),math.rad(-10)),0.15)
		RH.C0=clerp(RH.C0,cf(1.05,-1,0)*angles(math.rad(0),math.rad(80),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(5)),0.15)
		LH.C0=clerp(LH.C0,cf(-1.05,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(5)),0.15)
		end
		elseif torvel>2 and torvel<22 and hitfloor~=nil then
		Anim="Walk"
		if attack==false then
		change=3
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-10+5*math.cos(sine/30)),math.rad(-20),math.rad(30+5*math.cos(sine/30))),.3)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-10+5*math.cos(sine/30)),math.rad(20),math.rad(-30-5*math.cos(sine/30))),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
		end
		elseif torvel>=22 and hitfloor~=nil then
		Anim="Run"
		if attack==false then
		RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
		Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
		RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
		end
		end
		end
		if #Effects>0 then
		--table.insert(Effects,{prt,"Block1",delay})
		for e=1,#Effects do
		if Effects[e]~=nil then
		--for j=1,#Effects[e] do
		local Thing=Effects[e]
		if Thing~=nil then
		local Part=Thing[1]
		local Mode=Thing[2]
		local Delay=Thing[3]
		local IncX=Thing[4]
		local IncY=Thing[5]
		local IncZ=Thing[6]
		if Thing[1].Transparency<=1 then
		if Thing[2]=="Block1" then
		Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
		Mesh=Thing[1].Mesh
		Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
		Thing[1].Transparency=Thing[1].Transparency+Thing[3]
		elseif Thing[2]=="Cylinder" then
		Mesh=Thing[1].Mesh
		Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
		Thing[1].Transparency=Thing[1].Transparency+Thing[3]
		elseif Thing[2]=="Blood" then
		Mesh=Thing[7]
		Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
		Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
		Thing[1].Transparency=Thing[1].Transparency+Thing[3]
		elseif Thing[2]=="Elec" then
		Mesh=Thing[1].Mesh
		Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
		Thing[1].Transparency=Thing[1].Transparency+Thing[3]
		elseif Thing[2]=="Disappear" then
		Thing[1].Transparency=Thing[1].Transparency+Thing[3]
		end
		else
		Part.Parent=nil
		table.remove(Effects,e)
		end
		end
		--end
		end
		end
		end
		end
	else
	Neg()
	Notification("Not Reanimated! >:(")
end
end)
