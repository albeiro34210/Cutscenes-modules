local function v_u_14(p1, p2, p3, p4)
	local v5 = p1:GetAttribute(p3 .. "_TweenParams")
	local v6 = {
		{
			"TweenStyle",
			[2] = p4
		},
		{ "TweenDirection", Enum.EasingDirection.Out }
	}
	local v_u_7 = {}
	if typeof(v5) == "string" then
		local v8 = { v5:match("(%a+),(%a+)") }
		for v9 = 1, 2 do
			local v10 = v6[v9]
			local v_u_11 = v10[1]
			if v8[v9] then
				local v_u_12 = v8[v9]
				if not pcall(function()
					-- upvalues: (copy) v_u_7, (copy) v_u_11, (copy) v_u_12
					v_u_7[v_u_11] = Enum[v_u_11][v_u_12]
				end) then
					v_u_7[v_u_11] = v10[2]
				end
			else
				v_u_7[v_u_11] = v10[2]
			end
		end
	else
		for _, v13 in v6 do
			_1_upvr = v13[2]
			v_u_7[v13[1]] = _1_upvr
		end
	end
	return TweenInfo.new(p2, v_u_7.TweenStyle, v_u_7.TweenDirection)
end
local v_u_15 = game:GetService("TweenService")
return function(p16)
	-- upvalues: (copy) v_u_15, (copy) v_u_14
	local v17 = p16.Parent:FindFirstChild("End")
	if v17 then
		local v18 = p16:Clone()
		if v18:IsA("MeshPart") then
			local v19 = p16.Parent
			v18.Transparency = tonumber(v19:GetAttribute("StartTransparency")) or 0
		elseif v18:IsA("BasePart") and v18:FindFirstChildOfClass("Decal") then
			v18.Transparency = 1
		end
		v18.Parent = workspace
		local v20 = p16.Parent
		local v21 = tonumber(v20:GetAttribute("Duration")) or 0.1
		if v18:FindFirstChildOfClass("Decal") then
			v_u_15:Create(v18, v_u_14(p16.Parent, v21, "Part", Enum.EasingStyle.Cubic), {
				["Size"] = v17.Size,
				["CFrame"] = v17.CFrame
			}):Play()
		else
			v_u_15:Create(v18, v_u_14(p16.Parent, v21, "Part", Enum.EasingStyle.Cubic), {
				["Size"] = v17.Size,
				["CFrame"] = v17.CFrame,
				["Transparency"] = 1
			}):Play()
		end
		local v22 = v18:FindFirstChildOfClass("SpecialMesh")
		local v23 = v17:FindFirstChildOfClass("SpecialMesh")
		if v22 and v23 then
			v_u_15:Create(v22, v_u_14(p16.Parent, v21, "Mesh", Enum.EasingStyle.Sine), {
				["Scale"] = v23.Scale
			}):Play()
		end
		local v24 = v18:FindFirstChildOfClass("Decal")
		local v25 = v17:FindFirstChildOfClass("Decal")
		if v24 and v25 then
			local v26 = p16.Parent
			v24.Transparency = tonumber(v26:GetAttribute("StartTransparency")) or 0
			v_u_15:Create(v24, v_u_14(p16.Parent, v21, "Decal", Enum.EasingStyle.Cubic), {
				["Transparency"] = v25.Transparency,
				["Color3"] = v25.Color3
			}):Play()
		end
		task.delay(v21, v18.Destroy, v18)
	else
		warn("Goal is not defined.")
	end
end