		-----------/XESTER THE CARD MASTER\\-----------
		--[[Movelist
		Q = The disappearing act.
		E = Full house
		R = Cardnado
		T = Teleport
		Y = Big card(Click to smash.)
		U = Black hole
		P = Card shield(Click to bounce people off, press p again to shred.)
		F = Transform(You can switch between modes any time.)
		-----------/SECOND FORM MOVES\-----------
		T = Laugh
		G = Fire ball
		H = Huge fire ball
		J = Dragon's breath(The longer you hold, the more insaner it gets.)
		K = Beam(The longer you hold down the key, the stronger it gets/longer it lasts.)
		---------]]

		--"Now you see me 2" is a good movie, which is why i've made this.--
		--Sadly, this got logged, one of my best work just being thrown out like this is a real shame.--
		--This was made before FE so using this may or may not lag the server--
		--Keep in mind that THIS was never even finished at all, i stopped working on this when skidcentric leaked it, who knows how big this script could've been?--
if not game.Players.LocalPlayer.Character:FindFirstChild("Rig") then
	game.StarterGui:SetCore("SendNotification",{
		Title = "Project: Terminate",
		Text = "Not Reanimated.",
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

		Player=game:GetService("Players").LocalPlayer
		Character=Player.Character.Rig
		hum = Character.Humanoid
		LeftArm=Character["Left Arm"]
		LeftLeg=Character["Left Leg"]
		RightArm=Character["Right Arm"]
		RightLeg=Character["Right Leg"]
		Root=Character["HumanoidRootPart"]
		Head=Character["Head"]
		Torso=Character["Torso"]
		Neck=Torso["Neck"]
		walking = false
		jumping = false
		allowgrassy = false
		zxc = false
		matte = nil
		colori = nil
		bigball = false
		attacking = false
		laughing = false
		running = false
		downpress = false
		taim = nil
		change = 0
		ws = 10
		appi = false
		tauntdebounce = false
		position = nil
		staybooming = false
		MseGuide = true
		levitate = false
		firsttime5 = false
		notallowedtransform = false
		settime = 0
		firsttime2 = false
		sine = 0
		t = 0
		combo1 = true
		dgs = 75
		combo2 = false
		firsttime3 = false
		combo3 = false
		local bl = {907530553,907527750,907527912}
		colortable = {"Really black","Really red"}
		colors = #colortable
		blz = #bl
		local aces = {1880203893,1881287656,1881287420,1881288034}
		ace = #aces
		local laughs = {2011349649,2011349983,2011351501,2011352223,2011355991,2011356475}
		laugh = #laughs
		mouse = Player:GetMouse()
		RunSrv = game:GetService("RunService")
		RenderStepped = game:GetService("RunService").RenderStepped
		removeuseless = game:GetService("Debris")
		damageall={}
		Repeater={}
		Repeater2={}
		magictable={}
		nonmeshRepeater={}
		nonmeshRepeater2={}
		dmgii={}
		DamageAll2={}
		SlowlyFade={}
		th1={}
		lolzor={}
		lolzor2={}
		th2={}
		keyYsize={}
		blocktrail={}
		keyYtransparency={}
		th3={}
		laughingtable={}
		Extreme={}
		ExtremeM={}
		ExtremeM2={}
		m3={}
		th4={}
		th5={}
		UpMover={}
		openshocktable={}
		LessSize={}
		ForwardMover={}
		FadeIn={}
		signtransparency={}
		signmover={}
		signrotator={}

if Player.Character:FindFirstChild("Bullet") then
local Character = game.Players.LocalPlayer.Character
local Bullet = Character['Bullet']
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
    if MouseHolding == true then
    	if Mouse.Target ~= nil then
        BP.Position = Mouse.Hit.p
	end
    elseif MouseHolding == false then
      pcall(function() BP.Position = game.Players.LocalPlayer.Character.Rig:FindFirstChild("Torso").Position + Vector3.new(0,-0.4,0) end)
    end
    if MouseHolding == false then
    	BT.Force = Vector3.new(1,0,0)
	end
end)

        
Bullet.Transparency = 1
local Outline = Instance.new("SelectionBox", Bullet)
Outline.Adornee = Bullet

	
end
		screenGui = Instance.new("ScreenGui")
		screenGui.Parent = script.Parent

		FireBall = Instance.new("Sound",LeftArm)
		FireBall.SoundId = "rbxassetid://842332424"
		FireBall.Volume = 5
		FireBall.Pitch = 2.5

		BigFireBall = Instance.new("Sound",LeftArm)
		BigFireBall.SoundId = "rbxassetid://842332424"
		BigFireBall.Volume = 8
		BigFireBall.Pitch = 1.5

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

		function makeblockytrail()
		coroutine.wrap(function()
		while true do
		for i,v in pairs(blocktrail) do
		smke = Instance.new("Part",v)
		smke.CFrame = v.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
		smke.Material = "Neon"
		smke.Anchored = true
		smke.CanCollide = false
		removeuseless:AddItem(smke,2)
		end
		swait()
		end
		end)()
		end

		local function ci(x, c, y, n)
		so = Instance.new("Sound", x)
		so.SoundId = c
		so.Volume = y
		so.Looped = n
		end

		function ghost()
		fakeeyo2 = Instance.new("Part",Head)
		fakeeyo2.BrickColor = BrickColor.new("White")
		fakeeyo2.Material = "Neon"
		fakeeyo2.Shape = "Ball"
		fakeeyo2.Anchored = true
		fakeeyo2.Transparency = 1
		fakeeyo2.CFrame = eyo2.CFrame
		fakeeyo2.CanCollide = false
		fakeeyo2.Size = Vector3.new(0.33, 0.33, 0.33)
		table.insert(ghosttable,fakeeyo2)
		removeuseless:AddItem(fakeeyo2,3)

		fakeeyo1 = Instance.new("Part",Head)
		fakeeyo1.BrickColor = BrickColor.new("White")
		fakeeyo1.Material = "Neon"
		fakeeyo1.Shape = "Ball"
		fakeeyo1.CanCollide = false
		fakeeyo1.Transparency = 1
		fakeeyo1.Anchored = true
		fakeeyo1.CFrame = eyo1.CFrame
		fakeeyo1.Size = Vector3.new(0.33, 0.33, 0.33)
		table.insert(ghosttable,fakeeyo1)
		removeuseless:AddItem(fakeeyo1,3)

		fakemask = Instance.new("Part",Character)
		fakemask.Size = Vector3.new(1,1,1)
		fakemask.CFrame = mask.CFrame
		fakemask.Material = "Neon"
		fakemask.CanCollide = false
		fakemask.Anchored = true
		fakemask.BrickColor = BrickColor.new("White")
		fakemask.Transparency = .5
		mfMask = Instance.new("SpecialMesh", fakemask)
		mfMask.MeshType = "FileMesh"
		mfMask.Scale = Vector3.new(0.13, 0.13, 0.1)
		mfMask.MeshId = 'http://www.roblox.com/asset/?id=5158270'
		table.insert(ghosttable,fakemask)
		removeuseless:AddItem(fakemask,3)


		fakejester = Instance.new("Part",Character)
		fakejester.Size = Vector3.new(2,2,2)
		fakejester.CFrame = jester.CFrame
		fakejester.CanCollide = false
		fakejester.Transparency = .5
		fakejester.Anchored = true
		fakejester.BrickColor = BrickColor.new("White")
		fakejesterm = Instance.new("SpecialMesh", fakejester)
		fakejesterm.MeshType = "FileMesh"
		fakejesterm.Scale = Vector3.new(1.1, 1.1, 1.1)
		fakejesterm.MeshId = 'rbxassetid://1241662062'
		table.insert(ghosttable,fakejester)
		removeuseless:AddItem(fakejester,3)


		fakehead = Instance.new("Part",Character)
		fakehead.Size = Vector3.new(1.01,1.01,1.01)
		fakehead.Anchored = true
		fakehead.CanCollide = false
		fakehead.Transparency = .99
		fakehead.BrickColor = BrickColor.new("White")
		fakehead.Material = "Neon"
		fakehead.CFrame = Head.CFrame
		fakeheadmesh = Instance.new("SpecialMesh",fakehead)
		fakeheadmesh.MeshType = "Head"
		fakeheadmesh.Scale = Vector3.new(1.255,1.255,1.255)
		table.insert(ghosttable,fakehead)
		removeuseless:AddItem(fakehead,3)


		fakelarm = Instance.new("Part",Character)
		fakelarm.CFrame = LeftArm.CFrame
		fakelarm.Size = Vector3.new(1,2,1)
		fakelarm.CanCollide = false
		fakelarm.Transparency = .5
		fakelarm.Material = "Neon"
		fakelarm.Anchored = true
		table.insert(ghosttable,fakelarm)
		removeuseless:AddItem(fakelarm,3)


		fakerarm = Instance.new("Part",Character)
		fakerarm.CFrame = RightArm.CFrame
		fakerarm.Size = Vector3.new(1,2,1)
		fakerarm.Transparency = .5
		fakerarm.CanCollide = false
		fakerarm.Material = "Neon"
		fakerarm.Anchored = true
		table.insert(ghosttable,fakerarm)
		removeuseless:AddItem(fakerarm,3)


		fakelleg = Instance.new("Part",Character)
		fakelleg.CFrame = LeftLeg.CFrame
		fakelleg.Size = Vector3.new(1,2,1)
		fakelleg.Transparency = .5
		fakelleg.CanCollide = false
		fakelleg.Material = "Neon"
		fakelleg.Anchored = true
		table.insert(ghosttable,fakelleg)
		removeuseless:AddItem(fakelleg,3)


		fakerleg = Instance.new("Part",Character)
		fakerleg.CFrame = RightLeg.CFrame
		fakerleg.Size = Vector3.new(1,2,1)
		fakerleg.Transparency = .5
		fakerleg.CanCollide = false
		fakerleg.Material = "Neon"
		fakerleg.Anchored = true
		table.insert(ghosttable,fakerleg)
		removeuseless:AddItem(fakerleg,3)


		fakeTorso = Instance.new("Part",Character)
		fakeTorso.CFrame = Torso.CFrame
		fakeTorso.Size = Vector3.new(2,2,1)
		fakeTorso.Transparency = .5
		fakeTorso.CanCollide = false
		fakeTorso.Material = "Neon"
		fakeTorso.Anchored = true
		table.insert(ghosttable,fakeTorso)
		removeuseless:AddItem(fakeTorso,3)
		end

		ghosttable={}
		coroutine.wrap(function()
		while true do
		for i,v in pairs(ghosttable) do
		v.Transparency = v.Transparency + 0.025
		end
		wait()
		end
		end)()

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

		function clean()
		damageall={}
		Repeater={}
		Repeater2={}
		nonmeshRepeater={}
		nonmeshRepeater2={}
		dmgii={}
		DamageAll2={}
		SlowlyFade={}
		th1={}
		th2={}
		th3={}
		Extreme={}
		ExtremeM={}
		ExtremeM2={}
		m3={}
		th4={}
		th5={}
		UpMover={}
		openshocktable={}
		LessSize={}
		ForwardMover={}
		FadeIn={}
		signtransparency={}
		signmover={}
		signrotator={}
		end

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

		doomtheme = Instance.new("Sound", Torso)
		doomtheme.Volume = 3
		doomtheme.Name = "doomtheme"
		doomtheme.Looped = true
		doomtheme.SoundId = "rbxassetid://1843358057"
		doomtheme:Play()

		Torso.ChildRemoved:connect(function(removed)
		if removed.Name == "doomtheme" then
		if levitate then
		doomtheme = Instance.new("Sound", Torso)
		doomtheme.Volume = 3
		doomtheme.Name = "doomtheme"
		doomtheme.Looped = true
		doomtheme.SoundId = "rbxassetid://1382488262"
		doomtheme:Play()
		doomtheme.TimePosition = 20.7
		else
		doomtheme = Instance.new("Sound", Torso)
		doomtheme.Volume = 3
		doomtheme.Name = "doomtheme"
		doomtheme.Looped = true
		doomtheme.SoundId = "rbxassetid://1843358057"
		doomtheme:Play()
		end
		end
		end)


		glow = Instance.new("Part",Head)
		glow.Size = Vector3.new(.488,.3,.1)
		glow.CanCollide = false
		glow.Material = "Neon"
		glow.Transparency = 1
		glow.BrickColor = BrickColor.new("Really white")
		glowweld = weldBetween(glow,Head)
		glowweld.C0 = CFrame.new(0,.2,.565)

		leftlocation = Instance.new("Part",LeftArm)
		leftlocation.Size = Vector3.new(1,1,1)
		leftlocation.Transparency = 1
		leftlocationweld = weldBetween(leftlocation,LeftArm)
		leftlocationweld.C0 = CFrame.new(0,1.2,0)
		rightlocation = Instance.new("Part",RightArm)
		rightlocation.Size = Vector3.new(1,1,1)
		rightlocation.Transparency = 1
		rightlocationweld = weldBetween(rightlocation,RightArm)
		rightlocationweld.C0 = CFrame.new(0,1.2,0)


		fakehed = Instance.new("Part",Character)
		fakehed.Size = Vector3.new(1.01,1.01,1.01)
		fakehed.Anchored = false
		fakehed.CanCollide = false
		fakehed.Transparency = 1
		fakehed.BrickColor = BrickColor.new("Really black")
		fakehed.Material = "Neon"
		fakehed.CFrame = Head.CFrame
		fakehedweld = weldBetween(fakehed,Head)
		fakehedmesh = Instance.new("SpecialMesh",fakehed)
		fakehedmesh.MeshType = "Head"
		fakehedmesh.Scale = Vector3.new(1.255,1.255,1.255)

		jester = Instance.new("Part",Character)
		jester.Size = Vector3.new(2,2,2)
		jester.CFrame = Head.CFrame
		jester.CanCollide = false
		jesterWeld = Instance.new("Weld",jester)
		jesterWeld.Part0 = jester
		jesterWeld.Part1 = Head
		jester.Transparency = 1
		jesterWeld.C0 = jester.CFrame:inverse() * Head.CFrame * CFrame.new(0,-.3,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
		mjester = Instance.new("SpecialMesh", jester)
		mjester.MeshType = "FileMesh"
		mjester.Scale = Vector3.new(1.1, 1.1, 1.1)
		mjester.MeshId,mjester.TextureId = 'rbxassetid://1241662062','rbxassetid://1241662395'

		mask = Instance.new("Part",Character)
		mask.Size = Vector3.new(1,1,1)
		mask.CFrame = Head.CFrame
		mask.CanCollide = false
		mask.Transparency = 0.99
		maskweld = weldBetween(mask,Head)
		maskweld.C0 = CFrame.new(0,-.555,0) * CFrame.Angles(math.rad(90),0,0)
		mMask = Instance.new("SpecialMesh", mask)
		mMask.MeshType = "FileMesh"
		mMask.Scale = Vector3.new(0.13, 0.13, 0.1)
		mMask.MeshId,mMask.TextureId = 'http://www.roblox.com/asset/?id=5158270','http://www.roblox.com/asset/?id=9543585'

		eyo1 = Instance.new("Part",Head)
		eyo1.BrickColor = BrickColor.new("White")
		eyo1.Material = "Neon"
		eyo1.Shape = "Ball"
		eyo1.Name = "eyo1"
		eyo1.CanCollide = false
		eyo1.Transparency = 1
		eyo1.Size = Vector3.new(0.33, 0.33, 0.33)
		eyo1weld = weldBetween(eyo1,Head)
		eyo1weld.C0 = CFrame.new(.215,-.05,.52)

		light = Instance.new("PointLight", eyo1)
		light.Color = Color3.new(1,1,1)
		light.Range = 3
		light.Brightness = 4
		light.Enabled = true

		eyo2 = Instance.new("Part",Head)
		eyo2.BrickColor = BrickColor.new("White")
		eyo2.Material = "Neon"
		eyo2.Shape = "Ball"
		eyo2.Name = "eyo2"
		eyo2.Transparency = 1
		eyo2.CanCollide = false
		eyo2.Size = Vector3.new(0.33, 0.33, 0.33)
		eyo2weld = weldBetween(eyo2,Head)
		eyo2weld.C0 = CFrame.new(-.215,-.05,.52)

		light2 = Instance.new("PointLight", eyo2)
		light2.Color = Color3.new(1,1,1)
		light2.Range = 3
		light2.Brightness = 4
		light2.Enabled = true

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
		if Press=='r' then
		if levitate then return end
		if debounce then return end
		debounce = true
		attacking = true
		appi = true
		ws = 0
		coroutine.wrap(function()
		while appi do
		wait()
		if Root.Velocity.Magnitude < 2 and attacking == true then
		position = "Idle2"
		end
		end
		end)()
		coroutine.wrap(function()
		while appi do
		wait()
		settime = 0.05
		sine = sine + change
		if position == "Idle2" and attacking == true and appi == true then
		change = .4
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + 1 * math.sin(sine/12)),math.rad(-40 + 2 * math.sin(sine/12))), 0.3)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.3)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
		end
		end
		end)()
		for i = 1, 20 do
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.3)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,1.5,-.1),.5)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(180),math.rad(10),math.rad(10)),.3)
		swait()
		end
		SOUND(RightArm,342337569,6,false,1)
		coroutine.wrap(function()
		for i = 1, 9 do
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(.1,1.6,-.1),.5)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(180),math.rad(10),math.rad(15)),.3)
		swait()
		end
		for i = 1, 9 do
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,1.5,-.1),.5)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(180),math.rad(10),math.rad(10)),.3)
		swait()
		end
		end)()
		shockwave = Instance.new("Part",Torso)
		shockwave.Shape = "Ball"
		shockwave.Size = Vector3.new(1,1,1)
		shockwave.BrickColor = BrickColor.new("White")
		shockwave.Material = "Neon"
		shockwave.CFrame = Torso.CFrame
		shockwave.CanCollide = false
		shockwave.Anchored = true
		coroutine.wrap(function()
		for i = 1, 20 do
		shockwave.Size = shockwave.Size + Vector3.new(1.8,1.8,1.8)
		shockwave.Transparency = shockwave.Transparency + 0.05
		wait()
		end
		end)()
		SOUND(Torso,1072606965,0,false,10)
		coroutine.wrap(function()
		for i = 1, 10 do
		so.Volume = so.Volume + 0.3
		wait()
		end
		end)()
		for i = 1, 35 do
		local Hit = damagealll(22,Torso.Position)	
		for _,v in pairs(Hit) do			
		v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
		vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
		vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
		torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
		vel.velocity = CFrame.new(Torso.Position,torso.Position).lookVector*20
		removeuseless:AddItem(vel,.1)
		end
		wave = Instance.new("Part", Torso)
		wave.Size = Vector3.new(1, 1, 1)
		wave.Transparency = 0
		wave.BrickColor = BrickColor.new("White")
		wave.Anchored = true
		wave.CanCollide = false
		wave.CFrame = Root.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
		wavemesh = Instance.new("SpecialMesh", wave) 
		wavemesh.MeshId = "rbxassetid://20329976" 
		wavemesh.Scale = Vector3.new(1, 1, 1)
		table.insert(th2,wave)
		table.insert(SlowlyFade,wave)
		table.insert(th5,wavemesh)
		removeuseless:AddItem(wave,2)
		CardStorm = Instance.new("Part",Torso)
		CardStorm.Size = Vector3.new(.1,.1,.1)
		CardStorm.CFrame = Root.CFrame * CFrame.new(0,3.2,0)
		CardStorm.Anchored = true
		CardStormMesh = Instance.new("SpecialMesh", CardStorm)
		CardStormMesh.Scale = Vector3.new(1,1,1)
		CardStormMesh.MeshId = "rbxassetid://6512150"
		CardStormMesh.TextureId = "rbxassetid://55364685"
		table.insert(SlowlyFade,CardStorm)
		table.insert(m3,CardStormMesh)
		table.insert(th1,CardStorm)
		removeuseless:AddItem(CardStorm,3)
		wait(.1)
		end
		coroutine.wrap(function()
		for i = 1, 10 do
		so.Volume = so.Volume - 0.3
		wait()
		end
		end)()
		wait(1)
		ws = 10
		clean()
		attacking = false
		debounce = false
		appi = false
		end
		end)

		mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='e' then
		if levitate then return end
		if debounce then return end
		attacking = true
		debounce = true
		damagedebounce = false
		clickdisallowance = true
		clickdebounce = false
		notallowed = true
		appi = true
		ws = 0
		coroutine.wrap(function()
		while appi do
		wait()
		if Root.Velocity.y > 1 and attacking == true then
		position = "Jump2"
		elseif Root.Velocity.y < -1 and attacking == true then
		position = "Falling2"
		elseif Root.Velocity.Magnitude < 2 and attacking == true then
		position = "Idle2"
		elseif Root.Velocity.Magnitude > 2 and attacking == true then
		position = "Walking2"
		end
		end
		end)()
		coroutine.wrap(function()
		while appi do
		wait()
		settime = 0.05
		sine = sine + change
		if position == "Jump2" and attacking == true and appi == true then
		change = 1
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(3),math.rad(4)), 0.4)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
		elseif position == "Falling2" and attacking == true and appi == true then
		change = 1
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.2)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(14), math.rad(-4), math.rad(0)), 0.2)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.2)
		elseif position == "Idle2" and attacking == true and appi == true then
		change = .4
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - 1 * math.sin(sine/12)),math.rad(40 - 2 * math.sin(sine/12))), 0.3)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.3)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
		elseif position == "Walking2" and attacking == true and appi == true then
		change = .8
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - 1 * math.sin(sine/12)),math.rad(40 - 2 * math.sin(sine/12))), 0.3)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(0) + Root.RotVelocity.Y/30,math.sin(25*math.sin(sine/8))),.3)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.sin(sine/8)/2.8, 0.2 - math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/8)/2.3, math.rad(0)*math.sin(sine/1), math.rad(0)  + RightLeg.RotVelocity.Y / 30, math.sin(25 * math.sin(sine/8))), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.sin(sine/8)/2.8, 0.2 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/8)/2.3, math.rad(0)*math.sin(sine/1), math.rad(0)  + LeftLeg.RotVelocity.Y / 30, math.sin(25 * math.sin(sine/8))), 0.3)
		end
		end
		end)()
		coroutine.wrap(function()
		for i = 1, 40 do
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0),.5)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,1.5,0) * CFrame.Angles(math.rad(180 - 7 * math.sin(sine/6)),math.rad(7 * math.sin(sine/6)),math.rad(7*math.sin(sine/6))), 0.5)
		swait()
		end
		end)()
		haloh = Instance.new("Part", Torso)
		haloh.Size = Vector3.new(1,1,1)
		haloh.Anchored = false
		haloh.Transparency = 1
		haloh.CanCollide = false
		halohweld = weldBetween(haloh,Torso)
		halohweld.C0 = CFrame.new(0,0,0)
		n = 0
		x = 0
		tab={}
		tab2={}
		SOUND(Torso,1882057730,6,false,2)
		for i = 1, 20 do
		n = n + 20
		x = x + 5
		halo = Instance.new("Part", Torso)
		halo.Size = Vector3.new(0.71, 0.07, 0.99)
		halo.Transparency = 1
		halo.CanCollide = false
		halo.Material = "Neon"
		halo.BrickColor = BrickColor.new("White")
		halow = weldBetween(halo,haloh)
		halow.C0 = CFrame.new(-4,0,0) * CFrame.Angles(math.rad(90),math.rad(n),math.rad(0))
		table.insert(FadeIn,halo)
		table.insert(tab,halow)
		table.insert(tab2,halo)
		wait()
		end
		ws = 10
		clickdisallowance = false
		coroutine.wrap(function()
		g1 = Instance.new("BodyGyro", Root)
		g1.D = 175
		g1.P = 20000
		g1.MaxTorque = Vector3.new(0,9000,0)
		while notallowed do
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-90 - 2 * math.sin(sine/12)), math.rad(3), math.rad(4)), 0.3)
		swait()
		end
		end)()
		coroutine.wrap(function()
		mouse.Button1Down:connect(function()
		if clickdisallowance then return end
		if clickdebounce then return end
		wait(.2)
		clickdebounce = true
		notallowed = false
		end)
		end)()
		while notallowed do
		for i,v in pairs(tab) do
		v.C0 = v.C0 * CFrame.Angles(math.rad(0),math.rad(0 + 1.2),math.rad(0))
		end
		swait()
		end
		appi = false
		ws = 0
		for i = 1, 15 do
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-50 - 2 * math.sin(sine/12)), math.rad(12), math.rad(9)), 0.3)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(-.65, .6, 1) * CFrame.Angles(0,0,0),.3)
		swait()
		end
		for i,v in pairs(tab) do
		v:Remove()
		end
		for i,v in pairs(tab2) do
		removeuseless:AddItem(v,6)
		MAKETRAIL(v,Vector3.new(.1,0,0),Vector3.new(-.1,0,0),.8,ColorSequence.new(BrickColor.new("White").Color,BrickColor.new("Really black").Color))
		BodyGyro=Instance.new('BodyGyro',v)
		BodyGyro.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
		BodyGyro.P=2e4
		removeuseless:AddItem(BodyGyro,.1)
		PB2 = Instance.new("BodyVelocity", v)
		PB2.MaxForce = Vector3.new(999999, 999999, 999999)
		v.CFrame = CFrame.new(v.Position,mouse.Hit.p)
		PB2.Velocity = v.CFrame.lookVector * 80
		end
		SOUND(Torso,1499747506,3,false,1)
		for i,v in pairs(tab2) do
		v.Touched:connect(function(hit)
		if hit.Parent:IsA("Part") then
		elseif hit.Parent:IsA("SpecialMesh") then
		elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
		elseif hit.Parent:findFirstChildOfClass("Humanoid") then
		if damagedebounce == true then return end
		damagedebounce = true
		Slachtoffer = hit.Parent:findFirstChildOfClass("Humanoid")
		tor = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
		Slachtoffer:TakeDamage(math.random(0,0))
		SOUND(tor,694703797,6,false,1)
		wait(.1)
		damagedebounce = false
		end
		end)
		end
		for i = 1, 20 do
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(-25), math.rad(0)), 0.3)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.3)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-90 - 2 * math.sin(sine/12)), math.rad(-15), math.rad(4)), 0.3)
		swait()
		end
		clean()
		g1:Remove()
		haloh:Remove()
		attacking = false
		debounce = false
		damagedebounce = false
		clickdebounce = false
		appi = false
		ws = 10
		end
		end)

		mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='y' then
		if levitate then return end
		if debounce then return end
		clickdisallowance = true
		clickdebounce = false
		debounce = true
		attacking = true
		appi = true
		ws = 0
		coroutine.wrap(function()
		while appi do
		wait()
		if Root.Velocity.y > 1 and attacking == true then
		position = "Jump2"
		elseif Root.Velocity.y < -1 and attacking == true then
		position = "Falling2"
		elseif Root.Velocity.Magnitude < 2 and attacking == true then
		position = "Idle2"
		elseif Root.Velocity.Magnitude > 2 and attacking == true then
		position = "Walking2"
		end
		end
		end)()
		coroutine.wrap(function()
		while appi do
		wait()
		settime = 0.05
		sine = sine + change
		if position == "Jump2" and attacking == true and appi == true then
		change = 1
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(-3),math.rad(-4)), 0.4)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
		elseif position == "Falling2" and attacking == true and appi == true then
		change = 1
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.2)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(14), math.rad(-4), math.rad(0)), 0.2)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.2)
		elseif position == "Idle2" and attacking == true and appi == true then
		change = .4
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + 1 * math.sin(sine/12)),math.rad(-40 + 2 * math.sin(sine/12))), 0.3)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.3)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
		elseif position == "Walking2" and attacking == true and appi == true then
		change = .8
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + 1 * math.sin(sine/12)),math.rad(-40 + 2 * math.sin(sine/12))), 0.3)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(0) + Root.RotVelocity.Y/30,math.cos(25*math.cos(sine/8))),.3)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/8)/2.8, 0.2 - math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + RightLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/8)/2.8, 0.2 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + LeftLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.3)
		end
		end
		end)()
		bigcard = Instance.new("Part",Torso)
		bigcard.Material = "Neon"
		bigcard.Transparency = 1
		bigcard.BrickColor = BrickColor.new("White")
		bigcard.Size = Vector3.new(15.65, 23.84, 0.3)
		bigcard.CFrame = Root.CFrame * CFrame.new(0,18,0)
		bigcard.Anchored = true
		SOUND(bigcard,236989198,6,false,1)
		ace = aces[math.random(1,#aces)]
		acer = Instance.new("Decal",bigcard)
		acer.Texture = "rbxassetid://"..ace
		acer.Transparency = 1
		acer.Face = "Front"
		ace2 = acer:Clone()
		ace2.Parent = bigcard
		ace2.Face = "Back"
		table.insert(FadeIn,acer)
		table.insert(FadeIn,ace2)
		table.insert(FadeIn,bigcard)
		for i = 1, 30 do
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,1.5,-.1),.5)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(180),math.rad(10),math.rad(10)),.3)
		swait()
		end
		ws = 10
		g1 = Instance.new("BodyGyro", Root)
		g1.D = 175
		g1.P = 20000
		g1.MaxTorque = Vector3.new(0,9000,0)
		clickdisallowance = false
		coroutine.wrap(function()
		mouse.Button1Down:connect(function()
		if clickdisallowance then return end
		if clickdebounce then return end
		wait(.2)
		clickdebounce = true
		end)
		end)()
		while not clickdebounce do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
		bigcard.CFrame = Root.CFrame * CFrame.new(0,18,0)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(180),math.rad(10 + 2 *math.sin(sine/12)),math.rad(10 - 2*math.sin(sine/12))),.3)
		swait()
		end
		g1:Remove()
		ws = 0
		for i = 1, 13 do
		bigcard.CFrame = bigcard.CFrame:lerp(Root.CFrame * CFrame.new(0,18,3) * CFrame.Angles(math.rad(10),0,0),.3)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0.2) * CFrame.Angles(math.rad(160),math.rad(10),math.rad(10)),.3)
		swait()
		end
		locationpart = Instance.new("Part",bigcard)
		locationpart.Size = Vector3.new(1,1,1)
		locationpart.Transparency = 1
		locationpart.CanCollide = false
		locationpart.Anchored = true
		locationpart.CFrame = Root.CFrame * CFrame.new(0,-3,-21)
		shockwave = Instance.new("Part", Torso)
		shockwave.Size = Vector3.new(1,1,1)
		shockwave.CanCollide = false
		shockwave.Anchored = true
		shockwave.Transparency = 0
		shockwave.BrickColor = BrickColor.new("White")
		shockwave.CFrame = CFrame.new(locationpart.Position)
		shockwavemesh = Instance.new("SpecialMesh", shockwave)
		shockwavemesh.Scale = Vector3.new(5,2,5)
		shockwavemesh.MeshId = "rbxassetid://20329976"
		removeuseless:AddItem(shockwave,4)
		shockwave2 = Instance.new("Part", Torso)
		shockwave2.Size = Vector3.new(1,1,1)
		shockwave2.CanCollide = false
		shockwave2.Anchored = true
		shockwave2.Transparency = 0
		shockwave2.BrickColor = BrickColor.new("White")
		shockwave2.CFrame = CFrame.new(locationpart.Position)
		shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
		shockwavemesh2.Scale = Vector3.new(5,2,5)
		shockwavemesh2.MeshId = "rbxassetid://20329976"
		removeuseless:AddItem(shockwave2,4)
		shockwave3 = Instance.new("Part", Torso)
		shockwave3.Size = Vector3.new(1,1,1)
		shockwave3.CanCollide = false
		shockwave3.Anchored = true
		shockwave3.Transparency = 0
		shockwave3.BrickColor = BrickColor.new("White")
		shockwave3.CFrame = CFrame.new(locationpart.Position)
		shockwavemesh3 = Instance.new("SpecialMesh", shockwave3)
		shockwavemesh3.Scale = Vector3.new(5,2,5)
		shockwavemesh3.MeshId = "rbxassetid://20329976"
		removeuseless:AddItem(shockwave3,4)
		shockwave4 = Instance.new("Part", Torso)
		shockwave4.Size = Vector3.new(1,1,1)
		shockwave4.CanCollide = false
		shockwave4.Anchored = true
		shockwave4.Transparency = 0
		shockwave4.BrickColor = BrickColor.new("White")
		shockwave4.CFrame = CFrame.new(locationpart.Position)
		shockwavemesh4 = Instance.new("SpecialMesh", shockwave4)
		shockwavemesh4.Scale = Vector3.new(5,2,5)
		shockwavemesh4.MeshId = "rbxassetid://20329976"
		removeuseless:AddItem(shockwave4,4)
		Hit = damagealll(20,locationpart.Position)
		for _,v in pairs(Hit) do			
		v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
		vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
		vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
		torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
		vel.velocity = CFrame.new(locationpart.Position,torso.Position).lookVector*110
		removeuseless:AddItem(vel,.1)
		end
		coroutine.wrap(function()
		for i = 1, 90 do
		shockwave.CFrame = shockwave.CFrame * CFrame.Angles(0,math.rad(0+12),0)
		shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(1.5,.1,1.5)
		shockwave.Transparency = shockwave.Transparency + 0.025
		shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(0,math.rad(0+6),0)
		shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(1.25,.25,1.25)
		shockwave2.Transparency = shockwave2.Transparency + 0.04
		shockwave3.CFrame = shockwave3.CFrame * CFrame.Angles(0,math.rad(0+12),0)
		shockwavemesh3.Scale = shockwavemesh3.Scale + Vector3.new(.75,.75,.75)
		shockwave3.Transparency = shockwave3.Transparency + 0.035
		shockwave4.CFrame = shockwave3.CFrame * CFrame.Angles(0,math.rad(0+5),0)
		shockwavemesh4.Scale = shockwavemesh3.Scale + Vector3.new(2.5,.5,2.5)
		shockwave4.Transparency = shockwave3.Transparency + 0.03
		swait()
		end
		end)()
		SOUND(locationpart,765590102,6,false,2)
		for i = 1, 24 do
		bigcard.CFrame = bigcard.CFrame:lerp(Root.CFrame * CFrame.new(0,-3,-21) * CFrame.Angles(math.rad(90),0,0),.25)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(.2,.2,.2) * CFrame.Angles(0,0,0),.5)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1, 1.1, 0.4) * CFrame.Angles(math.rad(-75), math.rad(15), math.rad(4)), 0.5)
		swait()
		end
		for i = 1, 40 do
		bigcard.Transparency = bigcard.Transparency + 0.2
		acer.Transparency = acer.Transparency + .2
		ace2.Transparency = ace2.Transparency + .2
		swait()
		end
		attacking = false
		debounce = false
		appi = false
		clickdisallowance = false
		clickdebounce = false
		ws = 10
		bigcard:Remove()
		clean()
		end
		end)

		mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='u' then
		if levitate then return end
		if mouse.Target ~= nil then end
		if debounce then return end
		debounce = true
		attacking = true
		appi = true
		ws = 0
		appi = true
		coroutine.wrap(function()
		while appi do
		wait()
		if Root.Velocity.y > 1 and attacking == true then
		position = "Jump2"
		elseif Root.Velocity.y < -1 and attacking == true then
		position = "Falling2"
		elseif Root.Velocity.Magnitude < 2 and attacking == true then
		position = "Idle2"
		elseif Root.Velocity.Magnitude > 2 and attacking == true then
		position = "Walking2"
		end
		end
		end)()
		coroutine.wrap(function()
		while appi do
		wait()
		settime = 0.05
		sine = sine + change
		if position == "Jump2" and attacking == true and appi == true then
		change = 1
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(-3),math.rad(-4)), 0.4)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
		elseif position == "Falling2" and attacking == true and appi == true then
		change = 1
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.2)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(14), math.rad(-4), math.rad(0)), 0.2)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.2)
		elseif position == "Idle2" and attacking == true and appi == true then
		change = .4
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + 1 * math.sin(sine/12)),math.rad(-40 + 2 * math.sin(sine/12))), 0.3)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.3)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
		elseif position == "Walking2" and attacking == true and appi == true then
		change = .8
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + 1 * math.sin(sine/12)),math.rad(-40 + 2 * math.sin(sine/12))), 0.3)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(0) + Root.RotVelocity.Y/30,math.cos(25*math.cos(sine/8))),.3)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/8)/2.8, 0.2 - math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + RightLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/8)/2.8, 0.2 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + LeftLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.3)
		end
		end
		end)()
		g1 = Instance.new("BodyGyro", Root)
		g1.D = 175
		g1.P = 20000
		g1.MaxTorque = Vector3.new(0,9000,0)
		g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
		for i = 1, 15 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,1.5,-.1),.5)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(180),math.rad(10),math.rad(10)),.3)
		swait()
		end
		cardportal = Instance.new("Part", Torso)
		cardportal.Size = Vector3.new(0.5, 0.5, 0.5)
		cardportal.Material = "Neon"
		cardportal.BrickColor = BrickColor.new("White")
		cardportal.Transparency = 0
		cardportal.Anchored = true
		cardportal.CanCollide = false
		cardportalMESH = Instance.new("SpecialMesh", cardportal)
		cardportalMESH.MeshType = "Cylinder"
		cardportalMESH.Scale = Vector3.new(.2,0.01,0.01)
		cardportal.CFrame = CFrame.new(mouse.Hit.p) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))
		for i = 1, 10 do
		cardportalMESH.Scale = cardportalMESH.Scale + Vector3.new(0,4,4)
		swait()
		end
		bigzcard = Instance.new("Part",Torso)
		bigzcard.Material = "Neon"
		bigzcard.Transparency = 0
		bigzcard.BrickColor = BrickColor.new("White")
		bigzcard.Size = Vector3.new(10, 15, 0.3)
		bigzcard.CFrame = cardportal.CFrame * CFrame.new(-8,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))
		bigzcard.Anchored = true
		SOUND(bigzcard,1888686669,6,false,1)
		acer = Instance.new("Decal",bigzcard)
		acer.Texture = "rbxassetid://1881287656"
		acer.Transparency = 0
		acer.Face = "Front"
		ace2 = acer:Clone()
		ace2.Parent = bigzcard
		ace2.Face = "Back"
		spinning = true
		coroutine.wrap(function()
		while spinning do
		bigzcard.CFrame = bigzcard.CFrame * CFrame.Angles(0,math.rad(0+5),0)
		swait()
		end
		end)()
		for i = 1, 20 do
		bigzcard.CFrame = bigzcard.CFrame * CFrame.new(0,-.9,0)
		swait()
		end
		coroutine.wrap(function()
		for i = 1, 10 do
		cardportalMESH.Scale = cardportalMESH.Scale - Vector3.new(0,4,4)
		swait()
		end
		cardportal:Remove()
		end)()
		wait(.7)
		ace3 = Instance.new("Decal",bigzcard)
		ace3.Texture = "rbxassetid://1880203893"
		ace3.Transparency = 1
		ace3.Face = "Front"
		ace4 = ace3:Clone()
		ace4.Parent = bigzcard
		ace4.Face = "Back"
		bigzcard2 = Instance.new("Part",Torso)
		bigzcard2.Material = "Neon"
		bigzcard2.Transparency = 1
		bigzcard2.BrickColor = BrickColor.new("Really black")
		bigzcard2.Size = Vector3.new(10, 15, 0.29)
		bigzcard2.CFrame = bigzcard.CFrame
		bigzcard2.CanCollide = false
		bigzcard2.Anchored = true
		coroutine.wrap(function()
		while spinning do
		bigzcard2.CFrame = bigzcard2.CFrame * CFrame.Angles(0,math.rad(0+5),0)
		swait()
		end
		end)()
		blz = bl[math.random(1,#bl)]
		woos = Instance.new("Sound",Torso)
		woos.SoundId = "rbxassetid://"..blz
		woos.Volume = 4
		woos:Play()
		for i = 1, 20 do
		bigzcard2.Transparency = bigzcard2.Transparency - .05
		bigzcard.Transparency = bigzcard.Transparency + .05
		ace3.Transparency = ace3.Transparency - 0.05
		ace4.Transparency = ace4.Transparency - 0.05
		acer.Transparency = acer.Transparency + 0.05
		ace2.Transparency = ace2.Transparency + 0.05
		wait()
		end
		ace3.Parent = bigzcard2
		ace3.Face = "Front"
		ace4.Parent = bigzcard2
		ace4.Face = "Back"
		bigzcard:Remove()
		spinning = false
		blackholeactive = true
		coroutine.wrap(function()
		blackhole={}
		orbzfade={}
		for i = 1, 100 do
		orbz = Instance.new("Part", Torso)
		orbz.Shape = "Ball"
		orbz.Material = "Neon"
		orbz.BrickColor = BrickColor.new("Really black")
		orbz.Size = Vector3.new(2,2,2)
		orbz.Anchored = true
		orbz.CanCollide = false
		removeuseless:AddItem(orbz,1)
		orbz.CFrame = bigzcard2.CFrame * CFrame.new(math.random(-25,25),math.random(-25,25),math.random(-25,25)) * CFrame.Angles(math.rad(-180,180),math.rad(-180,180),math.rad(-180,180))
		table.insert(blackhole,orbz)
		table.insert(orbzfade,orbz)
		for i,v in pairs(blackhole) do
		v.CFrame = v.CFrame:lerp(CFrame.new(bigzcard2.Position),.05)
		end
		for i,v in pairs(orbzfade) do
		v.Transparency = v.Transparency + 0.025
		end
		swait()
		end
		end)()
		coroutine.wrap(function()
		while blackholeactive do
		local Hit = damagealll(45,bigzcard2.Position)		
		for _,v in pairs(Hit) do
		coroutine.wrap(function()
		wait(.15)
		if blackholeactive == false then return end
		v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
		end)()		
		torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
		torso.CFrame = torso.CFrame:lerp(CFrame.new(bigzcard2.Position),.1)
		end
		wait()
		end
		end)()
		for i = 1, 100 do
		bigzcard2.CFrame = bigzcard2.CFrame * CFrame.Angles(0,math.rad(0+20),0)
		cataclysmics = Instance.new("Part", Torso)
		cataclysmics.Shape = "Ball"
		cataclysmics.Material = "Neon"
		cataclysmics.BrickColor = BrickColor.new("Really black")
		cataclysmics.Size = Vector3.new(11,11,11)
		cataclysmics.Transparency = .3
		cataclysmics.Anchored = true
		cataclysmics.CanCollide = false
		cataclysmics.CFrame = CFrame.new(bigzcard2.Position)
		table.insert(LessSize,cataclysmics)
		table.insert(keyYtransparency,cataclysmics)
		removeuseless:AddItem(cataclysmics,1)
		swait()
		end
		coroutine.wrap(function()
		for i = 1, 20 do
		for i,v in pairs(orbzfade) do
		v.Transparency = v.Transparency + 0.05
		end
		swait()
		end
		end)()
		explosiontable={}
		ringtable={}
		ringtable2={}
		soundboks = Instance.new("Part",Torso)
		soundboks.CanCollide = false
		soundboks.Anchored = true
		soundboks.Transparency = 1
		soundboks.CFrame = bigzcard2.CFrame
		removeuseless:AddItem(soundboks,6)
		SOUND(soundboks,472579737,6,false,1)
		blackholeactive = false
		bigzcard2:Remove()
		Hit = damagealll(60,soundboks.Position)
		for _,v in pairs(Hit) do			
		v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
		vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
		vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
		torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
		vel.velocity = CFrame.new(soundboks.Position,torso.Position).lookVector*200
		removeuseless:AddItem(vel,.1)
		end
		coroutine.wrap(function()
		shockwave = Instance.new("Part", Torso)
		shockwave.Size = Vector3.new(1,1,1)
		shockwave.CanCollide = false
		shockwave.Anchored = true
		shockwave.Transparency = 0
		shockwave.BrickColor = BrickColor.new("Really black")
		shockwave.CFrame = CFrame.new(soundboks.Position) * CFrame.new(0,-6,0)
		shockwavemesh = Instance.new("SpecialMesh", shockwave)
		shockwavemesh.Scale = Vector3.new(5,2,5)
		shockwavemesh.MeshId = "rbxassetid://20329976"
		shockwave2 = Instance.new("Part", Torso)
		shockwave2.Size = Vector3.new(1,1,1)
		shockwave2.CanCollide = false
		shockwave2.Anchored = true
		shockwave2.Transparency = 0
		shockwave2.BrickColor = BrickColor.new("Really black")
		shockwave2.CFrame = CFrame.new(soundboks.Position) * CFrame.new(0,-6,0)
		shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
		shockwavemesh2.Scale = Vector3.new(5,2,5)
		shockwavemesh2.MeshId = "rbxassetid://20329976"
		for i = 1, 40 do
		shockwave.CFrame = shockwave.CFrame * CFrame.Angles(0,math.rad(0+15),0)
		shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(0,math.rad(0+8),0)
		shockwave.Transparency = shockwave.Transparency + 0.025
		shockwave2.Transparency = shockwave2.Transparency + 0.025
		shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(9,.9,9)
		shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(8,.8,8)
		swait()
		end
		shockwave:Remove()
		shockwave2:Remove()
		end)()	
		for i = 1, 4 do
		explosion = Instance.new("Part", Torso)
		explosion.Shape = "Ball"
		explosion.Size = Vector3.new(1,1,1)
		explosion.Transparency = 0
		explosion.CanCollide = false
		explosion.Anchored = true
		explosion.BrickColor = BrickColor.new("Really black")
		explosion.Material = "Neon"
		explosion.CFrame = CFrame.new(bigzcard2.Position)
		table.insert(ExtremeM,explosion)
		table.insert(SlowlyFade,explosion)
		removeuseless:AddItem(explosion,4)
		ring = Instance.new("Part", Torso)
		ring.Size = Vector3.new(5, 5, 5)
		ring.Transparency = 0
		ring.BrickColor = BrickColor.new("Really black")
		ring.Anchored = true
		ring.CanCollide = false
		ring.CFrame = bigzcard2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)), math.rad(math.random(-180,180)), math.rad(math.random(-180,180)))
		ringh = Instance.new("SpecialMesh", ring) 
		ringh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
		ringh.Scale = Vector3.new(2, 2, .1)
		table.insert(keyYsize,ringh)
		table.insert(keyYtransparency,ring)
		removeuseless:AddItem(ring,4)
		swait()
		end
		wait(1.2)
		clean()
		keyYsize={}
		keyYtransparency={}
		blackholev = false
		appi = false
		g1:Remove()
		ws = 10
		attacking = false
		debounce = false
		end
		end)

		mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='t' then
		if levitate then
		if tauntdebounce then return end
		tauntdebounce = true
		laughing = true
		coroutine.wrap(function()
		while laughing do
		local b1 = Instance.new("BillboardGui",Head)
		b1.Size = UDim2.new(0,4,0,1.6)
		b1.StudsOffset = Vector3.new(0,0,0)
		b1.Name = "laff"
		b1.AlwaysOnTop = true
		b1.Adornee = Head
		removeuseless:AddItem(b1,3)
		local b2 = Instance.new("TextLabel",b1)
		b2.BackgroundTransparency = 1
		b2.Text = "HaHaHaHaHaHa..."
		b2.Font = "Garamond"
		b2.TextSize = 0
		b2.Name = "lafftext"
		b2.TextStrokeTransparency = 0
		b2.TextColor3 = BrickColor.new("Really red").Color
		b2.TextStrokeColor3 = Color3.new(0,0,0)
		b2.Size = UDim2.new(1,0,.5,0)
		table.insert(laughingtable,b2)
		removeuseless:AddItem(b1,2)
		coroutine.wrap(function()
		if zxc then return end
		zxc = true
		while true do
		swait()
		for i,v in pairs(Head:GetChildren()) do
		if v.Name == "laff" then
		v.StudsOffset = v.StudsOffset + Vector3.new(math.random(-2,2),.3,math.random(-2,2))
		end
		end
		for i,v in pairs(laughingtable) do
		v.TextTransparency = v.TextTransparency + .025
		v.TextStrokeTransparency = v.TextStrokeTransparency + 0.25
		v.TextSize = v.TextSize + 2
		v.Rotation = v.Rotation + .1
		end
		end
		end)()
		swait(10)
		end
		end)()
		laugh = laughs[math.random(1,#laughs)]
		laughy = Instance.new("Sound",Head)
		laughy.SoundId = "rbxassetid://"..laugh
		laughy.Volume = 10
		laughy:Play()
		wait(1)
		wait(laughy.TimeLength)
		laughing = false
		laughy:Remove()
		tauntdebounce = false
		else
		if mouse.Target ~= nil then
		if debounce then return end
		attacking = true
		ghost()
		tps = Instance.new("Sound", Torso)
		tps.Volume = 5
		tps.SoundId = "rbxassetid://1894958339"
		tps:Play()
		removeuseless:AddItem(tps,2)
		g1 = Instance.new("BodyGyro", Root)
		g1.D = 175
		g1.P = 20000
		g1.MaxTorque = Vector3.new(0,9000,0)
		g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
		removeuseless:AddItem(g1,.05)
		Root.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,3.3,0)
		wait(.1)
		attacking = false
		debounce = false
		end
		end
		end
		end)

		mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='q' then
		if levitate then return end
		if mouse.Target ~= nil and mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil and mouse.Target.Parent:FindFirstChildOfClass("Humanoid").Health ~= 0 then
		if debounce then return end
		debounce = true
		attacking = true
		appi = true
		ws = 0
		coroutine.wrap(function()
		while appi do
		wait()
		if Root.Velocity.y > 1 and attacking == true then
		position = "Jump2"
		elseif Root.Velocity.y < -1 and attacking == true then
		position = "Falling2"
		elseif Root.Velocity.Magnitude < 2 and attacking == true then
		position = "Idle2"
		elseif Root.Velocity.Magnitude > 2 and attacking == true then
		position = "Walking2"
		end
		end
		end)()
		coroutine.wrap(function()
		while appi do
		wait()
		settime = 0.05
		sine = sine + change
		if position == "Jump2" and attacking == true and appi == true then
		change = 1
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(3),math.rad(4)), 0.4)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
		elseif position == "Falling2" and attacking == true and appi == true then
		change = 1
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.2)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(14), math.rad(-4), math.rad(0)), 0.2)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.2)
		elseif position == "Idle2" and attacking == true and appi == true then
		change = .4
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - 1 * math.sin(sine/12)),math.rad(40 - 2 * math.sin(sine/12))), 0.3)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
		elseif position == "Walking2" and attacking == true and appi == true then
		change = .8
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - 1 * math.sin(sine/12)),math.rad(40 - 2 * math.sin(sine/12))), 0.3)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(0) + Root.RotVelocity.Y/30,math.cos(25*math.cos(sine/8))),.3)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/8)/2.8, 0.2 - math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + RightLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/8)/2.8, 0.2 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + LeftLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.3)
		end
		end
		end)()
		enemyhum = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
		ETorso = enemyhum.Parent:FindFirstChild("Torso") or enemyhum.Parent:FindFirstChild("LowerTorso")
		EHead = enemyhum.Parent:FindFirstChild("Head")
		g1 = Instance.new("BodyGyro", Root)
		g1.D = 175
		g1.P = 20000
		g1.MaxTorque = Vector3.new(0,9000,0)
		brick = Instance.new("Part",Torso)
		brick.Anchored = true
		brick.CanCollide = false
		brick.Material = "Neon"
		brick.Transparency = 1
		brick.BrickColor = BrickColor.new("White")
		brick.Size = Vector3.new(8,.3,12)
		brick.CFrame = Root.CFrame * CFrame.new(math.random(-15,15),-3,math.random(-15,15))
		SOUND(brick,1888686669,6,false,1.5)
		ace = aces[math.random(1,#aces)]
		acer = Instance.new("Decal",brick)
		acer.Texture = "rbxassetid://1898092341"
		acer.Transparency = 1
		acer.Face = "Top"
		coroutine.wrap(function()
		for i = 1, 20 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,ETorso.Position),.2)
		brick.Transparency = brick.Transparency - .05
		acer.Transparency = acer.Transparency - .1
		swait()
		end
		end)()
		ETorso.Anchored = true
		EHead.Anchored = true
		for i = 1, 25 do
		swait()
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,ETorso.Position),.2)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,-.2,0) * CFrame.Angles(0,0,0),.3)
		LEFTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-90 - 2 * math.sin(sine/12)), math.rad(3), math.rad(4)), 0.3)
		brick.CFrame = brick.CFrame:lerp(CFrame.new(ETorso.Position) * CFrame.new(0,-3,0) * CFrame.Angles(0,math.rad(0+10),0),.2)
		end
		SOUND(brick,472214107,6,false,2)
		coroutine.wrap(function()
		for i = 1, 10 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,ETorso.Position),.2)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, .8, 0.4) * CFrame.Angles(math.rad(-60 - 2 * math.sin(sine/12)), math.rad(3), math.rad(4)), 0.3)
		swait()
		end
		end)()
		shockwave = Instance.new("Part", Torso)
		shockwave.Size = Vector3.new(1,1,1)
		shockwave.CanCollide = false
		shockwave.Anchored = true
		shockwave.Transparency = 0
		shockwave.BrickColor = BrickColor.new("White")
		shockwave.CFrame = CFrame.new(brick.Position)
		shockwavemesh = Instance.new("SpecialMesh", shockwave)
		shockwavemesh.Scale = Vector3.new(1,1,1)
		shockwavemesh.MeshId = "rbxassetid://20329976"
		removeuseless:AddItem(shockwave,4)
		shockwave2 = Instance.new("Part", Torso)
		shockwave2.Size = Vector3.new(1,1,1)
		shockwave2.CanCollide = false
		shockwave2.Anchored = true
		shockwave2.Transparency = 0
		shockwave2.BrickColor = BrickColor.new("White")
		shockwave2.CFrame = CFrame.new(brick.Position)
		shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
		shockwavemesh2.Scale = Vector3.new(1,1,1)
		shockwavemesh2.MeshId = "rbxassetid://20329976"
		removeuseless:AddItem(shockwave2,4)
		for i = 1, 35 do
		swait()
		shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(2,.1,2)
		shockwave.CFrame = shockwave.CFrame * CFrame.Angles(0,math.rad(0+12),0)
		shockwave.Transparency = shockwave.Transparency + .05
		shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(.5,.1,.5)
		shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(0,math.rad(0+4),0)
		shockwave2.Transparency = shockwave2.Transparency + .03
		EHead.CFrame = EHead.CFrame * CFrame.new(0,-.20,0)
		ETorso.CFrame = ETorso.CFrame * CFrame.new(0,-.25,0)
		end
		for i = 1, 8 do
		brick.Size = brick.Size + Vector3.new(1.5,0,2.5)
		swait()
		end
		n = 0
		SOUND(brick,54111471,6,false,1)
		for i = 1, 40 do
		n = n + 6
		brick.Transparency = brick.Transparency + .025
		acer.Transparency = acer.Transparency + .075
		brick.CFrame = brick.CFrame * CFrame.Angles(0,math.rad(n),0)
		brick.Size = brick.Size - Vector3.new(1.5,.025,2.5)
		swait()
		end
		ws = 10
		brick:Remove()
		enemyhum.Parent:Remove()
		attacking = false
		removeuseless:AddItem(g1,0.001)
		debounce = false
		appi = false
		end
		end
		end)

		mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='p' then
		if levitate then return end
		if blocking then
		if blockedoff then return end
		clickallowance = false
		appi = false
		attacking = true
		blocking = false
		throwing = true
		ws = 0
		n = 0
		blockcard.CanCollide = false
		for i = 1, 35 do
		n = n + 20
		blockcard.CFrame = Root.CFrame * CFrame.new(0,3,-5) * CFrame.Angles(0,math.rad(n),0)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(25), math.rad(0)), 0.3)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-50 - 2 * math.sin(sine/12)), math.rad(12), math.rad(9)), 0.3)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(-.65, .6, 1) * CFrame.Angles(0,0,0),.3)
		swait()
		end
		blockcard.CFrame = Root.CFrame * CFrame.new(0,3,-5 + -1) * CFrame.Angles(0,0,0)
		blockcard.CanCollide = false
		locater1 = Instance.new("Part",blockcard)
		locater1.Size = Vector3.new(1,1,1)
		locater1.CanCollide = false
		locater1.Anchored = true
		locater1.Transparency = 1
		locater2 = Instance.new("Part",blockcard)
		locater2.Size = Vector3.new(1,1,1)
		locater2.CanCollide = false
		locater2.Transparency = 1
		locater2.Anchored = true
		locater3 = Instance.new("Part",blockcard)
		locater3.Size = Vector3.new(1,1,1)
		locater3.Transparency = 1
		locater3.CFrame = blockcard.CFrame * CFrame.Angles(math.rad(90),0,0)
		locater3.CanCollide = false
		locater3.Anchored = true
		fushfush = Instance.new("Sound",blockcard)
		fushfush.SoundId = "rbxassetid://288641686"
		fushfush.Volume = 8
		fushfush:Play()
		boosh:Play()
		coroutine.wrap(function()
		n = 0
		for i = 1, 35 do
		n = n + 10
		shockwave = Instance.new("Part", Torso)
		shockwave.Size = Vector3.new(1,1,1)
		shockwave.CanCollide = false
		shockwave.Anchored = true
		shockwave.Transparency = .5
		shockwave.BrickColor = BrickColor.new("White")
		shockwave.CFrame = locater3.CFrame
		shockwavemesh = Instance.new("SpecialMesh", shockwave)
		shockwavemesh.Scale = Vector3.new(15,.7,15)
		shockwavemesh.MeshId = "rbxassetid://20329976"
		shockwave.CFrame = locater3.CFrame * CFrame.Angles(math.rad(0),math.rad(1),0)
		removeuseless:AddItem(shockwave,1)
		table.insert(lolzor2,shockwave)
		for i,v in pairs(lolzor2) do
		v.Transparency = v.Transparency + .1
		v.CFrame = v.CFrame * CFrame.Angles(math.rad(0),math.rad(n),0)
		end
		swait()
		end
		end)()
		for i = 1, 35 do
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.3)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-90 - 2 * math.sin(sine/12)), math.rad(-20), math.rad(4)), 0.3)
		fushfush.Volume = fushfush.Volume - .2
		Hit = damagealll(20,blockcard.Position)
		for _,v in pairs(Hit) do			
		v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
		vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
		vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
		torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
		vel.velocity = CFrame.new(blockcard.Position,torso.Position).lookVector*120
		removeuseless:AddItem(vel,.1)
		end
		locater1.CFrame = blockcard.CFrame * CFrame.new(-5,-6,0)
		locater3.CFrame = blockcard.CFrame * CFrame.new(0,0,-1) * CFrame.Angles(math.rad(90),0,0)
		locater2.CFrame = blockcard.CFrame * CFrame.new(5,-6,0)
		grassblocks = Instance.new("Part",Torso)
		grassblocks.Size = Vector3.new(4,4,4)
		grassblocks.Material = "Grass"
		grassblocks.Anchored = true
		grassblocks.BrickColor = BrickColor.new("Bright green")
		grassblocks.CFrame = locater1.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
		removeuseless:AddItem(grassblocks,5)
		grassblocks2 = Instance.new("Part",Torso)
		grassblocks2.Size = Vector3.new(4,4,4)
		grassblocks2.Material = "Grass"
		grassblocks2.Anchored = true
		grassblocks2.BrickColor = BrickColor.new("Bright green")
		grassblocks2.CFrame = locater2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
		removeuseless:AddItem(grassblocks2,5)
		blockcardshadow = Instance.new("Part",Torso)
		blockcardshadow.Transparency = .5
		blockcardshadow.Anchored = true
		blockcardshadow.Material = "Neon"
		blockcardshadow.BrickColor = BrickColor.new("White")
		blockcardshadow.Size = Vector3.new(8, 13, 0.3)
		blockcardshadow.CanCollide = false
		blockcardshadow.CFrame = blockcard.CFrame
		removeuseless:AddItem(blockcardshadow,2)
		table.insert(lolzor,blockcardshadow)
		for i,v in pairs(lolzor) do
		v.Transparency = v.Transparency + 0.05
		end
		blockcard.CFrame = blockcard.CFrame * CFrame.new(0,0,-4)
		swait()
		end
		blockcard.Name = "Getthisshitoutofhere"
		for i = 1, 10 do
		blockcard.CFrame = blockcard.CFrame * CFrame.new(0,0,-2)
		blockcard.Transparency = blockcard.Transparency + .1
		acer.Transparency = blockcard.Transparency
		ace2.Transparency = blockcard.Transparency
		for i,v in pairs(lolzor) do
		v.Transparency = v.Transparency + .05
		end
		for i,v in pairs(lolzor2) do
		v.Transparency = v.Transparency + .1
		end
		swait()
		end
		lolzor={}
		lolzor2={}
		attacking = false
		debounce = false
		blocking = false
		throwing = false
		fushfush:Remove()
		clickallowance = false
		appi = false
		blockcard:Remove()
		g1:Remove()
		ws = 10
		else
		if debounce then return end
		if throwing then return end
		debounce = true
		ws = 10
		attacking = true
		blocking = true
		boosh = Instance.new("Sound",nil)
		boosh.SoundId = "rbxassetid://413682983"
		boosh.Volume = 6
		appi = true
		coroutine.wrap(function()
		while appi do
		wait()
		if Root.Velocity.y > 1 and attacking == true then
		position = "Jump2"
		elseif Root.Velocity.y < -1 and attacking == true then
		position = "Falling2"
		elseif Root.Velocity.Magnitude < 2 and attacking == true then
		position = "Idle2"
		elseif Root.Velocity.Magnitude > 2 and attacking == true then
		position = "Walking2"
		end
		end
		end)()
		coroutine.wrap(function()
		while appi do
		wait()
		settime = 0.05
		sine = sine + change
		if position == "Jump2" and attacking == true and appi == true then
		change = 1
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(3),math.rad(4)), 0.4)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
		elseif position == "Falling2" and attacking == true and appi == true then
		change = 1
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.2)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(14), math.rad(-4), math.rad(0)), 0.2)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.2)
		elseif position == "Idle2" and attacking == true and appi == true then
		change = .4
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - 1 * math.sin(sine/12)),math.rad(40 - 2 * math.sin(sine/12))), 0.3)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.3)
		elseif position == "Walking2" and attacking == true and appi == true then
		change = .8
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - 1 * math.sin(sine/12)),math.rad(40 - 2 * math.sin(sine/12))), 0.3)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,math.rad(0) + Root.RotVelocity.Y/30,math.cos(25*math.cos(sine/8))),.3)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/8)/2.8, 0.2 - math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/8)/2.8, 0.2 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)), 0.3)
		end
		end
		end)()
		blockcard = Instance.new("Part",Torso)
		blockcard.Material = "Neon"
		blockcard.Transparency = 1
		blockcard.BrickColor = BrickColor.new("White")
		blockcard.Size = Vector3.new(8, 13, 0.3)
		blockcard.CFrame = Root.CFrame * CFrame.new(0,2,-5)
		blockcard.Anchored = true
		boosh.Parent = blockcard
		SOUND(blockcard,236989198,6,false,1)
		ace = aces[math.random(1,#aces)]
		acer = Instance.new("Decal",blockcard)
		acer.Texture = "rbxassetid://"..ace
		acer.Transparency = 1
		acer.Face = "Front"
		ace2 = acer:Clone()
		ace2.Parent = blockcard
		ace2.Face = "Back"
		coroutine.wrap(function()
		for i = 1, 20 do
		blockcard.Transparency = blockcard.Transparency - 0.05
		acer.Transparency = blockcard.Transparency
		ace2.Transparency = blockcard.Transparency
		swait()
		end
		clickallowance = true
		end)()
		g1 = Instance.new("BodyGyro", Root)
		g1.D = 175
		g1.P = 20000
		g1.MaxTorque = Vector3.new(0,9000,0)
		coroutine.wrap(function()
		while blocking do
		if not blockedoff then
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,-.2, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.3)
		blockcard.CFrame = Root.CFrame * CFrame.new(0,3,-5)
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0)*CFrame.Angles(0,0,0),.3)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-90 - 2 * math.sin(sine/12)), math.rad(3), math.rad(4)), 0.3)
		end
		swait()
		end
		end)()
		wait(1)
		mouse.Button1Down:connect(function()
		if throwing then return end
		if not clickallowance then return end
		clickallowance = false
		blockedoff = true
		ws = 0
		for i = 1, 15 do
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(25), math.rad(0)), 0.3)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-50 - 2 * math.sin(sine/12)), math.rad(12), math.rad(9)), 0.3)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(-.65, .6, 1) * CFrame.Angles(0,0,0),.3)
		swait()
		end
		boosh:Play()
		hitdebounce = false
		blockcard.Touched:connect(function(hit)
		if hit.Parent:IsA("Part") then
		elseif hit.Parent:IsA("SpecialMesh") then
		elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
		elseif hit.Parent:findFirstChildOfClass("Humanoid") then
		for i,v in pairs(hit.Parent:GetChildren()) do
		Slachtoffer = v.Parent:FindFirstChildOfClass("Humanoid")
		if hitdebounce then return end
		hitdebounce = true
		vel = Instance.new("BodyVelocity",hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")) 
		vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
		if Slachtoffer.RigType == Enum.HumanoidRigType.R15 then
		tors = hit.Parent:FindFirstChild("UpperTorso")
		else
		tors = hit.Parent:FindFirstChild("Torso")
		end
		vel.velocity = CFrame.new(Root.Position,tors.Position).lookVector*120
		removeuseless:AddItem(vel,.1)
		Slachtoffer:TakeDamage(math.random(0,0))
		end
		end
		end)
		for i = 1, 10 do
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(0)), 0.3)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.3)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.35, 0.4) * CFrame.Angles(math.rad(-90 - 2 * math.sin(sine/12)), math.rad(-20), math.rad(4)), 0.3)
		blockcard.CFrame = blockcard.CFrame * CFrame.new(0,0,0-1)
		swait()
		end
		for i = 1, 10 do
		blockcard.CFrame = blockcard.CFrame * CFrame.new(0,0,0+1)
		swait()
		end
		hitdebounce = true
		ws = 10
		clickallowance = true
		blockedoff = false
		end)
		end
		end
		end)


		mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='f' then
		if debounce then return end
		if notallowedtransform then return end
		debounce = true
		if levitate then
		levitate = false
		mjester.VertexColor = Vector3.new(1, 1, 1)
		glow.Transparency = 1
		blastwave = Instance.new("Part",Torso)
		blastwave.CFrame = Torso.CFrame
		blastwave.Anchored = true
		blastwave.Material = "Neon"
		blastwave.CanCollide = false
		blastwave.Shape = "Ball"
		blastwave.Size = Vector3.new(3,3,3)
		coroutine.wrap(function()
		for i = 1, 20 do
		levitatewave.Transparency = levitatewave.Transparency + 0.05
		levitatewave2.Transparency = levitatewave2.Transparency + 0.05
		blastwave.Size = blastwave.Size + Vector3.new(2,2,2)
		blastwave.Transparency = blastwave.Transparency + 0.05
		swait()
		end
		blastwave:Remove()
		levitatewave2:Remove()
		levitatewave:Remove()
		end)()
		ws = 10
		notallowedtransform = true
		attacking = true
		coroutine.wrap(function()
		for i = 1, 10 do
		for i,v in pairs(LeftArm:GetChildren()) do if v.Name == lmagic.Name then
		v.Transparency = v.Transparency + 0.1
		end
		end
		for i,v in pairs(RightArm:GetChildren()) do if v.Name == rmagic.Name then
		v.Transparency = v.Transparency + 0.1
		end
		end
		wait()
		end
		end)()
		doomtheme.SoundId = "rbxassetid://1843358057"
		jesterWeld.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
		wait(0.000001)
		jesterWeld.C0 = jester.CFrame:inverse() * Head.CFrame * CFrame.new(0,-.3,0) * CFrame.Angles(math.rad(0),math.rad(90),0)
		mjester.Scale = Vector3.new(1.1, 1.1, 1.1)
		mjester.MeshId,mjester.TextureId = 'rbxassetid://1241662062','rbxassetid://1241662395'

		mMask.Scale = Vector3.new(0.13, 0.13, 0.1)
		mMask.MeshId,mMask.TextureId = 'http://www.roblox.com/asset/?id=5158270','http://www.roblox.com/asset/?id=9543585'
		maskweld.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
		wait(0.000001)
		maskweld.C0 = CFrame.new(0,-.555,0) * CFrame.Angles(math.rad(90),0,0)

		eyo1 = Instance.new("Part",Head)
		eyo1.BrickColor = BrickColor.new("White")
		eyo1.Material = "Neon"
		eyo1.Shape = "Ball"
		eyo1.Name = "eyo1"
		eyo1.CanCollide = false
		eyo1.Transparency = 1
		eyo1.Size = Vector3.new(0.33, 0.33, 0.33)
		eyo1weld = weldBetween(eyo1,Head)
		eyo1weld.C0 = CFrame.new(.215,-.05,.52)

		light = Instance.new("PointLight", eyo1)
		light.Color = Color3.new(1,1,1)
		light.Range = 3
		light.Brightness = 4
		light.Enabled = true

		eyo2 = Instance.new("Part",Head)
		eyo2.BrickColor = BrickColor.new("White")
		eyo2.Material = "Neon"
		eyo2.Shape = "Ball"
		eyo2.Name = "eyo2"
		eyo2.Transparency = 1
		eyo2.CanCollide = false
		eyo2.Size = Vector3.new(0.33, 0.33, 0.33)
		eyo2weld = weldBetween(eyo2,Head)
		eyo2weld.C0 = CFrame.new(-.215,-.05,.52)

		light2 = Instance.new("PointLight", eyo2)
		light2.Color = Color3.new(1,1,1)
		light2.Range = 3
		light2.Brightness = 4
		light2.Enabled = true

		hum.HipHeight = 0
		ws = 10
		debounce = false
		attacking = false
		coroutine.wrap(function()
		wait(3)
		notallowedtransform = false
		end)()
		else
		ws = 50
		notallowedtransform = true
		levitate = true
		ws = 50
		glow.Transparency = 0
		eyo1:Remove()
		eyo2:Remove()
		coroutine.wrap(function()
		while levitate do
		for i,v in pairs(Head:GetChildren()) do
		if v.Name == "eyo1" or v.Name == "eyo2" then
		v:Remove()
		end
		end
		wait()
		end
		end)()
		mnb = 0
		levitatewave = Instance.new("Part", Torso)
		levitatewave.Size = Vector3.new(1,1,1)
		levitatewave.CanCollide = false
		levitatewave.Anchored = true
		levitatewave.Transparency = .5
		levitatewave.BrickColor = BrickColor.new("Really black")
		levitatewave.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-5,0)
		levitatewavemesh = Instance.new("SpecialMesh", levitatewave)
		levitatewavemesh.Scale = Vector3.new(2.5,.3,2.5)
		levitatewavemesh.MeshId = "rbxassetid://20329976"
		levitatewave2 = Instance.new("Part", Torso)
		levitatewave2.Size = Vector3.new(1,1,1)
		levitatewave2.CanCollide = false
		levitatewave2.Anchored = true
		levitatewave2.Transparency = .5
		levitatewave2.BrickColor = BrickColor.new("Really red")
		levitatewave2.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-5,0)
		levitatewavemesh2 = Instance.new("SpecialMesh", levitatewave2)
		levitatewavemesh2.Scale = Vector3.new(2,.4,2)
		levitatewavemesh2.MeshId = "rbxassetid://20329976"
		blastwave = Instance.new("Part",Torso)
		blastwave.CFrame = Torso.CFrame
		blastwave.Anchored = true
		blastwave.Material = "Neon"
		blastwave.CanCollide = false
		blastwave.Shape = "Ball"
		blastwave.Size = Vector3.new(3,3,3)
		coroutine.wrap(function()
		for i = 1, 20 do
		blastwave.Size = blastwave.Size + Vector3.new(2,2,2)
		blastwave.Transparency = blastwave.Transparency + 0.05
		swait()
		end
		blastwave:Remove()
		end)()
		coroutine.wrap(function()
		while levitate do
		mnb = mnb + 15
		levitatewave.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-6 + .5 * math.sin(sine/9),0) * CFrame.Angles(0,math.rad(mnb),0)
		levitatewave2.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-6 + .5 * math.sin(sine/9),0) * CFrame.Angles(0,math.rad(mnb),0)
		colors = colortable[math.random(1,#colortable)]
		lmagic = Instance.new("Part",LeftArm)
		lmagic.Material = "Neon"
		lmagic.CanCollide = false
		lmagic.Anchored = true
		lmagic.BrickColor = BrickColor.new(colors)
		lmagic.Size = Vector3.new(1,1,1)
		lmagic.CFrame = leftlocation.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
		removeuseless:AddItem(lmagic,2)
		rmagic = Instance.new("Part",RightArm)
		rmagic.Material = "Neon"
		rmagic.CanCollide = false
		rmagic.Anchored = true
		rmagic.BrickColor = BrickColor.new(colors)
		rmagic.Size = Vector3.new(1,1,1)
		rmagic.CFrame = rightlocation.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
		removeuseless:AddItem(rmagic,2)
		for i,v in pairs(LeftArm:GetChildren()) do if v.Name == lmagic.Name then
		v.Transparency = v.Transparency + 0.05
		end
		end
		for i,v in pairs(RightArm:GetChildren()) do if v.Name == rmagic.Name then
		v.Transparency = v.Transparency + 0.05
		end
		end
		swait()
		end
		end)()
		framee = Instance.new("Frame")
		framee.Parent = screenGui
		framee.Position = UDim2.new(0, 8, 0, -500)
		framee.Size = UDim2.new(100000000,10000000,10000000,10000000)
		framee.BackgroundColor3 = BrickColor.new("White").Color
		framee.BackgroundTransparency = 0
		coroutine.wrap(function()
		wait(.2)
		for i = 1, 40 do
		hum.CameraOffset = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-0,0))
		framee.BackgroundTransparency = framee.BackgroundTransparency + 0.025
		swait()
		end
		hum.CameraOffset = Vector3.new(0,0,0)
		framee:Remove()
		end)()
		doomtheme.SoundId = "rbxassetid://1382488262"
		doomtheme:Play()
		doomtheme.Volume = 2
		doomtheme.TimePosition = 20.7
		jesterWeld.C0 = jesterWeld.C0 * CFrame.new(.3,-.3,0) * CFrame.Angles(math.rad(0),math.rad(-90),0)
		mjester.MeshId = "rbxassetid://193760002"
		mjester.TextureId = "rbxassetid://379225327"
		mjester.VertexColor = Vector3.new(1, 0, 0)

		maskweld.C0 = maskweld.C0 * CFrame.new(0,.55,-.5) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(0))
		mMask.MeshId = "rbxassetid://13520257"
		mMask.Scale = Vector3.new(1.1, 1, 1)
		mMask.TextureId = "rbxassetid://13520260"
		eyo1:Remove()
		eyo2:Remove()
		coroutine.wrap(function()
		while levitate do
		hum.HipHeight = 3 - .5 * math.sin(sine/9)
		swait()
		end
		end)()
		attacking = false
		debounce = false
		coroutine.wrap(function()
		wait(3)
		notallowedtransform = false
		end)()
		end
		end
		end)

		mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='.' then
		hum.Parent:BreakJoints()
		end
		end)

		checks1 = coroutine.wrap(function() -------Checks
		while true do
		if Root.Velocity.y > 1 and levitate == false then
		position = "Jump"
		elseif Root.Velocity.y < -1 and levitate == false then
		position = "Falling"
		elseif Root.Velocity.Magnitude < 2 and running == false and not levitate then
		position = "Idle"
		elseif Root.Velocity.Magnitude < 2 and running == false then
		position = "Idle2"
		elseif Root.Velocity.Magnitude < 20 and running == false and levitate == false then
		position = "Walking"
		elseif Root.Velocity.Magnitude > 20 and running == false and levitate then
		position = "Walking2"
		elseif Root.Velocity.Magnitude > 20 and levitate == false then
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
					PART.Parent = PARENT
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

		mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='g' then
		if not levitate then return end
		if debounce then return end
		debounce = true
		attacking = true
		FireBall:Play()
		ws = 15
		g1 = Instance.new("BodyGyro", Root)
		g1.D = 175
		g1.P = 20000
		g1.MaxTorque = Vector3.new(0,9000,0)
		for i = 1, 15 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10),math.rad(-15),math.rad(0)),.5)
		RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(14), math.rad(20), math.rad(-90)), 0.3)
		swait()
		end
		local swoosh = Instance.new("Part",Torso)
		swoosh.Name = "swoosh"
		swoosh.CFrame = rightlocation.CFrame * CFrame.new(0,0,0)
		swoosh.Size = Vector3.new(1.7,1.7,1.7)
		swoosh.Shape = "Ball"
		swoosh.Material = "Neon"
		swoosh.BrickColor = BrickColor.new("Really black")
		swoosh.CanCollide = false
		swoosh.Touched:connect(function(hit)
		if hit.Parent:IsA("Part") then
		elseif hit.Parent:IsA("SpecialMesh") then
		elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
		elseif hit.Parent:findFirstChildOfClass("Humanoid") then
		Slachtoffer = hit.Parent:findFirstChildOfClass("Humanoid")
		if Slachtoffer.Health < 1 then return end
		if damagedebounce == true then return end
		damagedebounce = true
		swoosh:Remove()
		explosion = Instance.new("Part",LeftArm)
		explosion.CFrame = hit.CFrame
		explosion.Anchored = true
		explosion.CanCollide = false
		explosion.Name = "explo"
		explosion.Shape = "Ball"
		explosion.BrickColor = BrickColor.new("Really black")
		explosion.Material = "Neon"
		removeuseless:AddItem(explosion,1.5)
		vel = Instance.new("BodyVelocity",hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")) 
		vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
		torso = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
		vel.velocity = CFrame.new(swoosh.Position,torso.Position).lookVector*60
		removeuseless:AddItem(vel,.1)
		SOUND(explosion,472579737,6,false,3)
		coroutine.wrap(function()
		if firsttime2 then return end
		firsttime2 = true
		while true do
		for i,v in pairs(LeftArm:GetChildren()) do
		if v.Name == "explo" then
		v.Size = v.Size + Vector3.new(2.5,2.5,2.5)
		v.Transparency = v.Transparency + .05
		end
		end
		for i,v in pairs(LeftArm:GetChildren()) do
		if v.Name == "shock" then
		v.Transparency = v.Transparency + .05
		end
		end
		for i,v in pairs(LeftArm:GetChildren()) do
		if v.Name == "shock2" then
		v.Transparency = v.Transparency + .05
		end
		end
		swait()
		end
		end)()
		Slachtoffer:TakeDamage(math.random(0,0))
		wait(.1)
		damagedebounce = false
		end
		end)
		coroutine.wrap(function()
		if firsttime then return end
		firsttime = true
		while wait() do
		for i,v in pairs(Torso:GetChildren()) do
		if v.Name == "swoosh" then
		magiccc = Instance.new("Part",RightArm)
		magiccc.Material = "Neon"
		magiccc.CanCollide = false
		magiccc.Anchored = true
		magiccc.BrickColor = BrickColor.new(colors)
		magiccc.Size = Vector3.new(1.5,1.5,1.5)
		magiccc.CFrame = v.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
		removeuseless:AddItem(magiccc,2)
		end
		end
		end
		end)()
		bov = Instance.new("BodyVelocity",swoosh)
		bov.maxForce = Vector3.new(99999,99999,99999)
		swoosh.CFrame = CFrame.new(swoosh.Position,mouse.Hit.p)
		bov.velocity = swoosh.CFrame.lookVector*120
		removeuseless:AddItem(swoosh,4)
		for i = 1, 15 do
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(10),math.rad(15),math.rad(0)),.5)
		RIGHTARMLERP.C1 = CFrame.new(0,0,0)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,1,.5) * CFrame.Angles(math.rad(-90),math.rad(-25),math.rad(0)), 0.5)
		swait()
		end
		ws = 50
		removeuseless:AddItem(g1,0.01)
		debounce = false
		attacking = false
		end
		end)

		mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='h' then
		if not levitate then return end
		if debounce then return end
		debounce = true
		attacking = true
		ws = 0
		appi = true
		coroutine.wrap(function()
		while appi do
		swait()
		if Root.Velocity.Magnitude < 2 and attacking == true then
		position = "Idle3"
		end
		end
		end)()
		coroutine.wrap(function()
		while appi do
		swait()
		settime = 0.05
		sine = sine + change
		if position == "Idle3" and attacking == true and appi == true then
		change = .4
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(-.2,.2,0) * CFrame.Angles(0,0,0),.1)
		LEFTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.8 - .1 * math.sin(sine/9), 0) * CFrame.Angles(math.rad(0), math.rad(0 + 3 * math.sin(sine/9)), math.rad(35 - 5 * math.sin(sine/9))), 0.4)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.4)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2.0,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10 + 2 * math.sin(sine/9))), 0.4)
		end
		end
		end)()
		coroutine.wrap(function()
		for i = 1, 20 do
		RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(0,math.rad(50),0),.3)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.1,1.3,1.1) * CFrame.Angles(math.rad(180),math.rad(-50),math.rad(0)), 0.3)
		swait()
		end
		end)()
		SOUND(LeftArm,1982011510,8,false,15)
		blackhole={}
		orbzfade={}
		xz = 0
		for i = 1, 220 do
		xz = xz + .009
		bigrmagic = Instance.new("Part",RightArm)
		bigrmagic.Material = "Neon"
		bigrmagic.CanCollide = false
		bigrmagic.Anchored = true
		bigrmagic.BrickColor = BrickColor.new(colors)
		bigrmagic.Size = Vector3.new(xz,xz,xz)
		bigrmagic.CFrame = rightlocation.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
		removeuseless:AddItem(bigrmagic,1)
		orbz = Instance.new("Part", Torso)
		orbz.Material = "Neon"
		orbz.BrickColor = BrickColor.new(colors)
		orbz.Size = Vector3.new(2,2,2)
		orbz.Anchored = true
		orbz.CanCollide = false
		removeuseless:AddItem(orbz,1)
		orbz.CFrame = rightlocation.CFrame * CFrame.new(math.random(-25,25),math.random(-25,25),math.random(-25,25)) * CFrame.Angles(math.rad(-180,180),math.rad(-180,180),math.rad(-180,180))
		table.insert(blackhole,orbz)
		table.insert(orbzfade,orbz)
		for i,v in pairs(blackhole) do
		v.Size = v.Size - Vector3.new(.1,.1,.1)
		v.CFrame = v.CFrame:lerp(CFrame.new(rightlocation.Position),.09)
		end
		for i,v in pairs(orbzfade) do
		v.Transparency = v.Transparency + 0.025
		end
		swait()
		end
		coroutine.wrap(function()
		for i = 1, 10 do
		for i,v in pairs(blackhole) do
		v.Size = v.Size + Vector3.new(.5,.5,.5)
		v.Transparency = v.Transparency + .1
		end
		swait()
		end
		for i,v in pairs(blackhole) do
		v:Remove()
		end
		clean()
		end)()
		charging = true
		coroutine.wrap(function()
		while charging do
		bigrmagic = Instance.new("Part",RightArm)
		bigrmagic.Material = "Neon"
		bigrmagic.CanCollide = false
		bigrmagic.Anchored = true
		bigrmagic.BrickColor = BrickColor.new(colors)
		bigrmagic.Size = Vector3.new(xz,xz,xz)
		bigrmagic.CFrame = rightlocation.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
		removeuseless:AddItem(bigrmagic,.2)
		swait()
		end
		end)()
		g1 = Instance.new("BodyGyro", Root)
		g1.D = 175
		g1.P = 20000
		g1.MaxTorque = Vector3.new(0,9000,0)
		BigFireBall:Play()
		for i = 1, 15 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10),math.rad(-15),math.rad(0)),.5)
		RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(14), math.rad(20), math.rad(-90)), 0.3)
		swait()
		end
		coroutine.wrap(function()
		for i = 1, 15 do
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(10),math.rad(15),math.rad(0)),.5)
		RIGHTARMLERP.C1 = CFrame.new(0,0,0)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,1,.5) * CFrame.Angles(math.rad(-90),math.rad(-25),math.rad(0)), 0.5)
		swait()
		end
		end)()
		charging = false
		local ballzor = Instance.new("Part",Torso)
		ballzor.Name = "ballzor"
		ballzor.Material = "Neon"
		ballzor.BrickColor = BrickColor.new("Really black")
		ballzor.CanCollide = false
		ballzor.Size = Vector3.new(xz,xz,xz)
		ballzor.Anchored = false
		ballzor.CFrame = Root.CFrame * CFrame.new(1,0,-5)
		ballzor.Shape = "Ball"
		removeuseless:AddItem(g1,.0001)
		zx = xz + .05
		coroutine.wrap(function()
		if firsttime5 then return end
		firsttime5 = true
		while true do
		swait()
		for i,v in pairs(Torso:GetChildren()) do
		if v.Name == "ballzor" then
		magicccc = Instance.new("Part",RightArm)
		magicccc.Material = "Neon"
		magicccc.CanCollide = false
		magicccc.Name = "magicccc"
		magicccc.Anchored = true
		magicccc.Transparency = 0
		magicccc.BrickColor = BrickColor.new(colors)
		magicccc.Size = Vector3.new(zx,zx,zx)
		magicccc.CFrame = v.CFrame * CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
		removeuseless:AddItem(magicccc,2)
		end
		end
		for i,v in pairs(RightArm:GetChildren()) do
		if v.Name == "magicccc" then
		v.Transparency = v.Transparency + 0.025
		end
		end
		end
		end)()
		ballzor.Touched:connect(function(hit)
		if hit.Name ~= "magicccc" then
		if bigball then return end
		bigball = true
		local explosionwave = Instance.new("Part",Torso) 
		explosionwave.Shape = "Ball"
		explosionwave.BrickColor = BrickColor.new("Really black")
		explosionwave.Anchored = true
		explosionwave.CanCollide = false
		explosionwave.Transparency = .2
		explosionwave.Material = "Neon"
		explosionwave.Size = Vector3.new(1,1,1)
		explosionwave.CFrame = ballzor.CFrame
		render = Instance.new("Sound",explosionwave)
		render.SoundId = "rbxassetid://2006635781"
		render.Volume = 10 * 10
		render:Play()
		local explosionwave2 = Instance.new("Part",Torso)
		explosionwave2.Shape = "Ball"
		explosionwave2.BrickColor = BrickColor.new("Really red")
		explosionwave2.Anchored = true
		explosionwave2.CanCollide = false
		explosionwave2.Material = "Neon"
		explosionwave2.Size = Vector3.new(.8,.8,.8)
		explosionwave2.CFrame = ballzor.CFrame
		deadlywave = Instance.new("Part", explosionwave)
		deadlywave.Size = Vector3.new(1,1,1)
		deadlywave.CanCollide = false
		deadlywave.Anchored = true
		deadlywave.Transparency = .5
		deadlywave.BrickColor = BrickColor.new("Really red")
		deadlywave.CFrame = CFrame.new(explosionwave.Position)
		deadlywavemesh = Instance.new("SpecialMesh", deadlywave)
		deadlywavemesh.Scale = Vector3.new(1,2,1)
		deadlywavemesh.MeshId = "rbxassetid://20329976"
		deadlywave2 = Instance.new("Part", explosionwave)
		deadlywave2.Size = Vector3.new(1,1,1)
		deadlywave2.CanCollide = false
		deadlywave2.Anchored = true
		deadlywave2.Transparency = .5
		deadlywave2.BrickColor = BrickColor.new("Really black")
		deadlywave2.CFrame = CFrame.new(explosionwave.Position)
		deadlywave2mesh = Instance.new("SpecialMesh", deadlywave2)
		deadlywave2mesh.Scale = Vector3.new(3,2,3)
		deadlywave2mesh.MeshId = "rbxassetid://20329976"
		deadlyring = Instance.new("Part", Torso)
		deadlyring.Size = Vector3.new(5, 5, 5)
		deadlyring.Transparency = 0.5
		deadlyring.BrickColor = BrickColor.new("Really black")
		deadlyring.Anchored = true
		deadlyring.CanCollide = false
		deadlyring.CFrame = deadlywave.CFrame * CFrame.Angles(math.rad(math.random(-180,180)), math.rad(math.random(-180,180)), math.rad(math.random(-180,180)))
		deadlyringh = Instance.new("SpecialMesh", deadlyring) 
		deadlyringh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
		deadlyringh.Scale = Vector3.new(8, 8, .1)
		deadlyring2 = Instance.new("Part", Torso)
		deadlyring2.Size = Vector3.new(5, 5, 5)
		deadlyring2.Transparency = 0.5
		deadlyring2.BrickColor = BrickColor.new("Really black")
		deadlyring2.Anchored = true
		deadlyring2.CanCollide = false
		deadlyring2.CFrame = deadlywave.CFrame * CFrame.Angles(math.rad(math.random(-180,180)), math.rad(math.random(-180,180)), math.rad(math.random(-180,180)))
		deadlyringh2 = Instance.new("SpecialMesh", deadlyring2) 
		deadlyringh2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
		deadlyringh2.Scale = Vector3.new(8, 8, .1)
		ballzor:Remove()
		bigball = false
		staybooming = true
		d = 5
		coroutine.wrap(function()
		while staybooming do
		Hit = damagealll(d,deadlywave.Position)
		for _,v in pairs(Hit) do			
		v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
		vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
		vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
		torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
		vel.velocity = CFrame.new(deadlywave.Position,torso.Position).lookVector*50
		removeuseless:AddItem(vel,.1)
		end
		wait(.1)
		end
		end)()
		for i = 1, 70 do
		d = d + 1
		deadlyringh2.Scale = deadlyringh2.Scale + Vector3.new(.5, .5, .1)
		deadlyringh.Scale = deadlyringh.Scale + Vector3.new(.5, .5, .1)
		deadlyring.CFrame = deadlyring.CFrame * CFrame.Angles(math.rad(0+7),math.rad(0-7),math.rad(0+7))
		deadlyring2.CFrame = deadlyring2.CFrame * CFrame.Angles(math.rad(0-7),math.rad(0+7),math.rad(0-7))
		deadlywave.CFrame = deadlywave.CFrame * CFrame.Angles(0,math.rad(0+7),0)
		deadlywave2.CFrame = deadlywave2.CFrame * CFrame.Angles(0,math.rad(0+4),0)
		deadlywavemesh.Scale = deadlywavemesh.Scale + Vector3.new(.4,0,.4)
		deadlywave2mesh.Scale = deadlywave2mesh.Scale + Vector3.new(.5,0,.5)
		explosionwave.Size = explosionwave.Size + Vector3.new(.5,.5,.5)
		explosionwave2.Size = explosionwave2.Size + Vector3.new(.5,.5,.5)
		swait()
		end
		for i = 1, 80 do
		d = d + 3
		hum.CameraOffset = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
		deadlyringh2.Scale = deadlyringh2.Scale + Vector3.new(4, 4, .2)
		deadlyringh.Scale = deadlyringh.Scale + Vector3.new(4, 4, .2)
		deadlyring.CFrame = deadlyring.CFrame * CFrame.Angles(math.rad(0+12),math.rad(0-12),math.rad(0+12))
		deadlyring2.CFrame = deadlyring2.CFrame * CFrame.Angles(math.rad(0-12),math.rad(0+12),math.rad(0-12))
		deadlywave.CFrame = deadlywave.CFrame * CFrame.Angles(0,math.rad(0+20),0)
		deadlywave2.CFrame = deadlywave2.CFrame * CFrame.Angles(0,math.rad(0+14),0)
		deadlywavemesh.Scale = deadlywavemesh.Scale + Vector3.new(3,2,3)
		deadlywave2mesh.Scale = deadlywave2mesh.Scale + Vector3.new(4,1,4)
		explosionwave.Size = explosionwave.Size + Vector3.new(4,4,4)
		explosionwave2.Size = explosionwave2.Size + Vector3.new(4,4,4)
		swait()
		end
		staybooming = false
		for i = 1, 20 do
		d = d + 3
		hum.CameraOffset = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
		deadlyringh2.Scale = deadlyringh2.Scale + Vector3.new(4, 4, .2)
		deadlyringh.Scale = deadlyringh.Scale + Vector3.new(4, 4, .2)
		deadlyring.CFrame = deadlyring.CFrame * CFrame.Angles(math.rad(0+12),math.rad(0-12),math.rad(0+12))
		deadlyring2.CFrame = deadlyring2.CFrame * CFrame.Angles(math.rad(0-12),math.rad(0+12),math.rad(0-12))
		deadlyring.Transparency = deadlyring.Transparency + .25
		deadlyring2.Transparency = deadlyring2.Transparency + .25
		deadlywave.CFrame = deadlywave.CFrame * CFrame.Angles(0,math.rad(0+20),0)
		deadlywave2.CFrame = deadlywave2.CFrame * CFrame.Angles(0,math.rad(0+14),0)
		deadlywavemesh.Scale = deadlywavemesh.Scale + Vector3.new(3,0,3)
		deadlywave2mesh.Scale = deadlywave2mesh.Scale + Vector3.new(4,0,4)
		deadlywave.Transparency = deadlywave.Transparency + .25
		deadlywave2.Transparency = deadlywave2.Transparency + .25
		explosionwave.Size = explosionwave.Size + Vector3.new(4,4,4)
		explosionwave2.Size = explosionwave2.Size + Vector3.new(4,4,4)
		explosionwave.Transparency = explosionwave.Transparency + 0.25
		explosionwave2.Transparency = explosionwave2.Transparency + 0.05
		swait()
		end
		hum.CameraOffset = Vector3.new(0,0,0)
		explosionwave:Remove()
		explosionwave2:Remove()
		end
		end)
		bov = Instance.new("BodyVelocity",ballzor)
		bov.maxForce = Vector3.new(99999,99999,99999)
		ballzor.CFrame = CFrame.new(ballzor.Position,mouse.Hit.p)
		bov.velocity = ballzor.CFrame.lookVector*200
		removeuseless:AddItem(ballzor,4)
		ws = 50
		attacking = false
		debounce = false
		appi = false
		end
		end)

		mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='j' then
		if not levitate then return end
		if debounce then return end
		debounce = true
		charging = true
		attacking = true
		downpress = false
		x = 1
		ws = 0
		g1 = Instance.new("BodyGyro", Root)
		g1.D = 175
		g1.P = 20000
		g1.MaxTorque = Vector3.new(0,9000,0)
		SOUND(RightArm,2014087015,8,false,3)
		coroutine.wrap(function()
		Charge = Instance.new("Sound",RightArm)
		Charge.SoundId = "rbxassetid://101153932"
		Charge.Looped = false
		Charge.Volume = 8
		Charge:Play()
		end)()
		appi = true
		coroutine.wrap(function()
		while appi do
		swait()
		if Root.Velocity.Magnitude < 2 and attacking == true then
		position = "Idle3"
		end
		end
		end)()
		coroutine.wrap(function()
		while appi do
		swait()
		settime = 0.05
		sine = sine + change
		if position == "Idle3" and attacking == true and appi == true then
		change = .4
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(-.2,.2,0) * CFrame.Angles(0,0,0),.1)
		LEFTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.8 - .1 * math.sin(sine/9), 0) * CFrame.Angles(math.rad(0), math.rad(0 + 3 * math.sin(sine/9)), math.rad(35 - 5 * math.sin(sine/9))), 0.4)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.4)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2.0,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10 + 2 * math.sin(sine/9))), 0.4)
		end
		end
		end)()
		for i = 1, 15 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10),math.rad(-15),math.rad(0)),.5)
		RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(14), math.rad(20), math.rad(-90)), 0.3)
		swait()
		end
		for i = 1, 3 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10),math.rad(-15),math.rad(0)),.5)
		RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(14), math.rad(20), math.rad(-90)), 0.3)
		x = x + .1
		blastborb = Instance.new("Part",Torso)
		blastborb.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
		blastborb.BrickColor = BrickColor.new(colors)
		blastborb.Anchored = true
		blastborb.Size = Vector3.new(10,10,10)
		blastborb.CanCollide = false
		blastborb.Material = "Neon"
		for i = 1, 5 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
		blastborb.Size = blastborb.Size - Vector3.new(1,1,1)
		swait()
		end
		blastborb:Remove()
		swait()
		end
		downpress = true
		while charging and x < 5  do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10),math.rad(-15),math.rad(0)),.5)
		RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(14), math.rad(20), math.rad(-90)), 0.3)
		x = x + .1
		blastborb = Instance.new("Part",Torso)
		blastborb.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
		blastborb.BrickColor = BrickColor.new(colors)
		blastborb.Anchored = true
		blastborb.Size = Vector3.new(10,10,10)
		blastborb.CanCollide = false
		blastborb.Material = "Neon"
		for i = 1, 5 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.4)
		blastborb.Size = blastborb.Size - Vector3.new(1,1,1)
		swait()
		end
		blastborb:Remove()
		swait()
		end
		coroutine.wrap(function()
		for i = 1, 20 do
		Charge.Volume = Charge.Volume - .5
		swait()
		end
		end)()
		local bigswoosh = Instance.new("Part",Torso)
		bigswoosh.Name = "bigswoosh"
		bigswoosh.CFrame = Root.CFrame * CFrame.new(1,0,-5)
		bigswoosh.Size = Vector3.new(1,1,1)
		bigswoosh.Material = "Neon"
		bigswoosh.Anchored = true
		bigswoosh.Transparency = 1
		bigswoosh.BrickColor = BrickColor.new("Really red")
		bigswoosh.CanCollide = false
		SOUND(bigswoosh,842332424,10,false,6)
		SOUND(bigswoosh,2017948224,10,false,6)
		SOUND(bigswoosh,138677306,10,false,4)
		coroutine.wrap(function()
		local loc1 = Instance.new("Part",bigswoosh)
		loc1.CFrame = bigswoosh.CFrame * CFrame.new(-3,0,0)
		loc1.Size = Vector3.new(2,2,2)
		loc1.Anchored = true
		loc1.Transparency = 1
		loc1.CanCollide = false
		local loc2 = Instance.new("Part",bigswoosh)
		loc2.CFrame = bigswoosh.CFrame * CFrame.new(3,0,0)
		loc2.Size = Vector3.new(2,2,2)
		loc2.Anchored = true
		loc2.Transparency = 1
		loc2.CanCollide = false
		n = 0
		nb = 0
		for i = 1, 125 do
		n = n + x
		nb = nb - x
		Hit = damagealll(n,bigswoosh.Position)
		for _,v in pairs(Hit) do
		if x > 4.5 then		
		v:FindFirstChildOfClass("Humanoid").Parent:BreakJoints()
		else	
		v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
		end
		vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
		vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
		torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
		vel.velocity = CFrame.new(bigswoosh.Position,torso.Position).lookVector*150
		removeuseless:AddItem(vel,.1)
		end
		local bigtrail = Instance.new("Part",LeftArm)
		bigtrail.Size = bigswoosh.Size
		bigtrail.BrickColor = BrickColor.new(colors)
		bigtrail.Anchored = true
		bigtrail.Material = "Neon"
		bigtrail.CFrame = bigswoosh.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
		bigtrail.CanCollide = false
		removeuseless:AddItem(bigtrail,2)
		local irritatedground = Instance.new("Part",Torso)
		irritatedground.Size = Vector3.new(n*1.5,1,3*x)
		irritatedground.BrickColor = BrickColor.new(colors)
		irritatedground.Material = "Neon"
		irritatedground.CFrame = bigswoosh.CFrame * CFrame.new(0,-6,0)
		irritatedground.CanCollide = false
		irritatedground.Anchored = true
		removeuseless:AddItem(irritatedground,10)
		local grassblocks = Instance.new("Part",Torso)
		grassblocks.Size = Vector3.new(n/2,n/2,n/2)
		grassblocks.Material = "Grass"
		grassblocks.Anchored = true
		grassblocks.Name = "grassblocks"
		grassblocks.BrickColor = BrickColor.new("Bright green")
		grassblocks.CFrame = loc1.CFrame * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
		removeuseless:AddItem(grassblocks,10)
		local grassblocks2 = Instance.new("Part",Torso)
		grassblocks2.Size = Vector3.new(n/2,n/2,n/2)
		grassblocks2.Material = "Grass"
		grassblocks2.Anchored = true
		grassblocks2.Name = "grassblocks2"
		grassblocks2.BrickColor = BrickColor.new("Bright green")
		grassblocks2.CFrame = loc2.CFrame * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
		removeuseless:AddItem(grassblocks2,10)
		bigswoosh.Size = bigswoosh.Size + Vector3.new(x,x,x)
		loc1.CFrame = bigswoosh.CFrame * CFrame.new(n,-3,0)
		loc2.CFrame = bigswoosh.CFrame * CFrame.new(nb,-3,0)
		bigswoosh.CFrame = bigswoosh.CFrame * CFrame.new(0,0,-3 - x)
		swait()
		end
		for i = 1, 20 do
		bigswoosh.CFrame = bigswoosh.CFrame * CFrame.new(0,0,-3)
		bigswoosh.Transparency = bigswoosh.Transparency + 0.05
		swait()
		end
		bigswoosh:Remove()
		end)()
		for i = 1, 50 do
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(10),math.rad(15),math.rad(0)),.5)
		RIGHTARMLERP.C1 = CFrame.new(0,0,0)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,1,.5) * CFrame.Angles(math.rad(-90),math.rad(-25),math.rad(0)), 0.5)
		swait()
		end
		ws = 50
		attacking = false
		debounce = false
		appi = false
		g1:Remove()
		end
		end)

		mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='k' then
		if not levitate then return end
		if debounce then return end
		debounce = true
		attacking = true
		charging = true
		appi = true
		coroutine.wrap(function()
		while appi do
		swait()
		if Root.Velocity.Magnitude < 2 and attacking == true then
		position = "Idle3"
		end
		end
		end)()
		coroutine.wrap(function()
		while appi do
		swait()
		settime = 0.05
		sine = sine + change
		if position == "Idle3" and attacking == true and appi == true then
		change = .4
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(-.2,.2,0) * CFrame.Angles(0,0,0),.1)
		LEFTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.8 - .1 * math.sin(sine/9), 0) * CFrame.Angles(math.rad(0), math.rad(0 + 3 * math.sin(sine/9)), math.rad(35 - 5 * math.sin(sine/9))), 0.4)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.4)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2.0,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10 + 2 * math.sin(sine/9))), 0.4)
		end
		end
		end)()
		ws = 0
		g1 = Instance.new("BodyGyro", Root)
		g1.D = 175
		g1.P = 20000
		g1.MaxTorque = Vector3.new(0,9000,0)
		g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
		for i = 1, 15 do
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.3)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)),.3)
		RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.3)
		swait()
		end
		r = 0
		for i = 1, 10 do
		r = r + .1
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.3)
		blass = Instance.new("Part",RightArm)
		blass.Size = Vector3.new(r,r,r)
		blass.Material = "Neon"
		blass.CFrame = rightlocation.CFrame * CFrame.new(0,-r/1.5,0) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
		blass.Anchored = true
		blass.CanCollide = false
		blass.BrickColor = BrickColor.new(colors)
		removeuseless:AddItem(blass,2)
		swait()
		end
		while r < 16 and charging == true do
		r = r + .1
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.3)
		blass = Instance.new("Part",RightArm)
		blass.Size = Vector3.new(r,r,r)
		blass.Material = "Neon"
		blass.CFrame = rightlocation.CFrame * CFrame.new(0,-r/1.5,0) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
		blass.Anchored = true
		blass.CanCollide = false
		blass.BrickColor = BrickColor.new(colors)
		removeuseless:AddItem(blass,2)
		swait()
		end
		local TheBeam = Instance.new("Part",RightArm)
		TheBeam.Name = "zebeam"
		TheBeam.Size = Vector3.new(1,1,1)
		TheBeam.Material = "Neon"
		TheBeam.Shape = "Cylinder"
		TheBeam.BrickColor = BrickColor.new("Really red")
		TheBeam.Anchored = true
		TheBeam.CanCollide = false
		ws = 12
		bemmo = Instance.new("Sound",RightArm)
		bemmo.SoundId = "rbxassetid://1910988873"
		bemmo.Volume = 8
		bemmo.Looped = false
		bemmo:Play()
		bemmo.TimePosition = 2
		for i = 1, 100 * r/3 do
		if r > 15 then
		hum.CameraOffset = Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-0,0))
		end
		g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.3)
		local blass = Instance.new("Part",RightArm)
		blass.Size = Vector3.new(r,r,r)
		blass.Material = "Neon"
		blass.CFrame = rightlocation.CFrame * CFrame.new(0,-r/1.5,0) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
		blass.Anchored = true
		blass.CanCollide = false
		blass.BrickColor = BrickColor.new(colors)
		removeuseless:AddItem(blass,2)
		local STARTPOS = blass.CFrame*CFrame.new(0,0,0).p
		local ENDHIT,ENDPOS = ray2(STARTPOS,mouse.Hit.p,650,Character)
		local DISTANCE = (STARTPOS - ENDPOS).magnitude
		TheBeam.CFrame = CFrame.new(STARTPOS,ENDPOS)*CFrame.new(0,0,-DISTANCE/2) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
		TheBeam.Size = Vector3.new(DISTANCE,r/math.random(1,2),r/math.random(1,2))
		boom = Instance.new("Part",RightArm)
		boom.Size = Vector3.new(r,r,r)
		boom.BrickColor = BrickColor.new(colors)
		boom.Anchored = true
		boom.CanCollide = false
		boom.Material = "Neon"
		boom.CFrame = CFrame.new(ENDPOS) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
		removeuseless:AddItem(boom,3)
		boom.Touched:connect(function(getbase)
		if hitdebounce then return end
		hitdebounce = true
		if getbase:IsA("Part") then
		damagedground = Instance.new("Part",RightArm)
		damagedground.Size = Vector3.new(.1,5+r,.1)
		damagedground.Material = "Neon"
		damagedground.CanCollide = false
		damagedground.BrickColor = BrickColor.new(colors)
		damagedground.Anchored = true
		damagedground.CFrame = boom.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
		removeuseless:AddItem(damagedground,2)
		wait(.1)
		hitdebounce = false
		end
		end)
		Hit = damagealll(r+3,boom.Position)
		for _,v in pairs(Hit) do	
		v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(0,0))
		vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
		vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
		torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
		vel.velocity = CFrame.new(boom.Position,torso.Position).lookVector*r
		removeuseless:AddItem(vel,.1)
		end
		swait()
		end
		removeuseless:AddItem(g1,.001)
		coroutine.wrap(function()
		for i = 1, 20 do
		bemmo.Volume = bemmo.Volume - 0.5
		blass.Transparency = blass.Transparency + 0.05
		TheBeam.Transparency = TheBeam.Transparency + 0.05
		swait()
		end
		bemmo:Remove()
		if r > 15 then
		hum.CameraOffset = Vector3.new(0,0,0)
		end
		blass:Remove()
		TheBeam:Remove()
		end)()
		ws = 50
		appi = false
		attacking = false
		debounce = false
		end
		end)

		mouse.KeyUp:connect(function(Press)
		Press=Press:lower()
		if Press=='j' then
		charging = false
		end
		end)

		mouse.KeyUp:connect(function(Press)
		Press=Press:lower()
		if Press=='k' then
		charging = false
		end
		end)

		doit = coroutine.wrap(function()
		while true do
		for _,v in pairs(Repeater) do
		v.Scale =  v.Scale + Vector3.new(1, 1, 1)
		end

		for _,v in pairs(openshocktable) do
		v.Scale =  v.Scale + Vector3.new(3, 3, 3)
		end

		for _,v in pairs(nonmeshRepeater) do
		v.Size =  v.Size + Vector3.new(2, 2, 2)
		end

		for _,v in pairs(Extreme) do
		v.Size =  v.Size + Vector3.new(6, 6, 6)
		end

		for _,v in pairs(LessSize) do
		v.Size = v.Size - Vector3.new(1, 1, 1)
		end

		for _,v in pairs(nonmeshRepeater2) do
		v.Transparency = v.Transparency + 0.05
		end

		for _,v in pairs(Repeater2) do
		v.Transparency = v.Transparency - 0.05
		end

		for _,v in pairs(th1) do
		v.CFrame = v.CFrame * CFrame.new(0,0+.3,0) * CFrame.Angles(0,math.rad(0+8),0)
		end

		for _,v in pairs(th2) do
		v.CFrame = v.CFrame * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(0+15),0)
		end

		for _,v in pairs(th3) do
		v.Scale = v.Scale + Vector3.new(2, 2, 2)
		end

		for _,v in pairs(th5) do
		v.Scale = v.Scale + Vector3.new(1, .1, 1)
		end

		for _,v in pairs(ExtremeM) do
		v.Size = v.Size + Vector3.new(8, 8, 8)
		end

		for _,v in pairs(m3) do
		v.Scale = v.Scale + Vector3.new(.2,.2,.2)
		end

		for _,v in pairs(ExtremeM2) do
		v.Size = v.Size - Vector3.new(2,2,2)
		end

		for _,v in pairs(keyYsize) do
		v.Scale = v.Scale + Vector3.new(8, 8, 1)
		end

		for _,v in pairs(th4) do
		v.Transparency = v.Transparency + 0.009
		v.Rotation = v.Rotation + Vector3.new(3,0,0)
		end

		for _,v in pairs(SlowlyFade) do
		v.Transparency = v.Transparency + 0.05
		end

		for _,v in pairs(keyYtransparency) do
		v.Transparency = v.Transparency + 0.05
		end

		for _,v in pairs(UpMover) do
		v.Position = v.Position + Vector3.new(0, 3, 0)
		end

		for _,v in pairs(ForwardMover) do
		v.CFrame = v.CFrame * CFrame.new(0, 0, 2.4 +(i/.1)) * CFrame.Angles(0, 0, math.rad(0))
		end

		for _,v in pairs(FadeIn) do
		v.Transparency = v.Transparency - .05
		end

		for _,v in pairs(signtransparency) do
		v.TextTransparency = v.TextTransparency + 0.025
		end

		for _,v in pairs(signmover) do
		v.StudsOffset = v.StudsOffset + Vector3.new(math.random(-2,2),.3,math.random(-2,2))
		end

		for _,v in pairs(signrotator) do
		v.Rotation = v.Rotation + 2
		end
		swait()
		end
		end)
		doit()
		t = 0

		mouse.KeyDown:connect(function(Press)
		Press=Press:lower()
		if Press=='0' then
		if levitate then return end
		shoov = true
		if debounce then return end
		ws = 50
		end
		end)

		mouse.KeyUp:connect(function(Press)
		Press=Press:lower()
		if Press=='0' then
		if levitate then return end
		shoov = false
		if debounce then return end
		ws = 10
		end
		end)


		local anims = coroutine.wrap(function()
		while true do
		settime = 0.05
		sine = sine + change
		if position == "Jump" and attacking == false then
		change = 1
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(-3),math.rad(-4)), 0.4)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.4,.1,-.2) * CFrame.Angles(math.rad(20),math.rad(3),math.rad(4)), 0.4)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.4)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.4)
		elseif position == "Jump2" and attacking == false and levitate then
		change = 1
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20 - 1 * math.sin(sine/9)), math.rad(0 + 0 * math.cos(sine/8)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(10 * math.cos(sine/10))), 0.3)
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.3)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.3)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - .1 * math.sin(sine/12)),math.rad(40 - .5 * math.sin(sine/12))), 0.3)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + .1 * math.sin(sine/12)),math.rad(-40 + .5 * math.sin(sine/12))), 0.3)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2.0 + .02 * math.sin(sine/9), 0.2 + .1 * math.sin(sine/9)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/9)), math.rad(20), math.rad(0)), 0.3)
		elseif position == "Falling" and attacking == false and levitate == false then
		change = 1
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.4)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(8), math.rad(4), math.rad(0)), 0.2)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(14), math.rad(-4), math.rad(0)), 0.2)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.2)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.2)
		elseif position == "Falling2" and attacking == false and levitate then
		change = 1
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20 - 1 * math.sin(sine/9)), math.rad(0 + 0 * math.cos(sine/8)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(10 * math.cos(sine/10))), 0.3)
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.3)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.3)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - .1 * math.sin(sine/12)),math.rad(40 - .5 * math.sin(sine/12))), 0.3)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + .1 * math.sin(sine/12)),math.rad(-40 + .5 * math.sin(sine/12))), 0.3)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2.0 + .02 * math.sin(sine/9), 0.2 + .1 * math.sin(sine/9)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/9)), math.rad(20), math.rad(0)), 0.3)
		elseif position == "Walking" and attacking == false and running == false then
		change = 1
		walking = true
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - .1 * math.sin(sine/12)),math.rad(40 - .5 * math.sin(sine/12))), 0.3)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + .1 * math.sin(sine/12)),math.rad(-40 + .5 * math.sin(sine/12))), 0.3)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(5 * math.cos(sine/7)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/10))), 0.3)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/8)/2.8, 0.2 - math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + RightLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/8)/2.8, 0.2 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + LeftLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.3)
		elseif position == "Idle" and attacking == false and running == false and not levitate then
		change = .5
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(25),math.rad(0)),.1)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - 1 * math.sin(sine/12)),math.rad(40 - 2 * math.sin(sine/12))), 0.1)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.1)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + 1 * math.sin(sine/12)),math.rad(-40 + 2 * math.sin(sine/12))), 0.1)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.1)
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.1)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.1)
		elseif position == "Idle2" and attacking == false and running == false then
		change = .75
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0 - 3 * math.sin(sine/9)),0,0),.1)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.1)
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(-.2,.2,0) * CFrame.Angles(0,0,0),.1)
		LEFTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
		RIGHTARMLERP.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,0,0)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.8 - .1 * math.sin(sine/9), 0) * CFrame.Angles(math.rad(0), math.rad(0 + 3 * math.sin(sine/9)), math.rad(35 - 5 * math.sin(sine/9))), 0.4)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.8 - .1 * math.sin(sine/9), 0) * CFrame.Angles(math.rad(0), math.rad(0 - 3 * math.sin(sine/9)), math.rad(-35 + 5 * math.sin(sine/9))), 0.4)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.4)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2.0,0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10 + 2 * math.sin(sine/9))), 0.4)
		elseif position == "Walking2" and attacking == false and running == false then
		ws = 50
		ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20 - 1 * math.sin(sine/9)), math.rad(0 + 0 * math.cos(sine/8)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(10 * math.cos(sine/10))), 0.3)
		LEFTLEGLERP.C1 = LEFTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,0,0),.3)
		RIGHTLEGLERP.C1 = RIGHTLEGLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),0,0),.3)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.6,-.5) * CFrame.Angles(math.rad(32),math.rad(5 - .1 * math.sin(sine/12)),math.rad(40 - .5 * math.sin(sine/12))), 0.3)
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(-.2,1.2,-.3),.3)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.6,-.5) * CFrame.Angles(math.rad(30),math.rad(-5 + .1 * math.sin(sine/12)),math.rad(-40 + .5 * math.sin(sine/12))), 0.3)
		LEFTARMLERP.C1 = LEFTARMLERP.C1:lerp(CFrame.new(.2,1.2,-.3),.3)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.54, 1.4 + .1 * math.sin(sine/9), .4) * CFrame.Angles(math.rad(9 + 2 * math.cos(sine/9)), math.rad(0), math.rad(0)), 0.3)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.54, 2.0 + .02 * math.sin(sine/9), 0.2 + .1 * math.sin(sine/9)) * CFrame.Angles(math.rad(25 + 5 * math.sin(sine/9)), math.rad(20), math.rad(0)), 0.3)
		elseif position == "Running" and attacking == false then
		change = 1
		RIGHTARMLERP.C1 = RIGHTARMLERP.C1:lerp(CFrame.new(1.24+.6*math.sin(sine/4)/1.4, 0.54, 0+0.8*math.sin(sine/4)) * CFrame.Angles(math.rad(6-140*math.sin(sine/4)/1.2), math.rad(0), math.rad(-20+70*math.sin(sine/4))), 0.3)
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
		
