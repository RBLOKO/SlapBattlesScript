local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "SlapBattles",
	LoadingTitle = "Rayfield Interface Suite",
	LoadingSubtitle = "by RBLOKO",
	KeySystem = false -- Set this to true to use our key system
})
	local SlapBattles = Window:CreateTab("Slap Battles", 4483362458)
	local Tycoon = SlapBattles:CreateSection("Tycoon")
	local ArenaTP = SlapBattles:CreateButton({
		Name = "Teleport to arena fighting place",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3231, 82.5, 393)
		end,
	})
	local PlaceTycoon = SlapBattles:CreateButton({
		Name = "Place Tycoon in arena place and teleport back",
		Callback = function()
			local prev = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(222.4, -14.7, -4)
			wait(0.1)
			game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':SetKeyDown('0x65')
            wait(0.3)
            game:GetService'VirtualUser':SetKeyUp('0x65')
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prev
		end,
	})
	local NoRootPart = SlapBattles:CreateButton({
		Name = "Destroy Root Part (no upgrades shown on you)",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.RootAttachment:Destroy()
		end,
	})
	local Keybind = SlapBattles:CreateKeybind({
	Name = "Self Destruct",
	CurrentKeybind = "Q",
	HoldToInteract = false,
	Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(SelfDestruct)
		fireclickdetector(game:GetService("Workspace")["ÅTycoon" .. game.Players.LocalPlayer.Character.Name].Destruct.ClickDetector)
	end
	})
	local AutoClick = SlapBattles:CreateToggle({
	Name = "Toggle AutoClick",
	CurrentValue = false,
	Flag = "Toggle5", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(AutoClickToggle)
		if AutoClickToggle == true then
			StartAutoClick = coroutine.create(function()
				while wait() do
					wait(0.1)
					fireclickdetector(game:GetService("Workspace")["ÅTycoon" .. game.Players.LocalPlayer.Character.Name].Click.ClickDetector) -- The function that takes place when the toggle is pressed
				end
			end)
		coroutine.resume(StartAutoClick)
		else
			coroutine.close(StartAutoClick)
		end
	end
	})
	local DestroyTycoon = SlapBattles:CreateInput({
	Name = "Destroy someone's tycoon",
	PlaceholderText = "Type here player name",
	RemoveTextAfterFocusLost = false,
	Callback = function(NameDestroy)
		fireclickdetector(game:GetService("Workspace")["ÅTycoon" .. NameDestroy].Destruct.ClickDetector)
	end
	})
	local MultipleDestroyTycoon = SlapBattles:CreateInput({
	Name = "Multiple click to destroy someone's tycoon",
	PlaceholderText = "Type here player name",
	RemoveTextAfterFocusLost = false,
	Callback = function(NameDestroy2)
		while NameDestroy2 ~= "" do
			wait(0.1)
			fireclickdetector(game:GetService("Workspace")["ÅTycoon" .. NameDestroy2].Destruct.ClickDetector)
		end
	end
	})
	local Main = SlapBattles:CreateSection("Main")
	local SlapplesFarm = SlapBattles:CreateToggle({
	Name = "Toggle Slapples Farm",
	CurrentValue = false,
	Flag = "Toggle4", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(SlappleFarmToggle)
		while wait() do
			if SlappleFarmToggle == false then break end
			for i, v in pairs(game:GetService("Workspace").Arena.island5.Slapples:GetDescendants()) do
				if v.Name == "TouchInterest" and v.Parent then
					if v.Parent == false then break end
					firetouchinterest(game.Players.LocalPlayer.Character.Torso, v.Parent, 0)
					break
				end
			end
		end
	end
	})
	local DestroyLighting = SlapBattles:CreateToggle({
	Name = "Toggle Destroy Lighting",
	CurrentValue = false,
	Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(DestroyLighting)
		while wait() do
			if DestroyLighting == false then break end
			for i, v in pairs(game:GetService("Lighting"):GetDescendants()) do
				if v.Parent then
					if v.Parent == false then break end
					v:Destroy()
					break
				end
			end
		end
	end
	})
	local RockMove = SlapBattles:CreateButton({
		Name = "Let you move when you are in rock form (invincibility)",
		Callback = function()
			game.Players.LocalPlayer.Character.rock.Weld:Destroy()
		end
	})
	local MoreSize = SlapBattles:CreateSlider({
	Name = "Increase Size of Glove",
	Range = {0, 100},
	Increment = 1,
	Suffix = "Size",
	CurrentValue = 0,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(SizeValue)
		game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Glove.Size = Vector3.new(SizeValue, SizeValue, SizeValue / 2)
	end
	})
	local BobFarm = SlapBattles:CreateToggle({
	Name = "Toggle Bob Farm CANT DISABLE!!!",
	CurrentValue = false,
	Flag = "Toggle3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(BobFarmToggle)
		if BobFarmToggle == true then
			StartBobFarm = coroutine.create(function()
				while wait() do
					game.Players.LocalPlayer.Character.HumanoidRootPart.Position = Vector3.new(-563.724, 329.832, 3.99025)
					wait(0.5)
					game:GetService'VirtualUser':CaptureController()
					game:GetService'VirtualUser':SetKeyDown('0x65')
					wait(0.3)
					game:GetService'VirtualUser':SetKeyUp('0x65')
					wait(0.1)
					game:GetService("ReplicatedStorage").HumanoidDied:FireServer(game.Players.LocalPlayer.Character, true)
					wait(5)
				end
			end)
			coroutine.resume(StartBobFarm)
		else
			coroutine.close(StartBobFarm)
		end
	end
	})
