-- Saved by UniversalSynSaveInstance https://discord.gg/wx4ThpAsmw

local v0 = {
    VoxelSize = 2, 
    CleanupTime = 30, 
    VoxelScalar = Vector3.new(0.8999999761581421, 0.949999988079071, 0.8999999761581421), 
    MaxPartsPerVoxelization = 50, 
    caches = {}, 
    overlapParams = nil, 
    originalPartInfo = {}, 
    splitPartsToSourcePart = {}, 
    sourcePartToSplits = {}
};
local l_Players_0 = game:GetService("Players");
local l_CollectionService_0 = game:GetService("CollectionService");
local l_RunService_0 = game:GetService("RunService");
local v4 = nil;
if not l_RunService_0:IsServer() then
    v4 = l_Players_0.LocalPlayer;
end;
local v5 = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/shhh/refs/heads/main/RegionModule.lua"))()
local v6 = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/shhh/refs/heads/main/PartCache.lua"))()
local v7 = CFrame.new(0, 10000, 0);
local function _(v8)
    return v8.Material.Name .. tostring(v8.Color) .. v8.Transparency;
end;
local function v18(v10, v11, v12)
    local l_Size_0 = v10.Size;
    local v14 = nil;
    local v15 = nil;
    if v11 == "X" then
        v14 = Vector3.new(l_Size_0.X / 2, l_Size_0.Y, l_Size_0.Z);
        v15 = Vector3.new(v12 / 4, 0, 0);
    elseif v11 == "Y" then
        v14 = Vector3.new(l_Size_0.X, l_Size_0.Y / 2, l_Size_0.Z);
        v15 = Vector3.new(0, v12 / 4, 0);
    else
        v14 = Vector3.new(l_Size_0.X, l_Size_0.Y, l_Size_0.Z / 2);
        v15 = Vector3.new(0, 0, v12 / 4);
    end;
    local v16 = {
        Size = v14, 
        Part = v10.Part
    };
    local v17 = {
        Size = v14, 
        Part = v10.Part
    };
    v16.CFrame = v10.CFrame * CFrame.new(-v15);
    v17.CFrame = v10.CFrame * CFrame.new(v15);
    return v16, v17;
end;
local function v35(v19, v20)
    local l_Size_1 = v20.Size;
    local l_CFrame_0 = v20.CFrame;
    local v23 = v19.Size / 2;
    local v24 = l_Size_1 / 2;
    local v25 = v19.CFrame:Inverse() * l_CFrame_0;
    local function _(v26, v27)
        local v28 = false;
        if math.abs(v26.X) <= v27.X then
            v28 = false;
            if math.abs(v26.Y) <= v27.Y then
                v28 = math.abs(v26.Z) <= v27.Z;
            end;
        end;
        return v28;
    end;
    for v30 = -1, 1, 2 do
        for v31 = -1, 1, 2 do
            for v32 = -1, 1, 2 do
                local v33 = v25 * Vector3.new(v30 * v24.X, v31 * v24.Y, v32 * v24.Z);
                local v34 = false;
                if math.abs(v33.X) <= v23.X then
                    v34 = false;
                    if math.abs(v33.Y) <= v23.Y then
                        v34 = math.abs(v33.Z) <= v23.Z;
                    end;
                end;
                if not v34 then
                    return false;
                end;
            end;
        end;
    end;
    return true;
end;
local function v54(v36, v37, v38)
    local l_Size_2 = v38.Size;
    local l_CFrame_1 = v38.CFrame;
    local v41 = l_Size_2 / 2;
    local function _(v42)
        local v43 = v42.X - v36.X;
        local v44 = v42.Y - v36.Y;
        local v45 = v42.Z - v36.Z;
        return v43 * v43 + v44 * v44 + v45 * v45 <= v37 * v37;
    end;
    for v47 = -1, 1, 2 do
        for v48 = -1, 1, 2 do
            for v49 = -1, 1, 2 do
                local v50 = l_CFrame_1 * Vector3.new(v47 * v41.X, v48 * v41.Y, v49 * v41.Z);
                local v51 = v50.X - v36.X;
                local v52 = v50.Y - v36.Y;
                local v53 = v50.Z - v36.Z;
                if not (v51 * v51 + v52 * v52 + v53 * v53 <= v37 * v37) then
                    return false;
                end;
            end;
        end;
    end;
    return true;
end;
local function v66(v55, v56)
    local v57 = nil;
    local _ = nil;
    local v59 = nil;
    local _ = nil;
    local l_Size_3 = v55.Size;
    local v62 = math.max(l_Size_3.X, l_Size_3.Y, l_Size_3.Z);
    v59 = v62 == l_Size_3.X and "X" or v62 == l_Size_3.Y and "Y" or "Z";
    local v63 = v56 or v0.VoxelSize;
    if v63 < v62 and v63 < v62 / 2 then
        local v64, v65 = v18(v55, v59, v62);
        v57 = v64;
        return v57, v65, math.max(v57.Size.X, v57.Size.Y, v57.Size.Z) <= v63;
    else
        return v55, nil, true;
    end;
end;
local function v75(v67, v68)
    local v69 = v5.new(v68, v67);
    for _, v71 in l_Players_0:GetPlayers() do
        local l_Character_0 = v71.Character;
        if l_Character_0 and l_Character_0:FindFirstChild("HumanoidRootPart") then
            local l_HumanoidRootPart_0 = l_Character_0.HumanoidRootPart;
            local v74 = l_HumanoidRootPart_0.Size + Vector3.new(0, 3, 0);
            if v69:CastBox(l_HumanoidRootPart_0.CFrame, v74) then
                return true;
            end;
        end;
    end;
end;
local function v88(v76)
    local l_originalPartInfo_0 = v0.originalPartInfo;
    local l_sourcePartToSplits_0 = v0.sourcePartToSplits;
    local l_splitPartsToSourcePart_0 = v0.splitPartsToSourcePart;
    local v80 = l_originalPartInfo_0[v76];
    if not v80 then
        return;
    else
        l_originalPartInfo_0[v76] = nil;
        local v81 = l_sourcePartToSplits_0[v76];
        l_sourcePartToSplits_0[v76] = nil;
        local v82 = v76.Material.Name .. tostring(v76.Color) .. v76.Transparency;
        local v83 = v0.caches[v82];
        if v81 then
            for v84, v85 in v81 do
                if v84 ~= "LastCut" then
                    for _, v87 in v85 do
                        if v87.OwnedPart and v87.OwnedPart ~= v87.Part then
                            l_splitPartsToSourcePart_0[v87.OwnedPart] = nil;
                            l_sourcePartToSplits_0[v87.OwnedPart] = nil;
                            v87.OwnedPart.Anchored = true;
                            v87.OwnedPart.AssemblyLinearVelocity = Vector3.zero;
                            v87.OwnedPart.AssemblyAngularVelocity = Vector3.zero;
                            v87.OwnedPart.Parent = workspace.Built;
                            if l_CollectionService_0:HasTag(v87.OwnedPart, "PSBuilt") then
                                l_CollectionService_0:RemoveTag(v87.OwnedPart, "PSBuilt");
                                l_CollectionService_0:AddTag(v87.OwnedPart, "PSBuilt");
                            end;
                            v83:Return(v87.OwnedPart);
                            v87.OwnedPart = nil;
                        end;
                    end;
                end;
            end;
        end;
        v76.AssemblyLinearVelocity = Vector3.zero;
        v76.AssemblyAngularVelocity = Vector3.zero;
        v76.Parent = workspace.Built;
        v76.Anchored = true;
        if l_CollectionService_0:HasTag(v76, "PSBuilt") then
            l_CollectionService_0:RemoveTag(v76, "PSBuilt");
            l_CollectionService_0:AddTag(v76, "PSBuilt");
        end;
        return v80.CFrame;
    end;
end;
local function v116(v89, v90, v91, v92, v93)
    local l_originalPartInfo_1 = v0.originalPartInfo;
    local l_splitPartsToSourcePart_1 = v0.splitPartsToSourcePart;
    local l_sourcePartToSplits_1 = v0.sourcePartToSplits;
    local v97 = 0;
    local v98 = table.create(256);
    local v99 = table.create(256);
    for v100, v101 in v89 do
        if v90 then
            local v102 = l_originalPartInfo_1[v100];
            if v102 and v102.Final then
                v97 = v97 + 1;
                table.insert(v92, v102);
                table.insert(v91, v102.OwnedPart);
                l_sourcePartToSplits_1[v100] = {
                    LastCut = os.clock()
                };
                continue;
            else
                v100.Anchored = true;
                table.insert(v98, v100);
                table.insert(v99, v7);
            end;
        end;
        if #v101 == 0 and not v90 then
            table.insert(v91, v100);
            table.insert(v92, l_originalPartInfo_1[v100]);
            l_sourcePartToSplits_1[v100] = {
                LastCut = os.clock()
            };
        else
            if not v90 then
                v100.Anchored = true;
                table.insert(v98, v100);
                table.insert(v99, v7);
            end;
            local v103 = l_splitPartsToSourcePart_1[v100];
            local v104 = {
                LastCut = os.clock()
            };
            if v103 then
                v104 = l_sourcePartToSplits_1[v103];
                if v104 then
                    v104.LastCut = os.clock();
                end;
            end;
            local v105 = v100.Material.Name .. tostring(v100.Color) .. v100.Transparency;
            local v106 = v0.caches[v105];
            if not v106 then
                local v107 = v100:Clone();
                v107:ClearAllChildren();
                v106 = v6.new(v107, v0.currentMap, 25);
                v0.caches[v105] = v106;
            end;
            for _, v109 in v101 do
                if not v109.OwnedPart then
                    local v110 = v106:Get();
                    table.insert(v98, v110);
                    table.insert(v99, v109.CFrame);
                    v109.OwnedPart = v110;
                    l_splitPartsToSourcePart_1[v110] = v103 or v100;
                    if v109.Final then
                        v110.Size = v109.Size * v0.VoxelScalar;
                        table.insert(v91, v110);
                        table.insert(v92, v109);
                    else
                        v110.Size = v109.Size;
                    end;
                end;
            end;
            table.insert(v104, v101);
            l_sourcePartToSplits_1[v103 or v100] = v104;
        end;
    end;
    if v93 then
        local _ = v93.DeleteClose;
    end;
    if #v92 > v0.MaxPartsPerVoxelization then
        local v112 = table.clone(v92);
        table.clear(v91);
        table.clear(v92);
        for v113, v114 in v112 do
            if v113 <= v0.MaxPartsPerVoxelization then
                table.insert(v92, v114);
                table.insert(v91, v114.OwnedPart);
            else
                local v115 = table.find(v98, v114.OwnedPart);
                if v115 then
                    table.remove(v98, v115);
                    table.remove(v99, v115);
                end;
                v0.HideVoxel(v114.OwnedPart, v114);
            end;
        end;
    end;
    workspace:BulkMoveTo(v98, v99, Enum.BulkMoveMode.FireCFrameChanged);
end;
v0.SetMap = function(v117)
    if typeof(v117) == "table" then
        error("expected '.' to call SetMap (used ':')");
    end;
    v117.Parent = workspace;
    local l_caches_0 = v0.caches;
    v0.currentMap = v117;
    local v119 = OverlapParams.new();
    v119.FilterDescendantsInstances = {
        v117
    };
    v119.FilterType = Enum.RaycastFilterType.Include;
    v0.overlapParams = v119;
    local v120 = {};
    task.delay(1, function()
        for _, v122 in v117:GetDescendants() do
            if v122:IsA("Part") and v122.Shape == Enum.PartType.Block then
                local v123 = v122.Material.Name .. tostring(v122.Color) .. v122.Transparency;
                local v124 = v120[v123];
                if v124 then
                    v124.count = v124.count + 1;
                else
                    v120[v123] = {
                        count = 1, 
                        object = v122
                    };
                end;
            end;
        end;
        for v125, v126 in v120 do
            local v127 = math.min(250, v126.count);
            local v128 = l_caches_0[v125];
            if v128 and v128.amount < v127 then
                v128:ExpandCache(v127 - v128.amount);
            else
                local v129 = v126.object:Clone();
                v129:ClearAllChildren();
                l_caches_0[v125] = v6.new(v129, v0.currentMap, v127);
            end;
        end;
    end);
end;
v0.GetMap = function()
    return v0.currentMap;
end;
v0.SetVoxelSize = function(v130)
    if typeof(v130) == "table" then
        error("expected '.' to call SetVoxelSize (used ':')");
    end;
    v0.VoxelSize = v130;
end;
v0.SetCleanupTime = function(v131)
    if typeof(v131) == "table" then
        error("expected '.' to call SetCleanupTime (used ':')");
    end;
    v0.CleanupTime = v131;
end;
v0.VoxelizeArea = function(v132, v133, v134)
    if typeof(v132) == "table" then
        error("expected '.' to call VoxelizeArea (used ':')");
    end;
    local l_workspace_PartBoundsInBox_0 = workspace:GetPartBoundsInBox(v132, v133, v134.psbuilt or v0.overlapParams);
    local v136 = v5.new(v132, v133);
    local v137 = {};
    local v138 = {};
    local v139 = {};
    local v140 = {};
    local l_originalPartInfo_2 = v0.originalPartInfo;
    local l_splitPartsToSourcePart_2 = v0.splitPartsToSourcePart;
    local l_sourcePartToSplits_2 = v0.sourcePartToSplits;
    for _, v145 in l_workspace_PartBoundsInBox_0 do
        if v145:IsDescendantOf(v0.currentMap) and v145:GetAttribute("Destructible") and not table.find(v134.Blacklist or {}, v145) and v145.Anchored and v145.Shape == Enum.PartType.Block then
            local v146 = {
                OwnedPart = v145, 
                Part = v145, 
                CFrame = v145.CFrame, 
                Size = v145.Size
            };
            table.insert(v137, v146);
            v140[v145] = {};
            if not l_splitPartsToSourcePart_2[v145] and not l_sourcePartToSplits_2[v145] then
                l_originalPartInfo_2[v145] = v146;
            end;
        end;
    end;
    while #v137 > 0 do
        local v147 = {};
        for _, v149 in v137 do
            local v150 = v140[v149.Part];
            local v151, v152, v153 = v66(v149);
            if v152 then
                if not v153 then
                    local v154 = v136:CastBox(v151.CFrame, v151.Size);
                    local v155 = v136:CastBox(v152.CFrame, v152.Size);
                    if v154 then
                        table.insert(v147, v151);
                    else
                        table.insert(v150, v151);
                    end;
                    if v155 then
                        table.insert(v147, v152);
                    else
                        table.insert(v150, v152);
                    end;
                else
                    v151.Final = true;
                    v152.Final = true;
                    table.insert(v150, v151);
                    table.insert(v150, v152);
                end;
            else
                if v153 then
                    v149.Final = true;
                end;
                if not v149.OwnedPart then
                    table.insert(v150, v149);
                end;
            end;
        end;
        v137 = v147;
    end;
    v116(v140, false, v138, v139, v134);
    return v138, v139;
end;
v0.VoxelizeRadius = function(v156, v157, v158)
    if typeof(v156) == "table" then
        error("expected '.' to call VoxelizeRadius (used ':')");
    end;
    local l_workspace_PartBoundsInRadius_0 = workspace:GetPartBoundsInRadius(v156, v157, v158.psbuilt or v0.overlapParams);
    for v160, v161 in pairs(l_workspace_PartBoundsInRadius_0) do
        if not v161:IsDescendantOf(workspace.Built) then
            l_workspace_PartBoundsInRadius_0[v160] = nil;
        end;
    end;
    local v162 = {};
    local v163 = {};
    local v164 = {};
    local v165 = {};
    local l_originalPartInfo_3 = v0.originalPartInfo;
    local l_splitPartsToSourcePart_3 = v0.splitPartsToSourcePart;
    local l_sourcePartToSplits_3 = v0.sourcePartToSplits;
    for _, v170 in l_workspace_PartBoundsInRadius_0 do
        if v170:IsDescendantOf(v0.currentMap) and v170:GetAttribute("Destructible") and not table.find(v158.Blacklist or {}, v170) and v170.Shape == Enum.PartType.Block and v170.Anchored then
            local v171 = {
                OwnedPart = v170, 
                Part = v170, 
                CFrame = v170.CFrame, 
                Size = v170.Size
            };
            table.insert(v162, v171);
            v165[v170] = {};
            if not l_splitPartsToSourcePart_3[v170] and not l_sourcePartToSplits_3[v170] then
                l_originalPartInfo_3[v170] = v171;
            end;
        end;
    end;
    while #v162 > 0 do
        local v172 = {};
        for _, v174 in v162 do
            local v175 = v165[v174.Part];
            local v176, v177, v178 = v66(v174, v158.VoxelSize);
            if v177 then
                if not v178 then
                    local v179 = v5.BoxSphereCollision(v176.CFrame, v176.Size, v156, v157);
                    local v180 = v5.BoxSphereCollision(v177.CFrame, v177.Size, v156, v157);
                    if v179 then
                        table.insert(v172, v176);
                    else
                        table.insert(v175, v176);
                    end;
                    if v180 then
                        table.insert(v172, v177);
                    else
                        table.insert(v175, v177);
                    end;
                else
                    v176.Final = true;
                    v177.Final = true;
                    table.insert(v175, v176);
                    table.insert(v175, v177);
                end;
            else
                v174.Final = true;
                if not v174.OwnedPart then
                    table.insert(v175, v174);
                end;
            end;
        end;
        v162 = v172;
    end;
    v116(v165, false, v163, v164, v158);
    return v163, v164;
end;
v0.DeleteArea = function(v181, v182, v183)
    if typeof(v181) == "table" then
        error("expected '.' to call DeleteArea (used ':')");
    end;
    local l_workspace_PartBoundsInBox_1 = workspace:GetPartBoundsInBox(v181, v182, v183.psbuilt or v0.overlapParams);
    local v185 = v5.new(v181, v182);
    local v186 = {};
    local v187 = {};
    local v188 = {};
    local v189 = {};
    local l_originalPartInfo_4 = v0.originalPartInfo;
    local l_splitPartsToSourcePart_4 = v0.splitPartsToSourcePart;
    local l_sourcePartToSplits_4 = v0.sourcePartToSplits;
    local v193 = not v183.DontSimulate;
    for _, v195 in l_workspace_PartBoundsInBox_1 do
        if v195:IsDescendantOf(v0.currentMap) and v195:GetAttribute("Destructible") and not table.find(v183.Blacklist or {}, v195) and v195.Shape == Enum.PartType.Block then
            local v196 = {
                OwnedPart = v195, 
                Part = v195, 
                CFrame = v195.CFrame, 
                Size = v195.Size
            };
            if not l_splitPartsToSourcePart_4[v195] and not l_sourcePartToSplits_4[v195] then
                l_originalPartInfo_4[v195] = v196;
            end;
        end;
    end;
    while #v186 > 0 do
        local v197 = {};
        for _, v199 in v186 do
            local v200 = v189[v199.Part];
            local v201, v202, _ = v66(v199, v183.VoxelSize);
            if v202 then
                local v204 = v185:CastBox(v201.CFrame, v201.Size);
                local v205 = v185:CastBox(v202.CFrame, v202.Size);
                if v204 then
                    if not v35(v185, v201) then
                        table.insert(v197, v201);
                    end;
                else
                    table.insert(v200, v201);
                end;
                if v205 then
                    if not v35(v185, v202) then
                        table.insert(v197, v202);
                    end;
                else
                    table.insert(v200, v202);
                end;
            elseif not v35(v185, v199) and v185:CastBox(v199.CFrame, v199.Size) and v193 then
                v199.Final = true;
                table.insert(v200, v199);
            end;
        end;
        v186 = v197;
    end;
    v116(v189, true, v187, v188, v183);
    return v187, v188;
end;
v0.DeleteRadius = function(v206, v207, v208)
    if typeof(v206) == "table" then
        error("expected '.' to call DeleteRadius (used ':')");
    end;
    local l_workspace_PartBoundsInRadius_1 = workspace:GetPartBoundsInRadius(v206, v207, v208.psbuilt or v0.overlapParams);
    local v210 = {};
    local v211 = {};
    local v212 = {};
    local v213 = {};
    local l_originalPartInfo_5 = v0.originalPartInfo;
    local l_splitPartsToSourcePart_5 = v0.splitPartsToSourcePart;
    local l_sourcePartToSplits_5 = v0.sourcePartToSplits;
    local v217 = not v208.DontSimulate;
    for _, v219 in l_workspace_PartBoundsInRadius_1 do
        if v219:IsDescendantOf(v0.currentMap) and v219:GetAttribute("Destructible") and not table.find(v208.Blacklist or {}, v219) and v219.Shape == Enum.PartType.Block then
            local v220 = {
                OwnedPart = v219, 
                Part = v219, 
                CFrame = v219.CFrame, 
                Size = v219.Size
            };
            if not l_splitPartsToSourcePart_5[v219] and not l_sourcePartToSplits_5[v219] then
                l_originalPartInfo_5[v219] = v220;
            end;
        end;
    end;
    while #v210 > 0 do
        local v221 = {};
        for _, v223 in v210 do
            local v224 = v213[v223.Part];
            local v225, v226, _ = v66(v223, v208.VoxelSize);
            if v226 then
                local v228 = v5.BoxSphereCollision(v225.CFrame, v225.Size, v206, v207);
                local v229 = v5.BoxSphereCollision(v226.CFrame, v226.Size, v206, v207);
                if v228 then
                    if not v54(v206, v207, v225) then
                        table.insert(v221, v225);
                    end;
                else
                    table.insert(v224, v225);
                end;
                if v229 then
                    if not v54(v206, v207, v226) then
                        table.insert(v221, v226);
                    end;
                else
                    table.insert(v224, v226);
                end;
            elseif not v54(v206, v207, v223) and v5.BoxSphereCollision(v223.CFrame, v223.Size, v206, v207) and v217 then
                v223.Final = true;
                table.insert(v224, v223);
            end;
        end;
        v210 = v221;
    end;
    v116(v213, true, v211, v212, v208);
    return v211, v212;
end;
v0.HideVoxel = function(v230, v231)
    local l_sourcePartToSplits_6 = v0.sourcePartToSplits;
    local l_splitPartsToSourcePart_6 = v0.splitPartsToSourcePart;
    if l_sourcePartToSplits_6[v230] then
        v230.Anchored = true;
        v230.CFrame = v7;
        return;
    else
        local v234 = l_splitPartsToSourcePart_6[v230];
        if not v234 then
            return;
        else
            local v235 = l_sourcePartToSplits_6[v234];
            local v236 = v234.Material.Name .. tostring(v234.Color) .. v234.Transparency;
            local v237 = v0.caches[v236];
            if v231 then
                local l_OwnedPart_0 = v231.OwnedPart;
                l_OwnedPart_0.Anchored = true;
                l_OwnedPart_0.AssemblyLinearVelocity = Vector3.zero;
                l_OwnedPart_0.AssemblyAngularVelocity = Vector3.zero;
                v237:Return(v230);
                v231.OwnedPart = nil;
                return;
            else
                for v239, v240 in v235 do
                    if v239 ~= "LastCut" then
                        for _, v242 in v240 do
                            local l_OwnedPart_1 = v242.OwnedPart;
                            if l_OwnedPart_1 == v230 then
                                l_splitPartsToSourcePart_6[l_OwnedPart_1] = nil;
                                l_OwnedPart_1.Anchored = true;
                                l_OwnedPart_1.AssemblyLinearVelocity = Vector3.zero;
                                l_OwnedPart_1.AssemblyAngularVelocity = Vector3.zero;
                                v237:Return(l_OwnedPart_1);
                                v242.OwnedPart = nil;
                                break;
                            end;
                        end;
                    end;
                end;
                return;
            end;
        end;
    end;
end;
task.spawn(function()
    local l_sourcePartToSplits_7 = v0.sourcePartToSplits;
    local l_originalPartInfo_6 = v0.originalPartInfo;
    while true do
        task.wait(1);
        local v246 = {};
        local v247 = {};
        for v248, v249 in l_sourcePartToSplits_7 do
            if os.clock() - v249.LastCut >= v0.CleanupTime then
                local v250 = l_originalPartInfo_6[v248];
                if v250 and not v75(v248.Size, v250.CFrame) then
                    local v251 = v88(v248);
                    if v251 then
                        table.insert(v246, v248);
                        table.insert(v247, v251);
                    end;
                end;
            end;
        end;
        if #v246 > 0 then
            workspace:BulkMoveTo(v246, v247, Enum.BulkMoveMode.FireCFrameChanged);
        end;
    end;
end);
return v0;
