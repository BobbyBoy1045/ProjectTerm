-- this was animated in nexo animator, cope about it.
IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 1
sine = 1
srv = game:GetService('RunService')

reanim = game.Players.LocalPlayer.Character.Rig
RJ = reanim.HumanoidRootPart.RootJoint
reanim.Animate:Destroy()
reanim.Humanoid.Animator:Destroy()
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
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
reanim.Humanoid.WalkSpeed = 40
reanim.Humanoid.JumpPower = 150

local jump = Instance.new("Sound", workspace.Camera)
jump.SoundId = "rbxassetid://2225157086"
game:GetService("UserInputService").JumpRequest:Connect(function()
	jump:Play() 
end)
game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
	jump:Destroy()
end)
coroutine.wrap(function()
while true do -- anim changer
if HumanDied then break end
sine = sine + speed
if Root.Velocity.y > 1 then -- jump

NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-360*math.cos(sine/20)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),0.+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),.1)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-90+0*math.cos(sine/13))),.1)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-360*math.cos(sine/20)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),0.+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),.1)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-90+0*math.cos(sine/13))),.1)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),1+0.2*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-4*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),-0.1+0*math.cos(sine/13))*ANGLES(RAD(94+0*math.cos(sine/13)),RAD(10+0*math.cos(sine/13)),RAD(-73+0*math.cos(sine/13))),.1)
LS.C0 = LS.C0:Lerp(CF(-1+0.01*math.cos(sine/13),0.5+0.04*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(67+0*math.cos(sine/13)),RAD(12+0*math.cos(sine/13)),RAD(67+0*math.cos(sine/13))),.1)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(0+5*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.1)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-0.9+0*math.cos(sine/13),-0.2+0*math.cos(sine/13))*ANGLES(RAD(0+-4*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13))),.1)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.1)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+-0.2*math.cos(sine/13))*ANGLES(RAD(5+7*math.cos(sine/4)),RAD(0+0*math.cos(sine/13)),RAD(0+-4*math.cos(sine/13))),.1)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+88*math.cos(sine/10)),RAD(0+74*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.1)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-89*math.cos(sine/10)),RAD(0+76*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.1)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-91*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(5+0*math.cos(sine/10))),.1)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+79*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-5+0*math.cos(sine/10))),.1)end
srv.RenderStepped:Wait()
end
end)()
