local v1 = game:GetService("ReplicatedStorage")
local v_u_2 = game:GetService("RunService")
local v3 = game:GetService("ContentProvider")
local v_u_4 = game:GetService("Debris")
local v_u_5 = game:GetService("Lighting")
local v_u_6 = game:GetService("TweenService")
local v_u_7 = game:GetService("SoundService")
local v_u_8 = game.Players.LocalPlayer
local v_u_9 = v1:WaitForChild("Effects"):WaitForChild("Assets")
local function v_u_12(p10)
	for _, v11 in pairs(p10:GetDescendants()) do
		if v11:IsA("ParticleEmitter") then
			v11:Emit(v11:GetAttribute("EmitCount"))
		end
	end
end
local function v_u_18(p13, _)
	-- upvalues: (copy) v_u_4, (copy) v_u_8
	local v14 = Instance.new("ScreenGui")
	v_u_4:AddItem(v14, 2)
	v14.Parent = v_u_8.PlayerGui
	v14.Name = "Impact"
	v14.IgnoreGuiInset = true
	local v15 = p13:Clone()
	v15.Parent = v14
	local v16 = 0
	local v17 = 1
	for _, _ in pairs(v15:GetChildren()) do
		v16 = v16 + 1
	end
	for _ = 1, v16 do
		v15:FindFirstChild(v17).Visible = true
		task.wait(0.02)
		v15:FindFirstChild(v17).Visible = false
		v17 = v17 + 1
	end
end
local function v_u_22(p19, p20)
	for _, v21 in pairs(p19:GetDescendants()) do
		if v21:IsA("ParticleEmitter") then
			v21.Enabled = p20
		end
	end
end
local function v_u_26(p23)
	if p23 then
		for _, v24 in pairs(workspace:WaitForChild("Map"):GetDescendants()) do
			if v24:IsA("BasePart") or (v24:IsA("Part") or v24:IsA("Texture")) then
				v24.Transparency = v24:GetAttribute("Transparency") or 0
			end
		end
	else
		for _, v25 in pairs(workspace:WaitForChild("Map"):GetDescendants()) do
			if v25:IsA("BasePart") or (v25:IsA("Part") or v25:IsA("Texture")) then
				v25:SetAttribute("Transparency", v25.Transparency)
				v25.Transparency = 1
			end
		end
	end
end
v1:WaitForChild("Effects").OnClientEvent:Connect(function(p27)
	-- upvalues: (copy) v_u_8, (copy) v_u_5, (copy) v_u_7, (copy) v_u_4, (copy) v_u_9, (copy) v_u_18, (copy) v_u_12, (copy) v_u_26, (copy) v_u_22, (copy) v_u_6, (copy) v_u_2
	if rawget(p27, "Effect") == "Fight for Present" then
		local v_u_28 = v_u_8.Character
		local v_u_29 = {}
		local v30 = Instance.new("ColorCorrectionEffect")
		v30.TintColor = Color3.new(1, 1, 1)
		v30.Saturation = 0
		v30.Parent = v_u_5
		table.insert(v_u_29, v30)
		task.spawn(function()
			-- upvalues: (ref) v_u_7, (ref) v_u_4, (ref) v_u_9, (copy) v_u_29, (copy) v_u_28, (ref) v_u_18, (ref) v_u_12, (ref) v_u_26, (ref) v_u_5, (ref) v_u_22, (ref) v_u_6, (ref) v_u_2
			local v31 = Instance.new("Sound")
			v31.Parent = v_u_7
			v31.Name = "Fight for Present"
			v31.SoundId = "rbxassetid://140445848067301"
			v31.TimePosition = 0.35
			v31.Volume = 1
			v31:Play()
			v_u_4:AddItem(v31, 40)
			local v_u_32 = v_u_9:WaitForChild("Arms"):Clone()
			local v33 = v_u_29
			table.insert(v33, v_u_32)
			v_u_4:AddItem(v_u_32, 3.89)
			v_u_32.Parent = workspace
			v_u_32:WaitForChild("HumanoidRootPart").Weld.Part0 = v_u_28:FindFirstChild("HumanoidRootPart")
			v_u_32:WaitForChild("Humanoid"):FindFirstChildOfClass("Animator"):LoadAnimation(v_u_32:WaitForChild("Animation")):Play()
			v_u_32:WaitForChild("Humanoid"):ApplyDescription(v_u_28:FindFirstChild("Humanoid"):GetAppliedDescription())
			v_u_32:WaitForChild("Right Arm").Transparency = 1
			v_u_32:WaitForChild("Left Arm").Transparency = 1
			task.delay(0.3700000000000001, function()
				-- upvalues: (copy) v_u_32
				v_u_32:WaitForChild("Right Arm").Transparency = 0
				v_u_32:WaitForChild("Left Arm").Transparency = 0
			end)
			task.delay(2.94, function()
				-- upvalues: (ref) v_u_18, (ref) v_u_9
				v_u_18(v_u_9:WaitForChild("Impact"):WaitForChild("Clap"))
			end)
			task.delay(2.97, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_12
				local v34 = v_u_9:WaitForChild("Particles"):WaitForChild("clap"):Clone()
				local v35 = v_u_29
				table.insert(v35, v34)
				v_u_4:AddItem(v34, 2)
				v34.Parent = workspace
				local v36 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v37, v38 = CFrame.new(-0.0912151337, 0.946304321, -1.97792864, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				local v39 = Instance.new("Weld")
				v39.Parent = v34
				v39.Part0 = v36
				v39.Part1 = v34
				if v37 then
					v39.C0 = v37
				end
				if v38 then
					v39.C1 = v38
				end
				v_u_12(v34)
				local v40 = v_u_9:WaitForChild("Particles"):WaitForChild("clapeye"):Clone()
				local v41 = v_u_29
				table.insert(v41, v40)
				v_u_4:AddItem(v40, 1.3)
				v40.Parent = workspace
				local v42 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v43, v44 = CFrame.new(-0.0796251297, 1.20327759, -0.706822872, 0.999827504, 0.00605888152, -0.0175579656, 0.00798714533, 0.713186622, 0.700928688, 0.016768951, -0.700948, 0.713015199)
				local v45 = Instance.new("Weld")
				v45.Parent = v40
				v45.Part0 = v42
				v45.Part1 = v40
				if v43 then
					v45.C0 = v43
				end
				if v44 then
					v45.C1 = v44
				end
				v_u_12(v40)
				local v46 = v_u_9:WaitForChild("Particles"):WaitForChild("clap_mesh"):Clone()
				local v47 = v_u_29
				table.insert(v47, v46)
				v_u_4:AddItem(v46, 16)
				for _, v48 in pairs(v46:GetChildren()) do
					v48:PivotTo(v_u_28:FindFirstChild("HumanoidRootPart").CFrame * v48:GetAttribute("Offset"))
					local v49 = {
						["Part"] = v48.Start
					}
					require(v_u_9:WaitForChild("MeshEmit"))(v49.Part)
				end
			end)
			task.delay(3.9, function()
				-- upvalues: (ref) v_u_26, (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28
				v_u_26(false)
				local v50 = v_u_9:WaitForChild("Particles"):WaitForChild("firstdance"):Clone()
				local v51 = v_u_29
				table.insert(v51, v50)
				v_u_4:AddItem(v50, 1.6)
				v50.Parent = workspace
				v50:PivotTo(v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-1.81264305, 1.46149445, 0.394782066, 0, 0, -1, 0, 1, 0, 1, 0, 0))
			end)
			task.delay(5.1, function()
				-- upvalues: (ref) v_u_18, (ref) v_u_9
				v_u_18(v_u_9:WaitForChild("Impact"):WaitForChild("Dance"))
			end)
			task.delay(5.35, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_5, (ref) v_u_28, (ref) v_u_22
				local v52 = v_u_9:WaitForChild("Particles"):WaitForChild("Sky"):Clone()
				local v53 = v_u_29
				table.insert(v53, v52)
				v_u_4:AddItem(v52, 20.1)
				v52.Parent = v_u_5
				local v_u_54 = v_u_9:WaitForChild("Particles"):WaitForChild("worldlines"):Clone()
				local v55 = v_u_29
				table.insert(v55, v_u_54)
				v_u_4:AddItem(v_u_54, 7)
				v_u_54.Parent = workspace
				local v56 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v57, v58 = CFrame.new(-0.0912151337, -2.4837203, 0.1297369, 1, 0, 0, 0, 1, 0, 0, 0, 1)
				local v59 = Instance.new("Weld")
				v59.Parent = v_u_54
				v59.Part0 = v56
				v59.Part1 = v_u_54
				if v57 then
					v59.C0 = v57
				end
				if v58 then
					v59.C1 = v58
				end
				task.delay(4.72, function()
					-- upvalues: (ref) v_u_22, (copy) v_u_54
					v_u_22(v_u_54, true)
				end)
			end)
			task.delay(7.04, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_12
				local v60 = v_u_9:WaitForChild("Particles"):WaitForChild("step1_mesh"):Clone()
				local v61 = v_u_29
				table.insert(v61, v60)
				v_u_4:AddItem(v60, 2)
				for _, v62 in pairs(v60:GetChildren()) do
					v62:PivotTo(v_u_28:FindFirstChild("HumanoidRootPart").CFrame * v62:GetAttribute("Offset"))
					local v63 = {
						["Part"] = v62.Start
					}
					require(v_u_9:WaitForChild("MeshEmit"))(v63.Part)
				end
				local v64 = v_u_9:WaitForChild("Particles"):WaitForChild("step1"):Clone()
				local v65 = v_u_29
				table.insert(v65, v64)
				v_u_4:AddItem(v64, 2)
				v64.Parent = workspace
				local v66 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v67, v68 = CFrame.new(-0.691906929, -2.64651823, -1.35137653, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				local v69 = Instance.new("Weld")
				v69.Parent = v64
				v69.Part0 = v66
				v69.Part1 = v64
				if v67 then
					v69.C0 = v67
				end
				if v68 then
					v69.C1 = v68
				end
				v_u_12(v64)
			end)
			task.delay(7.45, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_12
				local v70 = v_u_9:WaitForChild("Particles"):WaitForChild("step2_mesh"):Clone()
				local v71 = v_u_29
				table.insert(v71, v70)
				v_u_4:AddItem(v70, 2)
				for _, v72 in pairs(v70:GetChildren()) do
					v72:PivotTo(v_u_28:FindFirstChild("HumanoidRootPart").CFrame * v72:GetAttribute("Offset"))
					local v73 = {
						["Part"] = v72.Start
					}
					require(v_u_9:WaitForChild("MeshEmit"))(v73.Part)
				end
				local v74 = v_u_9:WaitForChild("Particles"):WaitForChild("step2"):Clone()
				local v75 = v_u_29
				table.insert(v75, v74)
				v_u_4:AddItem(v74, 2)
				v74.Parent = workspace
				local v76 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v77, v78 = CFrame.new(-0.0991678238, -2.64651823, -1.63330889, 0.521854937, 0.251949728, -0.814977825, -0.135864154, 0.967740357, 0.212178215, 0.842145145, 0, 0.53925097)
				local v79 = Instance.new("Weld")
				v79.Parent = v74
				v79.Part0 = v76
				v79.Part1 = v74
				if v77 then
					v79.C0 = v77
				end
				if v78 then
					v79.C1 = v78
				end
				v_u_12(v74)
			end)
			task.delay(7.75, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_6
				local v_u_80 = v_u_9:WaitForChild("Particles"):WaitForChild("spinnything"):Clone()
				local v81 = v_u_29
				table.insert(v81, v_u_80)
				v_u_4:AddItem(v_u_80, 2)
				v_u_80.Parent = workspace
				local v82 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v83, v84 = CFrame.new(-0.109651566, 1.47435951, 19.2885284, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				local v85 = Instance.new("Weld")
				v85.Parent = v_u_80
				v85.Part0 = v82
				v85.Part1 = v_u_80
				if v83 then
					v85.C0 = v83
				end
				if v84 then
					v85.C1 = v84
				end
				local v86 = {
					["C0"] = CFrame.new(-0.136544228, -2.17523384, -2.07586956, -0.190499097, -1.08160328e-10, 0.981687367, 7.8555086e-11, 0.99999994, 1.25421798e-10, -0.981687367, 1.0100927e-10, -0.190499097)
				}
				v_u_6:Create(v_u_80:FindFirstChildOfClass("Weld"), TweenInfo.new(0.20999999999999996, Enum.EasingStyle.Linear), v86):Play()
				task.delay(0.20999999999999996, function()
					-- upvalues: (ref) v_u_6, (copy) v_u_80
					v_u_6:Create(v_u_80:FindFirstChildOfClass("Weld"), TweenInfo.new(0.14999999999999947, Enum.EasingStyle.Linear), {
						["C0"] = CFrame.new(-0.136544228, -2.17523384, -2.07586956, -0.626796424, -1.08163499e-10, -0.77918309, -1.46502588e-10, 0.999999881, -2.0965861e-11, 0.77918309, 1.01010991e-10, -0.626796424)
					}):Play()
					task.delay(0.14999999999999947, function()
						-- upvalues: (ref) v_u_6, (ref) v_u_80
						v_u_6:Create(v_u_80:FindFirstChildOfClass("Weld"), TweenInfo.new(0.11000000000000121, Enum.EasingStyle.Linear), {
							["C0"] = CFrame.new(-0.136544228, -2.17523384, -2.07586956, 0.0928031504, -1.08163499e-10, -0.995684505, -9.05371958e-11, 0.999999881, -1.17070895e-10, 0.995684505, 1.01010991e-10, 0.0928031504)
						}):Play()
						task.delay(0.11000000000000121, function()
							-- upvalues: (ref) v_u_6, (ref) v_u_80
							v_u_6:Create(v_u_80:FindFirstChildOfClass("Weld"), TweenInfo.new(0.1399999999999988, Enum.EasingStyle.Linear), {
								["C0"] = CFrame.new(-0.136544228, -2.17523384, -2.07586956, 0.987644255, -1.0816311e-10, -0.156712592, 9.09969738e-11, 0.999999881, -1.16713583e-10, 0.156712592, 1.01011088e-10, 0.987644255)
							}):Play()
							task.delay(0.1399999999999988, function()
								-- upvalues: (ref) v_u_6, (ref) v_u_80
								v_u_6:Create(v_u_80:FindFirstChildOfClass("Weld"), TweenInfo.new(0.120000000000001, Enum.EasingStyle.Linear), {
									["C0"] = CFrame.new(-0.136544228, -2.17523384, -2.07586956, 0.987644255, -1.0816311e-10, -0.156712592, 9.09969738e-11, 0.999999881, -1.16713583e-10, 0.156712592, 1.01011088e-10, 0.987644255)
								}):Play()
							end)
						end)
					end)
				end)
				v_u_6:Create(v_u_80, TweenInfo.new(0.8699999999999992, Enum.EasingStyle.Linear), {
					["Size"] = Vector3.new(3.27399, 2.66599, 3.157)
				}):Play()
				v_u_6:Create(v_u_80, TweenInfo.new(0.33000000000000007, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					["Transparency"] = 0.9
				}):Play()
			end)
			task.delay(7.9, function()
				-- upvalues: (ref) v_u_18, (ref) v_u_9
				v_u_18(v_u_9:WaitForChild("Impact"):WaitForChild("Swirl"))
			end)
			task.delay(11.28, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_22
				local v_u_87 = v_u_9:WaitForChild("Particles"):WaitForChild("armlines"):Clone()
				local v88 = v_u_29
				table.insert(v88, v_u_87)
				v_u_4:AddItem(v_u_87, 4)
				v_u_87.Parent = workspace
				local v89 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v90, v91 = CFrame.new(-0.38240242, 0.795518875, -0.25001812, -0.524851739, 0.785919487, 0.326897442, -0.0262303874, 0.368925214, -0.929083824, -0.850792348, -0.496207923, -0.1730178)
				local v92 = Instance.new("Weld")
				v92.Parent = v_u_87
				v92.Part0 = v89
				v92.Part1 = v_u_87
				if v90 then
					v92.C0 = v90
				end
				if v91 then
					v92.C1 = v91
				end
				v_u_22(v_u_87, true)
				task.delay(0.95, function()
					-- upvalues: (ref) v_u_22, (copy) v_u_87
					v_u_22(v_u_87, false)
				end)
			end)
			task.delay(12, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_6
				local v93 = v_u_9:WaitForChild("Particles"):WaitForChild("randomBlackSky"):Clone()
				local v94 = v_u_29
				table.insert(v94, v93)
				v_u_4:AddItem(v93, 2.4)
				v93.Parent = workspace
				local v95 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v96 = Instance.new("Weld")
				v96.Parent = v93
				v96.Part0 = v95
				v96.Part1 = v93
				v_u_6:Create(v93, TweenInfo.new(0.19), {
					["Transparency"] = 0
				}):Play()
			end)
			task.delay(12.23, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_12
				local v97 = v_u_9:WaitForChild("Particles"):WaitForChild("minihit"):Clone()
				local v98 = v_u_29
				table.insert(v98, v97)
				v_u_4:AddItem(v97, 3)
				v97.Parent = workspace
				local v99 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v100, v101 = CFrame.new(-0.0912151337, 0.613194942, -1.40419436, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				local v102 = Instance.new("Weld")
				v102.Parent = v97
				v102.Part0 = v99
				v102.Part1 = v97
				if v100 then
					v102.C0 = v100
				end
				if v101 then
					v102.C1 = v101
				end
				v_u_12(v97)
			end)
			task.delay(12.69, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_12
				local v103 = v_u_9:WaitForChild("Particles"):WaitForChild("crackhit_mesh"):Clone()
				local v104 = v_u_29
				table.insert(v104, v103)
				v_u_4:AddItem(v103, 2)
				for _, v105 in pairs(v103:GetChildren()) do
					v105:PivotTo(v_u_28:FindFirstChild("HumanoidRootPart").CFrame * v105:GetAttribute("Offset"))
					local v106 = {
						["Part"] = v105.Start
					}
					require(v_u_9:WaitForChild("MeshEmit"))(v106.Part)
				end
				local v107 = v_u_9:WaitForChild("Particles"):WaitForChild("HUGECRACKS"):Clone()
				local v108 = v_u_29
				table.insert(v108, v107)
				v_u_4:AddItem(v107, 5)
				v107.Parent = workspace
				local v109 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v110, v111 = CFrame.new(-0.0912151337, 19.4719257, -3.09562588, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				local v112 = Instance.new("Weld")
				v112.Parent = v107
				v112.Part0 = v109
				v112.Part1 = v107
				if v110 then
					v112.C0 = v110
				end
				if v111 then
					v112.C1 = v111
				end
				v_u_12(v107)
			end)
			task.delay(12.72, function()
				-- upvalues: (ref) v_u_18, (ref) v_u_9
				v_u_18(v_u_9:WaitForChild("Impact"):WaitForChild("Wall"))
			end)
			task.delay(13.83, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_6
				local v113 = v_u_9:WaitForChild("Particles"):WaitForChild("wallprepare_mesh"):Clone()
				local v114 = v_u_29
				table.insert(v114, v113)
				v_u_4:AddItem(v113, 2)
				for _, v115 in pairs(v113:GetChildren()) do
					v115:PivotTo(v_u_28:FindFirstChild("HumanoidRootPart").CFrame * v115:GetAttribute("Offset"))
					local v116 = {
						["Part"] = v115.Start
					}
					require(v_u_9:WaitForChild("MeshEmit"))(v116.Part)
				end
				local v_u_117 = v_u_9:WaitForChild("Particles"):WaitForChild("cracksmall"):Clone()
				local v118 = v_u_29
				table.insert(v118, v_u_117)
				v_u_4:AddItem(v_u_117, 6)
				v_u_117.Parent = workspace
				local v119 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v120, v121 = CFrame.new(-0.416402817, 1.22890615, -1.42254686, -1, 0, 0, 0, 0, 1, 0, 1, 0)
				local v122 = Instance.new("Weld")
				v122.Parent = v_u_117
				v122.Part0 = v119
				v122.Part1 = v_u_117
				if v120 then
					v122.C0 = v120
				end
				if v121 then
					v122.C1 = v121
				end
				local v123 = {
					["C0"] = CFrame.new(-0.416402817, 1.22890615, -1.42254686, -0.991819322, 0, 0.127649695, 0.127649695, 0, 0.991819322, 0, 1, 0)
				}
				v_u_6:Create(v_u_117:FindFirstChildOfClass("Weld"), TweenInfo.new(0.4399999999999995, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), v123):Play()
				v_u_117:WaitForChild("crackepichighlight").Adornee = v_u_117
				v_u_117:WaitForChild("crackepichighlight").FillTransparency = 1
				v_u_117:WaitForChild("crackepichighlight").OutlineTransparency = 1
				v_u_6:Create(v_u_117:WaitForChild("crackepichighlight"), TweenInfo.new(0.3200000000000003, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
					["FillTransparency"] = 0,
					["OutlineTransparency"] = 0
				}):Play()
				task.delay(0.3200000000000003, function()
					-- upvalues: (ref) v_u_6, (copy) v_u_117
					v_u_6:Create(v_u_117:WaitForChild("crackepichighlight"), TweenInfo.new(0.3200000000000003, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						["FillTransparency"] = 1,
						["OutlineTransparency"] = 1
					}):Play()
				end)
				local v124 = {
					["OutlineColor"] = Color3.fromRGB(38, 202, 255)
				}
				v_u_6:Create(v_u_117:WaitForChild("crackepichighlight"), TweenInfo.new(0.05000000000000071, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), v124):Play()
				task.delay(0.15000000000000036, function()
					-- upvalues: (ref) v_u_6, (copy) v_u_117
					v_u_6:Create(v_u_117:WaitForChild("crackepichighlight"), TweenInfo.new(0.02999999999999936, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						["OutlineColor"] = Color3.fromRGB(159, 86, 255)
					}):Play()
				end)
				task.delay(0.02999999999999936, function()
					-- upvalues: (ref) v_u_6, (copy) v_u_117
					v_u_6:Create(v_u_117:WaitForChild("crackepichighlight"), TweenInfo.new(0.120000000000001, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						["OutlineColor"] = Color3.fromRGB(255, 255, 255)
					}):Play()
				end)
				task.delay(0.3800000000000008, function()
					-- upvalues: (ref) v_u_6, (copy) v_u_117
					v_u_6:Create(v_u_117, TweenInfo.new(0.0799999999999983, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						["Color"] = Color3.fromRGB(125, 178, 181)
					}):Play()
				end)
				task.delay(0.5, function()
					-- upvalues: (ref) v_u_6, (copy) v_u_117
					v_u_6:Create(v_u_117, TweenInfo.new(0.09999999999999964, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						["Transparency"] = 1
					}):Play()
				end)
			end)
			task.delay(14.31, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28
				local v_u_125 = v_u_9:WaitForChild("Particles"):WaitForChild("hardhitmodel"):Clone()
				local v126 = v_u_29
				table.insert(v126, v_u_125)
				v_u_4:AddItem(v_u_125, 60)
				v_u_125.Parent = workspace
				v_u_125:PivotTo(v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-1.299716, -7.25065041, -28.292923, -0.987198532, -1.30708227e-15, -0.159503743, 0.159503743, -1.67672984e-14, -0.987198532, -1.38409048e-15, -1, 1.67611371e-14))
				task.delay(0.9000000000000004, function()
					-- upvalues: (copy) v_u_125
					for _, v127 in pairs(v_u_125:GetChildren()) do
						if v127:IsA("BasePart") or v127:IsA("Part") then
							v127.Transparency = 1
							if v127 then
								v127:Destroy()
							end
						end
					end
				end)
			end)
			task.delay(14.98, function()
				-- upvalues: (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_6
				local v_u_128 = Instance.new("Highlight")
				local v129 = v_u_29
				table.insert(v129, v_u_128)
				v_u_4:AddItem(v_u_128, 10)
				v_u_128.Parent = v_u_28
				v_u_128.DepthMode = Enum.HighlightDepthMode.Occluded
				v_u_128.FillColor = Color3.fromRGB(254, 254, 254)
				v_u_128.OutlineColor = Color3.fromRGB(255, 255, 255)
				v_u_128.FillTransparency = 1
				v_u_128.OutlineTransparency = 1
				v_u_6:Create(v_u_128, TweenInfo.new(0.1), {
					["FillTransparency"] = 0
				}):Play()
				task.delay(4.090000000000002, function()
					-- upvalues: (copy) v_u_128
					v_u_128.FillTransparency = 1
				end)
				task.delay(0.3899999999999988, function()
					-- upvalues: (ref) v_u_6, (copy) v_u_128
					v_u_6:Create(v_u_128, TweenInfo.new(0.4900000000000002), {
						["FillColor"] = Color3.fromRGB(255, 157, 157)
					}):Play()
					task.delay(0.4900000000000002, function()
						-- upvalues: (ref) v_u_6, (ref) v_u_128
						v_u_6:Create(v_u_128, TweenInfo.new(0.8900000000000006), {
							["FillColor"] = Color3.fromRGB(230, 174, 174)
						}):Play()
						task.delay(0.8900000000000006, function()
							-- upvalues: (ref) v_u_6, (ref) v_u_128
							v_u_6:Create(v_u_128, TweenInfo.new(0.5300000000000011), {
								["FillColor"] = Color3.fromRGB(255, 255, 255)
							}):Play()
						end)
					end)
				end)
			end)
			task.delay(15.25, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_2, (ref) v_u_6
				local v_u_130 = v_u_9:WaitForChild("Particles"):WaitForChild("Model"):Clone()
				local v131 = v_u_29
				table.insert(v131, v_u_130)
				v_u_4:AddItem(v_u_130, 4.5)
				v_u_130.Parent = workspace
				local v_u_132 = Instance.new("CFrameValue")
				v_u_132.Value = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(1.26161575, -53.1743622, 9.97895527, 0, -0, -1.00000393, 0.98522085, -0.171311006, 0, -0.171311915, -0.985215664, 0)
				local v_u_133 = nil
				v_u_133 = v_u_2.PreRender:Connect(function()
					-- upvalues: (copy) v_u_130, (ref) v_u_133, (copy) v_u_132
					if v_u_130 then
						v_u_130:PivotTo(v_u_132.Value)
					else
						v_u_133:Disconnect()
					end
				end)
				v_u_130:PivotTo(v_u_132.Value)
				local v134 = {
					["Value"] = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0.0261507034, 1.97794485, 1.09336567, -0.99452579, -1.30671111e-7, -0.10449867, 0.10449136, -0.011827169, -0.994456232, -0.00123579369, -0.999929905, 0.0117624402)
				}
				v_u_6:Create(v_u_132, TweenInfo.new(0.01), v134):Play()
				task.wait(0.01)
				local v135 = {
					["Value"] = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0.0261507034, 1.55907345, 1.09336567, 0.495527089, 1.48842588e-7, 0.868593931, -0.868532956, -0.0118274475, 0.495492548, 0.0102731306, -0.999930203, -0.00586063368)
				}
				v_u_6:Create(v_u_132, TweenInfo.new(0.5), v135):Play()
				task.delay(0.5, function()
					-- upvalues: (ref) v_u_6, (copy) v_u_132, (ref) v_u_28
					v_u_6:Create(v_u_132, TweenInfo.new(0.5600000000000005), {
						["Value"] = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-0.223700523, 1.7627697, 1.09336567, 0.678303599, -2.5242133e-7, -0.734787881, 0.734735429, -0.0118275629, 0.678256333, -0.00869043078, -0.99993372, -0.00802260078)
					}):Play()
					task.delay(0.5600000000000005, function()
						-- upvalues: (ref) v_u_6, (ref) v_u_132, (ref) v_u_28
						v_u_6:Create(v_u_132, TweenInfo.new(0.7100000000000009), {
							["Value"] = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0.0261507034, 1.70400667, 1.09336567, -0.921778083, -1.57533151e-7, -0.387726992, 0.387699991, -0.0118270721, -0.921714723, -0.00458492991, -0.9999336, 0.0109018274)
						}):Play()
						task.delay(0.7100000000000009, function()
							-- upvalues: (ref) v_u_6, (ref) v_u_132, (ref) v_u_28
							v_u_6:Create(v_u_132, TweenInfo.new(0.02), {
								["Value"] = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0.0261507034, 1.70400667, 1.09336567, -0.92177546, -8.33991692e-7, -0.387726068, 0.387698978, -0.011826803, -0.921710968, -0.00458479207, -0.999929905, 0.010901982)
							}):Play()
							task.wait(0.02)
							v_u_6:Create(v_u_132, TweenInfo.new(0.01), {
								["Value"] = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0.0261507034, -8.87305641, -30.1873474, -0.921778083, -6.4446931e-7, -0.387727261, 0.387700289, -0.0118270451, -0.921714544, -0.00458455551, -0.99993372, 0.0109019149)
							}):Play()
						end)
					end)
				end)
			end)
			task.delay(15.25, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_6
				local v_u_136 = v_u_9:WaitForChild("Particles"):WaitForChild("sping"):Clone()
				local v137 = v_u_29
				table.insert(v137, v_u_136)
				v_u_4:AddItem(v_u_136, 4.5)
				v_u_136.Parent = workspace
				local v138 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v139, v140 = CFrame.new(-0.296974182, -19.3788738, -5.40980244, 0, 0, -1, -0.99999994, -3.57627869e-7, 0, -3.57627869e-7, 0.99999994, 0)
				local v141 = Instance.new("Weld")
				v141.Parent = v_u_136
				v141.Part0 = v138
				v141.Part1 = v_u_136
				if v139 then
					v141.C0 = v139
				end
				if v140 then
					v141.C1 = v140
				end
				task.wait(0.01)
				v_u_136:FindFirstChildOfClass("Weld").C0 = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-0.296974182, 1.88977861, 35.4077911, -0.457870096, -5.64026712e-22, -0.889019132, -0.889019132, -2.32698629e-21, 0.457870096, -2.32698629e-21, 1, 5.64026712e-22)
				local v142 = {
					["C0"] = CFrame.new(-0.296974182, 1.88977861, 35.4077911, 0.964744449, 0, -0.263188422, -0.263188422, 0, -0.964744449, 0, 1, 0)
				}
				v_u_6:Create(v_u_136:FindFirstChildOfClass("Weld"), TweenInfo.new(0.5), v142):Play()
				v_u_6:Create(v_u_136:FindFirstChildOfClass("Weld"), TweenInfo.new(0.5600000000000005), {
					["C0"] = CFrame.new(-0.296974182, 1.88977861, 35.4077911, 0.214120761, 0, 0.976807237, 0.976807237, 0, -0.214120761, 0, 1, 0)
				}):Play()
				task.delay(0.5600000000000005, function()
					-- upvalues: (ref) v_u_6, (copy) v_u_136
					v_u_6:Create(v_u_136:FindFirstChildOfClass("Weld"), TweenInfo.new(0.7100000000000009), {
						["C0"] = CFrame.new(-0.296974182, 1.88977861, 35.4077911, -0.856208384, 1.50332454e-7, 0.516630888, 0.516630888, 1.11846887e-7, 0.856208384, 7.09323231e-8, 1, -1.73430607e-7)
					}):Play()
					task.delay(0.7100000000000009, function()
						-- upvalues: (ref) v_u_6, (ref) v_u_136
						task.wait(0.02)
						v_u_6:Create(v_u_136:FindFirstChildOfClass("Weld"), TweenInfo.new(0.02), {
							["C0"] = CFrame.new(-0.296974182, 1.88977861, 35.4077911, -0.856208384, 1.50332454e-7, 0.516630888, 0.516630888, 1.11846887e-7, 0.856208384, 7.09323231e-8, 1, -1.73430607e-7)
						}):Play()
						task.wait(0.02)
						v_u_6:Create(v_u_136:FindFirstChildOfClass("Weld"), TweenInfo.new(0.02), {
							["C0"] = CFrame.new(-0.296974182, -9.81704712, -73.0033417, -0.856208384, 1.50332454e-7, 0.516630888, 0.516630888, 1.11846887e-7, 0.856208384, 7.09323231e-8, 1, -1.73430607e-7)
						}):Play()
						task.wait(4.030000000000001)
					end)
				end)
			end)
			task.delay(15.27, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_6
				local v_u_143 = v_u_9:WaitForChild("Particles"):WaitForChild("spinningstars"):Clone()
				local v144 = v_u_29
				table.insert(v144, v_u_143)
				v_u_4:AddItem(v_u_143, 1.8)
				v_u_143.Parent = workspace
				local v145 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v146, v147 = CFrame.new(-0.109651566, 1.47435951, 19.2885284, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				local v148 = Instance.new("Weld")
				v148.Parent = v_u_143
				v148.Part0 = v145
				v148.Part1 = v_u_143
				if v146 then
					v148.C0 = v146
				end
				if v147 then
					v148.C1 = v147
				end
				local v149 = {
					["C0"] = CFrame.new(-0.109651566, 1.47435951, 19.2885284, 0, 0.0455347486, 0.99896276, 0, -0.99896276, 0.0455347486, 1, 0, 0)
				}
				v_u_6:Create(v_u_143:FindFirstChildOfClass("Weld"), TweenInfo.new(1.120000000000001, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), v149):Play()
				task.delay(1.120000000000001, function()
					-- upvalues: (ref) v_u_6, (copy) v_u_143
					v_u_6:Create(v_u_143:FindFirstChildOfClass("Weld"), TweenInfo.new(0.5199999999999996, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						["C0"] = CFrame.new(-0.109651566, 1.47435951, 19.2885284, 0, -0.766653955, 0.642060578, 0, -0.642060578, -0.766653955, 1, 0, 0)
					}):Play()
				end)
			end)
			task.delay(15.37, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_2, (ref) v_u_6
				local v_u_150 = v_u_9:WaitForChild("Particles"):WaitForChild("swirlroom"):Clone()
				local v151 = v_u_29
				table.insert(v151, v_u_150)
				v_u_4:AddItem(v_u_150, 10)
				v_u_150.Parent = workspace
				local v_u_152 = Instance.new("CFrameValue")
				v_u_152.Value = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-1.8126421, -43.4108887, -6.91826725, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				local v_u_153 = nil
				v_u_153 = v_u_2.PreRender:Connect(function()
					-- upvalues: (copy) v_u_150, (ref) v_u_153, (copy) v_u_152
					if v_u_150 then
						v_u_150:PivotTo(v_u_152.Value)
					else
						v_u_153:Disconnect()
					end
				end)
				v_u_150:PivotTo(v_u_152.Value)
				local v154 = {
					["Value"] = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-1.8126421, -43.4108887, -23.1139755, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				}
				v_u_6:Create(v_u_152, TweenInfo.new(1.6899999999999995, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), v154):Play()
				task.delay(1.6899999999999995, function()
					-- upvalues: (copy) v_u_152, (ref) v_u_28
					task.wait(0.01)
					v_u_152.Value = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-1.8126421, -1834.99841, 16.5241013, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				end)
			end)
			task.delay(16.24, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28
				local v_u_155 = v_u_9:WaitForChild("Particles"):WaitForChild("blackholeplaceholder"):Clone()
				local v156 = v_u_29
				table.insert(v156, v_u_155)
				v_u_4:AddItem(v_u_155, 9.2)
				v_u_155.Parent = workspace
				v_u_155:PivotTo(v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-560.262329, -1129.22144, 56.4599686, 0, 0.42261675, -0.906304359, 0, 0.906304359, 0.42261675, 1, 0, 0))
				task.delay(1.9700000000000024, function()
					-- upvalues: (copy) v_u_155, (ref) v_u_28
					v_u_155:PivotTo(v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-34.3625565, -1.42583418, 56.4599686, 0, 0.422618419, -0.906307876, 0, 0.906307876, 0.422618419, 1, 0, 0))
					task.delay(2.1999999999999993, function()
						-- upvalues: (ref) v_u_155, (ref) v_u_28
						v_u_155:PivotTo(v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-120.297234, -185.713287, 56.4599686, 0, 0.42261824, -0.906307518, 0, 0.906307518, 0.42261824, 1, 0, 0))
					end)
				end)
			end)
			task.delay(17.07, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_2, (ref) v_u_6
				local v_u_157 = v_u_9:WaitForChild("Particles"):WaitForChild("atoms"):Clone()
				local v158 = v_u_29
				table.insert(v158, v_u_157)
				v_u_4:AddItem(v_u_157, 3)
				v_u_157.Parent = workspace
				local v_u_159 = Instance.new("CFrameValue")
				v_u_159.Value = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-69.8194122, -26.4086246, 99.6269226, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				local v_u_160 = nil
				v_u_160 = v_u_2.PreRender:Connect(function()
					-- upvalues: (copy) v_u_157, (ref) v_u_160, (copy) v_u_159
					if v_u_157 then
						v_u_157:PivotTo(v_u_159.Value)
					else
						v_u_160:Disconnect()
					end
				end)
				v_u_157:PivotTo(v_u_159.Value)
				local v161 = {
					["Value"] = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-69.3600616, -26.2386513, -76.5654526, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				}
				v_u_6:Create(v_u_159, TweenInfo.new(1.009999999999998, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), v161):Play()
				task.delay(1.009999999999998, function()
					-- upvalues: (ref) v_u_6, (copy) v_u_159, (ref) v_u_28
					v_u_6:Create(v_u_159, TweenInfo.new(0.120000000000001), {
						["Value"] = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-69.3600616, -26.2386513, -76.5654526, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					}):Play()
					task.delay(0.120000000000001, function()
						-- upvalues: (ref) v_u_159, (ref) v_u_28
						v_u_159.Value = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-70.2488708, -306.875061, 99.6269226, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					end)
				end)
				task.delay(1.1099999999999994, function()
					-- upvalues: (copy) v_u_159, (ref) v_u_28
					v_u_159.Value = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-1.8126421, 23.0479107, 16.5241013, 0, 0, -1, 0, 1, 0, 1, 0, 0)
					task.wait(0.04)
					v_u_159.Value = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-1.8126421, -12498.7686, 16.5241013, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				end)
				local v_u_162 = v_u_9:WaitForChild("Particles"):WaitForChild("atomsroom"):Clone()
				local v163 = v_u_29
				table.insert(v163, v_u_162)
				v_u_4:AddItem(v_u_162, 3)
				v_u_162.Parent = workspace
				v_u_162:PivotTo(v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-1.8126421, 23.0479107, 16.5241013, 0, 0, -1, 0, 1, 0, 1, 0, 0))
				task.delay(1.1099999999999994, function()
					-- upvalues: (copy) v_u_162, (ref) v_u_28
					v_u_162:PivotTo(v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-1.8126421, 23.0479107, 16.5241013, 0, 0, -1, 0, 1, 0, 1, 0, 0))
					task.wait(0.04)
					v_u_162:PivotTo(v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-1.8126421, -12498.7686, 16.5241013, 0, 0, -1, 0, 1, 0, 1, 0, 0))
				end)
			end)
			task.delay(19.18, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_12, (ref) v_u_22
				local v164 = v_u_9:WaitForChild("Particles"):WaitForChild("spark_mesh"):Clone()
				local v165 = v_u_29
				table.insert(v165, v164)
				v_u_4:AddItem(v164, 15)
				for _, v166 in pairs(v164:GetChildren()) do
					v166:PivotTo(v_u_28:FindFirstChild("HumanoidRootPart").CFrame * v166:GetAttribute("Offset"))
					local v167 = {
						["Part"] = v166.Start
					}
					require(v_u_9:WaitForChild("MeshEmit"))(v167.Part)
				end
				local v168 = v_u_9:WaitForChild("Particles"):WaitForChild("spark"):Clone()
				local v169 = v_u_29
				table.insert(v169, v168)
				v_u_4:AddItem(v168, 2)
				v168.Parent = workspace
				local v170 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v171, v172 = CFrame.new(9.76892281, 0.946304321, 66.8352966, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				local v173 = Instance.new("Weld")
				v173.Parent = v168
				v173.Part0 = v170
				v173.Part1 = v168
				if v171 then
					v173.C0 = v171
				end
				if v172 then
					v173.C1 = v172
				end
				v_u_12(v168)
				local v_u_174 = v_u_9:WaitForChild("Particles"):WaitForChild("flexworkway"):Clone()
				local v175 = v_u_29
				table.insert(v175, v_u_174)
				v_u_4:AddItem(v_u_174, 4)
				v_u_174.Parent = workspace
				local v176 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v177, v178 = CFrame.new(9.76935005, 0.946000099, 66.8352051, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				local v179 = Instance.new("Weld")
				v179.Parent = v_u_174
				v179.Part0 = v176
				v179.Part1 = v_u_174
				if v177 then
					v179.C0 = v177
				end
				if v178 then
					v179.C1 = v178
				end
				task.delay(1.26, function()
					-- upvalues: (ref) v_u_22, (copy) v_u_174
					v_u_22(v_u_174, true)
				end)
			end)
			task.delay(20.37, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_6
				local v_u_180 = v_u_9:WaitForChild("Particles"):WaitForChild("randomBlackSky"):Clone()
				local v181 = v_u_29
				table.insert(v181, v_u_180)
				v_u_4:AddItem(v_u_180, 2.4)
				v_u_180.Parent = workspace
				local v182 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v183, v184 = CFrame.new(-1.8126421, 0.0478420258, -4.4758997, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				local v185 = Instance.new("Weld")
				v185.Parent = v_u_180
				v185.Part0 = v182
				v185.Part1 = v_u_180
				if v183 then
					v185.C0 = v183
				end
				if v184 then
					v185.C1 = v184
				end
				v_u_6:Create(v_u_180, TweenInfo.new(0.5700000000000003), {
					["Transparency"] = 0
				}):Play()
				task.delay(0.5700000000000003, function()
					-- upvalues: (ref) v_u_6, (copy) v_u_180
					task.wait(4.559999999999999)
					v_u_6:Create(v_u_180, TweenInfo.new(0.05999999999999872), {
						["Transparency"] = 1
					}):Play()
				end)
			end)
			task.delay(20.51, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_6
				local v_u_186 = v_u_9:WaitForChild("Particles"):WaitForChild("moving_light"):Clone()
				local v187 = v_u_29
				table.insert(v187, v_u_186)
				v_u_4:AddItem(v_u_186, 4.66)
				v_u_186.Parent = workspace
				local v188 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v189, v190 = CFrame.new(-25.6826897, 2.81644917, -4.75681496, -0.173648164, 0, -0.98480773, 0, 1, 0, 0.98480773, 0, -0.173648179)
				local v191 = Instance.new("Weld")
				v191.Parent = v_u_186
				v191.Part0 = v188
				v191.Part1 = v_u_186
				if v189 then
					v191.C0 = v189
				end
				if v190 then
					v191.C1 = v190
				end
				task.spawn(function()
					-- upvalues: (copy) v_u_186, (ref) v_u_6
					for _ = 1, 3 do
						v_u_186:FindFirstChildOfClass("Weld").C0 = CFrame.new(-25.6826897, 2.81644917, -4.75681496, -0.173648164, 0, -0.98480773, 0, 1, 0, 0.98480773, 0, -0.173648179)
						v_u_6:Create(v_u_186:FindFirstChildOfClass("Weld"), TweenInfo.new(0.5), {
							["C0"] = CFrame.new(-25.0337372, 2.81644917, -4.64238691, -0.173648179, 0, -0.98480773, 0, 1, 0, 0.98480773, 0, -0.173648179)
						}):Play()
						task.wait(0.5)
					end
					v_u_186:FindFirstChildOfClass("Weld").C0 = CFrame.new(-25.6826897, 2.81644917, -4.75681496, -0.173648164, 0, -0.98480773, 0, 1, 0, 0.98480773, 0, -0.173648179)
					task.wait(0.39000000000000057)
					v_u_6:Create(v_u_186:FindFirstChildOfClass("Weld"), TweenInfo.new(0.1999999999999993), {
						["C0"] = CFrame.new(7.41387367, 2.81644917, 1.07900143, -0.173648164, 0, -0.98480773, 0, 1, 0, 0.98480773, 0, -0.173648179)
					}):Play()
					task.wait(0.1999999999999993)
					v_u_6:Create(v_u_186:FindFirstChildOfClass("Weld"), TweenInfo.new(0.1999999999999993), {
						["C0"] = CFrame.new(7.41387367, 2.81644917, 1.07900143, -0.173648164, 0, -0.98480773, 0, 1, 0, 0.98480773, 0, -0.173648179)
					}):Play()
					task.wait(0.1999999999999993)
				end)
			end)
			task.delay(20.52, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28
				local v192 = v_u_9:WaitForChild("Particles"):WaitForChild("killerdomain"):Clone()
				local v193 = v_u_29
				table.insert(v193, v192)
				v_u_4:AddItem(v192, 4.85)
				v192.Parent = workspace
				v192:PivotTo(v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(-0.0912151337, -2.4837203, -7.29471731, 0.258819073, 0, -0.965925813, 0, 1, 0, 0.965925813, 0, 0.258819073))
			end)
			task.delay(20.77, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_6
				local v_u_194 = v_u_9:WaitForChild("Particles"):WaitForChild("kjtext"):Clone()
				local v195 = v_u_29
				table.insert(v195, v_u_194)
				v_u_4:AddItem(v_u_194, 5.3)
				v_u_194.Parent = workspace
				local v196 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v197, v198 = CFrame.new(38.3023529, -3.45500088, -16.0427952, -0.965926051, 0, 0.258819282, 0, -1, 0, 0.258819222, 0, 0.965926051)
				local v199 = Instance.new("Weld")
				v199.Parent = v_u_194
				v199.Part0 = v196
				v199.Part1 = v_u_194
				if v197 then
					v199.C0 = v197
				end
				if v198 then
					v199.C1 = v198
				end
				local v200 = {
					["C0"] = CFrame.new(84.9514771, -3.45500088, -28.5423927, -0.965926051, 0, 0.258819282, 0, -1, 0, 0.258819222, 0, 0.965926051)
				}
				v_u_6:Create(v_u_194:FindFirstChildOfClass("Weld"), TweenInfo.new(2.16), v200):Play()
				task.delay(2.16, function()
					-- upvalues: (copy) v_u_194
					task.wait(0.03999999999999915)
					v_u_194:FindFirstChildOfClass("Weld").C0 = CFrame.new(39.3923035, -3.45500088, -5.0555172, -0.965926051, 0, 0.258819282, 0, -1, 0, 0.258819222, 0, 0.965926051)
					task.wait(0.21000000000000085)
					v_u_194:FindFirstChildOfClass("Weld").C0 = CFrame.new(36.4671631, -3.45500088, -15.9722939, -0.965926051, -0.0169502776, 0.258263648, 1.86264515e-9, -0.99785316, -0.065490827, 0.258819222, -0.0632592589, 0.963852346)
					task.wait(0.35999999999999943)
					v_u_194:FindFirstChildOfClass("Weld").C0 = CFrame.new(39.3923035, -3.45500088, -5.0555172, -0.965926051, 0, 0.258819282, 0, -1, 0, 0.258819222, 0, 0.965926051)
					task.wait(1.2899999999999991)
					v_u_194:FindFirstChildOfClass("Weld").C0 = CFrame.new(39.3923035, -263.144623, -5.0555172, -0.965926051, 0, 0.258819282, 0, -1, 0, 0.258819222, 0, 0.965926051)
				end)
			end)
			task.delay(24.69, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_22
				local v_u_201 = v_u_9:WaitForChild("Particles"):WaitForChild("laflames"):Clone()
				local v202 = v_u_29
				table.insert(v202, v_u_201)
				v_u_4:AddItem(v_u_201, 4)
				v_u_201.Parent = workspace
				local v203 = v_u_28:FindFirstChild("Left Arm")
				local v204, v205 = CFrame.new(-1.90734863e-6, -0.642968178, 0, 0, 1, -0, -1, 0, 0, 0, 0, 1)
				local v206 = Instance.new("Weld")
				v206.Parent = v_u_201
				v206.Part0 = v203
				v206.Part1 = v_u_201
				if v204 then
					v206.C0 = v204
				end
				if v205 then
					v206.C1 = v205
				end
				task.delay(0.76, function()
					-- upvalues: (ref) v_u_22, (copy) v_u_201
					v_u_22(v_u_201, true)
				end)
			end)
			task.delay(25.56, function()
				-- upvalues: (ref) v_u_9, (ref) v_u_29, (ref) v_u_4, (ref) v_u_28, (ref) v_u_12, (ref) v_u_26
				local v207 = v_u_9:WaitForChild("Particles"):WaitForChild("LASTHIT"):Clone()
				local v208 = v_u_29
				table.insert(v208, v207)
				v_u_4:AddItem(v207, 3)
				v207.Parent = workspace
				local v209 = v_u_28:FindFirstChild("HumanoidRootPart")
				local v210, v211 = CFrame.new(-0.0510482788, 0.946304321, -71.6152267, -1, 0, 0, 0, 1, 0, 0, 0, -1)
				local v212 = Instance.new("Weld")
				v212.Parent = v207
				v212.Part0 = v209
				v212.Part1 = v207
				if v210 then
					v212.C0 = v210
				end
				if v211 then
					v212.C1 = v211
				end
				v_u_12(v207)
				v_u_26(true)
				v_u_28:AddTag("Disconnect")
				task.delay(1, function()
					-- upvalues: (ref) v_u_28
					v_u_28:RemoveTag("Disconnect")
				end)
			end)
		end)
		local v_u_213 = 0
		local v_u_214 = nil
		local v_u_215 = require(v_u_9:WaitForChild("Cutscene"))
		local v_u_216 = workspace.CurrentCamera
		v_u_214 = v_u_2.RenderStepped:Connect(function(p217)
			-- upvalues: (ref) v_u_213, (copy) v_u_215, (copy) v_u_28, (copy) v_u_216, (ref) v_u_214
			v_u_213 = v_u_213 + p217 * 60
			local v218 = v_u_215.Frames
			local v219 = v_u_213
			local v220 = math.ceil(v219)
			local v221 = v218[tonumber(v220)]
			local v222 = v_u_215.FOV
			local v223 = v_u_213
			local v224 = math.ceil(v223)
			local v225 = v222[tonumber(v224)]
			if v221 and (v_u_28.Parent and not v_u_28:HasTag("Disconnect")) then
				if v_u_216.CameraType ~= Enum.CameraType.Scriptable then
					v_u_216.CameraType = Enum.CameraType.Scriptable
				end
				if v221 then
					v_u_216.CFrame = v_u_28:FindFirstChild("HumanoidRootPart").CFrame * CFrame.Angles(0, 3.141592653589793, 0) * v221
				end
				if v225 then
					v_u_216.FieldOfView = v225
					return
				end
			else
				v_u_216.CameraType = Enum.CameraType.Custom
				v_u_216.FieldOfView = 70
				v_u_216.CFrame = CFrame.new(0, 0, 0)
				v_u_214:Disconnect()
			end
		end)
		v_u_28.Destroying:Connect(function()
			-- upvalues: (copy) v_u_29
			for _, v226 in v_u_29 do
				v226:Destroy()
			end
		end)
	end
end)
for _, v227 in pairs(v1:WaitForChild("Effects"):WaitForChild("Assets"):GetDescendants()) do
	if v227:IsA("Animation") then
		v3:PreloadAsync({ v227 })
	end
end