local v0 = {};
local v1 = 85;
local v2 = require(game.ReplicatedStorage.ActionCheck);
local v3 = require(game.ReplicatedStorage.Emotes.VFX);
if workspace:FindFirstChild("Duel Choice") then
    v1 = 37.5;
end;
local function v7(v4) --[[ Line: 11 ]]
    for _, v6 in pairs(v4:GetDescendants()) do
        if v6:IsA("ParticleEmitter") then
            v6:Emit(v6:GetAttribute("EmitCount"));
        end;
    end;
end;
local function v11(v8) --[[ Line: 19 ]]
    for _, v10 in pairs(v8:GetDescendants()) do
        if v10:IsA("BasePart") or v10:IsA("Decal") then
            v10.Transparency = 1;
            if v10:IsA("BasePart") then
                v10.CollisionGroup = "untouchable";
            end;
        elseif v10:IsA("ParticleEmitter") or v10:IsA("Texture") or v10:IsA("Beam") or v10:IsA("Trail") or v10:IsA("BillboardGui") then
            v10:Destroy();
        end;
    end;
end;
local function v17(v12, v13, v14) --[[ Line: 32 ]]
    for _, v16 in pairs(v12) do
        if shared.p(v16) then
            game.ReplicatedStorage.Replication:FireClient(shared.p(v16), {
                Effect = "Camshake", 
                Intensity = v13, 
                Last = v14 or nil
            });
        end;
    end;
end;
local function v22(v18) --[[ Line: 44 ]]
    local v19 = {
        [2] = v18.Torso.Neck
    };
    local l_C0_0 = v19[2].C0;
    task.spawn(function() --[[ Line: 47 ]]
        -- upvalues: v19 (copy), l_C0_0 (copy)
        for _ = 1, 10 do
            v19[2].C0 = l_C0_0 * CFrame.new(1.0E-8, 0, 0);
            wait();
            v19[2].C0 = l_C0_0;
            task.wait(0.05);
        end;
    end);
end;
local function v27(v23, v24) --[[ Line: 57 ]]
    for _, v26 in pairs(v23:GetDescendants()) do
        if v26:IsA("ParticleEmitter") or v26:IsA("PointLight") then
            v26.Enabled = v24 or false;
        end;
    end;
end;
local l_CollectionService_0 = game:GetService("CollectionService");
local function v45(v29) --[[ Line: 67 ]]
    -- upvalues: l_CollectionService_0 (copy)
    local l_FirstChild_0 = game.ReplicatedStorage.Emotes.NewAssets:FindFirstChild(v29.name);
    local l_char_0 = v29.char;
    local l_cleanup_0 = v29.cleanup;
    if l_FirstChild_0 then
        local v33 = {};
        local l_Parts_0 = l_FirstChild_0.Parts;
        local l_Welds_0 = l_FirstChild_0.Welds;
        local v36 = {};
        for _, v38 in pairs(l_Parts_0:GetChildren()) do
            local v39 = nil;
            if v38:IsA("Model") then
                v39 = v38:Clone();
                v39.Parent = l_char_0;
            elseif v38:IsA("Part") or v38:IsA("MeshPart") or v38:IsA("UnionOperation") then
                v39 = v38:Clone();
                v39.Parent = l_char_0;
                v39.Anchored = false;
                v39.Massless = true;
            end;
            table.insert(v33, v39);
            table.insert(v36, v39);
            v39:SetAttribute("EmoteProperty", true);
            table.insert(l_cleanup_0, v39);
            l_CollectionService_0:AddTag(v39, "emoteendstuff" .. l_char_0.Name);
        end;
        for _, v41 in pairs(l_Welds_0:GetChildren()) do
            local v42 = v41:Clone();
            v42:SetAttribute("EmoteProperty", true);
            table.insert(l_cleanup_0, v42);
            l_CollectionService_0:AddTag(v42, "emoteendstuff" .. l_char_0.Name);
            spawn(function() --[[ Line: 111 ]]
                -- upvalues: l_char_0 (copy), v42 (copy)
                for _, v44 in pairs(l_char_0:GetDescendants()) do
                    if tostring(v44) == v42:GetAttribute("Parent") then
                        v42.Parent = v44;
                    end;
                    if tostring(v44) == v42:GetAttribute("Part0") and not v44:IsA("Model") and (v44:IsA("Part") or v44:IsA("MeshPart") or v44:IsA("UnionOperation")) then
                        v42.Part0 = v44;
                    end;
                    if tostring(v44) == v42:GetAttribute("Part1") and not v44:IsA("Model") and (v44:IsA("Part") or v44:IsA("MeshPart") or v44:IsA("UnionOperation")) then
                        v42.Part1 = v44;
                    end;
                end;
            end);
            table.insert(v33, v42);
        end;
        return v33;
    else
        return;
    end;
end;
local function v55(v46) --[[ Line: 139 ]]
    local l_cleanup_1 = v46.cleanup;
    local l_object_0 = v46.object;
    local l_char_1 = v46.char;
    local l_mind_0 = v46.mind;
    local l_part1_0 = v46.part1;
    l_object_0:SetAttribute("EmoteProperty", true);
    table.insert(l_cleanup_1, l_object_0);
    l_mind_0.Handle = l_object_0;
    local l_Motor6D_0 = l_object_0:FindFirstChildOfClass("Motor6D");
    l_Motor6D_0:SetAttribute("EmoteProperty", true);
    table.insert(l_cleanup_1, l_Motor6D_0);
    l_mind_0.md = l_Motor6D_0;
    if tostring(l_object_0) == l_part1_0 then
        l_part1_0 = l_object_0;
    else
        for _, v54 in pairs(l_object_0:GetChildren()) do
            if (v54:IsA("Part") or v54:IsA("MeshPart")) and tostring(v54) == l_part1_0 then
                l_part1_0 = v54;
                break;
            end;
        end;
    end;
    l_Motor6D_0.Part0 = v46.part0;
    l_Motor6D_0.Part1 = l_part1_0;
    l_Motor6D_0.Parent = v46.Parent or l_char_1.PrimaryPart;
    l_object_0.Parent = l_char_1;
end;
local v56 = {
    1839850227, 
    1837571829, 
    1845742329, 
    9038380332, 
    1839444520, 
    140238630247057, 
    9045031823, 
    1839312938, 
    1838577168, 
    83119347007476, 
    9045590571, 
    9112871516, 
    1841681029, 
    1837934932, 
    1840161104, 
    129084829698643, 
    9048376021, 
    1843650812, 
    120837088679745, 
    1845480621, 
    1839850337, 
    9047358509, 
    9048185180, 
    1836681160, 
    1846637439, 
    1842122622, 
    1842179370, 
    1838846993, 
    9047820458, 
    1838611838, 
    1846329169, 
    1839850227, 
    9048435290, 
    9040183974, 
    1839850402, 
    1840511111, 
    1842247841, 
    1845593645, 
    1842922954, 
    9038895603, 
    1839850699, 
    1845843249, 
    9045588592, 
    1845194026, 
    1841361703, 
    1846564205, 
    1837871067, 
    1843071445, 
    1841610903, 
    1835969978, 
    1837768352, 
    1847692872, 
    9038367768, 
    1837768517, 
    1841726277, 
    1842792928, 
    1845508064, 
    1847530262, 
    9042542555, 
    1844765268, 
    1842104602, 
    9046712764, 
    1842188443, 
    1836112668, 
    35930009, 
    9114013375, 
    1837226630, 
    9042800221, 
    1835904215, 
    1836308391, 
    1836019934, 
    1847180622, 
    9043379206, 
    9046189833, 
    1838868548, 
    1837365487, 
    14145625078, 
    1840374054, 
    1836256328, 
    9042798921, 
    1847479242, 
    1841061037, 
    9043916958, 
    1835906503, 
    9043851073, 
    1837682925, 
    17086479927, 
    9043114637, 
    1842190005, 
    9045473815, 
    1842247132, 
    1846971107, 
    1847362131, 
    9044565954, 
    1846628364, 
    1836270048, 
    1837711983, 
    1837664271, 
    17096893930, 
    1845732793, 
    1835443210, 
    1840135136, 
    17097078338, 
    1848254940, 
    1842892976, 
    1840019043, 
    17086664493, 
    1839643165, 
    14145620056, 
    9125652432, 
    9048378262, 
    1845023041, 
    1841647421, 
    9042785151, 
    1837322223, 
    1842772099, 
    1839181441, 
    9039548001, 
    1845910020, 
    1835831314, 
    1836402463, 
    9046455305, 
    1846943603, 
    1846187476, 
    1846012134, 
    1839918500, 
    1837904676, 
    1839918500, 
    1836253240, 
    9120974708, 
    9045623796, 
    9047324264, 
    1841573938, 
    9120973886, 
    1836640331, 
    1839209784, 
    1847174988, 
    1842188426, 
    1843699308, 
    1842188393, 
    1840489462, 
    13772555886, 
    1847840594, 
    9044612350, 
    1841609664, 
    9046628228, 
    1837528258, 
    9044565954, 
    1842190166, 
    1836736766, 
    1848269635, 
    9046379730, 
    1846079994, 
    1839021706, 
    9042719219, 
    1844612112, 
    1837911163, 
    1836440339, 
    1836860450, 
    1844765268, 
    1839270703, 
    1842976958, 
    1837644729, 
    1841319934, 
    1835606556, 
    9042544497, 
    9045395415, 
    1842612601, 
    13935204860, 
    9040601928, 
    1846808425, 
    1840434670
};
local function v61(v57) --[[ Line: 349 ]]
    local v58 = 0;
    for _, v60 in pairs(v57.Torso:GetChildren()) do
        if v60:IsA("Motor6D") then
            v58 = v58 + 1;
        end;
    end;
    if v58 == 5 then
        return true;
    else
        return false;
    end;
end;
local function v67(v62) --[[ Line: 363 ]]
    -- upvalues: v61 (copy)
    for _, v64 in pairs(workspace.Live:GetChildren()) do
        if tostring(v64) ~= tostring(v62) and v64:FindFirstChild("Humanoid") and v64:FindFirstChild("HumanoidRootPart") and v62 and v62.PrimaryPart then
            local l_Humanoid_0 = v64:FindFirstChild("Humanoid");
            local l_HumanoidRootPart_0 = v64:FindFirstChild("HumanoidRootPart");
            if l_Humanoid_0.Health <= 0 and (l_HumanoidRootPart_0.Position - v62.PrimaryPart.Position).Magnitude <= 12.5 and not v64:FindFirstChild("KillEmoteFinished") and v61(v64) and not v64:FindFirstChild("DoingEmote") then
                return v64;
            end;
        end;
    end;
end;
local l_CollectionService_1 = game:GetService("CollectionService");
local l_TweenService_0 = game:GetService("TweenService");
local function v75(v70) --[[ Line: 377 ]]
    -- upvalues: v1 (ref), v56 (copy), l_CollectionService_1 (copy)
    v70.Name = "EmoteSFX";
    v70.RollOffMaxDistance = v1;
    local v71, v72, v73 = shared.sfx(v70);
    local v74 = string.gsub(v71.SoundId, "rbxassetid://", "");
    if v74 and table.find(v56, (tonumber(v74))) then
        l_CollectionService_1:AddTag(v71, "EmoteMusic");
    end;
    v71:SetAttribute("EmoteProperty", true);
    return v71, v72, v73;
end;
local function v82(v76) --[[ Line: 391 ]]
    local l_orig_0 = v76.orig;
    local l_dir_0 = v76.dir;
    local v79 = RaycastParams.new();
    v79.FilterDescendantsInstances = v76.Whitelist or v76.Ignore or {
        workspace.Thrown, 
        workspace.Live
    };
    if v76.Whitelist then
        v79.FilterType = Enum.RaycastFilterType.Include;
    else
        v79.FilterType = Enum.RaycastFilterType.Exclude;
    end;
    if v76.Blockcast then
        local v80 = workspace:Blockcast(l_orig_0, v76.Blockcast, l_dir_0, v79);
        if v80 then
            return v80.Instance, v80.Position, v80.Material, v80.Normal;
        else
            return;
        end;
    else
        local v81 = workspace:Raycast(l_orig_0, l_dir_0, v79);
        if v81 then
            return v81.Instance, v81.Position, v81.Material, v81.Normal;
        else
            return;
        end;
    end;
end;
local function _(v83, v84) --[[ Line: 418 ]]
    local l_unit_0 = (Vector3.new(v84.X, v83.p.Y, v84.Z) - v83.p).unit;
    return (math.deg((math.acos((v83.LookVector:Dot(l_unit_0))))));
end;
local v87 = Random.new();
local function v91(v88, v89, v90) --[[ Line: 427 ]]
    -- upvalues: v87 (copy)
    if not v89 and v88 then
        v89 = v88;
        v88 = 1;
    end;
    if not v89 and not v88 then
        v88 = 0;
        v89 = 1;
    end;
    if not v90 then
        return v87:NextNumber(v88, v89);
    else
        return v87:NextInteger(v88, v89);
    end;
end;
local function v99(v92, v93, v94) --[[ Line: 444 ]]
    local v95 = game.ReplicatedStorage.Emotes[v92 .. "Handle"]:Clone();
    v95:SetAttribute("EmoteProperty", true);
    table.insert(v93, v95);
    local l_m6d_0 = v95.m6d;
    l_m6d_0:SetAttribute("EmoteProperty", true);
    table.insert(v93, l_m6d_0);
    l_m6d_0.Part1 = v95[v92 .. "HandleMain"];
    l_m6d_0.Part0 = v94[v92 .. " Arm"];
    l_m6d_0.Parent = l_m6d_0.Part1;
    for _, v98 in pairs(v95:GetDescendants()) do
        if v98:IsA("BasePart") then
            v98.Color = l_m6d_0.Part0.Color;
            if v94:FindFirstChild("Left ArmL") then
                v98.Color = Color3.fromRGB(49, 48, 51);
                v98.Reflectance = 0.1;
            elseif v94:FindFirstChild("Red Gloves") then
                v98.Color = Color3.fromRGB(145, 65, 65);
            end;
        end;
    end;
    v95.Parent = v94;
    return v95;
end;
v0.Play = function(_, v101, v102, v103, v104, v105) --[[ Line: 466 ]] --[[ Name: Play ]]
    -- upvalues: v17 (copy), v75 (copy), l_CollectionService_1 (copy), v99 (copy), v27 (copy), v7 (copy), v45 (copy), v1 (ref), l_TweenService_0 (copy), v87 (copy), v55 (copy), v91 (copy), v67 (copy), v11 (copy), v82 (copy), v3 (copy), v22 (copy), v0 (copy), v2 (copy)
    local l_PlayerFromCharacter_0 = game.Players:GetPlayerFromCharacter(v101);
    local v107 = nil;
    local v108 = nil;
    v108 = {
        Blink = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://118341941379862", 
                    Volume = 2
                }, 
                [0.5] = {
                    SoundId = "rbxassetid://118100641167521", 
                    Volume = 2, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Animation = 0, 
            Idle = 0, 
            HideWeapon = true, 
            Stun = "Slowed", 
            Looped = true, 
            StunAttribute = 0.65, 
            Startup = function(v109, _, _, _, v113) --[[ Line: 494 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v107 (ref)
                if game.Players:GetPlayerFromCharacter(v101) then
                    local v114 = shared.cfolder({
                        Name = "BlinkBind", 
                        Parent = v101
                    });
                    table.insert(v109, v114);
                    game.ReplicatedStorage.Replication:FireAllClients({
                        Effect = "Blink Emote", 
                        bind = v114, 
                        char = v101
                    });
                    task.spawn(function() --[[ Line: 508 ]]
                        -- upvalues: v107 (ref), v109 (copy), v113 (copy), v101 (ref)
                        local v115 = v107(99643081415160);
                        table.insert(v109, v115);
                        while true do
                            if task.wait() then
                                if v113.interrupted then
                                    v115:Stop();
                                    return;
                                elseif v101.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0, 0) then
                                    if not v115.IsPlaying then
                                        v115:Play();
                                    end;
                                else
                                    v115:Stop();
                                end;
                            else
                                return;
                            end;
                        end;
                    end);
                end;
            end
        }, 
        ["Aka Stance"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://81330852490415", 
                    Volume = 2
                }
            }, 
            Idle = 118383042869348, 
            Animation = 131177495882827, 
            HideWeapon = true, 
            Stun = "Freeze", 
            Keyframes = {
                start = function(v116, _, _, _, _) --[[ Line: 539 ]]
                    -- upvalues: v17 (ref), v101 (copy), v75 (ref), l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy)
                    v17({
                        v101
                    }, 1);
                    v75({
                        SoundId = "rbxassetid://91565431637142", 
                        Parent = v101.Torso, 
                        Looped = true, 
                        Volume = 0.5
                    }):Play();
                    local v121 = v101["Right Arm"];
                    for _ = 1, 2 do
                        local v123 = game.ReplicatedStorage.Emotes.cursedEnergy2:Clone();
                        v123.Parent = v101;
                        v123:SetAttribute("EmoteProperty", true);
                        table.insert(v116, v123);
                        l_CollectionService_1:AddTag(v123, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                        local l_Weld_0 = Instance.new("Weld");
                        l_Weld_0.Part0 = v121;
                        l_Weld_0.Part1 = v123;
                        l_Weld_0.Parent = v123;
                        l_Weld_0.C0 = CFrame.new(0, -1, 0);
                        v121 = v101["Left Arm"];
                    end;
                end
            }
        }, 
        ["Ao Stance"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://107531870259193", 
                    Volume = 2
                }
            }, 
            Idle = 113201609340793, 
            Animation = 104243341468337, 
            HideWeapon = true, 
            Stun = "Freeze", 
            Keyframes = {
                start = function(v125, _, _, _, _) --[[ Line: 590 ]]
                    -- upvalues: v17 (ref), v101 (copy), v75 (ref), l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy)
                    v17({
                        v101
                    }, 1);
                    v75({
                        SoundId = "rbxassetid://91565431637142", 
                        Parent = v101.Torso, 
                        Looped = true, 
                        Volume = 0.5
                    }):Play();
                    local v130 = v101["Right Arm"];
                    for _ = 1, 2 do
                        local v132 = game.ReplicatedStorage.Emotes.cursedEnergy:Clone();
                        v132.Parent = v101;
                        v132:SetAttribute("EmoteProperty", true);
                        table.insert(v125, v132);
                        l_CollectionService_1:AddTag(v132, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                        local l_Weld_1 = Instance.new("Weld");
                        l_Weld_1.Part0 = v130;
                        l_Weld_1.Part1 = v132;
                        l_Weld_1.Parent = v132;
                        l_Weld_1.C0 = CFrame.new(0, -1, 0);
                        v130 = v101["Left Arm"];
                    end;
                end
            }
        }, 
        Amplify = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://112089323132965", 
                    Volume = 2
                }
            }, 
            Animation = 106778226674700, 
            HideWeapon = true, 
            Stun = "Freeze", 
            MeleeEffects = true, 
            Keyframes = {
                first = function(v134, _, _, _, _) --[[ Line: 643 ]]
                    -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy), v17 (ref)
                    local l_AmplifyVfx_0 = game.ReplicatedStorage.Emotes.AmplifyVfx;
                    local v140 = {};
                    local v141 = {};
                    local function v148(v142, v143) --[[ Line: 650 ]]
                        -- upvalues: l_AmplifyVfx_0 (copy), v134 (copy), l_CollectionService_1 (ref), v104 (ref), l_PlayerFromCharacter_0 (ref), v101 (ref), v141 (copy), v140 (copy)
                        local v144 = l_AmplifyVfx_0[v142]:Clone();
                        v144.Parent = v143;
                        game.Debris:AddItem(v144, 5);
                        v144:SetAttribute("EmoteProperty", true);
                        table.insert(v134, v144);
                        l_CollectionService_1:AddTag(v144, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                        local l_Motor6D_1 = v144:FindFirstChildOfClass("Motor6D");
                        if l_Motor6D_1 then
                            v144.CanCollide = false;
                            v144.Massless = true;
                            v144.Anchored = false;
                            l_Motor6D_1.Part0 = v143;
                            l_Motor6D_1.Part1 = v144;
                        else
                            v144.CFrame = v101.PrimaryPart.CFrame * CFrame.new(0, 0, -2);
                        end;
                        for _, v147 in pairs(v144:GetDescendants()) do
                            if v147:IsA("ParticleEmitter") then
                                v147:Emit(v147:GetAttribute("EmitCount"));
                                if l_Motor6D_1 then
                                    v147.Enabled = true;
                                    table.insert(v141, v147);
                                end;
                                if tostring(v142) == "head" then
                                    table.insert(v140, v147);
                                end;
                            end;
                        end;
                    end;
                    v17({
                        v101
                    }, 1);
                    v148("arm", v101["Right Arm"]);
                    v148("head", v101.Head);
                    wait(1.1);
                    for _, v150 in pairs(v140) do
                        v150.Enabled = false;
                    end;
                    for _, v152 in pairs(v141) do
                        v152.Enabled = false;
                        game.Debris:AddItem(v152, 1);
                    end;
                end, 
                sec = function(v153, _, _, _, _) --[[ Line: 697 ]]
                    -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy), v17 (ref)
                    local l_AmplifyVfx_1 = game.ReplicatedStorage.Emotes.AmplifyVfx;
                    local function v165(v159, v160) --[[ Line: 700 ]]
                        -- upvalues: l_AmplifyVfx_1 (copy), v153 (copy), l_CollectionService_1 (ref), v104 (ref), l_PlayerFromCharacter_0 (ref), v101 (ref)
                        local v161 = l_AmplifyVfx_1[v159]:Clone();
                        v161.Parent = v160;
                        game.Debris:AddItem(v161, 5);
                        v161:SetAttribute("EmoteProperty", true);
                        table.insert(v153, v161);
                        l_CollectionService_1:AddTag(v161, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                        local l_Motor6D_2 = v161:FindFirstChildOfClass("Motor6D");
                        if l_Motor6D_2 then
                            v161.CanCollide = false;
                            v161.Massless = true;
                            v161.Anchored = false;
                            l_Motor6D_2.Part0 = v160;
                            l_Motor6D_2.Part1 = v161;
                        else
                            v161.CFrame = v101.PrimaryPart.CFrame * CFrame.new(0, 0, -2);
                        end;
                        for _, v164 in pairs(v161:GetDescendants()) do
                            if v164:IsA("ParticleEmitter") then
                                v164:Emit(v164:GetAttribute("EmitCount"));
                                if l_Motor6D_2 then
                                    v164.Enabled = true;
                                end;
                            end;
                        end;
                    end;
                    v17({
                        v101
                    }, 3);
                    v165("arm2", v101["Left Arm"]);
                    v165("auraoff", v101["Left Arm"]);
                    shared.MeleeEffects({
                        Char = v101, 
                        Effect = "Amplify", 
                        time = 30
                    });
                end
            }
        }, 
        ["Beneath Me"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://106138436425034", 
                    Volume = 2
                }
            }, 
            Animation = 134934729128196, 
            HideWeapon = true, 
            Stun = "Freeze", 
            KillEmote = true
        }, 
        ["Boxed Up"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://90314606305113", 
                    Volume = 2
                }
            }, 
            Animation = 111810635064735, 
            HideWeapon = true, 
            Stun = "Freeze", 
            KillEmote = true, 
            Startup = function(v166, _, v168) --[[ Line: 770 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v169 = game.ReplicatedStorage.Emotes.Present:Clone();
                v169:SetAttribute("EmoteProperty", true);
                table.insert(v166, v169);
                v168.Handle = v169;
                local l_MasterM_0 = v169.MasterM;
                l_MasterM_0:SetAttribute("EmoteProperty", true);
                table.insert(v166, l_MasterM_0);
                v168.md = l_MasterM_0;
                l_MasterM_0.Part0 = v101.PrimaryPart;
                l_MasterM_0.Name = "Master";
                l_MasterM_0.Part1 = v169.Master;
                l_MasterM_0.Parent = v101.PrimaryPart;
                v169.Parent = v101.PrimaryPart;
                v75({
                    SoundId = "rbxassetid://113981806904179", 
                    Parent = v169.Master.Top, 
                    Volume = 2
                }):Play();
            end
        }, 
        Ruthless = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://108336805340224", 
                    ParentTorso = true, 
                    Volume = 2
                }
            }, 
            Animation = 129295156336675, 
            HideWeapon = true, 
            Stun = "Freeze", 
            KillEmote = true, 
            Startup = function(v171, _, _) --[[ Line: 874 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local function _(v174) --[[ Line: 875 ]]
                    -- upvalues: v171 (copy), l_CollectionService_1 (ref), v104 (ref), l_PlayerFromCharacter_0 (ref), v101 (ref)
                    v174:SetAttribute("EmoteProperty", true);
                    table.insert(v171, v174);
                    l_CollectionService_1:AddTag(v174, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                end;
                local l_Part_0 = game.ReplicatedStorage.Emotes.Ruthless.Part;
                local v177 = v101["Right Arm"];
                for _ = 1, 2 do
                    local v179 = nil;
                    local v180 = {};
                    for _, v182 in pairs(l_Part_0:GetChildren()) do
                        local v183 = v182:Clone();
                        v183:SetAttribute("EmoteProperty", true);
                        table.insert(v171, v183);
                        l_CollectionService_1:AddTag(v183, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                        v183.Parent = v177;
                        if v183:FindFirstChildOfClass("Trail") then
                            v179 = v183;
                        end;
                        v180[tostring(v183):find("1") and 1 or 2] = v183;
                    end;
                    for _, v185 in pairs(v179:GetChildren()) do
                        v185.Attachment0 = v180[1];
                        v185.Attachment1 = v180[2];
                    end;
                    v177 = v101["Left Arm"];
                end;
            end
        }, 
        Weak = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://128113260968190", 
                    Volume = 3
                }
            }, 
            Animation = 93125757361125, 
            HideWeapon = true, 
            Stun = "Freeze", 
            KillEmote = true
        }, 
        ["Energy Barrage"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://82169026724146", 
                    Volume = 2
                }
            }, 
            Animation = 101680746241828, 
            HideWeapon = true, 
            Stun = "Freeze", 
            KillEmote = true
        }, 
        Insect = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://95402001280762", 
                    Volume = 2
                }
            }, 
            Animation = 139229122563753, 
            HideWeapon = true, 
            Stun = "Freeze", 
            KillEmote = true, 
            Startup = function(v186, _, _) --[[ Line: 952 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Right", v186, v101);
            end
        }, 
        ["Dragon Combo"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://131083520587944", 
                    ParentTorso = true, 
                    Volume = 2
                }
            }, 
            Animation = 136363608783208, 
            HideWeapon = true, 
            Stun = "Freeze", 
            KillEmote = true
        }, 
        ["Heart Strike"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://131308069692843", 
                    Volume = 2
                }
            }, 
            Animation = 77053316619185, 
            HideWeapon = true, 
            Stun = "Freeze", 
            KillEmote = true, 
            Startup = function(v190, _, v192) --[[ Line: 989 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v190, v101);
                local _ = v99("Right", v190, v101);
                local v195 = game.ReplicatedStorage.Emotes.bookHeart:Clone();
                v195:SetAttribute("EmoteProperty", true);
                table.insert(v190, v195);
                local v196 = v195["Book BinderM"];
                v196:SetAttribute("EmoteProperty", true);
                table.insert(v190, v196);
                v192.md = v196;
                v196.Part0 = v101["Left Arm"];
                v196.Part1 = v195["Book Binder"];
                v196.Parent = v101["Left Arm"];
                v195.Parent = v101;
                v196.Name = "Book Binder";
            end
        }, 
        Wipe = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://120656055302454", 
                    Volume = 2
                }
            }, 
            Startup = function(v197, _, _) --[[ Line: 1015 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy)
                local l_Wipe_0 = game.ReplicatedStorage.Emotes.Wipe;
                local v201 = l_Wipe_0.Glasses:Clone();
                v201.Parent = v101.Head;
                local l_Motor6D_3 = v201:FindFirstChildOfClass("Motor6D");
                l_Motor6D_3.Part0 = v101.Head;
                l_Motor6D_3.Part1 = v201;
                l_Motor6D_3.Parent = v101.Head;
                local v203 = l_Wipe_0["forget device"]:Clone();
                v203.Parent = v101;
                local l_Mm_0 = v203.Mm;
                l_Mm_0.Part0 = v101["Right Arm"];
                l_Mm_0.Part1 = v203["memory stick"];
                l_Mm_0.Parent = v101["Right Arm"];
                l_Mm_0.Name = "memory stick";
                for _, v206 in pairs({
                    v201, 
                    l_Motor6D_3, 
                    l_Mm_0, 
                    v203
                }) do
                    v206:SetAttribute("EmoteProperty", true);
                    table.insert(v197, v206);
                    l_CollectionService_1:AddTag(v206, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                end;
            end, 
            Animation = 101859186770986, 
            HideWeapon = true, 
            Stun = "Freeze", 
            KillEmote = true
        }, 
        Telekinesis = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://137599530392999", 
                    Volume = 3
                }
            }, 
            Startup = function(_, _, _) --[[ Line: 1054 ]] --[[ Name: Startup ]]

            end, 
            Animation = 109608173870373, 
            HideWeapon = true, 
            Stun = "Freeze", 
            KillEmote = true
        }, 
        ["Fly High"] = {
            Sounds = {}, 
            Startup = function(v210, _, _) --[[ Line: 1071 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                v75({
                    SoundId = "rbxassetid://78462595468736", 
                    Parent = v101.Torso, 
                    Volume = 2
                }):Play();
                local v213 = v75({
                    SoundId = "rbxassetid://93204259658665", 
                    CFrame = v101.PrimaryPart.CFrame * CFrame.new(-0.591, 1, 8.396), 
                    Volume = 2
                });
                v213:Play();
                table.insert(v210, v213);
            end, 
            Animation = 80293430011221, 
            HideWeapon = true, 
            Stun = "Freeze", 
            KillEmote = true
        }, 
        ["Sure Hit"] = {
            Sounds = {}, 
            Startup = function(v214, _, _) --[[ Line: 1099 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                local v217 = nil;
                v217 = v75({
                    SoundId = "rbxassetid://133870782945226", 
                    Volume = 2, 
                    Parent = v101["Right Arm"]
                });
                v217:Play();
                table.insert(v214, v217);
            end, 
            Animation = 140145728452253, 
            HideWeapon = true, 
            Stun = "Freeze", 
            KillEmote = true
        }, 
        ["Ban Hammer"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://120472586857703", 
                    ParentTorso = true, 
                    Volume = 2
                }
            }, 
            Startup = function(v218, _, _) --[[ Line: 1126 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v221 = game.ReplicatedStorage.Emotes.BanHammer:Clone();
                v221:SetAttribute("EmoteProperty", true);
                table.insert(v218, v221);
                l_CollectionService_1:AddTag(v221, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_Motor6D_4 = v221:FindFirstChildOfClass("Motor6D");
                l_Motor6D_4:SetAttribute("EmoteProperty", true);
                table.insert(v218, l_Motor6D_4);
                l_CollectionService_1:AddTag(l_Motor6D_4, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local v223 = v101["Right Arm"];
                l_Motor6D_4.Part0 = v223;
                l_Motor6D_4.Part1 = v221;
                l_Motor6D_4.Parent = v223;
                v221.Parent = v101["Right Arm"];
                l_Motor6D_4.Parent = v101["Right Arm"];
                v221.Name = "Handle";
            end, 
            Animation = 71063727733290, 
            HideWeapon = true, 
            Stun = "Freeze", 
            KillEmote = true
        }, 
        Death = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://74850078026570", 
                    Volume = 1.5, 
                    Looped = true
                }
            }, 
            Keyframes = {
                stop = function() --[[ Line: 1171 ]]
                    -- upvalues: v101 (copy), v27 (ref)
                    for _, v225 in pairs(v101.PrimaryPart:GetChildren()) do
                        if v225:GetAttribute("Wolf") then
                            v27(v225);
                        end;
                    end;
                end, 
                clang = function() --[[ Line: 1179 ]]
                    -- upvalues: v101 (copy), v7 (ref)
                    local l_Sparks2_0 = v101:FindFirstChild("Sparks2");
                    if not l_Sparks2_0 then
                        l_Sparks2_0 = game.ReplicatedStorage.Emotes.BadWolf.Sparks2:Clone();
                        l_Sparks2_0.Parent = v101;
                        local l_Motor6D_5 = l_Sparks2_0:FindFirstChildOfClass("Motor6D");
                        l_Motor6D_5.Part0 = v101.PrimaryPart;
                        l_Motor6D_5.Part1 = l_Sparks2_0;
                        l_Motor6D_5.Parent = v101.PrimaryPart;
                    end;
                    v7(l_Sparks2_0);
                end, 
                restart = function() --[[ Line: 1196 ]]
                    -- upvalues: v101 (copy), v27 (ref)
                    for _, v229 in pairs(v101.PrimaryPart:GetChildren()) do
                        if v229:GetAttribute("Wolf") then
                            v27(v229, true);
                        end;
                    end;
                end
            }, 
            Startup = function(v230, _, _) --[[ Line: 1205 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local function _(v233) --[[ Line: 1206 ]]
                    -- upvalues: v230 (copy), l_CollectionService_1 (ref), v104 (ref), l_PlayerFromCharacter_0 (ref), v101 (ref)
                    v233:SetAttribute("EmoteProperty", true);
                    table.insert(v230, v233);
                    l_CollectionService_1:AddTag(v233, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    v233.Parent = v101;
                end;
                local l_BadWolf_0 = game.ReplicatedStorage.Emotes.BadWolf;
                local function v242(v236) --[[ Line: 1212 ]]
                    -- upvalues: v230 (copy), l_CollectionService_1 (ref), v104 (ref), l_PlayerFromCharacter_0 (ref), v101 (ref)
                    for _, v238 in pairs(v236.things) do
                        local v239 = v238:Clone();
                        v239:SetAttribute("EmoteProperty", true);
                        table.insert(v230, v239);
                        l_CollectionService_1:AddTag(v239, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                        v239.Parent = v101;
                        local l_Motor6D_6 = v239:FindFirstChildOfClass("Motor6D");
                        l_Motor6D_6:SetAttribute("EmoteProperty", true);
                        table.insert(v230, l_Motor6D_6);
                        l_CollectionService_1:AddTag(l_Motor6D_6, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                        local v241 = v101["Right Arm"];
                        if v238.Name == v236.Left then
                            v241 = v101["Left Arm"];
                        end;
                        if v236.Parent then
                            v241 = v236.Parent;
                        end;
                        l_Motor6D_6.Part0 = v241;
                        l_Motor6D_6.Part1 = v239;
                        l_Motor6D_6.Parent = v241;
                        v239.Parent = v236.Parent or v101;
                        if v236.set then
                            v239:SetAttribute("Wolf", true);
                        end;
                    end;
                end;
                v242({
                    things = {
                        l_BadWolf_0.HandleL, 
                        l_BadWolf_0.HandleR
                    }, 
                    Left = "HandleL"
                });
                v242({
                    things = {
                        l_BadWolf_0.Left, 
                        l_BadWolf_0.Right
                    }, 
                    Left = "Left", 
                    Parent = v101.PrimaryPart, 
                    set = true
                });
            end, 
            Animation = 138819926694160, 
            HideWeapon = true, 
            Stun = "Slowed", 
            Looped = true, 
            Infinite = true, 
            DontDisconnectMarkers = true
        }, 
        ["Blades Of Jade"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://82078299414169", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Keyframes = {
                floorhit = function() --[[ Line: 1265 ]]
                    -- upvalues: v101 (copy)
                    local v243 = RaycastParams.new();
                    v243.FilterType = Enum.RaycastFilterType.Exclude;
                    v243.FilterDescendantsInstances = {
                        workspace.Thrown, 
                        workspace.Live
                    };
                    local function v248(v244) --[[ Line: 1273 ]]
                        -- upvalues: v101 (ref), v243 (copy)
                        for _, v246 in pairs(v244:GetDescendants()) do
                            if v246:IsA("ParticleEmitter") then
                                if tostring(v246) == "smoke" then
                                    local v247 = workspace:Raycast(v101.PrimaryPart.Position, v101.PrimaryPart.Position, v243);
                                    if v247 then
                                        v246.Color = ColorSequence.new(v247.Instance.Color);
                                    end;
                                end;
                                v246:Emit(v246:GetAttribute("EmitCount"));
                            end;
                        end;
                    end;
                    for _, v250 in pairs(v101:GetDescendants()) do
                        if (tostring(v250) == "JadeL" or tostring(v250) == "JadeR") and v250:IsA("Model") then
                            v248(v250);
                        end;
                    end;
                end, 
                touchfloor = function() --[[ Line: 1297 ]]
                    -- upvalues: v101 (copy), v7 (ref)
                    local l_ClashVFX_0 = v101.PrimaryPart:FindFirstChild("ClashVFX");
                    if l_ClashVFX_0 then
                        v7(l_ClashVFX_0);
                    end;
                end
            }, 
            Startup = function(v252, _, _) --[[ Line: 1306 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local function _(v255) --[[ Line: 1307 ]]
                    -- upvalues: v252 (copy), l_CollectionService_1 (ref), v104 (ref), l_PlayerFromCharacter_0 (ref), v101 (ref)
                    v255:SetAttribute("EmoteProperty", true);
                    table.insert(v252, v255);
                    l_CollectionService_1:AddTag(v255, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                end;
                local l_BladesOfJade_0 = game.ReplicatedStorage.Emotes.BladesOfJade;
                for _, v259 in pairs(l_BladesOfJade_0.Attach:GetChildren()) do
                    local v260 = v259:Clone();
                    v260.Parent = v101.Head;
                    v260:SetAttribute("EmoteProperty", true);
                    table.insert(v252, v260);
                    l_CollectionService_1:AddTag(v260, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                end;
                for _, v262 in pairs({
                    l_BladesOfJade_0.JadeL, 
                    l_BladesOfJade_0.JadeR
                }) do
                    local v263 = v262:Clone();
                    v263:SetAttribute("EmoteProperty", true);
                    table.insert(v252, v263);
                    l_CollectionService_1:AddTag(v263, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    local l_Motor6D_7 = v263:FindFirstChildOfClass("Motor6D");
                    l_Motor6D_7:SetAttribute("EmoteProperty", true);
                    table.insert(v252, l_Motor6D_7);
                    l_CollectionService_1:AddTag(l_Motor6D_7, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    local v265 = v101["Right Arm"];
                    if v262.Name == "JadeL" then
                        v265 = v101["Left Arm"];
                    end;
                    l_Motor6D_7.Part0 = v265;
                    l_Motor6D_7.Part1 = v263.ChainPart1;
                    l_Motor6D_7.Parent = v265;
                    v263.Parent = v101;
                    l_Motor6D_7.Name = "ChainPart1";
                end;
                local v266 = l_BladesOfJade_0.Part.ClashVFX:Clone();
                v266.Parent = v101.PrimaryPart;
                v266:SetAttribute("EmoteProperty", true);
                table.insert(v252, v266);
                l_CollectionService_1:AddTag(v266, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
            end, 
            Animation = 121440687354239, 
            HideWeapon = true, 
            Stun = "Slowed", 
            Looped = true, 
            Infinite = true, 
            DontDisconnectMarkers = true
        }, 
        ["Cymbal Walk"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://137380821099041", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Startup = function(v267, _, _) --[[ Line: 1364 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                for _, v271 in pairs({
                    game.ReplicatedStorage.Emotes.Circle1, 
                    game.ReplicatedStorage.Emotes.Circle2
                }) do
                    local v272 = v271:Clone();
                    v272:SetAttribute("EmoteProperty", true);
                    table.insert(v267, v272);
                    l_CollectionService_1:AddTag(v272, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    local l_Motor6D_8 = v272:FindFirstChildOfClass("Motor6D");
                    l_Motor6D_8:SetAttribute("EmoteProperty", true);
                    table.insert(v267, l_Motor6D_8);
                    l_CollectionService_1:AddTag(l_Motor6D_8, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    local v274 = v101["Right Arm"];
                    if v271.Name == "Circle2" then
                        v274 = v101["Left Arm"];
                    end;
                    l_Motor6D_8.Part0 = v274;
                    l_Motor6D_8.Part1 = v272;
                    l_Motor6D_8.Parent = v274;
                    v272.Parent = v101;
                end;
            end, 
            Animation = 81416134930511, 
            HideWeapon = true, 
            Stun = "Slowed", 
            Looped = true
        }, 
        Cymbals = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://120045687952609", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Startup = function(v275, _, _) --[[ Line: 1401 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                for _, v279 in pairs({
                    game.ReplicatedStorage.Emotes.Circle1, 
                    game.ReplicatedStorage.Emotes.Circle2
                }) do
                    local v280 = v279:Clone();
                    v280:SetAttribute("EmoteProperty", true);
                    table.insert(v275, v280);
                    l_CollectionService_1:AddTag(v280, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    local l_Motor6D_9 = v280:FindFirstChildOfClass("Motor6D");
                    l_Motor6D_9:SetAttribute("EmoteProperty", true);
                    table.insert(v275, l_Motor6D_9);
                    l_CollectionService_1:AddTag(l_Motor6D_9, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    local v282 = v101["Right Arm"];
                    if v279.Name == "Circle2" then
                        v282 = v101["Left Arm"];
                    end;
                    l_Motor6D_9.Part0 = v282;
                    l_Motor6D_9.Part1 = v280;
                    l_Motor6D_9.Parent = v282;
                    v280.Parent = v101;
                end;
            end, 
            Animation = 95156811398036, 
            HideWeapon = true, 
            Stun = "Freeze"
        }, 
        ["Send Backup"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://117092445671019", 
                    Volume = 2, 
                    Looped = true
                }
            }, 
            Startup = function(v283, _, _) --[[ Line: 1437 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v286 = game.ReplicatedStorage.Emotes.WalkieTalkie:Clone();
                v286:SetAttribute("EmoteProperty", true);
                table.insert(v283, v286);
                l_CollectionService_1:AddTag(v286, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_Motor6D_10 = v286.Motor6D;
                l_Motor6D_10:SetAttribute("EmoteProperty", true);
                table.insert(v283, l_Motor6D_10);
                l_CollectionService_1:AddTag(l_Motor6D_10, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                v286.Name = "Handle";
                l_Motor6D_10.Part0 = v101["Left Arm"];
                l_Motor6D_10.Part1 = v286;
                l_Motor6D_10.Parent = v101.PrimaryPart;
                v286.Parent = v101.PrimaryPart;
            end, 
            Animation = 102938209711074, 
            HideWeapon = true, 
            Stun = "Slowed"
        }, 
        ["Chalice Play"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://89041127733848", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Startup = function(v288, _, _) --[[ Line: 1468 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v291 = game.ReplicatedStorage.Emotes.chalice:Clone();
                v291:SetAttribute("EmoteProperty", true);
                table.insert(v288, v291);
                l_CollectionService_1:AddTag(v291, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_Motor_0 = v291.Motor;
                l_Motor_0:SetAttribute("EmoteProperty", true);
                table.insert(v288, l_Motor_0);
                l_CollectionService_1:AddTag(l_Motor_0, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_Motor_0.Part0 = v101["Left Arm"];
                l_Motor_0.Part1 = v291.Handle;
                l_Motor_0.Parent = v101["Left Arm"];
                l_Motor_0.Name = "Handle";
                v291.Parent = v101;
            end, 
            Idle = 108719443641457, 
            Animation = 102159604911972, 
            HideWeapon = true, 
            Stun = "Freeze", 
            Looped = true
        }, 
        ["By My Sword"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://114386873150174", 
                    Volume = 1
                }
            }, 
            Startup = function(v293, _, _) --[[ Line: 1499 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v296 = game.ReplicatedStorage.Emotes.Maniac.MeshPart:Clone();
                v296:SetAttribute("EmoteProperty", true);
                table.insert(v293, v296);
                l_CollectionService_1:AddTag(v296, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_Motor_1 = v296.Motor;
                l_Motor_1:SetAttribute("EmoteProperty", true);
                table.insert(v293, l_Motor_1);
                l_CollectionService_1:AddTag(l_Motor_1, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_Motor_1.Part0 = v101["Right Arm"];
                l_Motor_1.Part1 = v296.Handle;
                l_Motor_1.Parent = v101["Right Arm"];
                l_Motor_1.Name = "Handle";
                v296.Parent = v101;
            end, 
            Idle = 102174454129081, 
            Animation = 110359958284400, 
            HideWeapon = true, 
            Stun = "Freeze"
        }, 
        ["Begone!"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://84487824273978", 
                    Volume = 1.25, 
                    Looped = false
                }
            }, 
            Animation = 134823032473116, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        Flight = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://121935201003728", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Animation = 78547941116306, 
            Stun = "Slowed", 
            StunAttribute = 0.7, 
            HideWeapon = true, 
            Looped = true
        }, 
        ["Doodle Dance"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://120837088679745", 
                    Volume = 0.65, 
                    Looped = true
                }
            }, 
            Startup = function(v298, _, _) --[[ Line: 1566 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v298, v101);
                local _ = v99("Right", v298, v101);
            end, 
            Animation = 133225663180459, 
            Stun = "Slowed", 
            StunAttribute = 1, 
            HideWeapon = true, 
            Looped = true
        }, 
        ["Foul Smell"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://87571878180836", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v303, _, _) --[[ Line: 1589 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v303, v101);
                local _ = v99("Right", v303, v101);
            end, 
            Animation = 139039401196042, 
            Stun = "Slowed", 
            StunAttribute = 1, 
            HideWeapon = true
        }, 
        ["Be Quiet"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://116993830219499", 
                    Volume = 0.75, 
                    Looped = false
                }
            }, 
            Startup = function(v308, _, _) --[[ Line: 1632 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy), v99 (ref)
                local v311 = game.ReplicatedStorage.Emotes.PhoneBeQuiet:Clone();
                v311:SetAttribute("EmoteProperty", true);
                table.insert(v308, v311);
                l_CollectionService_1:AddTag(v311, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_PlaneMotor_0 = v311.PlaneMotor;
                l_PlaneMotor_0:SetAttribute("EmoteProperty", true);
                table.insert(v308, l_PlaneMotor_0);
                l_CollectionService_1:AddTag(l_PlaneMotor_0, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_PlaneMotor_0.Part0 = v101["Right Arm"];
                l_PlaneMotor_0.Part1 = v311.Plane;
                l_PlaneMotor_0.Parent = v101["Right Arm"];
                l_PlaneMotor_0.Name = "Plane";
                v311.Parent = v101;
                local _ = v99("Left", v308, v101);
            end, 
            Animation = 104651529417410, 
            Stun = "Freeze", 
            HideWeapon = true
        }, 
        ["Not Human"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://93844955761839", 
                    Volume = 1.25, 
                    Looped = false
                }
            }, 
            Startup = function(v314, _, _) --[[ Line: 1668 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v314, v101);
                local _ = v99("Right", v314, v101);
            end, 
            Animation = 102201408849991, 
            Stun = "Freeze", 
            HideWeapon = true
        }, 
        Torch = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://86669386299202", 
                    Volume = 0.35, 
                    Looped = true
                }
            }, 
            Startup = function(v319, _, _) --[[ Line: 1687 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v322 = game.ReplicatedStorage.Emotes.Torch:Clone();
                v322:SetAttribute("EmoteProperty", true);
                table.insert(v319, v322);
                l_CollectionService_1:AddTag(v322, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_Handle_0 = v322.Handle;
                l_Handle_0:SetAttribute("EmoteProperty", true);
                table.insert(v319, l_Handle_0);
                l_CollectionService_1:AddTag(l_Handle_0, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_Handle_0.Part0 = v101["Right Arm"];
                l_Handle_0.Part1 = v322;
                l_Handle_0.Parent = v101["Right Arm"];
                v322.Parent = v101;
            end, 
            Animation = 94311488918867, 
            HideWeapon = true, 
            Stun = "Slowed", 
            StunAttribute = 1.5, 
            Looped = true
        }, 
        ["Pitchfork Protest!"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://72343803536395", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Startup = function(v324, _, _) --[[ Line: 1717 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v327 = game.ReplicatedStorage.Emotes.pitchfork:Clone();
                v327:SetAttribute("EmoteProperty", true);
                table.insert(v324, v327);
                l_CollectionService_1:AddTag(v327, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_pitchfork_0 = v327.pitchfork;
                l_pitchfork_0:SetAttribute("EmoteProperty", true);
                table.insert(v324, l_pitchfork_0);
                l_CollectionService_1:AddTag(l_pitchfork_0, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_pitchfork_0.Part0 = v101["Left Arm"];
                l_pitchfork_0.Part1 = v327;
                l_pitchfork_0.Parent = v101["Left Arm"];
                v327.Parent = v101;
            end, 
            Animation = 84608123283347, 
            HideWeapon = true, 
            Stun = "Slowed", 
            Looped = true
        }, 
        Broomstick = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://138154662255338", 
                    Volume = 0.5, 
                    Looped = true
                }
            }, 
            Startup = function(v329, _, _) --[[ Line: 1748 ]] --[[ Name: Startup ]]
                -- upvalues: v45 (ref), v101 (copy)
                v45({
                    name = "Witch Flight", 
                    char = v101, 
                    cleanup = v329
                });
            end, 
            Animation = 84303828924826, 
            HideWeapon = true, 
            Stun = "Slowed", 
            Looped = true, 
            StunAttribute = 0.9
        }, 
        ["We want KJ!"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://103072512876625", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Startup = function(v332, _, _) --[[ Line: 1772 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v335 = game.ReplicatedStorage.Emotes.signkj:Clone();
                v335:SetAttribute("EmoteProperty", true);
                table.insert(v332, v335);
                l_CollectionService_1:AddTag(v335, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_sign_0 = v335.sign;
                l_sign_0:SetAttribute("EmoteProperty", true);
                table.insert(v332, l_sign_0);
                l_CollectionService_1:AddTag(l_sign_0, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                v335.Name = "sign";
                l_sign_0.Part0 = v101["Right Arm"];
                l_sign_0.Part1 = v335;
                l_sign_0.Parent = v101["Right Arm"];
                v335.Parent = v101;
            end, 
            Animation = 131920426725963, 
            HideWeapon = true, 
            Stun = "Slowed", 
            Looped = true
        }, 
        Disguise = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://80454452438876", 
                    Volume = 2, 
                    Looped = true
                }
            }, 
            Startup = function(v337, _, _) --[[ Line: 1803 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v340 = game.ReplicatedStorage.Emotes.Lamp:Clone();
                v340:SetAttribute("EmoteProperty", true);
                table.insert(v337, v340);
                l_CollectionService_1:AddTag(v340, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_lampheadm_0 = v340.lampheadm;
                l_lampheadm_0:SetAttribute("EmoteProperty", true);
                table.insert(v337, l_lampheadm_0);
                l_CollectionService_1:AddTag(l_lampheadm_0, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                v340.Name = "sign";
                l_lampheadm_0.Part0 = v101.Head;
                l_lampheadm_0.Part1 = v340.lamphead;
                l_lampheadm_0.Parent = v101.Head;
                l_lampheadm_0.Name = "lamphead";
                v340.Parent = v101;
            end, 
            Animation = 96185673945954, 
            HideWeapon = true, 
            Stun = "Freeze", 
            Looped = true
        }, 
        ["Fly Pose"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://131682934847578", 
                    Volume = 0.7, 
                    Looped = true
                }
            }, 
            Animation = 121381453450722, 
            Stun = "Slowed", 
            HideWeapon = true, 
            StunAttribute = 1.5, 
            Looped = true
        }, 
        Sleigh = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://74795975600529", 
                    Volume = 2
                }
            }, 
            Startup = function(v342, _, _, _, v346) --[[ Line: 1851 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy), v75 (ref)
                local v347 = game.ReplicatedStorage.Emotes.Sleigh:Clone();
                v347:SetAttribute("EmoteProperty", true);
                table.insert(v342, v347);
                l_CollectionService_1:AddTag(v347, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_Motor6D_11 = v347:FindFirstChildOfClass("Motor6D");
                l_Motor6D_11:SetAttribute("EmoteProperty", true);
                table.insert(v342, l_Motor6D_11);
                l_CollectionService_1:AddTag(l_Motor6D_11, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_Motor6D_11.Part0 = v101.PrimaryPart;
                l_Motor6D_11.Part1 = v347.Main;
                l_Motor6D_11.Parent = v101.PrimaryPart;
                v347.Parent = v101;
                task.delay(0.65, function() --[[ Line: 1864 ]]
                    -- upvalues: v346 (copy), v75 (ref), v101 (ref), v342 (copy)
                    if v346.interrupted then
                        return;
                    else
                        local v349 = nil;
                        v349 = v75({
                            SoundId = "rbxassetid://103153234346526", 
                            Volume = 2, 
                            Looped = true, 
                            Parent = v101.PrimaryPart
                        });
                        v349:Play();
                        v349:SetAttribute("EmoteProperty", true);
                        table.insert(v342, v349);
                        return;
                    end;
                end);
            end, 
            Animation = 104031205817566, 
            Idle = 119811670686735, 
            HideWeapon = true, 
            Stun = "Slowed"
        }, 
        ["Hunter Pose"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://117253563855238", 
                    Volume = 2, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v350, _, _) --[[ Line: 1895 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy)
                local v353 = game.ReplicatedStorage.Emotes.RockBig:Clone();
                v353.Parent = v101;
                v353.Anchored = true;
                v353:SetAttribute("EmoteProperty", true);
                table.insert(v350, v353);
                l_CollectionService_1:AddTag(v353, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                spawn(function() --[[ Line: 1902 ]]
                    -- upvalues: v353 (copy), v101 (ref)
                    local v354 = tick();
                    while true do
                        if task.wait() and tick() - v354 < 0.5 and v353 then
                            if not v353.Parent then
                                return;
                            else
                                v353.CFrame = v101.PrimaryPart.CFrame * CFrame.new(0, -1.5, 4);
                            end;
                        else
                            return;
                        end;
                    end;
                end);
            end, 
            Animation = 78615192673057, 
            Idle = 123794818363362, 
            HideWeapon = true, 
            Stun = "Freeze", 
            NoRotate = true
        }, 
        Borgir = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://77582360503674", 
                    Volume = 2, 
                    Looped = true
                }
            }, 
            Startup = function(v355, _, _) --[[ Line: 1932 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v358 = game.ReplicatedStorage.Emotes.Borgir:Clone();
                v358:SetAttribute("EmoteProperty", true);
                table.insert(v355, v358);
                l_CollectionService_1:AddTag(v358, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_Motor_2 = v358.Motor;
                l_Motor_2:SetAttribute("EmoteProperty", true);
                table.insert(v355, l_Motor_2);
                l_CollectionService_1:AddTag(l_Motor_2, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_Motor_2.Part0 = v101["Right Arm"];
                l_Motor_2.Part1 = v358;
                l_Motor_2.Parent = v101["Right Arm"];
                l_Motor_2.Name = "Borgir";
                v358.Parent = v101;
            end, 
            Animation = 127304623515480, 
            HideWeapon = true, 
            Stun = "Slowed"
        }, 
        EZ = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://75267063621706", 
                    Volume = 1
                }
            }, 
            Startup = function(v360, _, _) --[[ Line: 1961 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v363 = game.ReplicatedStorage.Emotes.PlacaSoPraAnimar:Clone();
                v363:SetAttribute("EmoteProperty", true);
                table.insert(v360, v363);
                l_CollectionService_1:AddTag(v363, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_PlacaSoPraAnimar_0 = v363.PlacaSoPraAnimar;
                l_PlacaSoPraAnimar_0:SetAttribute("EmoteProperty", true);
                table.insert(v360, l_PlacaSoPraAnimar_0);
                l_CollectionService_1:AddTag(l_PlacaSoPraAnimar_0, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_PlacaSoPraAnimar_0.Part0 = v101["Right Arm"];
                l_PlacaSoPraAnimar_0.Part1 = v363;
                l_PlacaSoPraAnimar_0.Parent = v101["Right Arm"];
                v363.Parent = v101;
            end, 
            Keyframes = {
                freeze = function(_, _, v367) --[[ Line: 1976 ]]
                    v367:AdjustSpeed(0);
                end
            }, 
            Animation = 92883107669654, 
            HideWeapon = true, 
            Stun = "Freeze"
        }, 
        Maniac = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://73879474716638", 
                    Volume = 1.5, 
                    Looped = true
                }
            }, 
            Startup = function(v368, _, _) --[[ Line: 1995 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v371 = game.ReplicatedStorage.Emotes.Maniac.MeshPart:Clone();
                v371:SetAttribute("EmoteProperty", true);
                table.insert(v368, v371);
                l_CollectionService_1:AddTag(v371, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_Motor_3 = v371.Motor;
                l_Motor_3:SetAttribute("EmoteProperty", true);
                table.insert(v368, l_Motor_3);
                l_CollectionService_1:AddTag(l_Motor_3, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_Motor_3.Part0 = v101["Right Arm"];
                l_Motor_3.Part1 = v371.Handle;
                l_Motor_3.Parent = v101["Right Arm"];
                l_Motor_3.Name = "Handle";
                v371.Parent = v101;
            end, 
            Looped = true, 
            Animation = 124337193780872, 
            HideWeapon = true, 
            Stun = "Slowed"
        }, 
        ["League Oath"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://80178845592358", 
                    Volume = 1.5
                }
            }, 
            Startup = function(v373, _, _) --[[ Line: 2025 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v376 = game.ReplicatedStorage.Emotes.Maniac.MeshPart:Clone();
                v376:SetAttribute("EmoteProperty", true);
                table.insert(v373, v376);
                l_CollectionService_1:AddTag(v376, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_Motor_4 = v376.Motor;
                l_Motor_4:SetAttribute("EmoteProperty", true);
                table.insert(v373, l_Motor_4);
                l_CollectionService_1:AddTag(l_Motor_4, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_Motor_4.Part0 = v101["Right Arm"];
                l_Motor_4.Part1 = v376.Handle;
                l_Motor_4.Parent = v101["Right Arm"];
                l_Motor_4.Name = "Handle";
                v376.Parent = v101;
            end, 
            Animation = 78851551917642, 
            Idle = 71163641460855, 
            HideWeapon = true, 
            Stun = "Freeze"
        }, 
        Mid = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://126631832022361", 
                    Volume = 2
                }
            }, 
            Animation = 84359348423275, 
            Stun = "Slowed", 
            StunAttribute = 1, 
            HideWeapon = true, 
            Startup = function(v378, _, _) --[[ Line: 2062 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v378, v101);
                local _ = v99("Right", v378, v101);
            end
        }, 
        Calculating = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://114224288259949", 
                    Volume = 2
                }
            }, 
            Animation = 104956990421479, 
            Stun = "Freeze", 
            HideWeapon = true, 
            Startup = function(v383, _, _) --[[ Line: 2080 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v383, v101);
                local _ = v99("Right", v383, v101);
            end
        }, 
        ["All Me"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://137124741132218", 
                    Volume = 2
                }
            }, 
            Animation = 110694817344709, 
            Stun = "Slowed", 
            StunAttribute = 1, 
            HideWeapon = true, 
            Startup = function(v388, _, _) --[[ Line: 2100 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v388, v101);
                local _ = v99("Right", v388, v101);
            end
        }, 
        ["Clean Fight"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://139711598002213", 
                    Volume = 2
                }
            }, 
            Animation = 133121061492478, 
            Stun = "Freeze", 
            HideWeapon = true, 
            Startup = function(v393, _, _) --[[ Line: 2118 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v393, v101);
                local _ = v99("Right", v393, v101);
            end
        }, 
        Yapper = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://137138220384381", 
                    Volume = 2
                }
            }, 
            Animation = 85271812976018, 
            Stun = "Slowed", 
            StunAttribute = 1, 
            HideWeapon = true, 
            Startup = function(v398, _, _) --[[ Line: 2137 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v398, v101);
                local _ = v99("Right", v398, v101);
            end
        }, 
        ["Self Hate"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://102327892747347", 
                    Volume = 2
                }
            }, 
            Animation = 98491634200850, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        ["War Cry"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://91755545882744", 
                    Volume = 2, 
                    Looped = true
                }
            }, 
            Animation = 127113883473285, 
            Stun = "Freeze"
        }, 
        ["Fire In Me"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://93396994882536", 
                    Volume = 2, 
                    Looped = true
                }
            }, 
            Animation = 92116312846822, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Delight = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://134481671165609", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Animation = 134228716476620, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Triumphant Delight"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://72674553555470", 
                    Volume = 2
                }
            }, 
            Animation = 124645358602106, 
            Stun = "Freeze"
        }, 
        ["Curl Up"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://86176537548647", 
                    Volume = 2
                }
            }, 
            Animation = 134273575464340, 
            Idle = 85758455402628, 
            Stun = "Freeze"
        }, 
        Crashout = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://134407182653763", 
                    Volume = 1
                }, 
                [1.0E-5] = {
                    SoundId = "rbxassetid://117722877981575", 
                    Volume = 1
                }
            }, 
            Animation = 106400765698758, 
            Idle = 103362214977039, 
            Stun = "Freeze", 
            Keyframes = {
                vfx = function(v403, _, _) --[[ Line: 2244 ]]
                    -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy), v75 (ref)
                    local function _(v406) --[[ Line: 2246 ]]
                        -- upvalues: v403 (copy), l_CollectionService_1 (ref), v104 (ref), l_PlayerFromCharacter_0 (ref), v101 (ref)
                        v406:SetAttribute("EmoteProperty", true);
                        table.insert(v403, v406);
                        l_CollectionService_1:AddTag(v406, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    end;
                    local v408 = game.ReplicatedStorage.Emotes.BackgroundCrashoutVfx:Clone();
                    v408.Parent = v101;
                    v408.Anchored = true;
                    v408:SetAttribute("EmoteProperty", true);
                    table.insert(v403, v408);
                    l_CollectionService_1:AddTag(v408, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    v408.CFrame = v101.PrimaryPart.CFrame * CFrame.new(0, -0.5, 0);
                    task.delay(0.1, function() --[[ Line: 2256 ]]
                        -- upvalues: v408 (copy), v75 (ref), v101 (ref)
                        if v408 and v408.Parent then
                            v75({
                                SoundId = "rbxassetid://94069267034673", 
                                Volume = 2, 
                                Looped = true, 
                                Parent = v101.PrimaryPart
                            }):Play();
                            v75({
                                SoundId = "rbxassetid://85346361575494", 
                                Volume = 2, 
                                Looped = true, 
                                Parent = v101.PrimaryPart
                            }):Play();
                        end;
                    end);
                    local l_ColorCorrectionEffect_0 = Instance.new("ColorCorrectionEffect");
                    l_ColorCorrectionEffect_0.Enabled = true;
                    l_ColorCorrectionEffect_0.Parent = game.Lighting;
                    l_ColorCorrectionEffect_0:SetAttribute("EmoteProperty", true);
                    table.insert(v403, l_ColorCorrectionEffect_0);
                    l_CollectionService_1:AddTag(l_ColorCorrectionEffect_0, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    if shared.p(v101) then
                        game.ReplicatedStorage.Replication:FireClient(game.Players:GetPlayerFromCharacter(v101), {
                            Type = "RageCcEmote", 
                            Cc = l_ColorCorrectionEffect_0
                        });
                    end;
                    for _, v411 in pairs({
                        v408.Eye, 
                        v408.Shade
                    }) do
                        v411.Parent = v101.Head;
                        v411:SetAttribute("EmoteProperty", true);
                        table.insert(v403, v411);
                        l_CollectionService_1:AddTag(v411, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    end;
                    local _ = tick();
                    local function v415(v413) --[[ Line: 2292 ]]
                        -- upvalues: v101 (ref)
                        local l_PlayerFromCharacter_1 = game.Players:GetPlayerFromCharacter(v101);
                        if l_PlayerFromCharacter_1 then
                            game.ReplicatedStorage.Replication:FireClient(l_PlayerFromCharacter_1, {
                                Effect = "Camshake", 
                                Intensity = v413
                            });
                        end;
                    end;
                    v415(3);
                    wait(0.1);
                    while true do
                        if v408 then
                            if not v408.Parent then
                                return;
                            else
                                v415(1);
                                task.wait(0.1);
                            end;
                        else
                            return;
                        end;
                    end;
                end
            }
        }, 
        ["Take Me On"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://77696812615768", 
                    Volume = 1
                }
            }, 
            Animation = 106128760138039, 
            Idle = 128334295101396, 
            Stun = "Freeze", 
            End = {
                108557346368699, 
                0.35, 
                {}
            }
        }, 
        Backwards = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1839850227", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            HideWeapon = true, 
            Animation = 17863082627, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Side To Side"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1845742329", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            HideWeapon = true, 
            Animation = 17861884104, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Celebration = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9048376021", 
                    Volume = 1, 
                    Looped = true, 
                    TimePosition = 23.5
                }
            }, 
            HideWeapon = true, 
            Animation = 17863041811, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Hitting It"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1839850337", 
                    Volume = 1, 
                    Looped = true, 
                    TimePosition = 23.5
                }
            }, 
            Animation = 124040557048936, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Ohio Dance"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9047358509", 
                    Volume = 1, 
                    Looped = true, 
                    TimePosition = 60
                }
            }, 
            HideWeapon = true, 
            Animation = 17861841334, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Laughable = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18828378634", 
                    Volume = 1, 
                    Looped = false, 
                    ParentTorso = true
                }, 
                [1] = {
                    SoundId = "rbxassetid://9116239157", 
                    Volume = 2, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Keyframes = {}, 
            Infinite = true, 
            HideWeapon = true, 
            Animation = 18897661505, 
            Stun = "Slowed", 
            StunAttribute = 1.5
        }, 
        ["You Hear This?"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18828322371", 
                    Volume = 1, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Keyframes = {}, 
            Infinite = true, 
            HideWeapon = true, 
            Animation = 18897631758, 
            Stun = "Slowed", 
            StunAttribute = 1.5
        }, 
        ["Dramatic Kick"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18829050749", 
                    Volume = 1, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Keyframes = {}, 
            Animation = 18897648446, 
            Stun = "Freeze"
        }, 
        Leg = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9040183974", 
                    Volume = 1, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Keyframes = {}, 
            Looped = true, 
            Animation = 18897664299, 
            Stun = "Slowed", 
            StunAttribute = 1.75
        }, 
        Dodge = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18843747132", 
                    Volume = 1, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Keyframes = {}, 
            Animation = 18897560632, 
            Stun = "Freeze"
        }, 
        Emote = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18828144688", 
                    Volume = 2, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Keyframes = {}, 
            HideWeapon = true, 
            Animation = 18897531388, 
            Stun = "Slowed", 
            StunAttribute = 1.5
        }, 
        ["Exercise 2"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18843268995", 
                    Volume = 1, 
                    TimePosition = 0.2, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Keyframes = {}, 
            HideWeapon = true, 
            Animation = 18897643802, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Burpee = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18828186356", 
                    Volume = 1, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Keyframes = {}, 
            HideWeapon = true, 
            Animation = 18897501714, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Forever = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18828925553", 
                    Volume = 1, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Keyframes = {}, 
            HideWeapon = true, 
            Animation = 18897617695, 
            Idle = 18897615186, 
            Stun = "Freeze"
        }, 
        Unimpressed = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18827957735", 
                    Volume = 1, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Keyframes = {}, 
            Infinite = true, 
            HideWeapon = true, 
            Animation = 18897731065, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Headbanger = {
            Sounds = {}, 
            Keyframes = {}, 
            Startup = function() --[[ Line: 2634 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                v75({
                    SoundId = "rbxassetid://1836270048", 
                    Volume = 1, 
                    TimePosition = 0.25, 
                    Looped = true, 
                    Parent = v101.Head
                }):Resume();
            end, 
            HideWeapon = true, 
            Animation = 18897492506, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Daydream = {
            Sounds = {}, 
            Keyframes = {}, 
            Startup = function() --[[ Line: 2659 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                v75({
                    SoundId = "rbxassetid://1842247841", 
                    Volume = 1, 
                    TimePosition = 5, 
                    Parent = v101.Head
                }):Resume();
            end, 
            Infinite = true, 
            HideWeapon = true, 
            Animation = 18897563773, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Clear My Head"] = {
            Sounds = {}, 
            Keyframes = {}, 
            Startup = function() --[[ Line: 2683 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                v75({
                    SoundId = "rbxassetid://18827980294", 
                    Volume = 1, 
                    TimePosition = 0.1, 
                    Parent = v101.Head
                }):Resume();
            end, 
            HideWeapon = true, 
            Animation = 18897628831, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Forwards = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1839850227", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Keyframes = {
                clap = function() --[[ Line: 2708 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://2704706975", 
                        Volume = 1, 
                        Parent = v101.Head
                    }):Play();
                end
            }, 
            Infinite = true, 
            HideWeapon = true, 
            Animation = 17862100862, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Kicks = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1842418969", 
                    Volume = 1, 
                    Looped = true, 
                    TimePosition = 1
                }
            }, 
            HideWeapon = true, 
            Animation = 17861870996, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Stepping Shuffle"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1839850402", 
                    Volume = 1, 
                    Looped = true, 
                    TimePosition = 1
                }
            }, 
            HideWeapon = true, 
            Animation = 17861898789, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Speedy Legs"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9038895603", 
                    Volume = 1, 
                    Looped = true, 
                    TimePosition = 1
                }
            }, 
            HideWeapon = true, 
            Animation = 17863047324, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Excited Shuffle"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1839850699", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            HideWeapon = true, 
            Animation = 17863091228, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Arm Sway"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1846564205", 
                    Volume = 0.4, 
                    Looped = true
                }
            }, 
            HideWeapon = true, 
            Animation = 17861898147, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Low Snaps"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1837871067", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Animation = 17861881962, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Blood Swipe"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://93497864837958", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Animation = 122647124825700, 
            Stun = "Slowed"
        }, 
        ["Great Escape"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1845843249", 
                    Volume = 0.3, 
                    Looped = true
                }
            }, 
            Infinite = true, 
            Animation = 17861862787, 
            Looped = true, 
            Stun = "Slowed", 
            StunAttribute = 1.5
        }, 
        Beatdown = {
            Keyframes = {
                clap = function() --[[ Line: 2855 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://18835607404", 
                        Parent = v101.Torso, 
                        Volume = 1, 
                        PlaybackSpeed = 1
                    }):Play();
                end
            }, 
            Sounds = {}, 
            Startup = function(v416, _, v418) --[[ Line: 2870 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v419 = game.ReplicatedStorage.Emotes.Sunflower:Clone();
                v419:SetAttribute("EmoteProperty", true);
                table.insert(v416, v419);
                v418.Handle = v419;
                local l_Sunflower_0 = v419.Sunflower;
                l_Sunflower_0:SetAttribute("EmoteProperty", true);
                table.insert(v416, l_Sunflower_0);
                v418.md = l_Sunflower_0;
                l_Sunflower_0.Part0 = v101.PrimaryPart;
                l_Sunflower_0.Part1 = v419;
                l_Sunflower_0.Parent = v101.PrimaryPart;
                if math.random(1, 2) == 1 then
                    v419.Handle:Destroy();
                else
                    v419.Handle2:Destroy();
                end;
                v419.Parent = v101;
            end, 
            Infinite = true, 
            HideWeapon = true, 
            Animation = 18897695481, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Run = {
            Keyframes = {
                clap = function(v421) --[[ Line: 2893 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    if not v421.x then
                        v421.x = 1;
                    end;
                    v75({
                        SoundId = ({
                            "rbxassetid://18844121515", 
                            "rbxassetid://18844121774", 
                            "rbxassetid://18844122004", 
                            "rbxassetid://18844122195"
                        })[math.random(1, 4)], 
                        Parent = v421.x % 2 == 0 and v101["Left Leg"] or v101["Right Leg"], 
                        Volume = 0.3, 
                        PlaybackSpeed = 1
                    }):Play();
                    v421.x = v421.x + 1;
                end
            }, 
            Sounds = {}, 
            Startup = function(_, _, _) --[[ Line: 2911 ]] --[[ Name: Startup ]]

            end, 
            Infinite = true, 
            Animation = 18897700236, 
            Looped = true, 
            Stun = "Slowed", 
            StunAttribute = 0.825
        }, 
        Watch = {
            Keyframes = {}, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9047820458", 
                    Volume = 1.35, 
                    Looped = true
                }
            }, 
            Startup = function(v425, _, v427) --[[ Line: 2935 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v428 = game.ReplicatedStorage.Emotes.clock:Clone();
                v428:SetAttribute("EmoteProperty", true);
                table.insert(v425, v428);
                v427.Handle = v428;
                local v429 = v428["Rig.006"];
                v429:SetAttribute("EmoteProperty", true);
                table.insert(v425, v429);
                v427.md = v429;
                v429.Part0 = v101["Left Arm"];
                v429.Part1 = v428;
                v429.Parent = v101["Left Arm"];
                v428.Name = "Rig.006";
                v428.Parent = v101;
            end, 
            Animation = 18897733312, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        DJ = {
            Keyframes = {}, 
            Sounds = {}, 
            Startup = function(v430, _, v432) --[[ Line: 2959 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v433 = game.ReplicatedStorage.Emotes.dj_Pad:Clone();
                v433:SetAttribute("EmoteProperty", true);
                table.insert(v430, v433);
                v432.Handle = v433;
                local l_Base_0 = v433.Base.Base;
                l_Base_0:SetAttribute("EmoteProperty", true);
                table.insert(v430, l_Base_0);
                v432.md = l_Base_0;
                l_Base_0.Part0 = v101.PrimaryPart;
                l_Base_0.Part1 = v433.Base;
                l_Base_0.Parent = v101.PrimaryPart;
                v433.Parent = v101;
                v75({
                    SoundId = "rbxassetid://18844058756", 
                    Parent = v433.Base, 
                    Volume = 1
                }):Play();
                task.delay(1.2, function() --[[ Line: 2973 ]]
                    -- upvalues: v433 (copy), v75 (ref)
                    if not v433.Parent then
                        return;
                    else
                        v75({
                            SoundId = "rbxassetid://1836681160", 
                            Parent = v433.Base, 
                            Volume = 1, 
                            Looped = true
                        }):Play();
                        return;
                    end;
                end);
            end, 
            Animation = 18897558226, 
            Idle = 18897555962, 
            Stun = "Slowed", 
            StunAttribute = 1.25
        }, 
        Horn = {
            Keyframes = {}, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18844027402", 
                    ParentTorso = true, 
                    Volume = 1.85
                }
            }, 
            Startup = function(v435, _, v437) --[[ Line: 3003 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v438 = game.ReplicatedStorage.Emotes.horn:Clone();
                v438:SetAttribute("EmoteProperty", true);
                table.insert(v435, v438);
                v437.Handle = v438;
                local l_horn_0 = v438.horn;
                l_horn_0:SetAttribute("EmoteProperty", true);
                table.insert(v435, l_horn_0);
                v437.md = l_horn_0;
                l_horn_0.Part0 = v101["Right Arm"];
                l_horn_0.Part1 = v438;
                l_horn_0.Parent = v101["Right Arm"];
                v438.Parent = v101;
            end, 
            Animation = 18897636555, 
            Stun = "Slowed", 
            StunAttribute = 1.5
        }, 
        ["Big Shoe"] = {
            Keyframes = {}, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1843650812", 
                    ParentTorso = true, 
                    Volume = 1.85, 
                    TimePosition = 15, 
                    Looped = true
                }
            }, 
            Startup = function(v440, _, v442) --[[ Line: 3032 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v443 = game.ReplicatedStorage.Emotes["big shoe lol"]:Clone();
                v443:SetAttribute("EmoteProperty", true);
                table.insert(v440, v443);
                v442.Handle = v443;
                local v444 = v443["big shoe lol"];
                v444:SetAttribute("EmoteProperty", true);
                table.insert(v440, v444);
                v442.md = v444;
                v444.Part0 = v101["Right Leg"];
                v444.Part1 = v443;
                v444.Parent = v101["Right Leg"];
                v443.Parent = v101["Right Leg"];
                v75({
                    SoundId = "rbxassetid://18843835286", 
                    Parent = v443, 
                    Volume = 2, 
                    Looped = true
                }):Play();
            end, 
            Animation = 18897707539, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Bhop = {
            Keyframes = {}, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18844493172", 
                    ParentTorso = true, 
                    Volume = 0.5, 
                    Looped = true
                }
            }, 
            Startup = function(v445, _, v447) --[[ Line: 3067 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v448 = game.ReplicatedStorage.Emotes.Plane:Clone();
                v448:SetAttribute("EmoteProperty", true);
                table.insert(v445, v448);
                v447.Handle = v448;
                local l_Plane_0 = v448.Plane;
                l_Plane_0:SetAttribute("EmoteProperty", true);
                table.insert(v445, l_Plane_0);
                v447.md = l_Plane_0;
                l_Plane_0.Part0 = v101["Right Arm"];
                l_Plane_0.Part1 = v448;
                l_Plane_0.Parent = v101["Right Arm"];
                v448.Parent = v101;
            end, 
            Fix = true, 
            HideWeapon = true, 
            Looped = true, 
            Animation = 18897499721, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        Lollipop = {
            Keyframes = {}, 
            Sounds = {}, 
            Startup = function(v450, _, v452) --[[ Line: 3093 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v453 = game.ReplicatedStorage.Emotes.LeftHandlecand:Clone();
                v453:SetAttribute("EmoteProperty", true);
                table.insert(v450, v453);
                v452.Handle = v453;
                v453.Name = "LeftHandle";
                local l_LeftHandle_0 = v453.LeftHandle;
                l_LeftHandle_0:SetAttribute("EmoteProperty", true);
                table.insert(v450, l_LeftHandle_0);
                v452.md = l_LeftHandle_0;
                l_LeftHandle_0.Part0 = v101["Left Arm"];
                l_LeftHandle_0.Part1 = v453;
                l_LeftHandle_0.Parent = v101["Left Arm"];
                v453.Parent = v101;
                v75({
                    SoundId = "rbxassetid://18844183460", 
                    Parent = v453, 
                    Volume = 1
                }):Play();
            end, 
            HideWeapon = true, 
            Animation = 18897505064, 
            Idle = 18897508344, 
            Stun = "Slowed", 
            StunAttribute = 1.5
        }, 
        Treadmill = {
            Keyframes = {
                clap = function(v455) --[[ Line: 3118 ]]
                    -- upvalues: v101 (copy), v1 (ref)
                    if not v455.x then
                        v455.x = 1;
                    end;
                    shared.sfx({
                        SoundId = ({
                            "rbxassetid://18844324520", 
                            "rbxassetid://18844324837", 
                            "rbxassetid://18844325082"
                        })[math.random(1, 3)], 
                        Parent = v455.x % 2 == 0 and v101["Left Leg"] or v101["Right Leg"], 
                        Volume = 0.85, 
                        RollOffMaxDistance = v1, 
                        PlaybackSpeed = 1
                    }):Play();
                    v455.x = v455.x + 1;
                end
            }, 
            Sounds = {}, 
            Startup = function(v456, _, v458) --[[ Line: 3137 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref), v107 (ref)
                local v459 = game.ReplicatedStorage.Emotes.Treadmill:Clone();
                v459:SetAttribute("EmoteProperty", true);
                table.insert(v456, v459);
                v458.Handle = v459;
                local l_Treadmill_0 = v459.Treadmill;
                l_Treadmill_0:SetAttribute("EmoteProperty", true);
                table.insert(v456, l_Treadmill_0);
                v458.md = l_Treadmill_0;
                l_Treadmill_0.Part0 = v101.PrimaryPart;
                l_Treadmill_0.Part1 = v459;
                l_Treadmill_0.Parent = v101.PrimaryPart;
                v459.Parent = v101;
                v75({
                    SoundId = "rbxassetid://18844323927", 
                    Parent = v459, 
                    Volume = 1
                }):Play();
                v75({
                    SoundId = "rbxassetid://18844324232", 
                    Parent = v459, 
                    Volume = 1, 
                    Looped = true
                }):Play();
                task.spawn(function() --[[ Line: 3158 ]]
                    -- upvalues: v107 (ref), v459 (copy)
                    local v461 = v107(18897724289);
                    local v462 = 1;
                    repeat
                        task.wait();
                        if v461.IsPlaying then
                            v462 = v462 + 1.0E-6;
                            v461:AdjustSpeed((math.clamp(v462, 0, 10)));
                        end;
                    until not v459.Parent;
                end);
            end, 
            IdleKeyframes = true, 
            Infinite = true, 
            HideWeapon = true, 
            Animation = 18897726542, 
            Idle = 18897724289, 
            Stun = "Freeze"
        }, 
        Bear = {
            Keyframes = {
                clap = function(v463) --[[ Line: 3180 ]]
                    -- upvalues: v75 (ref)
                    if not v463.x then
                        v463.x = 1;
                    end;
                    v75({
                        SoundId = ({
                            "rbxassetid://18846632392", 
                            "rbxassetid://18846632707", 
                            "rbxassetid://18846633000", 
                            "rbxassetid://18846633359"
                        })[math.random(1, 4)], 
                        Parent = v463.x % 2 == 0 and v463.b["BRight Leg"] or v463.b["BLeft Leg"], 
                        Volume = 0.3, 
                        PlaybackSpeed = 1
                    }):Play();
                    v463.x = v463.x + 1;
                    if v463.x % 5 == 0 then
                        v75({
                            SoundId = ({
                                "rbxassetid://18846691304", 
                                "rbxassetid://18846691736", 
                                "rbxassetid://18846692037"
                            })[math.random(1, 3)], 
                            Parent = v463.b.Head, 
                            Volume = 1, 
                            PlaybackSpeed = 1
                        }):Play();
                    end;
                end
            }, 
            Sounds = {}, 
            Startup = function(v464, _, v466) --[[ Line: 3206 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v467 = game.ReplicatedStorage.Emotes.Bear:Clone();
                v467:SetAttribute("EmoteProperty", true);
                table.insert(v464, v467);
                v466.Handle = v467;
                local l_Body_0 = v467.Body.Body;
                l_Body_0:SetAttribute("EmoteProperty", true);
                table.insert(v464, l_Body_0);
                v466.md = l_Body_0;
                l_Body_0.Part0 = v101.PrimaryPart;
                l_Body_0.Part1 = v467.Body;
                l_Body_0.Parent = v101.PrimaryPart;
                v467.Parent = v101;
                v466.b = v467;
                v75({
                    SoundId = ({
                        "rbxassetid://18846691304", 
                        "rbxassetid://18846691736", 
                        "rbxassetid://18846692037"
                    })[math.random(1, 3)], 
                    Parent = v466.b.Head, 
                    Volume = 1, 
                    PlaybackSpeed = 1
                }):Play();
            end, 
            Infinite = true, 
            HideWeapon = true, 
            Fix = true, 
            Animation = 18897495704, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Cooked = {
            Keyframes = {}, 
            Sounds = {}, 
            Startup = function(v469, _, v471) --[[ Line: 3240 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v472 = game.ReplicatedStorage.Emotes.PanTwo:Clone();
                v472:SetAttribute("EmoteProperty", true);
                table.insert(v469, v472);
                v471.Handle = v472;
                local l_Pan_0 = v472.Pan;
                l_Pan_0:SetAttribute("EmoteProperty", true);
                table.insert(v469, l_Pan_0);
                v471.md = l_Pan_0;
                l_Pan_0.Part0 = v101["Right Arm"];
                l_Pan_0.Part1 = v472;
                l_Pan_0.Parent = v101["Right Arm"];
                v472.Name = "Pan";
                v472.Parent = v101;
                v75({
                    SoundId = "rbxassetid://18829100753", 
                    Parent = v472, 
                    Volume = 1, 
                    Looped = true
                }):Play();
                local v474 = game.ReplicatedStorage.Emotes.Pancake:Clone();
                v474:SetAttribute("EmoteProperty", true);
                table.insert(v469, v474);
                v471.Handle = v474;
                local v475 = v472["Meshes/Pancake"];
                v475:SetAttribute("EmoteProperty", true);
                table.insert(v469, v475);
                v471.md = v475;
                v475.Part0 = v472;
                v475.Part1 = v474;
                v475.Parent = v472;
                v474.Parent = v101;
            end, 
            HideWeapon = true, 
            Animation = 18897548874, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["English or Spanish"] = {
            Keyframes = {}, 
            Sounds = {}, 
            Startup = function(v476, _, v478) --[[ Line: 3279 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                for _, v480 in pairs({
                    "English", 
                    "Spanish", 
                    "TextHandle"
                }) do
                    local v481 = game.ReplicatedStorage.Emotes[v480]:Clone();
                    v481:SetAttribute("EmoteProperty", true);
                    table.insert(v476, v481);
                    v478.Handle = v481;
                    local v482 = v481[v480];
                    v482:SetAttribute("EmoteProperty", true);
                    table.insert(v476, v482);
                    v478.md = v482;
                    v482.Part0 = v101.PrimaryPart;
                    v482.Part1 = v481;
                    v482.Parent = v101.PrimaryPart;
                    v481.Parent = v101;
                end;
                v75({
                    SoundId = "rbxassetid://18835721216", 
                    Parent = v101.PrimaryPart, 
                    Volume = 1
                }):Play();
                v75({
                    SoundId = "rbxassetid://9045031823", 
                    Parent = v101.PrimaryPart, 
                    Looped = true, 
                    Volume = 0.3
                }):Play();
            end, 
            HideWeapon = true, 
            Animation = 18897604359, 
            Idle = 18897610765, 
            Stun = "Freeze"
        }, 
        ["Mad Skills"] = {
            Keyframes = {}, 
            Sounds = {}, 
            Startup = function(v483, _, v485) --[[ Line: 3318 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v486 = game.ReplicatedStorage.Emotes.boombox:Clone();
                v486:SetAttribute("EmoteProperty", true);
                table.insert(v483, v486);
                v485.Handle = v486;
                local l_m6d_1 = v486.m6d;
                l_m6d_1:SetAttribute("EmoteProperty", true);
                table.insert(v483, l_m6d_1);
                v485.md = l_m6d_1;
                l_m6d_1.Part0 = v101.PrimaryPart;
                l_m6d_1.Part1 = v486;
                l_m6d_1.Parent = v101.PrimaryPart;
                l_m6d_1.Name = "Motor6D";
                v486.Name = "Part";
                v486.Parent = v101.PrimaryPart;
                v75({
                    SoundId = "rbxassetid://1846329169", 
                    Parent = v486, 
                    Volume = 1, 
                    Looped = true
                }):Play();
            end, 
            HideWeapon = true, 
            Animation = 18897639790, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Around My Way"] = {
            Keyframes = {}, 
            Sounds = {}, 
            Startup = function(_, _, _) --[[ Line: 3351 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v75 (ref), v107 (ref)
                local v491 = game.ReplicatedStorage.Emotes.BoomBox:Clone();
                v491:SetAttribute("EmoteProperty", true);
                local l_BoomBox_0 = v491.BoomBox;
                l_BoomBox_0:SetAttribute("EmoteProperty", true);
                l_BoomBox_0.Part0 = v101.PrimaryPart;
                l_BoomBox_0.Part1 = v491;
                l_BoomBox_0.Parent = v101.PrimaryPart;
                v491.Parent = v101;
                l_CollectionService_1:AddTag(v491, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                task.delay(0.25, function() --[[ Line: 3360 ]]
                    -- upvalues: v491 (copy), v75 (ref)
                    if v491.Parent then
                        v75({
                            SoundId = "rbxassetid://18843532846", 
                            Parent = v491, 
                            Volume = 1
                        }):Play();
                    end;
                end);
                task.spawn(function() --[[ Line: 3370 ]]
                    -- upvalues: v107 (ref), v491 (copy), v75 (ref)
                    local v493 = v107(18897676267);
                    repeat
                        task.wait();
                    until v493.IsPlaying or not v491.Parent;
                    if v493.IsPlaying then
                        task.wait(2.51);
                        if not v491.Parent then
                            return;
                        else
                            v75({
                                SoundId = "rbxassetid://18843484198", 
                                CFrame = v491.CFrame, 
                                TimePosition = 2.51, 
                                Volume = 1
                            }):Resume();
                        end;
                    end;
                end);
                v75({
                    SoundId = "rbxassetid://1843676441", 
                    Parent = v491, 
                    Volume = 1, 
                    Looped = true
                }):Play();
            end, 
            HideWeapon = true, 
            End = {
                18897676267, 
                3.217, 
                {
                    SoundId = "rbxassetid://18843483804", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Idle = 18897673759, 
            Animation = 18897679922, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Bindle = {
            Keyframes = {
                clap = function() --[[ Line: 3412 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://17849634815", 
                        Parent = v101.HumanoidRootPart, 
                        Volume = 1, 
                        PlaybackSpeed = 1
                    }):Play();
                end, 
                claploop = function() --[[ Line: 3424 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://17849634537", 
                        Parent = v101.HumanoidRootPart, 
                        Volume = 1, 
                        PlaybackSpeed = 1
                    }):Play();
                end
            }, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1838846993", 
                    Volume = 0.7, 
                    Looped = true
                }
            }, 
            Startup = function(v494, _, v496) --[[ Line: 3444 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v497 = game.ReplicatedStorage.Emotes.Stick:Clone();
                v497:SetAttribute("EmoteProperty", true);
                table.insert(v494, v497);
                v496.Handle = v497;
                local l_Stick_0 = v497.Stick;
                l_Stick_0:SetAttribute("EmoteProperty", true);
                table.insert(v494, l_Stick_0);
                v496.md = l_Stick_0;
                l_Stick_0.Part0 = v101["Right Arm"];
                l_Stick_0.Part1 = v497;
                l_Stick_0.Parent = v101["Right Arm"];
                v497.Parent = v101;
                local v499 = game.ReplicatedStorage.Emotes.Bag:Clone();
                v499:SetAttribute("EmoteProperty", true);
                table.insert(v494, v499);
                v496.Handle = v499;
                local l_Bag_0 = v497.Bag;
                l_Bag_0:SetAttribute("EmoteProperty", true);
                table.insert(v494, l_Bag_0);
                v496.md = l_Bag_0;
                l_Bag_0.Part0 = v497;
                l_Bag_0.Part1 = v499;
                l_Bag_0.Parent = v497;
                v499.Parent = v101["Right Arm"];
            end, 
            HideWeapon = true, 
            Animation = 17861837529, 
            Looped = true, 
            Infinite = true, 
            Stun = "Slowed"
        }, 
        Demon = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17848180129", 
                    Volume = 1, 
                    Looped = false, 
                    TimePosition = 0.3
                }
            }, 
            Startup = function(v501, _, v503) --[[ Line: 3481 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v504 = game.ReplicatedStorage.Emotes.DemonParticles.RootAttachment:Clone();
                v504:SetAttribute("EmoteProperty", true);
                table.insert(v501, v504);
                table.insert(v503, v504);
                v504.Parent = v101.HumanoidRootPart;
                game:GetService("Debris"):AddItem(v504, 2);
                for _, v506 in pairs(v504:GetChildren()) do
                    v506:Emit(1);
                end;
            end, 
            Animation = 17861844708, 
            Stun = "Freeze", 
            HideWeapon = true
        }, 
        ["Sacred Summoning"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17842803002", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            IdleSound = {
                SoundId = "rbxassetid://17842803226", 
                Volume = 1, 
                Looped = true
            }, 
            Startup = function(v507, _, _) --[[ Line: 3517 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v507, v101);
                local _ = v99("Right", v507, v101);
            end, 
            Idle = 17862993552, 
            Animation = 17862992081, 
            Stun = "Freeze", 
            HideWeapon = true
        }, 
        Frisbee = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17837903508", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v512, _, v514) --[[ Line: 3539 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v515 = game.ReplicatedStorage.Emotes.Frisbee:Clone();
                v515:SetAttribute("EmoteProperty", true);
                table.insert(v512, v515);
                v514.Frisbee = v515;
                local l_Frisbee_0 = v515.Frisbee;
                l_Frisbee_0:SetAttribute("EmoteProperty", true);
                table.insert(v512, l_Frisbee_0);
                v514.md = l_Frisbee_0;
                l_Frisbee_0.Part0 = v101["Right Arm"];
                l_Frisbee_0.Part1 = v515;
                l_Frisbee_0.Parent = v101["Right Arm"];
                v515.Parent = v101;
            end, 
            Keyframes = {
                Toss = function(v517) --[[ Line: 3551 ]]
                    -- upvalues: l_CollectionService_1 (ref), v101 (copy), l_PlayerFromCharacter_0 (copy), v75 (ref)
                    v517.Frisbee.Transparency = 1;
                    local v518 = game.ReplicatedStorage.Emotes.Frisbee:Clone();
                    l_CollectionService_1:AddTag(v518, "emotestuff" .. v101.Name);
                    game:GetService("Debris"):AddItem(v518, 5);
                    v518.CanCollide = true;
                    v518.CanTouch = true;
                    v518.CanQuery = false;
                    v518.Massless = false;
                    v518.CollisionGroup = "nocol";
                    v518.CFrame = v101:GetPivot() * CFrame.new(0, 0, -2.5);
                    v518.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1);
                    v518.Parent = workspace.Thrown;
                    v518:SetNetworkOwner(l_PlayerFromCharacter_0);
                    local v519 = 0;
                    v518.AssemblyAngularVelocity = Vector3.new(0, 480, 0, 0);
                    v518.AssemblyLinearVelocity = v101:GetPivot().LookVector * 120 + v101:GetPivot().UpVector * 40;
                    local v520 = nil;
                    v520 = v518.Touched:Connect(function(v521) --[[ Line: 3578 ]]
                        -- upvalues: v519 (ref), v518 (copy), v75 (ref)
                        if v521:IsDescendantOf(workspace.Live) or tick() - v519 < 0.075 then
                            return;
                        elseif math.abs(v518.Velocity.Y) < 4 then
                            return;
                        else
                            v519 = tick();
                            v75({
                                SoundId = "rbxassetid://9114538213", 
                                Parent = v518, 
                                Volume = 1, 
                                PlaybackSpeed = Random.new():NextNumber(0.99, 2)
                            }):Play();
                            return;
                        end;
                    end);
                    task.delay(5, function() --[[ Line: 3594 ]]
                        -- upvalues: v520 (ref)
                        v520:Disconnect();
                    end);
                end
            }, 
            HideWeapon = true, 
            Animation = 17862066234, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        ["Controller Rage"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17837716532", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v522, _, v524) --[[ Line: 3616 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v525 = game.ReplicatedStorage.Emotes.Controller:Clone();
                v525:SetAttribute("EmoteProperty", true);
                table.insert(v522, v525);
                v524.Handle = v525;
                v525.Name = "Retopo_Cube.001";
                local v526 = v525["Retopo_Cube.001"];
                v526:SetAttribute("EmoteProperty", true);
                table.insert(v522, v526);
                v524.md = v526;
                v526.Part0 = v101.HumanoidRootPart;
                v526.Part1 = v525;
                v526.Parent = v101.HumanoidRootPart;
                v525.Parent = v101;
            end, 
            HideWeapon = true, 
            Animation = 17861843594, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Spare Change"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17862020768", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Startup = function(v527, _, v529) --[[ Line: 3645 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v530 = game.ReplicatedStorage.Emotes.SpareChangeCup:Clone();
                v530:SetAttribute("EmoteProperty", true);
                table.insert(v527, v530);
                v529.Handle = v530;
                v530.Name = "Handle";
                local l_Handle_1 = v530.Handle;
                l_Handle_1:SetAttribute("EmoteProperty", true);
                table.insert(v527, l_Handle_1);
                v529.md = l_Handle_1;
                l_Handle_1.Part0 = v101["Right Arm"];
                l_Handle_1.Part1 = v530;
                l_Handle_1.Parent = v101["Right Arm"];
                v530.Parent = v101;
                local v532 = game.ReplicatedStorage.Emotes.Box:Clone();
                v532:SetAttribute("EmoteProperty", true);
                table.insert(v527, v532);
                v529.Handle = v532;
                v532.Name = "RBX";
                local v533 = v532["Cube.002"]["Cube.002"];
                v533:SetAttribute("EmoteProperty", true);
                table.insert(v527, v533);
                v529.md = v533;
                v533.Part0 = v101.HumanoidRootPart;
                v533.Part1 = v532["Cube.002"];
                v533.Parent = v101.HumanoidRootPart;
                v532.Parent = v101;
            end, 
            HideWeapon = true, 
            Animation = 17861773600, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Boo! Tomato"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17837284253", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v534, _, v536) --[[ Line: 3681 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v537 = game.ReplicatedStorage.Emotes.TSB_tomato:Clone();
                v537:SetAttribute("EmoteProperty", true);
                table.insert(v534, v537);
                v536.TSB_tomato = v537;
                v537.Transparency = 1;
                local l_TSB_tomato_0 = v537.TSB_tomato;
                l_TSB_tomato_0:SetAttribute("EmoteProperty", true);
                table.insert(v534, l_TSB_tomato_0);
                v536.md = l_TSB_tomato_0;
                l_TSB_tomato_0.Part0 = v101.HumanoidRootPart;
                l_TSB_tomato_0.Part1 = v537;
                l_TSB_tomato_0.Parent = v101.HumanoidRootPart;
                v537.Parent = v101;
            end, 
            Keyframes = {
                TomatoAppear = function(v539) --[[ Line: 3694 ]]
                    v539.TSB_tomato.Transparency = 0;
                end, 
                Tomato = function(v540) --[[ Line: 3698 ]]
                    -- upvalues: l_CollectionService_1 (ref), v101 (copy), l_PlayerFromCharacter_0 (copy), v75 (ref)
                    v540.TSB_tomato.Transparency = 1;
                    local v541 = game.ReplicatedStorage.Emotes.TSB_tomato:Clone();
                    l_CollectionService_1:AddTag(v541, "emotestuff" .. v101.Name);
                    game:GetService("Debris"):AddItem(v541, 5);
                    v541.CanCollide = true;
                    v541.CanTouch = true;
                    v541.CanQuery = false;
                    v541.Massless = false;
                    v541.CollisionGroup = "nocol";
                    v541.CFrame = v540.TSB_tomato.CFrame;
                    v541.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1);
                    v541.Parent = workspace.Thrown;
                    v541:SetNetworkOwner(l_PlayerFromCharacter_0);
                    local v542 = v101.PrimaryPart.CFrame + v101.PrimaryPart.CFrame.lookVector * 40;
                    local v543 = Vector3.new(0, -workspace.Gravity + 70, 0);
                    local v544 = v101.PrimaryPart.CFrame * CFrame.new(0, 0, -2);
                    local v545 = (v542.Position - v544.Position - 0.5 * v543 * 1 * 1) / 1;
                    local v546 = 0;
                    v541.Velocity = v545;
                    local v547 = nil;
                    v547 = v541.Touched:Connect(function(v548) --[[ Line: 3720 ]]
                        -- upvalues: v546 (ref), v541 (copy), v75 (ref)
                        if v548:IsDescendantOf(workspace.Live) or tick() - v546 < 0.075 then
                            return;
                        elseif math.abs(v541.Velocity.Y) < 4 then
                            return;
                        else
                            v546 = tick();
                            v75({
                                SoundId = "rbxassetid://9120112840", 
                                Parent = v541, 
                                Volume = 3, 
                                PlaybackSpeed = Random.new():NextNumber(1.5, 2)
                            }):Play();
                            return;
                        end;
                    end);
                    task.delay(5, function() --[[ Line: 3737 ]]
                        -- upvalues: v547 (ref)
                        if v547 then
                            v547:Disconnect();
                        end;
                    end);
                end
            }, 
            HideWeapon = true, 
            Animation = 17863116997, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Bottle Flip"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17837070780", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v549, _, v551) --[[ Line: 3761 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v552 = game.ReplicatedStorage.Emotes.TSB_waterbottle:Clone();
                v552:SetAttribute("EmoteProperty", true);
                table.insert(v549, v552);
                v551.WaterBottle = v552;
                local l_TSB_waterbottle_0 = v552.TSB_waterbottle;
                l_TSB_waterbottle_0:SetAttribute("EmoteProperty", true);
                table.insert(v549, l_TSB_waterbottle_0);
                v551.md = l_TSB_waterbottle_0;
                l_TSB_waterbottle_0.Part0 = v101.HumanoidRootPart;
                l_TSB_waterbottle_0.Part1 = v552;
                l_TSB_waterbottle_0.Parent = v101.HumanoidRootPart;
                v552.Parent = v101;
            end, 
            Keyframes = {
                Flip = function(v554) --[[ Line: 3773 ]]
                    -- upvalues: l_CollectionService_1 (ref), v101 (copy), l_PlayerFromCharacter_0 (copy), v75 (ref)
                    v554.WaterBottle.Transparency = 1;
                    local v555 = game.ReplicatedStorage.Emotes.TSB_waterbottle:Clone();
                    l_CollectionService_1:AddTag(v555, "emotestuff" .. v101.Name);
                    game:GetService("Debris"):AddItem(v555, 5);
                    v555.CanCollide = true;
                    v555.CanTouch = true;
                    v555.CanQuery = false;
                    v555.Massless = false;
                    v555.CollisionGroup = "nocol";
                    v555.CFrame = v554.WaterBottle.CFrame;
                    v555.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1);
                    v555.Parent = workspace.Thrown;
                    v555:SetNetworkOwner(l_PlayerFromCharacter_0);
                    local v556 = v101.PrimaryPart.CFrame + v101.PrimaryPart.CFrame.lookVector * 20;
                    local v557 = Vector3.new(0, -workspace.Gravity, 0);
                    local v558 = v101.PrimaryPart.CFrame * Vector3.new(0, 0, -2, 0);
                    local v559 = (v556.Position - v558 - 0.5 * v557 * 1 * 1) / 1;
                    local v560 = 0;
                    v555.Velocity = v559;
                    v555.AssemblyAngularVelocity = Vector3.new(15, 0, 0, 0);
                    local v561 = nil;
                    v561 = v555.Touched:Connect(function(v562) --[[ Line: 3796 ]]
                        -- upvalues: v560 (ref), v555 (copy), v75 (ref)
                        if v562:IsDescendantOf(workspace.Live) or tick() - v560 < 0.075 then
                            return;
                        elseif math.abs(v555.Velocity.Y) < 4 then
                            return;
                        else
                            v560 = tick();
                            v75({
                                SoundId = "rbxassetid://9125743366", 
                                Parent = v555, 
                                Volume = 3, 
                                PlaybackSpeed = Random.new():NextNumber(1.5, 2)
                            }):Play();
                            return;
                        end;
                    end);
                    task.delay(5, function() --[[ Line: 3812 ]]
                        -- upvalues: v561 (ref)
                        v561:Disconnect();
                    end);
                end
            }, 
            HideWeapon = true, 
            Animation = 17863045150, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Golfing = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17835937472", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v563, _, v565) --[[ Line: 3833 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v566 = game.ReplicatedStorage.Emotes.golfball:Clone();
                v566:SetAttribute("EmoteProperty", true);
                table.insert(v563, v566);
                v565.GolfBall = v566;
                local l_golfball_0 = v566.golfball;
                l_golfball_0:SetAttribute("EmoteProperty", true);
                table.insert(v563, l_golfball_0);
                v565.md = l_golfball_0;
                l_golfball_0.Part0 = v101.HumanoidRootPart;
                l_golfball_0.Part1 = v566;
                l_golfball_0.Parent = v101.HumanoidRootPart;
                v566.Parent = v101;
                local v568 = game.ReplicatedStorage.Emotes.golfclub:Clone();
                v568:SetAttribute("EmoteProperty", true);
                table.insert(v563, v568);
                v565.Handle = v568;
                local l_golfclub_0 = v568.golfclub;
                l_golfclub_0:SetAttribute("EmoteProperty", true);
                table.insert(v563, l_golfclub_0);
                v565.md = l_golfclub_0;
                l_golfclub_0.Part0 = v101["Right Arm"];
                l_golfclub_0.Part1 = v568;
                l_golfclub_0.Parent = v101["Right Arm"];
                v568.Parent = v101;
            end, 
            Keyframes = {
                GolfBall = function(v570) --[[ Line: 3852 ]]
                    -- upvalues: l_CollectionService_1 (ref), v101 (copy), l_PlayerFromCharacter_0 (copy), v75 (ref)
                    v570.GolfBall.Transparency = 1;
                    local v571 = game.ReplicatedStorage.Emotes.golfball:Clone();
                    l_CollectionService_1:AddTag(v571, "emotestuff" .. v101.Name);
                    game:GetService("Debris"):AddItem(v571, 5);
                    v571.CanCollide = true;
                    v571.CanTouch = true;
                    v571.CanQuery = false;
                    v571.Massless = false;
                    v571.CollisionGroup = "nocol";
                    v571.CFrame = v570.GolfBall.CFrame;
                    v571.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1);
                    v571.Parent = workspace.Thrown;
                    v571:SetNetworkOwner(l_PlayerFromCharacter_0);
                    local v572 = v101.PrimaryPart.CFrame + v101.PrimaryPart.CFrame.lookVector * 50;
                    local v573 = Vector3.new(0, -workspace.Gravity, 0);
                    local v574 = v101.PrimaryPart.CFrame * Vector3.new(0, 0, -2, 0);
                    local v575 = (v572.Position - v574 - 0.5 * v573 * 1 * 1) / 1;
                    local v576 = 0;
                    v571.Velocity = v575;
                    local v577 = nil;
                    v577 = v571.Touched:Connect(function(v578) --[[ Line: 3874 ]]
                        -- upvalues: v576 (ref), v571 (copy), v75 (ref)
                        if v578:IsDescendantOf(workspace.Live) or tick() - v576 < 0.075 then
                            return;
                        elseif math.abs(v571.Velocity.Y) < 4 then
                            return;
                        else
                            v576 = tick();
                            v75({
                                SoundId = "rbxassetid://9114625926", 
                                Parent = v571, 
                                Volume = 3, 
                                PlaybackSpeed = Random.new():NextNumber(0.9, 1.1)
                            }):Play();
                            return;
                        end;
                    end);
                    task.delay(5, function() --[[ Line: 3890 ]]
                        -- upvalues: v577 (ref)
                        v577:Disconnect();
                    end);
                end
            }, 
            HideWeapon = true, 
            Animation = 17863077772, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Random Dance"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1844612112", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            HideWeapon = true, 
            Animation = 17861893708, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Left n' Right"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9044565954", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            HideWeapon = true, 
            Animation = 17861844224, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["I WILL FEINT"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17830548577", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v579, _, v581) --[[ Line: 3952 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v582 = game.ReplicatedStorage.Emotes.KickChair:Clone();
                v582.Name = "Chair";
                v582:SetAttribute("EmoteProperty", true);
                table.insert(v579, v582);
                v581.Handle = v582;
                local l_Chair_0 = v582.Chair;
                l_Chair_0:SetAttribute("EmoteProperty", true);
                table.insert(v579, l_Chair_0);
                v581.md = l_Chair_0;
                l_Chair_0.Part0 = v101.HumanoidRootPart;
                l_Chair_0.Part1 = v582;
                l_Chair_0.Parent = v101.HumanoidRootPart;
                v582.Parent = v101;
            end, 
            Animation = 17861869602, 
            HideWeapon = true, 
            Looped = false, 
            Stun = "Freeze", 
            Fix = true
        }, 
        ["Cat Dancey"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1841610903", 
                    Volume = 1, 
                    Looped = false, 
                    TimePosition = 5
                }
            }, 
            HideWeapon = true, 
            Animation = 17861842039, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Fresh = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1843071445", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            HideWeapon = true, 
            Animation = 17863085690, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Cute Spin"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1835969978", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            HideWeapon = true, 
            Animation = 17861849696, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Leapin'"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1837768352", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            HideWeapon = true, 
            Animation = 17863299880, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Clubbin'"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1847692872", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            HideWeapon = true, 
            Animation = 17861870429, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Puzzled = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17824312884", 
                    Volume = 1.5, 
                    Looped = false
                }
            }, 
            Startup = function(v584, _, v586) --[[ Line: 4056 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v587 = game.ReplicatedStorage.Emotes.LeftEyebrow:Clone();
                v587:SetAttribute("EmoteProperty", true);
                table.insert(v584, v587);
                v586.Handle = v587;
                local l_LeftEyebrow_0 = v587.LeftEyebrow;
                l_LeftEyebrow_0:SetAttribute("EmoteProperty", true);
                table.insert(v584, l_LeftEyebrow_0);
                v586.md = l_LeftEyebrow_0;
                l_LeftEyebrow_0.Part0 = v101.Head;
                l_LeftEyebrow_0.Part1 = v587;
                l_LeftEyebrow_0.Parent = v101.Head;
                v587.Parent = v101.Head;
                local v589 = game.ReplicatedStorage.Emotes.RightEyebrow:Clone();
                v589:SetAttribute("EmoteProperty", true);
                table.insert(v584, v589);
                v586.Handle = v589;
                local l_RightEyebrow_0 = v589.RightEyebrow;
                l_RightEyebrow_0:SetAttribute("EmoteProperty", true);
                table.insert(v584, l_RightEyebrow_0);
                v586.md = l_RightEyebrow_0;
                l_RightEyebrow_0.Part0 = v101.Head;
                l_RightEyebrow_0.Part1 = v589;
                l_RightEyebrow_0.Parent = v101.Head;
                v589.Parent = v101.Head;
                local v591 = game.ReplicatedStorage.Emotes.shades:Clone();
                v591:SetAttribute("EmoteProperty", true);
                table.insert(v584, v591);
                v586.Handle = v591;
                local l_shades_0 = v591.shades;
                l_shades_0:SetAttribute("EmoteProperty", true);
                table.insert(v584, l_shades_0);
                v586.md = l_shades_0;
                l_shades_0.Part0 = v101.Head;
                l_shades_0.Part1 = v591;
                l_shades_0.Parent = v101.Head;
                v591.Parent = v101;
                local v593 = game.ReplicatedStorage.Emotes.mic:Clone();
                v593:SetAttribute("EmoteProperty", true);
                table.insert(v584, v593);
                v586.Handle = v593;
                local l_mic_0 = v593.mic;
                l_mic_0:SetAttribute("EmoteProperty", true);
                table.insert(v584, l_mic_0);
                v586.md = l_mic_0;
                l_mic_0.Part0 = v101["Left Arm"];
                l_mic_0.Part1 = v593;
                l_mic_0.Parent = v101["Left Arm"];
                v593.Parent = v101;
            end, 
            HideWeapon = true, 
            Animation = 17862419034, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        ["Hair Dryer"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17824222206", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v595, _, v597) --[[ Line: 4104 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v598 = false;
                if v101.Head:FindFirstChild("afro") then
                    v598 = true;
                end;
                local v599 = game.ReplicatedStorage.Emotes.afro:Clone();
                if v598 then
                    v599:SetAttribute("EmoteProperty", true);
                    table.insert(v595, v599);
                    v597.Handle = v599;
                end;
                local l_afro_0 = v599.afro;
                if v598 then
                    l_afro_0:SetAttribute("EmoteProperty", true);
                    table.insert(v595, l_afro_0);
                    v597.md = l_afro_0;
                end;
                l_afro_0.Part0 = v101.Head;
                l_afro_0.Part1 = v599;
                l_afro_0.Parent = v101.Head;
                v599.Parent = v101.Head;
                local v601 = game.ReplicatedStorage.Emotes.HairDryer:Clone();
                v601:SetAttribute("EmoteProperty", true);
                table.insert(v595, v601);
                v597.Handle = v601;
                local l_HairDryer_0 = v601.HairDryer;
                l_HairDryer_0:SetAttribute("EmoteProperty", true);
                table.insert(v595, l_HairDryer_0);
                v597.md = l_HairDryer_0;
                l_HairDryer_0.Part0 = v101["Left Arm"];
                l_HairDryer_0.Part1 = v601;
                l_HairDryer_0.Parent = v101["Left Arm"];
                v601.Parent = v101;
            end, 
            HideWeapon = true, 
            Animation = 17862799431, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        ["Club Dance"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9042719219", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            HideWeapon = true, 
            Animation = 17861842605, 
            Stun = "Freeze", 
            Looped = true
        }, 
        ["Signature Shuffle"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://78643048115190", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            HideWeapon = true, 
            Looped = true, 
            Animation = 17877281437, 
            Stun = "Slowed"
        }, 
        ["Shoo!"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://95918662439189", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            HideWeapon = true, 
            Animation = 120410055632356, 
            Stun = "Slowed", 
            StunAttribute = 1, 
            Looped = true
        }, 
        ["Sharp Shooter"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17824113419", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            HideWeapon = true, 
            Animation = 17861840167, 
            Stun = "Freeze"
        }, 
        Tornado = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1845194026", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Animation = 18459285150, 
            Stun = "Slowed", 
            Looped = true
        }, 
        Weakling = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18459323373", 
                    Volume = 2, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Animation = 18459317750, 
            Stun = "Freeze", 
            Looped = true
        }, 
        Kitchen = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18459227961", 
                    Volume = 4.5
                }
            }, 
            Startup = function(v603, _, _) --[[ Line: 4233 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v603, v101);
                local _ = v99("Right", v603, v101);
            end, 
            IdleSound = {
                SoundId = "rbxassetid://18459227438", 
                Volume = 0.5, 
                Looped = true
            }, 
            Idle = 18459220516, 
            Animation = 18459215845, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        Shadow = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18835841306", 
                    Volume = 2
                }
            }, 
            Startup = function(v608, _, _) --[[ Line: 4258 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v608, v101);
                local _ = v99("Right", v608, v101);
            end, 
            Idle = 18897705219, 
            Animation = 18897703230, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        Luck = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18843324948", 
                    Volume = 1.5
                }, 
                [0.5] = {
                    SoundId = "rbxassetid://18843324678", 
                    Volume = 0.95, 
                    Looped = true
                }
            }, 
            Startup = function(v613, _, _) --[[ Line: 4283 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v613, v101);
                local _ = v99("Right", v613, v101);
            end, 
            Idle = 18897669629, 
            Animation = 18897667042, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        Void = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18459160241", 
                    Volume = 4.5
                }
            }, 
            Startup = function(v618, _, _) --[[ Line: 4302 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Right", v618, v101);
            end, 
            IdleSound = {
                SoundId = "rbxassetid://18459159579", 
                Volume = 0.5, 
                Looped = true
            }, 
            Idle = 18459183268, 
            Animation = 18459178353, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        Four = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18835391294", 
                    Volume = 1.25, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v622, _, _) --[[ Line: 4328 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Right", v622, v101);
            end, 
            Animation = 18897621181, 
            Stun = "Slowed", 
            StunAttribute = 1.5, 
            HideWeapon = true
        }, 
        ["Heart Hands"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18844562542", 
                    Volume = 1.25, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v626, _, _) --[[ Line: 4347 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v626, v101);
                local _ = v99("Right", v626, v101);
            end, 
            Animation = 18897634229, 
            Stun = "Freeze", 
            HideWeapon = true
        }, 
        Cheese = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18828832074", 
                    Volume = 1.25
                }
            }, 
            Startup = function(v631, _, _) --[[ Line: 4365 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v631, v101);
                local _ = v99("Right", v631, v101);
            end, 
            Animation = 18897523693, 
            Stun = "Freeze", 
            HideWeapon = true
        }, 
        ["I love TSB"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18450377533", 
                    Volume = 1.25
                }
            }, 
            Startup = function(v636, _, _) --[[ Line: 4383 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v636, v101);
                local _ = v99("Right", v636, v101);
            end, 
            Animation = 18450373829, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        Thinking = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17862530320", 
                    Volume = 0.98, 
                    Looped = true
                }
            }, 
            Startup = function(v641, _, _) --[[ Line: 4402 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v641, v101);
                local _ = v99("Right", v641, v101);
                for v646 = 1, 3 do
                    local v647 = game.ReplicatedStorage.Emotes.HmmDot:Clone();
                    v647.Name = v646;
                    v647.Parent = v101;
                    local l_Motor6D_12 = Instance.new("Motor6D");
                    l_Motor6D_12.C0 = CFrame.new(-1.493, 1.17, -0.086) * CFrame.Angles(0, 3.141592653589793, 0);
                    l_Motor6D_12.Name = v646;
                    l_Motor6D_12.Part0 = v101.Torso;
                    l_Motor6D_12.Part1 = v647;
                    l_Motor6D_12.Parent = v101.Torso;
                    v647:SetAttribute("EmoteProperty", true);
                    l_Motor6D_12:SetAttribute("EmoteProperty", true);
                    table.insert(v641, v647);
                    table.insert(v641, l_Motor6D_12);
                end;
            end, 
            Animation = 17862470017, 
            Looped = true, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        Stroll = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9048435290", 
                    Volume = 0.75, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v649, _, v651) --[[ Line: 4446 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v652 = game.ReplicatedStorage.Emotes.yoyorig:Clone();
                v652:SetAttribute("EmoteProperty", true);
                table.insert(v649, v652);
                v651.Handle = v652;
                local l_m6d_2 = v652.m6d;
                l_m6d_2:SetAttribute("EmoteProperty", true);
                table.insert(v649, l_m6d_2);
                v651.md = l_m6d_2;
                l_m6d_2.Part0 = v101.HumanoidRootPart;
                l_m6d_2.Part1 = v652.main;
                l_m6d_2.Name = "main";
                l_m6d_2.Parent = v101.HumanoidRootPart;
                local l_m6d2_0 = v652.m6d2;
                l_m6d2_0:SetAttribute("EmoteProperty", true);
                table.insert(v649, l_m6d2_0);
                v651.md = l_m6d2_0;
                l_m6d2_0.Part0 = v101.HumanoidRootPart;
                l_m6d2_0.Part1 = v652.yoyostring;
                l_m6d2_0.Name = "yoyostring";
                l_m6d2_0.Parent = v101.HumanoidRootPart;
                v652.Parent = v101;
            end, 
            Animation = 18459518606, 
            Stun = "Slowed", 
            HideWeapon = true, 
            Looped = true
        }, 
        Guided = {
            Sounds = {}, 
            Startup = function(v655, _, v657) --[[ Line: 4472 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v658 = game.ReplicatedStorage.Emotes.BlindGlasses:Clone();
                v658:SetAttribute("EmoteProperty", true);
                table.insert(v655, v658);
                v657.Handle = v658;
                local l_BlindGlasses_0 = v658.BlindGlasses;
                l_BlindGlasses_0.Part0 = v101.Head;
                l_BlindGlasses_0.Part1 = v658;
                v658.Parent = v101;
                local v660 = game.ReplicatedStorage.Emotes.BlindWalkerThing:Clone();
                v660:SetAttribute("EmoteProperty", true);
                table.insert(v655, v660);
                v657.Handle = v660;
                local l_BlindWalkerThing_0 = v660.BlindWalkerThing;
                l_BlindWalkerThing_0:SetAttribute("EmoteProperty", true);
                table.insert(v655, l_BlindWalkerThing_0);
                v657.md = l_BlindWalkerThing_0;
                l_BlindWalkerThing_0.Part0 = v101["Right Arm"];
                l_BlindWalkerThing_0.Part1 = v660;
                l_BlindWalkerThing_0.Parent = v101["Right Arm"];
                v660.Parent = v101;
                v75({
                    SoundId = "rbxassetid://18459664775", 
                    Volume = 1, 
                    Looped = true, 
                    Parent = v660
                }):Play();
            end, 
            Keyframes = {
                clap = function(_, _, _) --[[ Line: 4495 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v101["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.8, 
                        RollOffMaxDistance = v1
                    }):Play();
                end
            }, 
            Looped = true, 
            Animation = 18459646696, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        Jello = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18459375906", 
                    Volume = 1, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v665, _, v667) --[[ Line: 4522 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v668 = game.ReplicatedStorage.Emotes.catjello:Clone();
                v668:SetAttribute("EmoteProperty", true);
                table.insert(v665, v668);
                v667.Handle = v668;
                local l_m6d_3 = v668.m6d;
                l_m6d_3:SetAttribute("EmoteProperty", true);
                table.insert(v665, l_m6d_3);
                v667.md = l_m6d_3;
                l_m6d_3.Part0 = v101.HumanoidRootPart;
                l_m6d_3.Part1 = v668.main;
                l_m6d_3.Parent = v101.HumanoidRootPart;
                v668.Parent = v101;
            end, 
            Animation = 18459402335, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        ["Knife Trick"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17862349589", 
                    Volume = 0.98, 
                    Looped = true
                }
            }, 
            Startup = function(v670, _, v672) --[[ Line: 4546 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v673 = game.ReplicatedStorage.Emotes.Knife:Clone();
                v673:SetAttribute("EmoteProperty", true);
                table.insert(v670, v673);
                v672.Handle = v673;
                local l_Knife_0 = v673.Knife;
                l_Knife_0:SetAttribute("EmoteProperty", true);
                table.insert(v670, l_Knife_0);
                v672.md = l_Knife_0;
                l_Knife_0.Part0 = v101.HumanoidRootPart;
                l_Knife_0.Part1 = v673;
                l_Knife_0.Parent = v101.HumanoidRootPart;
                v673.Parent = v101;
            end, 
            Animation = 17862340094, 
            Looped = true, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        Awe = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17822653772", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Startup = function(v675, _, v677) --[[ Line: 4571 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v678 = game.ReplicatedStorage.Emotes.Cube:Clone();
                v678:SetAttribute("EmoteProperty", true);
                table.insert(v675, v678);
                v677.Handle = v678;
                local l_Cube_0 = v678.Cube;
                l_Cube_0:SetAttribute("EmoteProperty", true);
                table.insert(v675, l_Cube_0);
                v677.md = l_Cube_0;
                v678.Name = "Cube";
                l_Cube_0.Part0 = v101["Right Arm"];
                l_Cube_0.Part1 = v678;
                l_Cube_0.Parent = v101["Right Arm"];
                v678.Parent = v101;
            end, 
            Animation = 17863040703, 
            Looped = false, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        ["Rough Snack"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17862187721", 
                    Volume = 0.98, 
                    Looped = true
                }
            }, 
            Startup = function(v680, _, v682) --[[ Line: 4597 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v683 = game.ReplicatedStorage.Emotes.Brick:Clone();
                v683:SetAttribute("EmoteProperty", true);
                table.insert(v680, v683);
                v682.Handle = v683;
                local l_Handle_2 = v683.Handle;
                l_Handle_2:SetAttribute("EmoteProperty", true);
                table.insert(v680, l_Handle_2);
                v682.md = l_Handle_2;
                v683.Name = "Brick";
                l_Handle_2.Part0 = v101["Right Arm"];
                l_Handle_2.Part1 = v683;
                l_Handle_2.Parent = v101["Right Arm"];
                v683.Parent = v101;
            end, 
            Animation = 17862170658, 
            Looped = true, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        ["Eureka!"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17822481294", 
                    Volume = 0.76, 
                    Looped = false
                }
            }, 
            Startup = function(v685, _, v687) --[[ Line: 4624 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v688 = game.ReplicatedStorage.Emotes.Lightbulb:Clone();
                v688:SetAttribute("EmoteProperty", true);
                table.insert(v685, v688);
                v687.Handle = v688;
                local l_Handle_3 = v688.Handle;
                l_Handle_3:SetAttribute("EmoteProperty", true);
                table.insert(v685, l_Handle_3);
                v687.md = l_Handle_3;
                v688.Name = "Lightbulb";
                l_Handle_3.Part0 = v101.HumanoidRootPart;
                l_Handle_3.Part1 = v688;
                l_Handle_3.Parent = v101.HumanoidRootPart;
                v688.Parent = v101;
            end, 
            HideWeapon = true, 
            Animation = 17861846501, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Road Trip"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17837049421", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            IdleSound = {
                SoundId = "rbxassetid://17862032072", 
                Volume = 0.35, 
                Looped = true
            }, 
            Startup = function(v690, _, v692) --[[ Line: 4655 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v693 = game.ReplicatedStorage.Emotes.Car:Clone();
                v693:SetAttribute("EmoteProperty", true);
                table.insert(v690, v693);
                v692.Handle = v693;
                local l_Handle_4 = v693.Handle;
                l_Handle_4:SetAttribute("EmoteProperty", true);
                table.insert(v690, l_Handle_4);
                v692.md = l_Handle_4;
                v693.Name = "Car";
                l_Handle_4.Part0 = v101.HumanoidRootPart;
                l_Handle_4.Part1 = v693;
                v693.Parent = v101;
            end, 
            Idle = 17863104140, 
            Animation = 17861887753, 
            Stun = "Slowed", 
            StunAttribute = 1, 
            HideWeapon = true
        }, 
        ["Point Shuffle"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1840434670", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            HideWeapon = true, 
            Animation = 17861883497, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Watermelon Spin"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17863074688", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Startup = function(v695, _, v697) --[[ Line: 4699 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v698 = game.ReplicatedStorage.Emotes.WatermelonSpin:Clone();
                v698.Name = "WaterMelon";
                v698:SetAttribute("EmoteProperty", true);
                table.insert(v695, v698);
                v697.Handle = v698;
                local l_Handle_5 = v698.Handle;
                l_Handle_5:SetAttribute("EmoteProperty", true);
                table.insert(v695, l_Handle_5);
                v697.md = l_Handle_5;
                v698.Name = "Watermelon";
                l_Handle_5.Part0 = v101["Right Arm"];
                l_Handle_5.Part1 = v698;
                l_Handle_5.Parent = v101["Right Arm"];
                v698.Parent = v101;
            end, 
            Animation = 17863063827, 
            Stun = "Slowed", 
            Looped = true, 
            HideWeapon = true
        }, 
        Livin = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1837768517", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Animation = 17861873461, 
            Stun = "Freeze", 
            Looped = true, 
            HideWeapon = true
        }, 
        Sassy = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17849425726", 
                    Volume = 0.8, 
                    Looped = true
                }, 
                [0] = {
                    SoundId = "rbxassetid://1841726277", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Startup = function(v700, _, _) --[[ Line: 4748 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v703 = game.ReplicatedStorage.Emotes.Purse:Clone();
                v703:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(v703, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_Motor6D_13 = Instance.new("Motor6D");
                l_Motor6D_13:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(l_Motor6D_13, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_Motor6D_13.C0 = CFrame.new(0.011, -0.531, 0);
                l_Motor6D_13.Part0 = v101["Left Arm"];
                l_Motor6D_13.Part1 = v703.PrimaryPart;
                l_Motor6D_13.Parent = v101["Left Arm"];
                v703.Parent = v101;
                table.insert(v700, v703);
                table.insert(v700, l_Motor6D_13);
            end, 
            Animation = 17861893094, 
            Looped = true, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        ["Drum Major"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1846943603", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Startup = function(v705, _, _) --[[ Line: 4779 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v708 = game.ReplicatedStorage.Emotes.Rbx:Clone();
                v708:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(v708, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                v708.Parent = v101;
                local l_Motor6D_14 = Instance.new("Motor6D");
                l_Motor6D_14:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(l_Motor6D_14, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_Motor6D_14.C0 = CFrame.new(-0.325, -0.891, -0.064);
                l_Motor6D_14.C1 = CFrame.new(0, 0, 0.604);
                l_Motor6D_14.Part0 = v101["Right Arm"];
                l_Motor6D_14.Part1 = v708.PrimaryPart;
                l_Motor6D_14.Parent = v101["Right Arm"];
                table.insert(v705, v708);
                table.insert(v705, l_Motor6D_14);
            end, 
            Animation = 18418313278, 
            Stun = "Slowed", 
            HideWeapon = true, 
            Looped = true
        }, 
        Helicopter = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9114024539", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            IdleSound = {
                SoundId = "rbxassetid://9100684862", 
                Volume = 0.25, 
                Looped = true
            }, 
            Idle = 17862998594, 
            Animation = 17862997402, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        ["Club Shuffle"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1839270703", 
                    Volume = 0.6, 
                    Looped = true
                }
            }, 
            Animation = 17861834531, 
            Looped = true, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        ["Head Tap"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1845508064", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Animation = 17863050431, 
            Looped = true, 
            Stun = "Freeze", 
            HideWeapon = true
        }, 
        Listen = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9047324264", 
                    Volume = 0.85, 
                    Looped = true, 
                    TimePosition = 10, 
                    ParentTorso = true
                }
            }, 
            Looped = true, 
            Animation = 17861894459, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        ["Can't See Me"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17813330585", 
                    Volume = 1, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            HideWeapon = true, 
            Startup = function(v710, _, _) --[[ Line: 4881 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v710, v101);
                local _ = v99("Right", v710, v101);
            end, 
            Animation = 17862366649, 
            Stun = "Slowed"
        }, 
        Rest = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15443862609", 
                    Volume = 1, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            End = {
                15443689801, 
                3.7, 
                {
                    SoundId = "rbxassetid://15443922202", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Idle = 15443688094, 
            Animation = 15443682006, 
            Stun = "Freeze"
        }, 
        ["Show 'Em"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://140238630247057", 
                    Volume = 0.4, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Looped = true, 
            Animation = 137797933797894, 
            Stun = "Slowed"
        }, 
        Groove = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1842772099", 
                    Volume = 0.85, 
                    TimePosition = 12, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Looped = true, 
            Animation = 16525536622, 
            Stun = "Slowed"
        }, 
        ["Party Lover"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1840463359", 
                    Volume = 0.6, 
                    TimePosition = 2.75, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Looped = true, 
            Animation = 16528092313, 
            Stun = "Freeze"
        }, 
        Giant = {
            Sounds = {}, 
            Keyframes = {
                clap = function(_) --[[ Line: 4962 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://16526736324", 
                        Volume = 0.8, 
                        Parent = v101.Torso
                    }):Play();
                end
            }, 
            Infinite = true, 
            Looped = true, 
            Animation = 16526624122, 
            Stun = "Slowed"
        }, 
        Phonk = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14145620056", 
                    Volume = 0.85, 
                    Looped = true, 
                    TimePosition = 5, 
                    ParentTorso = true
                }
            }, 
            Keyframes = {
                clap = function(v716) --[[ Line: 4989 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://2704706975", 
                        Volume = not v716.first and 1 or 0.65, 
                        Parent = v101.Head
                    }):Play();
                    if not v716.first then
                        v716.first = true;
                    end;
                end
            }, 
            Infinite = true, 
            Looped = true, 
            Animation = 16526164064, 
            Stun = "Freeze"
        }, 
        Angel = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://0", 
                    Volume = 0.5, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Startup = function(_, _, _) --[[ Line: 5017 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v720 = game.ReplicatedStorage.Emotes.untitled:Clone();
                v720:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(v720, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_m6d_4 = v720.m6d;
                l_m6d_4:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(l_m6d_4, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_m6d_4.Name = "Cube.007";
                l_m6d_4.Part1 = v720["Cube.007"];
                l_m6d_4.Part0 = v101.Torso;
                l_m6d_4.Parent = v101.Torso;
                v720.Parent = v101;
            end, 
            Keyframes = {
                clap = function() --[[ Line: 5028 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = ({
                            "rbxassetid://137024005187459", 
                            "rbxassetid://76278400824030", 
                            "rbxassetid://94509235587766"
                        })[math.random(1, 3)], 
                        Volume = 0.4, 
                        PlaybackSpeed = 1.15, 
                        Parent = v101.Torso
                    }):Play();
                end
            }, 
            Animation = 136571320124330, 
            Looped = true, 
            Infinite = true, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        Soccer = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1845023041", 
                    Volume = 0.5, 
                    Looped = true, 
                    TimePosition = 0.5
                }
            }, 
            Startup = function(_, _, _) --[[ Line: 5055 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy), v1 (ref)
                local v725 = game.ReplicatedStorage.Emotes.soccer:Clone();
                v725:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(v725, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_Ball_0 = v725.Handle.Ball;
                l_Ball_0:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(l_Ball_0, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_Ball_0.Name = "Ball";
                l_Ball_0.Part0 = v725.Handle;
                l_Ball_0.Part1 = v725.Ball;
                local l_m6d_5 = v725.m6d;
                l_m6d_5:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(l_m6d_5, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_m6d_5.Name = "Handle";
                l_m6d_5.Part0 = v101.Torso;
                l_m6d_5.Part1 = v725.Handle;
                l_m6d_5.Parent = v101.Torso;
                v725.Parent = v101;
                shared.sfx({
                    SoundId = "rbxassetid://16592084595", 
                    Parent = v725.Ball, 
                    RollOffMaxDistance = v1, 
                    Volume = 1, 
                    Looped = true
                }):Play();
            end, 
            Animation = 16592100518, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Red Card"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16591667187", 
                    Volume = 3, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Startup = function(_, _, v730) --[[ Line: 5093 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v731 = game.ReplicatedStorage.Emotes.whistlecard:Clone();
                v731:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(v731, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_m6d_6 = v731.m6d;
                l_m6d_6:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(l_m6d_6, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_m6d_6.Name = "Handle";
                l_m6d_6.Part0 = v101["Left Arm"];
                l_m6d_6.Part1 = v731.Handle;
                l_m6d_6.Parent = v101["Left Arm"];
                v731.Parent = v101["Left Arm"];
                v730.whistle = v731.whistle;
                v730.card = v731.redcard;
            end, 
            Keyframes = {
                whistle = function(v733, _, _) --[[ Line: 5106 ]]
                    -- upvalues: l_TweenService_0 (ref)
                    l_TweenService_0:Create(v733.whistle, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Size = Vector3.new()
                    }):Play();
                end, 
                card = function(v736, _, _) --[[ Line: 5112 ]]
                    -- upvalues: l_TweenService_0 (ref)
                    l_TweenService_0:Create(v736.card, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Size = Vector3.new()
                    }):Play();
                end
            }, 
            Animation = 16591707771, 
            HideWeapon = true, 
            Stun = "Freeze"
        }, 
        ["Your Grave"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16599031707", 
                    Volume = 1, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v739, _, _) --[[ Line: 5134 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v742 = game.ReplicatedStorage.Emotes.Dig.Handle:Clone();
                v742:SetAttribute("EmoteProperty", true);
                table.insert(v739, v742);
                l_CollectionService_1:AddTag(v742, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_m6d_7 = v742.m6d;
                l_m6d_7:SetAttribute("EmoteProperty", true);
                table.insert(v739, l_m6d_7);
                l_CollectionService_1:AddTag(l_m6d_7, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_m6d_7.Name = "Handle";
                l_m6d_7.Part0 = v101["Right Arm"];
                l_m6d_7.Part1 = v742;
                l_m6d_7.Parent = v101["Right Arm"];
                v742.Parent = v101;
                local v744 = game.ReplicatedStorage.Emotes.Dig.Grave:Clone();
                v744:SetAttribute("EmoteProperty", true);
                table.insert(v739, v744);
                local l_Weld_2 = Instance.new("Weld");
                l_Weld_2:SetAttribute("EmoteProperty", true);
                table.insert(v739, l_Weld_2);
                l_Weld_2.Part0 = v101.PrimaryPart;
                l_Weld_2.Part1 = v744.Headstone;
                l_Weld_2.Parent = v744;
                l_Weld_2.C0 = CFrame.new(1.59004211, -1.53838396, -5.02381897, -0.999934554, -0.0114461109, 0, -0.0114019588, 0.996077538, -0.0877478421, 0.00100437133, -0.0877420902, -0.996142864);
                v744.Parent = v101;
            end, 
            Looped = true, 
            Animation = 16598916589, 
            HideWeapon = true, 
            Stun = "Freeze"
        }, 
        Slingshot = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16598662412", 
                    Volume = 1, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v746, _, v748) --[[ Line: 5168 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v749 = game.ReplicatedStorage.Emotes.slingshot:Clone();
                v749:SetAttribute("EmoteProperty", true);
                v749:SetAttribute("EmoteProperty", true);
                table.insert(v746, v749);
                l_CollectionService_1:AddTag(v749, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_m6d_8 = v749.m6d;
                l_m6d_8:SetAttribute("EmoteProperty", true);
                l_m6d_8:SetAttribute("EmoteProperty", true);
                table.insert(v746, l_m6d_8);
                l_CollectionService_1:AddTag(l_m6d_8, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_m6d_8.Name = "Handle";
                l_m6d_8.Part0 = v101["Right Arm"];
                l_m6d_8.Part1 = v749.Handle;
                l_m6d_8.Parent = v101["Right Arm"];
                v749.Parent = v101["Right Arm"];
                v748.rock = v749.rock;
                v748.rock.Trail.Enabled = false;
            end, 
            Keyframes = {
                go = function(v751, _, _) --[[ Line: 5181 ]]
                    -- upvalues: l_CollectionService_1 (ref), v101 (copy), l_PlayerFromCharacter_0 (copy)
                    local v754 = v751.rock:Clone();
                    l_CollectionService_1:AddTag(v754, "emotestuff" .. v101.Name);
                    game:GetService("Debris"):AddItem(v754, 5);
                    v754.CanCollide = false;
                    v754.CanTouch = true;
                    v754.CanQuery = false;
                    v754.Massless = false;
                    v754.CollisionGroup = "nocol";
                    v754.CFrame = v751.rock.CFrame;
                    v754.Trail.Enabled = true;
                    v751.rock:Destroy();
                    v754.Parent = workspace.Thrown;
                    shared.sfx({
                        SoundId = "rbxassetid://9120435415", 
                        Parent = v754, 
                        Volume = 2
                    }):Play();
                    local v755 = Instance.new("Attachment", v754);
                    v755.Position = Vector3.new(0, 0, 0, 0);
                    local v756 = Instance.new("LinearVelocity", v755);
                    v756.MaxForce = 40000;
                    v756.VectorVelocity = v101.PrimaryPart.CFrame.lookVector * 200 + Vector3.new(0, 20, 0, 0);
                    v756.Attachment0 = v755;
                    game:GetService("Debris"):AddItem(v756, 0.15);
                    v754:SetNetworkOwner(l_PlayerFromCharacter_0);
                end
            }, 
            Animation = 16598695404, 
            HideWeapon = true, 
            Stun = "Freeze"
        }, 
        Paddleball = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16523730144", 
                    Volume = 1, 
                    Looped = false, 
                    ParentTorso = true
                }, 
                [0.45] = {
                    SoundId = "rbxassetid://16523118734", 
                    Volume = 1, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Startup = function(_, _, _) --[[ Line: 5232 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v760 = game.ReplicatedStorage.Emotes.paddle:Clone();
                v760:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(v760, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_m6d_9 = v760.m6d;
                l_m6d_9:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(l_m6d_9, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_m6d_9.Name = "Wood";
                l_m6d_9.Part0 = v101["Right Arm"];
                l_m6d_9.Part1 = v760.Wood;
                l_m6d_9.Parent = v101["Right Arm"];
                v760.Parent = v101["Right Arm"];
            end, 
            End = {
                16523235955, 
                1.583, 
                {
                    SoundId = "rbxassetid://16523118347", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Idle = 16523084292, 
            Animation = 16523080348, 
            HideWeapon = true, 
            Stun = "Slowed"
        }, 
        ["Show Me"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16038705978", 
                    Volume = 0.75, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Fix = true, 
            Animation = 16039093008, 
            Stun = "Freeze"
        }, 
        Sneak = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16746897032", 
                    Volume = 0.75, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Looped = true, 
            Animation = 16746892678, 
            Stun = "Slowed"
        }, 
        ["What'd You Say"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9042800221", 
                    Volume = 0.75, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Looped = true, 
            Animation = 17266193826, 
            Stun = "Freeze"
        }, 
        Robot = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17086745893", 
                    Volume = 0.75, 
                    Looped = true, 
                    ParentTorso = true
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://1841609664", 
                    Volume = 0.45, 
                    Looped = true
                }
            }, 
            Looped = true, 
            Animation = 17086754292, 
            Stun = "Slowed"
        }, 
        ["Bye Bye"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1835831314", 
                    Volume = 0.65, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v762, _, _) --[[ Line: 5329 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v762, v101);
                local _ = v99("Right", v762, v101);
            end, 
            Keyframes = {
                slow = function(_, _, v769) --[[ Line: 5335 ]]
                    v769:AdjustSpeed(0.135);
                end, 
                back = function(_, _, v772) --[[ Line: 5339 ]]
                    v772:AdjustSpeed(1);
                end
            }, 
            HideWeapon = true, 
            Animation = 16047480326, 
            Stun = "Slowed"
        }, 
        Fidget = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16524816499", 
                    Volume = 0.15, 
                    Looped = true, 
                    TimePosition = 0.033, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v773, _, _) --[[ Line: 5360 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                v99("Left", v773, v101);
                v99("Right", v773, v101);
            end, 
            Looped = true, 
            HideWeapon = true, 
            Animation = 16524848169, 
            Stun = "Slowed"
        }, 
        ["Thumbs Up"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16524556850", 
                    Volume = 1.5, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v776, _, _) --[[ Line: 5381 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v776, v101);
            end, 
            HideWeapon = true, 
            Animation = 16524522673, 
            Stun = "Freeze"
        }, 
        ["Nah, I'd win."] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16746854243", 
                    Volume = 1.5, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v780, _, v782) --[[ Line: 5400 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v783 = game.ReplicatedStorage.Emotes.dialogue:Clone();
                table.insert(v780, v783);
                v783:SetAttribute("EmoteProperty", true);
                v782.rock = v783;
                v783.Name = "Handle";
                table.insert(v780, v783);
                local l_m6d_10 = v783.m6d;
                table.insert(v780, l_m6d_10);
                l_m6d_10:SetAttribute("EmoteProperty", true);
                l_m6d_10.Name = "Handle";
                l_m6d_10.Part0 = v101.HumanoidRootPart;
                l_m6d_10.Part1 = v783;
                l_m6d_10.Parent = v101.HumanoidRootPart;
                for _, v786 in pairs(v783:GetDescendants()) do
                    if v786:IsA("BasePart") then
                        v786.Transparency = 1;
                    end;
                end;
                v783.Parent = v101;
            end, 
            Keyframes = {
                visible = function(v787, _, _) --[[ Line: 5418 ]]
                    if v787.rock then
                        for _, v791 in pairs(v787.rock:GetDescendants()) do
                            if v791:IsA("BasePart") then
                                v791.Transparency = 0;
                            end;
                        end;
                    end;
                end
            }, 
            Animation = 16746843881, 
            Stun = "Freeze"
        }, 
        Bang = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16746816646", 
                    Volume = 1.5, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v792, _, _) --[[ Line: 5443 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Right", v792, v101);
                local _ = v99("Left", v792, v101);
            end, 
            HideWeapon = true, 
            Animation = 16746824621, 
            Stun = "Slowed"
        }, 
        ["Thumbs Down"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16524473840", 
                    Volume = 1.5, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v797, _, _) --[[ Line: 5463 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Right", v797, v101);
            end, 
            HideWeapon = true, 
            Animation = 16524478599, 
            Stun = "Freeze"
        }, 
        ["Nuh uh"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16054202674", 
                    Volume = 1, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v801, _, _) --[[ Line: 5482 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v801, v101);
                local _ = v99("Right", v801, v101);
            end, 
            Animation = 16054192884, 
            Stun = "Slowed"
        }, 
        ["Found You"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://111853897255351", 
                    Volume = 1, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v806, _, _) --[[ Line: 5501 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v806, v101);
                local _ = v99("Right", v806, v101);
            end, 
            HideWeapon = true, 
            Idle = 124365816989281, 
            Animation = 136211118072154, 
            Stun = "Freeze"
        }, 
        ["I'll Win"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16039057960", 
                    Volume = 1, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v811, _, v813) --[[ Line: 5522 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v811, v101);
                local l_FirstChild_1 = v99("Right", v811, v101):FindFirstChild("RThumb2", true);
                if l_FirstChild_1 then
                    local v816 = game.ReplicatedStorage.Emotes.QuickStar:Clone();
                    v816.Parent = l_FirstChild_1;
                    v813.p = v816;
                end;
            end, 
            Keyframes = {
                star = function(v817, _, _) --[[ Line: 5535 ]]
                    -- upvalues: v75 (ref)
                    if v817.p then
                        v817.p:Emit(1);
                        v75({
                            SoundId = "rbxassetid://16039062716", 
                            Parent = v817.p.Parent, 
                            Volume = 0.75
                        }):Play();
                    end;
                end
            }, 
            HideWeapon = true, 
            Animation = 16039070113, 
            Stun = "Freeze"
        }, 
        ["Am Dead"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16002440477", 
                    Volume = 2, 
                    TimePosition = 0.125, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Startup = function(_, _, _) --[[ Line: 5563 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v823 = game.ReplicatedStorage.Emotes.Coffin:Clone();
                l_CollectionService_1:AddTag(v823, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_Coffin_0 = v823.Coffin;
                l_CollectionService_1:AddTag(l_Coffin_0, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_Coffin_0.Part0 = v101.PrimaryPart;
                l_Coffin_0.Part1 = v823;
                l_Coffin_0.Parent = v101.PrimaryPart;
                v823.Parent = v101;
            end, 
            End = {
                16002450289, 
                1.767, 
                {
                    SoundId = "rbxassetid://16002440403", 
                    Volume = 2, 
                    Looped = false
                }
            }, 
            HideWeapon = true, 
            Idle = 16002449836, 
            Animation = 16002448046, 
            FixRotation = true, 
            Stun = "Freeze"
        }, 
        Footwork = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16599237654", 
                    Volume = 2, 
                    Looped = false, 
                    ParentTorso = true
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://1846142716", 
                    Volume = 0.9, 
                    Looped = true
                }
            }, 
            Startup = function(v825, _, _) --[[ Line: 5602 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v828 = game.ReplicatedStorage.Emotes.hat:Clone();
                table.insert(v825, v828);
                v828:SetAttribute("EmoteProperty", true);
                v828.Name = "Handle";
                l_CollectionService_1:AddTag(v828, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_Handle_6 = v828.Handle;
                table.insert(v825, l_Handle_6);
                l_Handle_6:SetAttribute("EmoteProperty", true);
                l_Handle_6.Part0 = v101["Left Arm"];
                l_Handle_6.Part1 = v828;
                l_Handle_6.Parent = v101["Left Arm"];
                v828.Parent = v101;
            end, 
            Idle = 16599253604, 
            Animation = 16599248351, 
            Stun = "Slowed", 
            StunAttribute = 2
        }, 
        Footrest = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15968669383", 
                    Volume = 1, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Startup = function(_, _, _) --[[ Line: 5629 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v833 = game.ReplicatedStorage.Emotes.RockMesh:Clone();
                l_CollectionService_1:AddTag(v833, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                v833.Rock.Part0 = v101.PrimaryPart;
                v833.Rock.Part1 = v833;
                v833.Parent = v101;
            end, 
            End = {
                15968735423, 
                1.767, 
                {
                    SoundId = "rbxassetid://15968669594", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Idle = 15968655778, 
            Animation = 15968649951, 
            FixRotation = true, 
            Stun = "Freeze"
        }, 
        ["Sit 4"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17122085420", 
                    Volume = 1, 
                    ParentTorso = true
                }
            }, 
            End = {
                17121885697, 
                2.217, 
                {
                    SoundId = "rbxassetid://17122185340", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Idle = 17121883892, 
            Animation = 17121881258, 
            FixRotation = true, 
            Stun = "Freeze"
        }, 
        ["Sit 3"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15443950040", 
                    Volume = 1, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            End = {
                15443958574, 
                3.7, 
                {
                    SoundId = "rbxassetid://15443949954", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Idle = 15443956544, 
            Animation = 15443954093, 
            FixRotation = true, 
            Stun = "Freeze"
        }, 
        Chosen = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18843153605", 
                    Volume = 1.2, 
                    Looped = false, 
                    ParentTorso = true
                }, 
                [0.5] = {
                    SoundId = "rbxassetid://1838611838", 
                    Volume = 0.5, 
                    Looped = true, 
                    TimePosition = 33, 
                    Smooth = true
                }
            }, 
            Startup = function(v834) --[[ Line: 5707 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), l_TweenService_0 (ref)
                local v835 = shared.cfolder({
                    Name = "Freeze"
                }, 2.067);
                table.insert(v834, v835);
                v835:SetAttribute("DontInterrupt", true);
                v835:SetAttribute("NoStop", true);
                v835:SetAttribute("EmoteProperty", true);
                task.delay(0, function() --[[ Line: 5715 ]]
                    -- upvalues: v835 (copy), v101 (ref)
                    v835.Parent = v101;
                end);
                local v836 = game.ReplicatedStorage.Emotes.chosenparticles:Clone();
                v836:SetAttribute("EmoteProperty", true);
                local v837 = {};
                l_CollectionService_1:AddTag(v836, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                for _, v839 in pairs(v836:GetChildren()) do
                    if v839:IsA("Beam") and v839.Enabled then
                        table.insert(v837, {
                            v839, 
                            v839.Width1
                        });
                        v839.Enabled = false;
                        v839.Width1 = 0;
                    end;
                end;
                local l_Weld_3 = Instance.new("Weld");
                l_Weld_3.Part0 = v101.PrimaryPart;
                l_Weld_3.Part1 = v836;
                l_Weld_3.C0 = CFrame.new(-1.32054138, 4.14816093, 1.88685989, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872);
                l_Weld_3.Parent = v836;
                v836.Parent = v101;
                task.delay(2, function() --[[ Line: 5738 ]]
                    -- upvalues: v837 (copy), l_TweenService_0 (ref)
                    for _, v842 in pairs(v837) do
                        local v843 = v842[1];
                        v843.Enabled = true;
                        l_TweenService_0:Create(v843, TweenInfo.new(1 + math.random(), Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                            Width1 = v842[2]
                        }):Play();
                    end;
                end);
            end, 
            Idle = 18897538537, 
            Animation = 18897534746, 
            FixAnimations = {
                18897538537, 
                18897534746, 
                18897540724
            }, 
            End = {
                18897540724, 
                2.133, 
                {
                    SoundId = "rbxassetid://15443922202", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Fix = true, 
            Stun = "Slowed"
        }, 
        Attack = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18843637571", 
                    Volume = 1.2, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Startup = function(_) --[[ Line: 5771 ]] --[[ Name: Startup ]]

            end, 
            Idle = 18897713456, 
            Animation = 18897711135, 
            Stun = "Freeze"
        }, 
        Honored = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15503052959", 
                    Volume = 1.2, 
                    Looped = false, 
                    ParentTorso = true
                }, 
                [0.1] = {
                    SoundId = "rbxassetid://1839209784", 
                    Volume = 0.5, 
                    Looped = false, 
                    ParentTorso = true
                }, 
                [4.627] = {
                    SoundId = "rbxassetid://1836640331", 
                    Volume = 0.5, 
                    Looped = true, 
                    TimePosition = 33, 
                    Smooth = true
                }
            }, 
            Startup = function(v845) --[[ Line: 5805 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v846 = shared.cfolder({
                    Name = "Freeze"
                }, 3.922);
                table.insert(v845, v846);
                v846:SetAttribute("DontInterrupt", true);
                v846:SetAttribute("NoStop", true);
                v846:SetAttribute("EmoteProperty", true);
                task.delay(0, function() --[[ Line: 5813 ]]
                    -- upvalues: v846 (copy), v101 (ref)
                    v846.Parent = v101;
                end);
            end, 
            Idle = 15503060948, 
            Animation = 15503060232, 
            Fix = true, 
            Stun = "Slowed"
        }, 
        Disgraced = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15503840444", 
                    Volume = 1.2, 
                    Looped = false, 
                    ParentTorso = true
                }, 
                [2.183] = {
                    SoundId = "rbxassetid://1836253240", 
                    Volume = 0.35, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v847) --[[ Line: 5841 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v848 = shared.cfolder({
                    Name = "Freeze"
                }, 1.856);
                table.insert(v847, v848);
                v848:SetAttribute("DontInterrupt", true);
                v848:SetAttribute("NoStop", true);
                v848:SetAttribute("EmoteProperty", true);
                task.delay(0, function() --[[ Line: 5849 ]]
                    -- upvalues: v848 (copy), v101 (ref)
                    v848.Parent = v101;
                end);
            end, 
            Idle = 15507138928, 
            Animation = 15507137974, 
            Fix = true, 
            Stun = "Slowed"
        }, 
        ["360"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16002725651", 
                    Volume = 0.75, 
                    ParentTorso = true, 
                    Looped = false
                }
            }, 
            HideWeapon = true, 
            Animation = 16002726844, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Jumping Jacks"] = {
            Sounds = {}, 
            Keyframes = {
                clap = function(_, _, _) --[[ Line: 5882 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://16002741222", 
                        Parent = v101.Torso, 
                        Volume = 1
                    }):Play();
                end
            }, 
            HideWeapon = true, 
            Animation = 16002745906, 
            Looped = true, 
            Stun = "Freeze", 
            Infinite = true
        }, 
        Calculated = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16002706827", 
                    Volume = 1, 
                    ParentTorso = true, 
                    Looped = false
                }
            }, 
            Keyframes = {
                start = function(_, v853, _) --[[ Line: 5909 ]]
                    -- upvalues: v101 (copy), v75 (ref)
                    local l_Attachment_0 = Instance.new("Attachment");
                    l_Attachment_0:SetAttribute("EmoteProperty", true);
                    table.insert(v853, l_Attachment_0);
                    l_Attachment_0.Parent = v101.PrimaryPart;
                    l_Attachment_0.Position = Vector3.new(0.5540000200271606, 3.069000005722046, -0.7440000176429749, 0);
                    local v856 = game.ReplicatedStorage.Emotes.Iq:Clone();
                    v856.Parent = l_Attachment_0;
                    v856:Emit(1);
                    v75({
                        SoundId = "rbxassetid://16002767572", 
                        Volume = 0.25, 
                        Parent = l_Attachment_0, 
                        Looped = false
                    }):Play();
                end
            }, 
            HideWeapon = true, 
            Animation = 16002681909, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Huh?"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16524017206", 
                    Volume = 0.75, 
                    ParentTorso = true, 
                    Looped = false
                }
            }, 
            Keyframes = {
                question = function(_, v858, _) --[[ Line: 5943 ]]
                    -- upvalues: v101 (copy), v75 (ref)
                    local l_Attachment_1 = Instance.new("Attachment");
                    l_Attachment_1:SetAttribute("EmoteProperty", true);
                    table.insert(v858, l_Attachment_1);
                    l_Attachment_1.Parent = v101.PrimaryPart;
                    l_Attachment_1.CFrame = CFrame.new(0.635131836, 1.59469604, -1.50006104, 0.873728812, 0.4864133, -0, -0.4864133, 0.873728812, 0, 0, 0, 0.99999994);
                    local v861 = game.ReplicatedStorage.Emotes.Question:Clone();
                    v861.Parent = l_Attachment_1;
                    v861:Emit(1);
                    v75({
                        SoundId = "rbxassetid://16524026100", 
                        Volume = 0.75, 
                        Parent = l_Attachment_1, 
                        Looped = false
                    }):Play();
                end
            }, 
            Startup = function(v862, _, v864) --[[ Line: 5960 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v865 = game.ReplicatedStorage.Emotes.teacup:Clone();
                v865:SetAttribute("EmoteProperty", true);
                table.insert(v862, v865);
                v864.Handle = v865;
                local v866 = v865.LeftHandle:Clone();
                v866:SetAttribute("EmoteProperty", true);
                table.insert(v862, v866);
                v866["Meshes/teacup_Circle"].Part0 = v866;
                v866["Meshes/teacup_Circle"].Part1 = v865["Meshes/teacup_Circle"];
                v866.Parent = v101;
                local l_m6d_11 = v865.m6d;
                l_m6d_11:SetAttribute("EmoteProperty", true);
                table.insert(v862, l_m6d_11);
                v864.md = l_m6d_11;
                l_m6d_11.Part0 = v101["Left Arm"];
                l_m6d_11.Name = "LeftHandle";
                l_m6d_11.Part1 = v866;
                l_m6d_11.Parent = v101["Left Arm"];
                v865.Parent = v101;
            end, 
            HideWeapon = true, 
            Animation = 16523856701, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        ["8 Bit"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1839918500", 
                    Volume = 0.75, 
                    TimePosition = 1, 
                    ParentTorso = true, 
                    Looped = false
                }
            }, 
            Keyframes = {
                shoot = function(_, v869, _) --[[ Line: 5994 ]]
                    -- upvalues: v101 (copy), v75 (ref)
                    local l_Attachment_2 = Instance.new("Attachment");
                    l_Attachment_2:SetAttribute("EmoteProperty", true);
                    table.insert(v869, l_Attachment_2);
                    l_Attachment_2.Parent = v101.PrimaryPart;
                    l_Attachment_2.Position = Vector3.new(1.75, 0.25, -3.75, 0);
                    local v872 = game.ReplicatedStorage.Emotes.Shoot:Clone();
                    v872.Parent = l_Attachment_2;
                    v872:Emit(1);
                    v75({
                        SoundId = "rbxassetid://15684595588", 
                        Volume = 1.85, 
                        Parent = v101["Right Arm"], 
                        Looped = false
                    }):Play();
                end, 
                heart = function(_, v874, _) --[[ Line: 6010 ]]
                    -- upvalues: v101 (copy), v75 (ref)
                    local l_Attachment_3 = Instance.new("Attachment");
                    l_Attachment_3:SetAttribute("EmoteProperty", true);
                    table.insert(v874, l_Attachment_3);
                    l_Attachment_3.Parent = v101.PrimaryPart;
                    l_Attachment_3.Position = Vector3.new(1.75, 0, -1.75, 0);
                    local v877 = game.ReplicatedStorage.Emotes.Heart:Clone();
                    v877.Parent = l_Attachment_3;
                    v877:Emit(1);
                    v75({
                        SoundId = "rbxassetid://15684812583", 
                        Volume = 0.75, 
                        Parent = l_Attachment_3, 
                        Looped = false
                    }):Play();
                end
            }, 
            HideWeapon = true, 
            Animation = 15684759074, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Car = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15684912289", 
                    Volume = 1, 
                    Looped = false
                }, 
                [2.133] = {
                    SoundId = "rbxassetid://15684912898", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v878) --[[ Line: 6048 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v879 = shared.cfolder({
                    Name = "Freeze"
                }, 3.5);
                table.insert(v878, v879);
                v879:SetAttribute("DontInterrupt", true);
                v879:SetAttribute("NoStop", true);
                v879:SetAttribute("EmoteProperty", true);
                task.delay(0, function() --[[ Line: 6056 ]]
                    -- upvalues: v879 (copy), v101 (ref)
                    v879.Parent = v101;
                end);
            end, 
            Animation = 15684890301, 
            Idle = 15684902941, 
            IdleSound = {
                SoundId = "rbxassetid://15684953841", 
                Volume = 1, 
                Looped = true
            }, 
            Stun = "Slowed"
        }, 
        March = {
            Keyframes = {
                clap = function(v880) --[[ Line: 6073 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    if not v880.turn then
                        v880.turn = 0;
                    end;
                    v880.turn = v880.turn + 1;
                    v75({
                        SoundId = ({
                            "rbxassetid://15962454798", 
                            "rbxassetid://15962454626", 
                            "rbxassetid://15962454516"
                        })[math.random(1, 3)], 
                        Parent = v880.turn % 2 == 0 and v101["Left Leg"] or v101["Right Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.5, 
                        RollOffMaxDistance = v1
                    }):Play();
                    game.ReplicatedStorage.Replication:FireAllClients({
                        Effect = "Ninja Sprint Step", 
                        Emote = true, 
                        Type = v880.turn % 2 == 0 and "Left" or "Right", 
                        Char = v101, 
                        Root = root
                    });
                end
            }, 
            Infinite = true, 
            Animation = 15962443652, 
            Looped = true, 
            Stun = "Slowed", 
            StunAttribute = 2
        }, 
        Hunter = {
            Keyframes = {
                clap = function(v881) --[[ Line: 6109 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    if not v881.turn then
                        v881.turn = 0;
                    end;
                    v881.turn = v881.turn + 1;
                    v75({
                        SoundId = ({
                            "rbxassetid://15962163599", 
                            "rbxassetid://15962163752", 
                            "rbxassetid://15962163891", 
                            "rbxassetid://15962164060"
                        })[math.random(1, 4)], 
                        Parent = v881.turn % 2 == 0 and v101["Left Leg"] or v101["Right Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.5, 
                        RollOffMaxDistance = v1
                    }):Play();
                end
            }, 
            Infinite = true, 
            Animation = 15962326593, 
            Looped = true, 
            Stun = "Slowed", 
            StunAttribute = 2
        }, 
        Hunted = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15958273667", 
                    Volume = 1, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Animation = 15958281277, 
            Looped = true, 
            Stun = "Slowed", 
            StunAttribute = 2
        }, 
        Cmere = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16746777651", 
                    Volume = 3, 
                    Looped = false
                }
            }, 
            Animation = 16746746641, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        Come = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15958230853", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Animation = 15958227342, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Fall = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17107935019", 
                    Volume = 1.5, 
                    ParentTorso = true
                }
            }, 
            HideWeapon = true, 
            Animation = 17107937300, 
            Stun = "Freeze"
        }, 
        Surge = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17120757989", 
                    Volume = 0.85, 
                    ParentTorso = true, 
                    TimePosition = 0.1
                }
            }, 
            Animation = 17120750680, 
            Stun = "Freeze"
        }, 
        Celebrate = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17122167872", 
                    Volume = 2, 
                    ParentTorso = true
                }
            }, 
            Animation = 17122171961, 
            Stun = "Freeze"
        }, 
        Joy = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17120725506", 
                    Volume = 0.85, 
                    ParentTorso = true
                }
            }, 
            Animation = 17120709682, 
            Stun = "Freeze"
        }, 
        Dab = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17121232992", 
                    Volume = 0.85, 
                    ParentTorso = true
                }
            }, 
            Animation = 17121243447, 
            Stun = "Freeze"
        }, 
        ["Infinite Dabs"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17121285783", 
                    Volume = 1, 
                    Looped = true
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://9043916958", 
                    Volume = 0.4, 
                    Looped = true
                }
            }, 
            Animation = 17121290432, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Spin = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17120739791", 
                    Volume = 0.6, 
                    ParentTorso = true
                }
            }, 
            Animation = 17120734491, 
            Stun = "Freeze"
        }, 
        ["Rock n' Roll"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1846187476", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Animation = 15992808444, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Party Is Life"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1836308391", 
                    Volume = 0.9, 
                    TimePosition = 0.3, 
                    Looped = true
                }
            }, 
            Animation = 17121045260, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Cat Dance"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1847362131", 
                    Volume = 0.45, 
                    TimePosition = 0.15, 
                    Looped = true
                }
            }, 
            Animation = 17121145590, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Hood Jam"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1839120667", 
                    Volume = 0.45, 
                    TimePosition = 0.6, 
                    Looped = true
                }
            }, 
            Animation = 17096456977, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Wave = {
            Sounds = {
                [0.017] = {
                    SoundId = "rbxassetid://15684014240", 
                    Volume = 0.0875, 
                    Looped = true
                }
            }, 
            Animation = 15684011459, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Gun Shot"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1836402463", 
                    Volume = 1, 
                    TimePosition = 19, 
                    Looped = true
                }
            }, 
            Startup = function(v882) --[[ Line: 6363 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v883 = game.ReplicatedStorage.Emotes.Microphone:Clone();
                local l_Microphone_0 = v883.Microphone;
                l_Microphone_0:SetAttribute("EmoteProperty", true);
                v883:SetAttribute("EmoteProperty", true);
                table.insert(v882, v883);
                table.insert(v882, l_Microphone_0);
                l_Microphone_0.Part0 = v101["Left Arm"];
                l_Microphone_0.Part1 = v883;
                l_Microphone_0.Parent = v101["Left Arm"];
                v883.Parent = v101;
            end, 
            Keyframes = {
                clap = function(v885) --[[ Line: 6378 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    if not v885.turn then
                        v885.turn = 0;
                    end;
                    v885.turn = v885.turn + 1;
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v885.turn % 2 == 0 and v101["Left Leg"] or v101["Right Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.5, 
                        RollOffMaxDistance = v1
                    }):Play();
                end
            }, 
            Infinite = true, 
            Animation = 15956876217, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Flex = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15673780114", 
                    Volume = 2
                }
            }, 
            Animation = 15673779407, 
            Stun = "Freeze"
        }, 
        Robotic = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17097791389", 
                    Volume = 1.5, 
                    Looped = true
                }
            }, 
            Looped = true, 
            Animation = 17097794422, 
            Stun = "Freeze"
        }, 
        Hurricane = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1837711983", 
                    Volume = 0.8, 
                    Looped = true
                }
            }, 
            Keyframes = {
                clap = function() --[[ Line: 6435 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://17097894260", 
                        Volume = 1.2, 
                        Parent = v101.Torso
                    }):Play();
                end
            }, 
            Infinite = true, 
            Looped = true, 
            Animation = 17097909230, 
            Stun = "Slowed"
        }, 
        ["All Around"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1846628364", 
                    Volume = 1, 
                    TimePosition = 0.3, 
                    Looped = true
                }
            }, 
            Looped = true, 
            HideWeapon = true, 
            Animation = 17097820306, 
            Stun = "Freeze"
        }, 
        ["Snow Angel"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://75313492388562", 
                    Volume = 1, 
                    TimePosition = 0, 
                    Looped = true
                }
            }, 
            Looped = true, 
            HideWeapon = true, 
            Animation = 91705970671914, 
            Stun = "Freeze"
        }, 
        ["Go Go Go"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://86895841616707", 
                    Volume = 1, 
                    TimePosition = 0, 
                    Looped = true
                }
            }, 
            Looped = true, 
            HideWeapon = true, 
            Animation = 118364371117769, 
            Stun = "Freeze"
        }, 
        ["Think!"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17097709271", 
                    Volume = 1
                }
            }, 
            Animation = 17097712387, 
            Stun = "Freeze"
        }, 
        ["Knocked Out"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17097750060", 
                    Volume = 1, 
                    ParentTorso = true, 
                    TimePosition = 0.25
                }
            }, 
            Animation = 17097745294, 
            Stun = "Freeze"
        }, 
        Respect = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17106854447", 
                    Volume = 1, 
                    ParentTorso = true
                }
            }, 
            HideWeapon = true, 
            Animation = 17106858586, 
            Stun = "Freeze"
        }, 
        ["Hunter Salute"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15673640988", 
                    Volume = 1.5
                }, 
                [0.1] = {
                    SoundId = math.random(1, 3) == 1 and "rbxassetid://9114013375" or "rbxassetid://9120974708", 
                    Volume = 0.75
                }
            }, 
            Animation = 15673641958, 
            Stun = "Freeze"
        }, 
        ["Bow of Respect"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15673682013", 
                    Volume = 1.5
                }, 
                [0.25] = {
                    SoundId = "rbxassetid://9120973886", 
                    Volume = 1
                }
            }, 
            Animation = 15673683215, 
            Stun = "Freeze"
        }, 
        Yay = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15673586398", 
                    Volume = 1
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://1841573938", 
                    Volume = 1, 
                    TimePosition = 0.5
                }
            }, 
            Animation = 15673595096, 
            Stun = "Freeze"
        }, 
        Expendable = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1845732793", 
                    Volume = 0.5, 
                    TimePosition = 0.35, 
                    Looped = true
                }
            }, 
            Animation = 15488510937, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Griddy = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9040601928", 
                    Volume = 0.874, 
                    Looped = true
                }
            }, 
            Animation = 13715326691, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Levitate = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1837911163", 
                    Volume = 0.1, 
                    Looped = true
                }
            }, 
            Fix = true, 
            Animation = 15099756132, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Stay Down"] = {
            Sounds = {}, 
            Startup = function() --[[ Line: 6639 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                v75({
                    SoundId = "rbxassetid://15290124285", 
                    Volume = 0.7, 
                    Parent = v101["Right Arm"], 
                    Looped = false
                }):Play();
            end, 
            Animation = 15290114868, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Energized = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1847840594", 
                    Volume = 0.4, 
                    TimePosition = 0.15, 
                    Looped = true
                }
            }, 
            Animation = 15099686953, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Warmup = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14611894554", 
                    Volume = 4, 
                    Looped = false
                }
            }, 
            Animation = 14611879113, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Gravity = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17106165427", 
                    Volume = 1
                }
            }, 
            Animation = 17106169665, 
            Stun = "Freeze"
        }, 
        ["Groovy Swing"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1835906503", 
                    Volume = 0.5, 
                    Looped = true
                }
            }, 
            Animation = 17096779665, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Crawl = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17106185985", 
                    Volume = 0.25, 
                    Looped = true
                }
            }, 
            Animation = 17106188784, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Get Down"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1840374054", 
                    Volume = 0.7, 
                    TimePosition = 0.25, 
                    Looped = true
                }
            }, 
            Animation = 17266358630, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Tweak = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1836256328", 
                    Volume = 0.4, 
                    Looped = true
                }
            }, 
            Animation = 17266410350, 
            Looped = true, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        ["Eyes On Me"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1842976958", 
                    Volume = 0.4, 
                    Looped = true
                }
            }, 
            Animation = 17266385960, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Sigh."] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9043114637", 
                    Volume = 0.3, 
                    Looped = true
                }
            }, 
            Animation = 17266265770, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Get It"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1847479242", 
                    Volume = 0.45, 
                    Looped = true
                }
            }, 
            Animation = 17266330796, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Sway = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1847180622", 
                    Volume = 0.45, 
                    ParentTorso = true, 
                    Looped = true
                }
            }, 
            Animation = 17268390209, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Wild = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14145625078", 
                    Volume = 0.45, 
                    Looped = true
                }
            }, 
            Animation = 17266311371, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Cross Step"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1840019043", 
                    Volume = 0.5, 
                    Looped = true
                }
            }, 
            Animation = 17096590136, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["One Hand Pushup"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17086681497", 
                    Volume = 0.5, 
                    Looped = true
                }
            }, 
            Animation = 17086698204, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Two Hand Pushup"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17086681649", 
                    Volume = 0.5, 
                    Looped = true
                }
            }, 
            Animation = 17086696468, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Brush = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14611940867", 
                    Volume = 1.75, 
                    Looped = false
                }
            }, 
            Animation = 14611931363, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Mad = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17086521999", 
                    Volume = 1, 
                    TimePosition = 0.033
                }, 
                [0.083] = {
                    SoundId = "rbxassetid://9113987614", 
                    TimePosition = 0.7, 
                    Volume = 2
                }
            }, 
            Animation = 17086333563, 
            Stun = "Freeze"
        }, 
        Jumpscared = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17086303118", 
                    Volume = 0.5
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://9125652432", 
                    Volume = 0.9
                }
            }, 
            Animation = 17086298638, 
            Stun = "Freeze"
        }, 
        Disconnect = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17086432258", 
                    Volume = 0.4
                }
            }, 
            Animation = 17086423985, 
            Stun = "Freeze"
        }, 
        Snap = {
            Sounds = {
                [0.25] = {
                    SoundId = "rbxassetid://17097072874", 
                    Volume = 0.4
                }
            }, 
            Animation = 17097068597, 
            Stun = "Slowed"
        }, 
        Freaky = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17086541392", 
                    Volume = 0.4
                }
            }, 
            Animation = 17086544068, 
            Stun = "Freeze"
        }, 
        Shrug = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17108871591", 
                    Volume = 1.24
                }
            }, 
            Animation = 17108883110, 
            Stun = "Slowed"
        }, 
        ["Gun Flex"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17108676936", 
                    Volume = 1.24
                }
            }, 
            Animation = 17108683768, 
            HideWeapon = true, 
            Stun = "Freeze"
        }, 
        ["Point Forward"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17097152088", 
                    Volume = 0.9
                }, 
                [2.3] = {
                    SoundId = "rbxassetid://7455246815", 
                    Volume = 0.25
                }
            }, 
            Animation = 17097146599, 
            Stun = "Freeze"
        }, 
        Shiver = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17097111258", 
                    Volume = 0.4
                }, 
                [6.4] = {
                    SoundId = "rbxassetid://7455246815", 
                    Volume = 0.25
                }
            }, 
            Animation = 17097114800, 
            Stun = "Freeze"
        }, 
        ["Shuffle Steps"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17086664493", 
                    Volume = 0.8, 
                    Looped = true
                }
            }, 
            Keyframes = {
                clap = function() --[[ Line: 7021 ]]

                end
            }, 
            Infinite = true, 
            Looped = true, 
            Animation = 17086507535, 
            Stun = "Slowed"
        }, 
        ["Smooth Vibe"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9044565954", 
                    Volume = 0.3, 
                    Looped = true
                }
            }, 
            Looped = true, 
            Animation = 17097177356, 
            Stun = "Freeze"
        }, 
        ["Trap Dance"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1842892976", 
                    Volume = 0.45, 
                    Looped = true
                }
            }, 
            Looped = true, 
            Animation = 17097225104, 
            Stun = "Slowed"
        }, 
        Breakdown = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1837682925", 
                    Volume = 0.45, 
                    Looped = true
                }
            }, 
            HideWeapon = true, 
            Looped = true, 
            Animation = 17097275344, 
            Stun = "Slowed"
        }, 
        Worm = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1835443210", 
                    Volume = 0.45, 
                    Looped = true, 
                    TimePosition = 10
                }
            }, 
            Looped = true, 
            Animation = 17097313490, 
            Stun = "Slowed"
        }, 
        Frenzy = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1847412527", 
                    Volume = 0.75, 
                    Looped = true, 
                    TimePosition = 2
                }
            }, 
            Keyframes = {
                clap = function() --[[ Line: 7104 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://2704706975", 
                        Volume = 0.5, 
                        Parent = v101.Head
                    }):Play();
                end
            }, 
            Infinite = true, 
            Looped = true, 
            Animation = 17097370518, 
            Stun = "Slowed"
        }, 
        ["Down Low"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17097078338", 
                    Volume = 0.3, 
                    Looped = true
                }
            }, 
            Looped = true, 
            Animation = 17096931722, 
            Stun = "Freeze"
        }, 
        ["Shake A Leg"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9046189833", 
                    Volume = 0.3, 
                    Looped = true
                }
            }, 
            Looped = true, 
            Animation = 17106937938, 
            Stun = "Slowed"
        }, 
        Crouch = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17097032574", 
                    Volume = 0.15, 
                    Looped = true
                }
            }, 
            Looped = true, 
            Animation = 17097035602, 
            Stun = "Slowed"
        }, 
        Idk = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9042785151", 
                    Volume = 0.4, 
                    Looped = true
                }
            }, 
            Looped = true, 
            Animation = 17086440627, 
            Stun = "Slowed"
        }, 
        Vibe = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9048378262", 
                    Volume = 0.4, 
                    Looped = true
                }
            }, 
            Looped = true, 
            Animation = 17086321064, 
            Stun = "Freeze"
        }, 
        Happy = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1837528258", 
                    Volume = 0.6, 
                    TimePosition = 0.4, 
                    Looped = true
                }
            }, 
            Animation = 14496508275, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Cheery = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9043851073", 
                    Volume = 0.6, 
                    Looped = true
                }
            }, 
            Animation = 17097940507, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Victory Dance"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1841647421", 
                    Volume = 1, 
                    TimePosition = 19, 
                    Looped = true
                }
            }, 
            Fix = true, 
            Animation = 15089788940, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Backflip = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15089505622", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            HideWeapon = true, 
            Fix = true, 
            Animation = 15089520783, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Boxing = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15090130621", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Animation = 15090141089, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Comical = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1836440339", 
                    Volume = 0.75, 
                    TimePosition = 0.35, 
                    Looped = true
                }
            }, 
            Animation = 15090301130, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Jiggy = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1845593645", 
                    Volume = 0.75, 
                    Looped = true
                }
            }, 
            Animation = 18450480375, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        [":D"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18450602521", 
                    Volume = 0.75, 
                    Looped = true
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://1842122622", 
                    Volume = 0.75, 
                    TimePosition = 0, 
                    Looped = true
                }
            }, 
            Animation = 18450597765, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Free Flow"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1841361703", 
                    Volume = 0.75, 
                    Looped = true
                }
            }, 
            Animation = 18450531343, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Let's Go"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9045588592", 
                    Volume = 0.75, 
                    Looped = true
                }
            }, 
            Keyframes = {
                clap = function() --[[ Line: 7339 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://2704706975", 
                        Volume = 1, 
                        Parent = v101.Head
                    }):Play();
                end
            }, 
            Infinite = true, 
            Animation = 18450770138, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Silly Dance"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1842922954", 
                    Volume = 0.75, 
                    Looped = true
                }
            }, 
            Animation = 18450448457, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Throne = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18450718148", 
                    Volume = 1, 
                    ParentTorso = true
                }, 
                [0.65] = {
                    SoundId = "rbxassetid://18450718643", 
                    Volume = 0.4, 
                    ParentTorso = true, 
                    Looped = true
                }
            }, 
            Startup = function(v886, _, _) --[[ Line: 7384 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v889 = game.ReplicatedStorage.Emotes.Throne:Clone();
                v889:SetAttribute("EmoteProperty", true);
                table.insert(v886, v889);
                local l_m6d_12 = v889.m6d;
                l_m6d_12:SetAttribute("EmoteProperty", true);
                table.insert(v886, l_m6d_12);
                l_m6d_12.Name = "Throne";
                l_m6d_12.Part0 = v101.HumanoidRootPart;
                l_m6d_12.Part1 = v889;
                l_m6d_12.Parent = v101.HumanoidRootPart;
                v889.Parent = v101;
            end, 
            Keyframes = {}, 
            HideWeapon = true, 
            Fix = true, 
            Idle = 18450698238, 
            Animation = 18450697195, 
            Stun = "Freeze"
        }, 
        WHAT = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18450667599", 
                    Volume = 1, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v891, _, _) --[[ Line: 7414 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v894 = game.ReplicatedStorage.Emotes["bad to the bone"]:Clone();
                v894:SetAttribute("EmoteProperty", true);
                table.insert(v891, v894);
                local l_m6d_13 = v894.m6d;
                l_m6d_13:SetAttribute("EmoteProperty", true);
                table.insert(v891, l_m6d_13);
                l_m6d_13.Name = "Top";
                l_m6d_13.Part0 = v101.HumanoidRootPart;
                l_m6d_13.Part1 = v894.Top;
                l_m6d_13.Parent = v101.HumanoidRootPart;
                v894.Parent = v101;
            end, 
            Keyframes = {
                freeze = function(_, _, v898) --[[ Line: 7425 ]]
                    v898:AdjustSpeed(0);
                end
            }, 
            Animation = 18450685221, 
            Stun = "Freeze"
        }, 
        ["Stay Back"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18828870694", 
                    Volume = 1, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v899, _, _) --[[ Line: 7443 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v902 = game.ReplicatedStorage.Emotes.Sword:Clone();
                v902:SetAttribute("EmoteProperty", true);
                table.insert(v899, v902);
                local l_m6d_14 = v902.m6d;
                l_m6d_14:SetAttribute("EmoteProperty", true);
                table.insert(v899, l_m6d_14);
                l_m6d_14.Name = "Handle";
                l_m6d_14.Part0 = v101["Right Arm"];
                l_m6d_14.Part1 = v902.Handle;
                l_m6d_14.Parent = v101["Right Arm"];
                v902.Parent = v101;
            end, 
            Animation = 18897715873, 
            Stun = "Slowed"
        }, 
        ["All Yours"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18450418495", 
                    Volume = 1, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v904, _, _) --[[ Line: 7466 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v907 = game.ReplicatedStorage.Emotes.Sword:Clone();
                v907:SetAttribute("EmoteProperty", true);
                table.insert(v904, v907);
                local l_m6d_15 = v907.m6d;
                l_m6d_15:SetAttribute("EmoteProperty", true);
                table.insert(v904, l_m6d_15);
                l_m6d_15.Name = "Handle";
                l_m6d_15.Part0 = v101["Right Arm"];
                l_m6d_15.Part1 = v907.Handle;
                l_m6d_15.Parent = v101["Right Arm"];
                v907.Parent = v101;
            end, 
            Keyframes = {
                freeze = function(_, _, v911) --[[ Line: 7477 ]]
                    v911:AdjustSpeed(0);
                end
            }, 
            Animation = 18450406917, 
            Stun = "Freeze"
        }, 
        ["Do A Flip"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17292863583", 
                    Volume = 1, 
                    TimePosition = 0.15, 
                    ParentTorso = true
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v914) --[[ Line: 7497 ]]
                    v914:AdjustSpeed(0);
                end
            }, 
            Fix = true, 
            FixRotation = true, 
            Animation = 17292855624, 
            Stun = "Freeze"
        }, 
        ["Slick Back"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16746806682", 
                    Volume = 1.25, 
                    ParentTorso = true
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v917) --[[ Line: 7518 ]]
                    v917:AdjustSpeed(0);
                end
            }, 
            Animation = 16746808371, 
            Stun = "Slowed"
        }, 
        ["Power Up"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17292499081", 
                    Volume = 1.25, 
                    ParentTorso = true
                }
            }, 
            Keyframes = {
                start = function(v918, v919, _) --[[ Line: 7537 ]]
                    -- upvalues: l_PlayerFromCharacter_0 (copy), v101 (copy)
                    local v921 = game.ReplicatedStorage.Emotes.powerupaura.Attachment:Clone();
                    v921:SetAttribute("EmoteProperty", true);
                    table.insert(v919, v921);
                    v918.att = v921;
                    if l_PlayerFromCharacter_0 then
                        math.randomseed(#l_PlayerFromCharacter_0.Name);
                    end;
                    local v922 = Color3.new(math.random(), math.random(), math.random());
                    if v101.Name == "Weakest Dummy" then
                        v922 = ({
                            BrickColor.new("Bright red").Color, 
                            BrickColor.new("Bright yellow").Color, 
                            BrickColor.new("Electric blue").Color, 
                            BrickColor.new("White").Color
                        })[math.random(1, 4)];
                    end;
                    math.randomseed(tick());
                    for _, v924 in pairs(v921:GetChildren()) do
                        v924.Color = ColorSequence.new(v922);
                    end;
                    v921.Parent = v101.PrimaryPart;
                    v921.big:Emit(5);
                    v921.ParticleEmitter.Enabled = true;
                end, 
                ["end"] = function(v925, _, _) --[[ Line: 7560 ]]
                    v925.att.ParticleEmitter.Enabled = false;
                end
            }, 
            Animation = 17292505729, 
            Stun = "Freeze"
        }, 
        Flop = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16522115283", 
                    Volume = 1.25, 
                    ParentTorso = true
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v930) --[[ Line: 7579 ]]
                    v930:AdjustSpeed(0);
                end
            }, 
            FixRotation = true, 
            Animation = 16522110024, 
            Stun = "Freeze"
        }, 
        Shy = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1837934932", 
                    Volume = 0.5, 
                    Looped = true
                }
            }, 
            Animation = 83257080238678, 
            Stun = "Freeze", 
            Looped = true
        }, 
        ["Scary Crawl"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://78377770965429", 
                    Volume = 0.25, 
                    TimePosition = 0.3, 
                    Looped = true
                }
            }, 
            Animation = 129232331588541, 
            Stun = "Slowed", 
            Looped = true, 
            StunAttribute = 2
        }, 
        Relaxed = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15684856602", 
                    Volume = 1.25
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v933) --[[ Line: 7628 ]]
                    v933:AdjustSpeed(0);
                end
            }, 
            Animation = 15684849948, 
            Stun = "Slowed", 
            StunAttribute = 1.5
        }, 
        Salute = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15674156835", 
                    Volume = 0.65
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v936) --[[ Line: 7647 ]]
                    v936:AdjustSpeed(0);
                end
            }, 
            Animation = 15674141176, 
            Stun = "Freeze"
        }, 
        ["Angel Sit"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1842179370", 
                    Volume = 0.65, 
                    Looped = true
                }
            }, 
            FixRotation = true, 
            Animation = 99277885325374, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Pie = {
            Sounds = {}, 
            Startup = function(v937, _, v939) --[[ Line: 7676 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v940 = game.ReplicatedStorage.Emotes.Pie:Clone();
                v940:SetAttribute("EmoteProperty", true);
                table.insert(v937, v940);
                v939.Handle = v940;
                local l_Pie_0 = v940.Pie;
                l_Pie_0:SetAttribute("EmoteProperty", true);
                table.insert(v937, l_Pie_0);
                v939.md = l_Pie_0;
                l_Pie_0.Part0 = v101.PrimaryPart;
                l_Pie_0.Part1 = v940;
                l_Pie_0.Parent = l_Pie_0.Part0;
                v940.Parent = v101;
                v75({
                    SoundId = "rbxassetid://102809211589234", 
                    Parent = v940, 
                    Volume = 2
                }):Play();
            end, 
            Keyframes = {
                show = function(v942, _, _) --[[ Line: 7691 ]]
                    local l_Handle_7 = v942.Handle;
                    for _, v947 in pairs({
                        l_Handle_7, 
                        l_Handle_7["Meshes/pie_Circle"]
                    }) do
                        v947.Transparency = 0;
                    end;
                end, 
                ["end"] = function(v948, _, _) --[[ Line: 7698 ]]
                    v948.Handle:Destroy();
                end
            }, 
            Animation = 100120756694061, 
            Stun = "Slowed"
        }, 
        ROFL = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://72680012098533", 
                    Volume = 0.8, 
                    ParentTorso = true, 
                    Looped = false
                }
            }, 
            Startup = function(_, _, _) --[[ Line: 7717 ]] --[[ Name: Startup ]]

            end, 
            Animation = 92009592408067, 
            Stun = "Freeze"
        }, 
        Eggceleration = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://127734089249377", 
                    Volume = 0.4, 
                    Looped = true
                }
            }, 
            Startup = function(v954, _, v956) --[[ Line: 7739 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v957 = game.ReplicatedStorage.Emotes["Hard Boiled Roadster"]:Clone();
                v957:SetAttribute("EmoteProperty", true);
                table.insert(v954, v957);
                v956.Handle = v957;
                for _, v959 in pairs({
                    "1Wheel", 
                    "2Wheel", 
                    "3Wheel", 
                    "4Wheel", 
                    "Base"
                }) do
                    local l_FirstChild_2 = v957:FindFirstChild(v959):FindFirstChild(v959);
                    if l_FirstChild_2 then
                        l_FirstChild_2:SetAttribute("EmoteProperty", true);
                        table.insert(v954, l_FirstChild_2);
                        v956.md = l_FirstChild_2;
                        l_FirstChild_2.Parent = v101.PrimaryPart;
                        l_FirstChild_2.Part0 = v101.PrimaryPart;
                        l_FirstChild_2.Part1 = v957:FindFirstChild(v959);
                    end;
                end;
                v957.Parent = v101;
            end, 
            Animation = 136339706043215, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        ["Far Lands"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://130102260263347", 
                    Volume = 0.75, 
                    Looped = false
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://9112871516", 
                    Volume = 0.1, 
                    Looped = true
                }
            }, 
            Startup = function(v961, _, v963) --[[ Line: 7773 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v964 = game.ReplicatedStorage.Emotes.Telescope:Clone();
                v964:SetAttribute("EmoteProperty", true);
                table.insert(v961, v964);
                v963.Handle = v964;
                local l_Telescope_0 = v964.Telescope;
                l_Telescope_0:SetAttribute("EmoteProperty", true);
                table.insert(v961, l_Telescope_0);
                v963.md = l_Telescope_0;
                l_Telescope_0.Part0 = v101["Left Arm"];
                l_Telescope_0.Part1 = v964;
                l_Telescope_0.Parent = l_Telescope_0.Part0;
                v964.Parent = v101;
                local v966 = game.ReplicatedStorage.Emotes.RockModel:Clone();
                v966:SetAttribute("EmoteProperty", true);
                table.insert(v961, v966);
                v963.Handle = v966;
                local l_Motor6D_15 = Instance.new("Motor6D");
                l_Motor6D_15:SetAttribute("EmoteProperty", true);
                table.insert(v961, l_Motor6D_15);
                v963.md = l_Motor6D_15;
                l_Motor6D_15.Part0 = v101.PrimaryPart;
                l_Motor6D_15.Part1 = v966.Rock;
                l_Motor6D_15.C0 = CFrame.new(0.518783569, -2.77656937, -1.6493988, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                l_Motor6D_15.Parent = l_Motor6D_15.Part0;
                v966.Parent = v101;
            end, 
            Animation = 95188093937721, 
            Idle = 123472525620412, 
            Stun = "Freeze"
        }, 
        ["Brick Wall"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://82109086143085", 
                    Volume = 0.8, 
                    Looped = true
                }
            }, 
            Startup = function(v968, _, v970) --[[ Line: 7804 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local l_Part_1 = Instance.new("Part");
                l_Part_1:SetAttribute("EmoteProperty", true);
                table.insert(v968, l_Part_1);
                v970.Handle = l_Part_1;
                l_Part_1.Color = Color3.fromRGB(165, 91, 91);
                l_Part_1.Material = Enum.Material.Brick;
                l_Part_1.CanCollide = false;
                l_Part_1.CanTouch = false;
                l_Part_1.CanQuery = false;
                l_Part_1.Massless = true;
                l_Part_1.Size = Vector3.new(14, 10, 2, 0);
                local l_Weld_4 = Instance.new("Weld");
                l_Weld_4.Part0 = v101.PrimaryPart;
                l_Weld_4.Part1 = l_Part_1;
                l_Weld_4.C0 = CFrame.new(-1.52587891E-5, 1.99996948, -5.00027466, 1.00000024, -5.55111512E-17, 1.16825104E-5, -5.55111645E-17, 1, -6.485096E-22, -1.16825104E-5, 0, 1.00000024);
                l_Weld_4.Parent = l_Part_1;
                l_Part_1.Parent = v101;
            end, 
            HideWeapon = true, 
            Looped = true, 
            Animation = 82845057792209, 
            Stun = "Freeze"
        }, 
        Poet = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://73094641303819", 
                    Volume = 0.5, 
                    Looped = false
                }, 
                [2.25] = {
                    SoundId = "rbxassetid://80725552338935", 
                    Volume = 0.2, 
                    Looped = true
                }, 
                [1] = {
                    SoundId = "rbxassetid://1838577168", 
                    Volume = 0.8, 
                    Looped = true
                }
            }, 
            Startup = function(v973, _, v975) --[[ Line: 7848 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v976 = game.ReplicatedStorage.Emotes.poet.Book:Clone();
                v976:SetAttribute("EmoteProperty", true);
                table.insert(v973, v976);
                v975.Handle = v976;
                local l_Handle_8 = v976.Handle.Handle;
                l_Handle_8:SetAttribute("EmoteProperty", true);
                table.insert(v973, l_Handle_8);
                v975.md = l_Handle_8;
                l_Handle_8.Part0 = v101["Left Arm"];
                l_Handle_8.Part1 = v976.Handle;
                l_Handle_8.Parent = l_Handle_8.Part0;
                v976.Parent = v101;
                local v978 = game.ReplicatedStorage.Emotes.poet.feather:Clone();
                v978:SetAttribute("EmoteProperty", true);
                table.insert(v973, v978);
                v975.Handle = v978;
                local l_Handle_9 = v978.Handle.Handle;
                l_Handle_9:SetAttribute("EmoteProperty", true);
                table.insert(v973, l_Handle_9);
                v975.md = l_Handle_9;
                l_Handle_9.Part0 = v101["Right Arm"];
                l_Handle_9.Part1 = v978.Handle;
                l_Handle_9.Parent = l_Handle_9.Part0;
                v978.Parent = v101;
                local v980 = game.ReplicatedStorage.Emotes.poet["studious chair"]:Clone();
                v980:SetAttribute("EmoteProperty", true);
                table.insert(v973, v980);
                v975.Handle = v980;
                local l_Motor6D_16 = Instance.new("Motor6D");
                l_Motor6D_16:SetAttribute("EmoteProperty", true);
                table.insert(v973, l_Motor6D_16);
                v975.md = l_Motor6D_16;
                l_Motor6D_16.Part0 = v101.PrimaryPart;
                l_Motor6D_16.Part1 = v980.mainpiece;
                l_Motor6D_16.C0 = CFrame.new(-1.39691925, 1.01877403, 1.46870232, 0.707105875, 0, -0.707105875, 0, 1, 0, 0.707105875, 0, 0.707105875);
                l_Motor6D_16.Parent = l_Motor6D_16.Part0;
                v980.Parent = v101;
            end, 
            Animation = 91228869240203, 
            Idle = 83196818755529, 
            Stun = "Freeze"
        }, 
        ["Virtual Reality"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://122501421229323", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v982, _, v984) --[[ Line: 7886 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v985 = game.ReplicatedStorage.Emotes.vr:Clone();
                v985:SetAttribute("EmoteProperty", true);
                table.insert(v982, v985);
                v984.Handle = v985;
                local l_Handle_10 = v985.Handle;
                l_Handle_10:SetAttribute("EmoteProperty", true);
                table.insert(v982, l_Handle_10);
                v984.md = l_Handle_10;
                l_Handle_10.Part0 = v101.Head;
                l_Handle_10.Part1 = v985;
                l_Handle_10.Parent = v101.Head;
                v985.Name = "Handle";
                v985.Parent = v101.Head;
            end, 
            Animation = 84734676175472, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        Candy = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1837571829", 
                    Volume = 0.5, 
                    Looped = true
                }
            }, 
            Startup = function(v987, _, v989) --[[ Line: 7910 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v990 = game.ReplicatedStorage.Emotes.Lollipop:Clone();
                v990:SetAttribute("EmoteProperty", true);
                table.insert(v987, v990);
                v989.Handle = v990;
                local l_Lollipop_0 = v990.Lollipop;
                l_Lollipop_0:SetAttribute("EmoteProperty", true);
                table.insert(v987, l_Lollipop_0);
                v989.md = l_Lollipop_0;
                l_Lollipop_0.Part0 = v101["Left Arm"];
                l_Lollipop_0.Part1 = v990;
                l_Lollipop_0.Parent = v101["Left Arm"];
                v990.Parent = v101;
            end, 
            Animation = 136634205715198, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Kicking My Feet"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://121331882801594", 
                    Volume = 1, 
                    ParentTorso = true
                }, 
                [1.167] = {
                    SoundId = "rbxassetid://95578909033022", 
                    Volume = 0.3, 
                    Looped = true, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v992, _, v994) --[[ Line: 7940 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v995 = game.ReplicatedStorage.Emotes.Laptop:Clone();
                v995:SetAttribute("EmoteProperty", true);
                table.insert(v992, v995);
                v994.Handle = v995;
                local l_m6d_16 = v995.m6d;
                l_m6d_16:SetAttribute("EmoteProperty", true);
                table.insert(v992, l_m6d_16);
                v994.md = l_m6d_16;
                l_m6d_16.Part0 = v101.PrimaryPart;
                l_m6d_16.Name = "MainLaptop";
                l_m6d_16.Part1 = v995.MainLaptop;
                l_m6d_16.Parent = v101.PrimaryPart;
                v995.Parent = v101;
            end, 
            Animation = 122143558846408, 
            Idle = 135379415562839, 
            Looped = false, 
            FixRotation = true, 
            Stun = "Freeze"
        }, 
        ["Dancey Dance"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1839444520", 
                    Volume = 0.5, 
                    Looped = true
                }
            }, 
            Animation = 126505536768184, 
            HideWeapon = true, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Transform = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://94428920940989", 
                    Volume = 1, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v997, _, v999) --[[ Line: 7981 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1000 = game.ReplicatedStorage.Emotes.Watch:Clone();
                v1000:SetAttribute("EmoteProperty", true);
                table.insert(v997, v1000);
                v999.Handle = v1000;
                local l_Watch_0 = v1000.Watch;
                l_Watch_0:SetAttribute("EmoteProperty", true);
                table.insert(v997, l_Watch_0);
                v999.md = l_Watch_0;
                l_Watch_0.Part0 = v101["Left Arm"];
                l_Watch_0.Part1 = v1000;
                l_Watch_0.Parent = v101["Left Arm"];
                v1000.Parent = v101;
            end, 
            Keyframes = {
                disguise = function(_, _, _) --[[ Line: 7991 ]]
                    -- upvalues: v101 (copy)
                    local v1005 = game.ReplicatedStorage.Emotes.CloneGlow:Clone();
                    v1005.Parent = v101.PrimaryPart;
                    v1005:Emit(10);
                    shared.cfolder({
                        Name = "randomdisguise#", 
                        Parent = v101
                    }, 0.2);
                end
            }, 
            Cooldown = 5, 
            Animation = 95977571599797, 
            HideWeapon = true, 
            Stun = "Slowed", 
            StunAttribute = 1.25
        }, 
        Hypnotize = {
            Sounds = {}, 
            Startup = function(v1006, _, v1008) --[[ Line: 8013 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1009 = game.ReplicatedStorage.Emotes["hypnotize coin"]:Clone();
                v1009:SetAttribute("EmoteProperty", true);
                table.insert(v1006, v1009);
                v1008.Handle = v1009;
                local l_rotate_0 = v1009.rotate;
                l_rotate_0:SetAttribute("EmoteProperty", true);
                table.insert(v1006, l_rotate_0);
                local l_rotate_1 = l_rotate_0.rotate;
                l_rotate_1:SetAttribute("EmoteProperty", true);
                table.insert(v1006, l_rotate_1);
                v1008.md = l_rotate_1;
                l_rotate_1.Part0 = v101["Right Arm"];
                l_rotate_1.Part1 = l_rotate_0;
                l_rotate_1.Parent = v101["Right Arm"];
                l_rotate_0.Parent = v101["Right Arm"];
                l_rotate_0["hypnotize coin"].Part0 = l_rotate_0;
                l_rotate_0["hypnotize coin"].Part1 = v1009;
                v1009.Beam.Attachment0 = l_rotate_0.a;
                v1009.Beam.Attachment1 = v1009.b;
                v1009.Parent = v101;
                v75({
                    SoundId = "rbxassetid://128826289918429", 
                    Parent = v1009, 
                    Volume = 1
                }):Play();
                v75({
                    SoundId = "rbxassetid://96767567204088", 
                    Parent = v1009, 
                    Looped = true, 
                    Volume = 0.5
                }):Play();
                v75({
                    SoundId = "rbxassetid://84603081336467", 
                    Parent = v1009, 
                    Looped = true, 
                    Volume = 1
                }):Play();
            end, 
            Animation = 83122498060756, 
            Looped = true, 
            Fix = true, 
            HideWeapon = true, 
            Stun = "Slowed", 
            StunAttribute = 1.25
        }, 
        Anteater = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://85846521324149", 
                    Volume = 0.6
                }
            }, 
            Startup = function(v1012, _, v1014) --[[ Line: 8063 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1015 = game.ReplicatedStorage.Emotes.TongueThree:Clone();
                v1015:SetAttribute("EmoteProperty", true);
                table.insert(v1012, v1015);
                v1014.Handle = v1015;
                v1015.Name = "Tongue";
                local l_Tongue_0 = v1015.Tongue;
                l_Tongue_0:SetAttribute("EmoteProperty", true);
                table.insert(v1012, l_Tongue_0);
                v1014.md = l_Tongue_0;
                l_Tongue_0.Part0 = v101.Head;
                l_Tongue_0.Part1 = v1015;
                l_Tongue_0.Parent = v101.Head;
                v1015.Parent = v101;
            end, 
            Animation = 126729542613743, 
            Looped = false, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        ["Dolphin Laugh"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://84584488257531", 
                    Volume = 0.6
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://107717554139419", 
                    Volume = 1
                }
            }, 
            Startup = function(v1017, _, v1019) --[[ Line: 8092 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1020 = game.ReplicatedStorage.Emotes.Tongue:Clone();
                v1020:SetAttribute("EmoteProperty", true);
                table.insert(v1017, v1020);
                v1019.Handle = v1020;
                local l_Tongue_1 = v1020.Tongue;
                l_Tongue_1:SetAttribute("EmoteProperty", true);
                table.insert(v1017, l_Tongue_1);
                v1019.md = l_Tongue_1;
                l_Tongue_1.Part0 = v101.Head;
                l_Tongue_1.Part1 = v1020;
                l_Tongue_1.Parent = v101.Head;
                v1020.Parent = v101;
            end, 
            Animation = 90429111193022, 
            Looped = false, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        ["Tactical Roll"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://136421083782203", 
                    Volume = 0.75, 
                    ParentTorso = true
                }, 
                [0.667] = {
                    SoundId = "rbxassetid://109487141252928", 
                    Volume = 0.25, 
                    ParentTorso = true, 
                    Looped = true
                }
            }, 
            Startup = function(v1022, _, _) --[[ Line: 8123 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1025 = shared.cfolder({
                    Name = "Freeze"
                }, 0.6);
                table.insert(v1022, v1025);
                v1025:SetAttribute("DontInterrupt", true);
                v1025:SetAttribute("NoStop", true);
                v1025:SetAttribute("EmoteProperty", true);
                task.delay(0, function() --[[ Line: 8131 ]]
                    -- upvalues: v1025 (copy), v101 (ref)
                    v1025.Parent = v101;
                end);
            end, 
            Keyframes = {}, 
            Infinite = true, 
            Animation = 95582164547526, 
            Idle = 129959128025296, 
            End = {
                97763083185838, 
                1.167, 
                {
                    SoundId = "rbxassetid://101300402631347", 
                    Volume = 1
                }
            }, 
            Looped = false, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        Snowball = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://123492905764821", 
                    ParentTorso = true, 
                    Volume = 1
                }
            }, 
            Startup = function(v1026, _, v1028) --[[ Line: 8167 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1029 = game.ReplicatedStorage.Emotes.Snowball:Clone();
                v1029:SetAttribute("EmoteProperty", true);
                table.insert(v1026, v1029);
                v1028.Handle = v1029;
                local l_Snowball_0 = v1029.Snowball;
                l_Snowball_0:SetAttribute("EmoteProperty", true);
                table.insert(v1026, l_Snowball_0);
                v1028.md = l_Snowball_0;
                l_Snowball_0.Part0 = v101.PrimaryPart;
                l_Snowball_0.Part1 = v1029;
                l_Snowball_0.Parent = v101.PrimaryPart;
                v1029.Parent = v101;
                v75({
                    SoundId = "rbxassetid://127749554517948", 
                    Parent = v1029, 
                    Volume = 2
                }):Play();
                v75({
                    SoundId = "rbxassetid://84849690170635", 
                    Parent = v1029, 
                    Looped = true, 
                    Volume = 0.65
                }):Play();
                local v1031 = shared.cfolder({
                    Name = "Freeze"
                }, 0.567);
                table.insert(v1026, v1031);
                v1031:SetAttribute("DontInterrupt", true);
                v1031:SetAttribute("NoStop", true);
                v1031:SetAttribute("EmoteProperty", true);
                task.delay(0, function() --[[ Line: 8195 ]]
                    -- upvalues: v1031 (copy), v101 (ref)
                    v1031.Parent = v101;
                end);
            end, 
            Keyframes = {}, 
            Infinite = true, 
            Animation = 93094222682042, 
            Idle = 108144977825967, 
            Looped = false, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        ["Pull Ups"] = {
            Sounds = {}, 
            Startup = function(v1032, _, v1034) --[[ Line: 8216 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1035 = game.ReplicatedStorage.Emotes.bar:Clone();
                v1035:SetAttribute("EmoteProperty", true);
                table.insert(v1032, v1035);
                v1034.Handle = v1035;
                local l_bar_0 = v1035.bar;
                l_bar_0:SetAttribute("EmoteProperty", true);
                table.insert(v1032, l_bar_0);
                v1034.md = l_bar_0;
                l_bar_0.Part0 = v101.PrimaryPart;
                l_bar_0.Part1 = v1035;
                l_bar_0.Parent = v101.PrimaryPart;
                v1035.Parent = v101;
            end, 
            Keyframes = {
                clap = function(_, _, _) --[[ Line: 8226 ]]
                    -- upvalues: v101 (copy), v1 (ref)
                    shared.sfx({
                        SoundId = "rbxassetid://77085840183045", 
                        Parent = v101.Torso, 
                        RollOffMaxDistance = v1, 
                        Volume = 0.2
                    }):Play();
                end
            }, 
            Infinite = true, 
            Animation = 75393073390365, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Crush His Skull"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://98776091220732", 
                    Volume = 2, 
                    Looped = false
                }
            }, 
            Startup = function(v1040, _, _) --[[ Line: 8251 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v1040, v101);
                local _ = v99("Right", v1040, v101);
            end, 
            Animation = 78773506399466, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        ["Tear To My Eye"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://82594146296970", 
                    Volume = 0.65, 
                    Looped = false
                }
            }, 
            Startup = function(v1045, _, _) --[[ Line: 8270 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v1045, v101);
            end, 
            Animation = 134468557091532, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        ["Iconic Salute"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://104425695752871", 
                    Volume = 0.65, 
                    Looped = false
                }
            }, 
            Startup = function(v1049, _, _) --[[ Line: 8288 ]] --[[ Name: Startup ]]
                -- upvalues: v99 (ref), v101 (copy)
                local _ = v99("Left", v1049, v101);
            end, 
            Animation = 80518687127249, 
            Looped = false, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        ["Happy Run"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://76952189090658", 
                    Volume = 0.3, 
                    Looped = true
                }, 
                [0.1] = {
                    SoundId = "rbxassetid://1846637439", 
                    Volume = 0.8, 
                    Looped = true
                }
            }, 
            Animation = 137202650654919, 
            Looped = true, 
            Stun = "Slowed", 
            StunAttribute = 1.25
        }, 
        ["I HATE THIS"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://119365921426629", 
                    Volume = 1, 
                    ParentTorso = true
                }
            }, 
            Animation = 112380819900693, 
            Stun = "Freeze"
        }, 
        ["Closer Look"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://109152804297772", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v1053, _, v1055) --[[ Line: 8355 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1056 = game.ReplicatedStorage.Emotes.mag:Clone();
                v1056:SetAttribute("EmoteProperty", true);
                table.insert(v1053, v1056);
                v1055.Handle = v1056;
                local l_Motor6D_17 = v1056["Meshes/magnifying glass_Magnifying glass"].Motor6D;
                l_Motor6D_17:SetAttribute("EmoteProperty", true);
                table.insert(v1053, l_Motor6D_17);
                v1055.md = l_Motor6D_17;
                l_Motor6D_17.Part0 = v101["Right Arm"];
                l_Motor6D_17.Part1 = v1056["Meshes/magnifying glass_Magnifying glass"];
                l_Motor6D_17.Parent = v101["Right Arm"];
                v1056.Parent = v101;
            end, 
            Animation = 110165153895915, 
            Stun = "Slowed"
        }, 
        ["Wait what?"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://78427074444157", 
                    Volume = 0.8
                }
            }, 
            Startup = function(v1058, _, v1060) --[[ Line: 8376 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1061 = game.ReplicatedStorage.Emotes.burger:Clone();
                v1061:SetAttribute("EmoteProperty", true);
                table.insert(v1058, v1061);
                v1060.Handle = v1061;
                local l_burger_0 = v1061.burger;
                l_burger_0:SetAttribute("EmoteProperty", true);
                table.insert(v1058, l_burger_0);
                v1060.md = l_burger_0;
                l_burger_0.Part0 = v101["Right Arm"];
                l_burger_0.Part1 = v1061;
                l_burger_0.Parent = v101["Right Arm"];
                v1061.Parent = v101;
            end, 
            HideWeapon = true, 
            Animation = 118344836569256, 
            Stun = "Slowed"
        }, 
        Spider = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://98010853317105", 
                    ParentTorso = true, 
                    Volume = 1
                }, 
                [1.25] = {
                    SoundId = "rbxassetid://96737293385093", 
                    ParentTorso = true, 
                    Volume = 0.75, 
                    Looped = true
                }
            }, 
            Startup = function(v1063, _, v1065) --[[ Line: 8406 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1066 = shared.cfolder({
                    Name = "Freeze"
                }, 1.25);
                table.insert(v1063, v1066);
                v1066:SetAttribute("DontInterrupt", true);
                v1066:SetAttribute("NoStop", true);
                v1066:SetAttribute("EmoteProperty", true);
                task.delay(0, function() --[[ Line: 8414 ]]
                    -- upvalues: v1066 (copy), v101 (ref)
                    v1066.Parent = v101;
                end);
                local v1067 = game.ReplicatedStorage.Emotes["Left Arm2"]:Clone();
                v1067:SetAttribute("EmoteProperty", true);
                table.insert(v1063, v1067);
                v1065.Handle = v1067;
                local l_Motor6D_18 = v1067:FindFirstChildOfClass("Motor6D");
                l_Motor6D_18:SetAttribute("EmoteProperty", true);
                table.insert(v1063, l_Motor6D_18);
                v1065.md = l_Motor6D_18;
                l_Motor6D_18.Part0 = v101.Torso;
                l_Motor6D_18.Part1 = v1067;
                l_Motor6D_18.Parent = v101.Torso;
                v1067.Parent = v101;
                local v1069 = game.ReplicatedStorage.Emotes["Right Arm2"]:Clone();
                v1069:SetAttribute("EmoteProperty", true);
                table.insert(v1063, v1069);
                v1065.Handle = v1069;
                local l_Motor6D_19 = v1069:FindFirstChildOfClass("Motor6D");
                l_Motor6D_19:SetAttribute("EmoteProperty", true);
                table.insert(v1063, l_Motor6D_19);
                v1065.md = l_Motor6D_19;
                l_Motor6D_19.Part0 = v101.Torso;
                l_Motor6D_19.Part1 = v1069;
                l_Motor6D_19.Parent = v101.Torso;
                v1069.Parent = v101;
                for _, v1072 in pairs({
                    v1067, 
                    v1069
                }) do
                    local l_Model_0 = Instance.new("Model");
                    l_Model_0:SetAttribute("EmoteProperty", true);
                    table.insert(v1063, l_Model_0);
                    Instance.new("Humanoid").Parent = l_Model_0;
                    local l_v101_FirstChild_0 = v101:FindFirstChild((string.sub(v1072.Name, 0, #v1072.Name - 1)));
                    if l_v101_FirstChild_0 then
                        l_v101_FirstChild_0 = l_v101_FirstChild_0:Clone();
                        l_v101_FirstChild_0:ClearAllChildren();
                        l_v101_FirstChild_0.Parent = l_Model_0;
                        local l_Weld_5 = Instance.new("Weld");
                        l_Weld_5.Part0 = v1072;
                        l_Weld_5.Part1 = l_v101_FirstChild_0;
                        l_Weld_5.Parent = l_v101_FirstChild_0;
                    end;
                    for _, v1077 in pairs(v101:GetChildren()) do
                        if v1077:IsA("BodyColors") or v1077:IsA("Shirt") or v1077:IsA("CharacterMesh") then
                            v1077:Clone().Parent = l_Model_0;
                        end;
                    end;
                    v1072.Transparency = 1;
                    l_Model_0.Parent = v101;
                end;
            end, 
            HideWeapon = true, 
            Animation = 84352551694194, 
            Idle = 116556793266735, 
            End = {
                128242451039706, 
                3.417, 
                {
                    SoundId = "rbxassetid://136022219424831", 
                    Volume = 1
                }
            }, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        ["Gun Safety"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://130627465104635", 
                    Volume = 0.8
                }
            }, 
            Startup = function(v1078, _, v1080) --[[ Line: 8478 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1081 = game.ReplicatedStorage.Emotes.gun1:Clone();
                v1081:SetAttribute("EmoteProperty", true);
                table.insert(v1078, v1081);
                v1080.Handle = v1081;
                local l_Motor6D_20 = v1081.Motor6D;
                l_Motor6D_20:SetAttribute("EmoteProperty", true);
                table.insert(v1078, l_Motor6D_20);
                v1080.md = l_Motor6D_20;
                l_Motor6D_20.Part0 = v101["Right Arm"];
                l_Motor6D_20.Part1 = v1081;
                l_Motor6D_20.Parent = v101["Right Arm"];
                v1081.Parent = v101;
                local v1083 = game.ReplicatedStorage.Emotes.gun2:Clone();
                v1083:SetAttribute("EmoteProperty", true);
                table.insert(v1078, v1083);
                v1080.Handle = v1083;
                local l_Motor6D_21 = v1083.Motor6D;
                l_Motor6D_21:SetAttribute("EmoteProperty", true);
                table.insert(v1078, l_Motor6D_21);
                v1080.md = l_Motor6D_21;
                l_Motor6D_21.Part0 = v101.PrimaryPart;
                l_Motor6D_21.Part1 = v1083;
                l_Motor6D_21.Parent = v101.PrimaryPart;
                v1083.Parent = v101;
            end, 
            HideWeapon = true, 
            Animation = 129722512665420, 
            Stun = "Freeze"
        }, 
        ["Our Hill"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://76078643902403", 
                    Volume = 1
                }
            }, 
            Startup = function(v1085, _, v1087) --[[ Line: 8507 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v101 (copy)
                local v1088 = game.ReplicatedStorage.Emotes.Flag:Clone();
                v1088:SetAttribute("EmoteProperty", true);
                table.insert(v1085, v1088);
                v1087.Handle = v1088;
                local l_Flag_0 = v1088.Flag.Flag;
                l_Flag_0:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(l_Flag_0, "emotestuff" .. v101.Name);
                game:GetService("Debris"):AddItem(l_Flag_0, 7.5);
                v1087.md = l_Flag_0;
                l_Flag_0.Part0 = v101.PrimaryPart;
                l_Flag_0.Part1 = v1088.Flag;
                l_Flag_0.Parent = v101.PrimaryPart;
                v1088.Parent = v101;
            end, 
            Keyframes = {
                show = function(v1090, _, _) --[[ Line: 8517 ]]
                    local l_Handle_11 = v1090.Handle;
                    for _, v1095 in pairs(l_Handle_11:GetChildren()) do
                        v1095.Transparency = 0;
                    end;
                end, 
                place = function(v1096, v1097, _) --[[ Line: 8524 ]]
                    -- upvalues: l_CollectionService_1 (ref), v101 (copy)
                    table.remove(v1097, table.find(v1097, v1096.Handle));
                    local l_Handle_12 = v1096.Handle;
                    l_CollectionService_1:AddTag(l_Handle_12, "emotestuff" .. v101.Name);
                    game:GetService("Debris"):AddItem(l_Handle_12, 10);
                    v1096.md:Destroy();
                    for _, v1101 in pairs(l_Handle_12:GetChildren()) do
                        v1101.Anchored = true;
                    end;
                    l_Handle_12.Parent = workspace.Thrown;
                end
            }, 
            HideWeapon = true, 
            Animation = 73523771913372, 
            Stun = "Freeze"
        }, 
        ["Cleaning The Dirt"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://127817333862539", 
                    Volume = 0.4, 
                    Looped = true
                }
            }, 
            Startup = function(v1102, _, v1104) --[[ Line: 8550 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1105 = game.ReplicatedStorage.Emotes.Brush:Clone();
                v1105:SetAttribute("EmoteProperty", true);
                table.insert(v1102, v1105);
                v1104.Handle = v1105;
                local l_Brush_0 = v1105.Brush;
                l_Brush_0:SetAttribute("EmoteProperty", true);
                table.insert(v1102, l_Brush_0);
                v1104.md = l_Brush_0;
                l_Brush_0.Part0 = v101["Right Arm"];
                l_Brush_0.Part1 = v1105;
                l_Brush_0.Parent = v101["Right Arm"];
                v1105.Parent = v101;
            end, 
            Animation = 115179620616154, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Greed = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://80873338449533", 
                    Volume = 0.25, 
                    Looped = true
                }
            }, 
            Startup = function(v1107, _, v1109) --[[ Line: 8573 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1110 = game.ReplicatedStorage.Emotes.Chest:Clone();
                v1110:SetAttribute("EmoteProperty", true);
                table.insert(v1107, v1110);
                v1109.Handle = v1110;
                local l_Motor6D_22 = v1110.Motor6D;
                l_Motor6D_22:SetAttribute("EmoteProperty", true);
                table.insert(v1107, l_Motor6D_22);
                v1109.md = l_Motor6D_22;
                l_Motor6D_22.Part0 = v101.PrimaryPart;
                l_Motor6D_22.Part1 = v1110;
                l_Motor6D_22.Parent = v101.PrimaryPart;
                v1110.Parent = v101;
            end, 
            Animation = 122887697782216, 
            Looped = true, 
            Stun = "Slowed", 
            StunAttribute = 1.6
        }, 
        Map = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://90191250272746", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v1112, _, v1114) --[[ Line: 8597 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1115 = game.ReplicatedStorage.Emotes.Map:Clone();
                v1115:SetAttribute("EmoteProperty", true);
                table.insert(v1112, v1115);
                v1114.Handle = v1115;
                local l_Map_0 = v1115.Map;
                l_Map_0:SetAttribute("EmoteProperty", true);
                table.insert(v1112, l_Map_0);
                v1114.md = l_Map_0;
                l_Map_0.Part0 = v101["Left Arm"];
                l_Map_0.Part1 = v1115;
                l_Map_0.Parent = v101["Left Arm"];
                v1115.Parent = v101;
            end, 
            Animation = 107071225742389, 
            Stun = "Slowed"
        }, 
        Compass = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://136499300928500", 
                    Volume = 1.5, 
                    Looped = false
                }
            }, 
            Startup = function(v1117, _, v1119) --[[ Line: 8619 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1120 = game.ReplicatedStorage.Emotes.compass:Clone();
                v1120:SetAttribute("EmoteProperty", true);
                table.insert(v1117, v1120);
                v1119.Handle = v1120;
                local l_compass_0 = v1120.compass;
                l_compass_0:SetAttribute("EmoteProperty", true);
                table.insert(v1117, l_compass_0);
                v1119.md = l_compass_0;
                l_compass_0.Name = "compass";
                l_compass_0.Part0 = v101["Left Arm"];
                l_compass_0.Part1 = v1120;
                l_compass_0.Parent = v101["Left Arm"];
                v1120.Parent = v101;
            end, 
            Animation = 80768814436661, 
            Stun = "Freeze"
        }, 
        Gamer = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://84400761601453", 
                    Volume = 1.5, 
                    Looped = true
                }
            }, 
            Startup = function(v1122, _, v1124) --[[ Line: 8642 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1125 = game.ReplicatedStorage.Emotes.gameboi:Clone();
                v1125:SetAttribute("EmoteProperty", true);
                table.insert(v1122, v1125);
                v1124.Handle = v1125;
                local l_gameboi_0 = v1125.gameboi;
                l_gameboi_0:SetAttribute("EmoteProperty", true);
                table.insert(v1122, l_gameboi_0);
                v1124.md = l_gameboi_0;
                l_gameboi_0.Part0 = v101["Left Arm"];
                l_gameboi_0.Part1 = v1125;
                l_gameboi_0.Parent = v101["Left Arm"];
                v1125.Parent = v101;
            end, 
            Animation = 135067453512312, 
            Stun = "Slowed", 
            Looped = true
        }, 
        ["Fancy Spin"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1845480621", 
                    Volume = 1.5, 
                    Looped = true
                }
            }, 
            FixRotation = true, 
            Animation = 80454258581844, 
            Idle = 75040627398852, 
            Stun = "Slowed"
        }, 
        ["Those Who Know"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://106095843660280", 
                    Volume = 1, 
                    Looped = false
                }, 
                [0.35] = {
                    SoundId = "rbxassetid://129084829698643", 
                    Volume = 0.75, 
                    Looped = true
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v1129) --[[ Line: 8687 ]]
                    v1129:AdjustSpeed(0);
                end
            }, 
            FixRotation = true, 
            Animation = 78259177692699, 
            Idle = 120789866363939, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Sit = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15090067278", 
                    Volume = 0.65, 
                    TimePosition = 0.125, 
                    Looped = false
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v1132) --[[ Line: 8710 ]]
                    v1132:AdjustSpeed(0);
                end
            }, 
            FixRotation = true, 
            Animation = 15090101157, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["WHY?"] = {
            Sounds = {}, 
            Startup = function() --[[ Line: 8726 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                v75({
                    SoundId = "rbxassetid://15285526846", 
                    Volume = 0.65, 
                    Parent = v101["Right Arm"], 
                    Looped = false
                }):Play();
                v75({
                    SoundId = "rbxassetid://1840489462", 
                    Volume = 0.4, 
                    Parent = v101.Torso, 
                    TimePosition = 0.5, 
                    Looped = true
                }):Resume();
            end, 
            Keyframes = {
                freeze = function(_, _, v1135) --[[ Line: 8744 ]]
                    v1135:AdjustSpeed(0);
                end
            }, 
            Fix = true, 
            Animation = 15285521399, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Sit 2"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15099895974", 
                    Volume = 0.785, 
                    TimePosition = 0, 
                    Looped = false
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v1138) --[[ Line: 8766 ]]
                    v1138:AdjustSpeed(0);
                end
            }, 
            Animation = 15099893403, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        T = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15503011741", 
                    Volume = 0.4, 
                    TimePosition = 0, 
                    Looped = false
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v1141) --[[ Line: 8787 ]]
                    v1141:AdjustSpeed(0);
                end
            }, 
            Animation = 15503004900, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        ["Point Down"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15453955288", 
                    Volume = 0.785, 
                    TimePosition = 0, 
                    Looped = false
                }
            }, 
            Animation = 15446959450, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Head Spin"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15089965760", 
                    Volume = 0.65, 
                    Looped = false
                }
            }, 
            Keyframes = {
                start = function() --[[ Line: 8822 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://1846628770", 
                        Volume = 0.65, 
                        TimePosition = 25.55, 
                        Looped = false, 
                        Parent = v101.PrimaryPart
                    }):Resume();
                end
            }, 
            Animation = 15090032390, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Hologram = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15090888419", 
                    Volume = 2.5, 
                    Looped = true
                }
            }, 
            Startup = function(v1142, _, _) --[[ Line: 8847 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v101 (copy)
                local _ = {};
                for _, v1147 in pairs(game.ReplicatedStorage.Emotes.Hologram:GetChildren()) do
                    if v1147:IsA("Model") then
                        local v1148 = v1147:Clone();
                        table.insert(v1142, v1148);
                        l_CollectionService_1:AddTag(v1148, "emotestuff" .. v101.Name);
                        for _, v1150 in pairs(v1148:GetChildren()) do
                            v1150:SetAttribute("EmoteProperty", true);
                            table.insert(v1142, v1150);
                            l_CollectionService_1:AddTag(v1150, "emotestuff" .. v101.Name);
                            local l_FirstChild_3 = game.ReplicatedStorage.Emotes.Hologram:FindFirstChild(v1150.Name);
                            v1150.Material = Enum.Material.Glass;
                            v1150:SetAttribute("Exempt", true);
                            v1150.Transparency = 0.25;
                            v1150.Size = Vector3.new(1.2000000476837158, 1.149999976158142, 0, 0);
                            v1150.Parent = workspace.Thrown;
                            if l_FirstChild_3 then
                                l_FirstChild_3 = l_FirstChild_3:Clone();
                                table.insert(v1142, l_FirstChild_3);
                                l_FirstChild_3:SetAttribute("EmoteProperty", true);
                                l_FirstChild_3.Part0 = v101.PrimaryPart;
                                l_FirstChild_3.Part1 = v1150;
                                l_FirstChild_3.Parent = v101.PrimaryPart;
                                local v1152 = {
                                    15090670461, 
                                    15090671388, 
                                    15090674168, 
                                    15090675904, 
                                    15090677327, 
                                    15090678837, 
                                    15090680066, 
                                    15090681663
                                };
                                v1152 = v1152[math.random(#v1152)];
                                for v1153 = 1, 2 do
                                    local l_Decal_0 = Instance.new("Decal");
                                    l_Decal_0.Color3 = Color3.fromRGB(450, 450, 450);
                                    l_Decal_0.Transparency = 0.35;
                                    l_Decal_0.Texture = "https://www.roblox.com/asset-thumbnail/image?assetId=" .. v1152 .. "&width=420&height=420&format=png";
                                    l_Decal_0.Face = v1153 == 1 and Enum.NormalId.Front or Enum.NormalId.Back;
                                    l_Decal_0.Parent = v1150;
                                end;
                            end;
                        end;
                        v1148:SetAttribute("EmoteProperty", true);
                        v1148.Parent = v101;
                    end;
                end;
            end, 
            Animation = 15090734317, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Ramen = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15503358454", 
                    Volume = 2, 
                    Looped = false
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://1842247132", 
                    Volume = 0.15, 
                    Looped = true
                }
            }, 
            Keyframes = {
                clap = function(v1155, _, v1157) --[[ Line: 8919 ]]
                    -- upvalues: l_TweenService_0 (ref), v75 (ref), v101 (copy)
                    task.delay(0.2, function() --[[ Line: 8920 ]]
                        -- upvalues: v1157 (copy), v1155 (copy)
                        if not v1157.IsPlaying then
                            return;
                        else
                            for _, v1159 in pairs({
                                v1155.stickRight, 
                                v1155.stickLeft
                            }) do
                                if v1159:GetAttribute("OG4") then
                                    v1159.Attachment1.Position = v1159:GetAttribute("OG");
                                    v1159.Attachment0.Position = v1159:GetAttribute("OG4");
                                end;
                            end;
                            v1155.stickRight.Enabled = true;
                            v1155.stickLeft.Enabled = true;
                            return;
                        end;
                    end);
                    task.delay(1.15, function() --[[ Line: 8935 ]]
                        -- upvalues: v1157 (copy), v1155 (copy), l_TweenService_0 (ref)
                        if not v1157.IsPlaying then
                            return;
                        else
                            for _, v1161 in pairs({
                                v1155.stickRight, 
                                v1155.stickLeft
                            }) do
                                if not v1161:GetAttribute("OG") then
                                    v1161:SetAttribute("OG", v1161.Attachment1.Position);
                                end;
                                if not v1161:GetAttribute("OG4") then
                                    v1161:SetAttribute("OG4", v1161.Attachment0.Position);
                                end;
                                v1161.Attachment1.Position = v1161:GetAttribute("OG");
                                v1161.Attachment0.Position = v1161:GetAttribute("OG4");
                                v1161.Enabled = true;
                                l_TweenService_0:Create(v1161.Attachment1, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    WorldPosition = v1161.Attachment0.WorldPosition
                                }):Play();
                                if not v1161:GetAttribute("OG2") then
                                    v1161:SetAttribute("OG2", v1161.Width1);
                                end;
                                if not v1161:GetAttribute("OG3") then
                                    v1161:SetAttribute("OG3", v1161.Width0);
                                end;
                                l_TweenService_0:Create(v1161, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    Width1 = 0, 
                                    Width0 = 0
                                }):Play();
                            end;
                            return;
                        end;
                    end);
                    v75({
                        SoundId = "rbxassetid://15503358374", 
                        Parent = v101.PrimaryPart, 
                        Volume = 2
                    }):Play();
                end, 
                claploop = function(v1162, _, v1164) --[[ Line: 8975 ]]
                    -- upvalues: l_TweenService_0 (ref), v75 (ref), v101 (copy)
                    task.delay(0.4, function() --[[ Line: 8976 ]]
                        -- upvalues: v1164 (copy), v1162 (copy), l_TweenService_0 (ref), v75 (ref)
                        if not v1164.IsPlaying then
                            return;
                        else
                            for _, v1166 in pairs({
                                v1162.stickRight, 
                                v1162.stickLeft
                            }) do
                                l_TweenService_0:Create(v1166.Attachment1, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    Position = v1166:GetAttribute("OG")
                                }):Play();
                                l_TweenService_0:Create(v1166, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    Width1 = v1166:GetAttribute("OG2"), 
                                    Width0 = v1166:GetAttribute("OG3")
                                }):Play();
                            end;
                            task.delay(2.89, function() --[[ Line: 8992 ]]
                                -- upvalues: v1164 (ref), v1162 (ref), l_TweenService_0 (ref), v75 (ref)
                                if not v1164.IsPlaying then
                                    return;
                                else
                                    for _, v1168 in pairs({
                                        v1162.stickRight, 
                                        v1162.stickLeft
                                    }) do
                                        l_TweenService_0:Create(v1168.Attachment0, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                            WorldPosition = v1168.Attachment1.WorldPosition
                                        }):Play();
                                        v75({
                                            SoundId = "rbxassetid://344167846", 
                                            Parent = v1162.Handle, 
                                            Volume = 0.08
                                        }):Play();
                                        task.delay(0.5, function() --[[ Line: 9008 ]]
                                            -- upvalues: v1164 (ref), v1168 (copy)
                                            if not v1164.IsPlaying then
                                                return;
                                            else
                                                v1168.Enabled = false;
                                                return;
                                            end;
                                        end);
                                    end;
                                    return;
                                end;
                            end);
                            return;
                        end;
                    end);
                    v1162.stickRight.Enabled = true;
                    v1162.stickLeft.Enabled = true;
                    v75({
                        SoundId = "rbxassetid://15503358531", 
                        Parent = v101.PrimaryPart, 
                        Volume = 2
                    }):Play();
                end
            }, 
            Startup = function(v1169, _, v1171) --[[ Line: 9030 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1172 = game.ReplicatedStorage.Emotes.Ramen.Handle:Clone();
                v1172:SetAttribute("EmoteProperty", true);
                table.insert(v1169, v1172);
                v1171.Handle = v1172;
                local l_Handle_13 = v1172.Handle;
                l_Handle_13:SetAttribute("EmoteProperty", true);
                table.insert(v1169, l_Handle_13);
                v1171.md = l_Handle_13;
                l_Handle_13.Part0 = v101["Left Arm"];
                l_Handle_13.Part1 = v1172;
                l_Handle_13.Parent = v101["Left Arm"];
                v1172.Parent = v101;
                for _, v1175 in pairs({
                    "stickLeft", 
                    "stickRight"
                }) do
                    local v1176 = game.ReplicatedStorage.Emotes.Ramen[v1175]:Clone();
                    v1176:SetAttribute("EmoteProperty", true);
                    table.insert(v1169, v1176);
                    v1176.Parent = v101["Right Arm"];
                    local v1177 = v1176[v1175];
                    v1177:SetAttribute("EmoteProperty", true);
                    table.insert(v1169, v1177);
                    v1177.Part0 = v101["Right Arm"];
                    v1177.Part1 = v1176;
                    v1177.Parent = v101["Right Arm"];
                    v1176.Beam.Attachment0 = v1176.Attachment;
                    v1176.Beam.Attachment1 = v1172.Bowl.Noodles[string.gsub(v1176.Name, "stick", "")];
                    v1176.Beam.Enabled = false;
                    v1171[v1175] = v1176.Beam;
                end;
            end, 
            HideWeapon = true, 
            Infinite = true, 
            IdleKeyframes = true, 
            Idle = 15503362953, 
            Animation = 15503201875, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Wallet Check"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16592761699", 
                    Volume = 2, 
                    Looped = false
                }
            }, 
            Startup = function(v1178, _, v1180) --[[ Line: 9072 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1181 = game.ReplicatedStorage.Emotes.wollet:Clone();
                v1181:SetAttribute("EmoteProperty", true);
                table.insert(v1178, v1181);
                v1180.Handle = v1181;
                local v1182 = v1181.LeftHandle:Clone();
                v1182:SetAttribute("EmoteProperty", true);
                table.insert(v1178, v1182);
                v1182.Cube.Part0 = v1182;
                v1182.Cube.Part1 = v1181.Cube;
                local l_m6d_17 = v1181.m6d;
                l_m6d_17:SetAttribute("EmoteProperty", true);
                table.insert(v1178, l_m6d_17);
                v1180.md = l_m6d_17;
                l_m6d_17.Part0 = v101["Left Arm"];
                l_m6d_17.Part1 = v1182;
                l_m6d_17.Name = "LeftHandle";
                v1182.Parent = v101;
                v1181.Parent = v101;
                l_m6d_17.Parent = v101["Left Arm"];
            end, 
            HideWeapon = true, 
            Animation = 16592787958, 
            Stun = "Slowed"
        }, 
        ["Nerf This"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15502973035", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v1184, _, v1186) --[[ Line: 9102 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1187 = game.ReplicatedStorage.Emotes.Clipboard.LeftHandle:Clone();
                v1187:SetAttribute("EmoteProperty", true);
                table.insert(v1184, v1187);
                v1186.Handle = v1187;
                local l_LeftHandle_1 = v1187.LeftHandle;
                l_LeftHandle_1:SetAttribute("EmoteProperty", true);
                table.insert(v1184, l_LeftHandle_1);
                v1186.md = l_LeftHandle_1;
                l_LeftHandle_1.Part0 = v101["Left Arm"];
                l_LeftHandle_1.Part1 = v1187;
                l_LeftHandle_1.Parent = v101["Left Arm"];
                v1187:FindFirstChild("Decal", true).Texture = "rbxassetid://" .. ({
                    15114667107, 
                    15124465439, 
                    15143528856, 
                    15114672498, 
                    15143529209, 
                    15143528539, 
                    16136325038
                })[math.random(1, 7)];
                v1187.Parent = v101;
                local v1189 = game.ReplicatedStorage.Emotes.Clipboard.RightHandle:Clone();
                v1189:SetAttribute("EmoteProperty", true);
                table.insert(v1184, v1189);
                v1186.Handle = v1189;
                local l_RightHandle_0 = v1189.RightHandle;
                l_RightHandle_0:SetAttribute("EmoteProperty", true);
                table.insert(v1184, l_RightHandle_0);
                v1186.md = l_RightHandle_0;
                l_RightHandle_0.Part0 = v101["Right Arm"];
                l_RightHandle_0.Part1 = v1189;
                l_RightHandle_0.Parent = v101["Right Arm"];
                v1189.Parent = v101;
            end, 
            HideWeapon = true, 
            Idle = 15502977193, 
            Animation = 15502978256, 
            Looped = False, 
            Stun = "Slowed"
        }, 
        ["Party Blower"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://12332077418", 
                    Volume = 1
                }
            }, 
            Startup = function(v1191, _, v1193) --[[ Line: 9136 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1194 = game.ReplicatedStorage.Emotes.blower:Clone();
                v1194:SetAttribute("EmoteProperty", true);
                table.insert(v1191, v1194);
                v1193.Handle = v1194;
                local l_Cylinder_0 = v1194.Cylinder.Cylinder;
                l_Cylinder_0:SetAttribute("EmoteProperty", true);
                table.insert(v1191, l_Cylinder_0);
                v1193.md = l_Cylinder_0;
                l_Cylinder_0.Part0 = v101.Head;
                l_Cylinder_0.Part1 = v1194.Cylinder;
                l_Cylinder_0.Name = "Cylinder";
                l_Cylinder_0.Parent = v101.Head;
                v1194.Parent = v101;
            end, 
            Keyframes = {
                clap = function() --[[ Line: 9147 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://16599449151", 
                        Parent = v101.Head, 
                        Volume = 1.5
                    }):Play();
                end
            }, 
            IdleKeyframes = true, 
            Infinite = true, 
            Idle = 16599398107, 
            Animation = 16599412902, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        ["Eye Pop"] = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17097414525", 
                    Volume = 1, 
                    ParentTorso = true, 
                    Looped = true
                }
            }, 
            Startup = function(v1196, _, v1198) --[[ Line: 9175 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1199 = game.ReplicatedStorage.Emotes.Leye1:Clone();
                v1199:SetAttribute("EmoteProperty", true);
                table.insert(v1196, v1199);
                v1198.Handle = v1199;
                local l_m6d_18 = v1199.m6d;
                l_m6d_18:SetAttribute("EmoteProperty", true);
                table.insert(v1196, l_m6d_18);
                v1198.md = l_m6d_18;
                l_m6d_18.Part0 = v101.Head;
                l_m6d_18.Part1 = v1199;
                l_m6d_18.Name = "Leye1";
                l_m6d_18.Parent = v101.Head;
                v1199.Parent = v101;
                local v1201 = game.ReplicatedStorage.Emotes.Reye1:Clone();
                v1201:SetAttribute("EmoteProperty", true);
                table.insert(v1196, v1201);
                v1198.Handle = v1201;
                local l_m6d_19 = v1201.m6d;
                l_m6d_19:SetAttribute("EmoteProperty", true);
                table.insert(v1196, l_m6d_19);
                v1198.md = l_m6d_19;
                l_m6d_19.Part0 = v101.Head;
                l_m6d_19.Part1 = v1201;
                l_m6d_19.Name = "Reye1";
                l_m6d_19.Parent = v101.Head;
                v1201.Parent = v101;
            end, 
            Fix = true, 
            Animation = 17097409396, 
            Stun = "Freeze"
        }, 
        Brooming = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15297645043", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Startup = function(v1203, _, v1205) --[[ Line: 9208 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1206 = game.ReplicatedStorage.Emotes.Broom:Clone();
                v1206:SetAttribute("EmoteProperty", true);
                table.insert(v1203, v1206);
                v1205.Handle = v1206;
                local l_m6d_20 = v1206.m6d;
                l_m6d_20:SetAttribute("EmoteProperty", true);
                table.insert(v1203, l_m6d_20);
                v1205.md = l_m6d_20;
                v1206.Name = "Part";
                l_m6d_20.Part0 = v101["Left Arm"];
                l_m6d_20.Part1 = v1206;
                l_m6d_20.Name = "Part";
                l_m6d_20.Parent = v101["Left Arm"];
                v1206.Parent = v101;
            end, 
            Infinite = true, 
            Animation = 15297647499, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Kitty Cat"] = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15099918372", 
                    Volume = 0.35, 
                    Looped = true
                }
            }, 
            Startup = function(v1208, _, v1210) --[[ Line: 9235 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1211 = game.ReplicatedStorage.Emotes.Maxwell:Clone();
                v1211:SetAttribute("EmoteProperty", true);
                table.insert(v1208, v1211);
                v1210.Handle = v1211;
                local l_m6d_21 = v1211.m6d;
                l_m6d_21:SetAttribute("EmoteProperty", true);
                table.insert(v1208, l_m6d_21);
                v1210.md = l_m6d_21;
                l_m6d_21.Part0 = v101["Left Arm"];
                l_m6d_21.Part1 = v1211.maxwell;
                l_m6d_21.Name = "maxwell";
                l_m6d_21.Parent = v101["Left Arm"];
                v1211.Parent = v101;
            end, 
            Keyframes = {
                clap = function() --[[ Line: 9246 ]] --[[ Name: clap ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    if math.random(1, 3) == 1 then
                        v75({
                            SoundId = ({
                                "rbxassetid://15099947619", 
                                "rbxassetid://15099947876", 
                                "rbxassetid://15099948214"
                            })[math.random(1, 3)], 
                            Parent = v101.PrimaryPart, 
                            Volume = 0.4
                        }):Play();
                    end;
                end
            }, 
            Infinite = true, 
            Animation = 15099900787, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["The Strongest Rocks"] = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15438805005", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v1213, _, v1215) --[[ Line: 9273 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1216 = game.ReplicatedStorage.Emotes.Guitar:Clone();
                v1216:SetAttribute("EmoteProperty", true);
                table.insert(v1213, v1216);
                v1215.Handle = v1216;
                local l_Handle_14 = v1216.Handle;
                l_Handle_14:SetAttribute("EmoteProperty", true);
                table.insert(v1213, l_Handle_14);
                v1215.md = l_Handle_14;
                v1216.Name = "Handle";
                l_Handle_14.Part0 = v101["Left Arm"];
                l_Handle_14.Part1 = v1216;
                l_Handle_14.Parent = v101["Left Arm"];
                v1216.Parent = v101;
            end, 
            Keyframes = {
                ["end"] = function(v1218) --[[ Line: 9284 ]]
                    v1218.Handle:Destroy();
                end
            }, 
            Infinite = true, 
            Animation = 15438891684, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Party = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15100051516", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v1219, _, v1221) --[[ Line: 9304 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1222 = game.ReplicatedStorage.Emotes.Popper:Clone();
                v1222:SetAttribute("EmoteProperty", true);
                table.insert(v1219, v1222);
                v1221.Handle = v1222;
                local l_Handle_15 = v1222.Handle;
                l_Handle_15:SetAttribute("EmoteProperty", true);
                table.insert(v1219, l_Handle_15);
                v1221.md = l_Handle_15;
                v1222.Name = "Handle";
                l_Handle_15.Part0 = v101["Left Arm"];
                l_Handle_15.Part1 = v1222;
                l_Handle_15.Parent = v101["Left Arm"];
                v1222.Parent = v101;
            end, 
            Keyframes = {
                pop = function(v1224, v1225, _) --[[ Line: 9315 ]]
                    -- upvalues: v101 (copy)
                    local l_Attachment_4 = v1224.Handle.Attachment;
                    l_Attachment_4:SetAttribute("EmoteProperty", true);
                    l_Attachment_4.Parent = v101.PrimaryPart;
                    table.insert(v1225, l_Attachment_4);
                    for _, v1229 in pairs(l_Attachment_4:GetChildren()) do
                        shared.resizeparticle(v1229, 1.25);
                        v1229:Emit(25 / #l_Attachment_4:GetChildren());
                    end;
                end, 
                ["end"] = function(v1230) --[[ Line: 9326 ]]
                    v1230.Handle:Destroy();
                end
            }, 
            Animation = 15100081900, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        Skull = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15271585302", 
                    Volume = 0.4, 
                    Looped = false
                }
            }, 
            Startup = function(v1231, _, v1233) --[[ Line: 9345 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1234 = game.ReplicatedStorage.Emotes.Skull:Clone();
                v1234:SetAttribute("EmoteProperty", true);
                table.insert(v1231, v1234);
                v1233.Handle = v1234;
                local l_Handle_16 = v1234.Handle;
                l_Handle_16:SetAttribute("EmoteProperty", true);
                table.insert(v1231, l_Handle_16);
                v1233.md = l_Handle_16;
                v1234.Name = "Handle";
                l_Handle_16.Part0 = v101["Left Arm"];
                l_Handle_16.Part1 = v1234;
                l_Handle_16.Parent = v101["Left Arm"];
                v1234.Parent = v101;
            end, 
            Keyframes = {
                ["end"] = function(v1236) --[[ Line: 9356 ]]
                    v1236.Handle:Destroy();
                end
            }, 
            Animation = 15271569844, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Cross = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16524227044", 
                    Volume = 2, 
                    Looped = false
                }
            }, 
            HideWeapon = true, 
            Idle = 16524243757, 
            Animation = 16524237104, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Cross 2"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://18828346536", 
                    Volume = 1.25, 
                    Looped = false
                }
            }, 
            HideWeapon = true, 
            Idle = 18897553669, 
            Animation = 18897551628, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Situp = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15673857335", 
                    Volume = 2, 
                    Looped = false
                }
            }, 
            HideWeapon = true, 
            Infinite = true, 
            Idle = 15674164857, 
            IdleSound = {
                SoundId = "rbxassetid://15674129833", 
                Volume = 1, 
                Looped = true
            }, 
            Animation = 15674077481, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Superhero = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9042798921", 
                    TimePosition = 1, 
                    Volume = 1
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://17109047369", 
                    Volume = 1
                }
            }, 
            End = {
                17109013631, 
                0.933, 
                {
                    SoundId = "rbxassetid://17109047546", 
                    Volume = 1
                }
            }, 
            IdleSound = {
                SoundId = "rbxassetid://9114663740", 
                Volume = 0.25, 
                Looped = true
            }, 
            HideWeapon = true, 
            Idle = 17109012516, 
            Animation = 17109009771, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Sleep = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17108967672", 
                    Volume = 1
                }
            }, 
            HideWeapon = true, 
            End = {
                17108974875, 
                2.533, 
                {
                    SoundId = "rbxassetid://17108967908", 
                    Volume = 1
                }
            }, 
            IdleSound = {
                SoundId = "rbxassetid://9114663740", 
                Volume = 0.25, 
                Looped = true
            }, 
            FixRotation = true, 
            Idle = 17108973561, 
            Animation = 17108971736, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Stylish Flip"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17086578816", 
                    Volume = 1, 
                    TimePosition = 0.1, 
                    Looped = false
                }
            }, 
            HideWeapon = true, 
            End = {
                17086594393, 
                1.183, 
                {
                    SoundId = "rbxassetid://17086578943", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Idle = 17086601693, 
            Animation = 17086569715, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Sincere Apology"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://76131937398399", 
                    Volume = 1, 
                    ParentTorso = true, 
                    Looped = false
                }
            }, 
            HideWeapon = true, 
            Idle = 131394881582474, 
            Animation = 118382652729061, 
            Stun = "Freeze"
        }, 
        Pushup = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15673857335", 
                    Volume = 2, 
                    Looped = false
                }
            }, 
            HideWeapon = true, 
            Infinite = true, 
            Idle = 15673865087, 
            IdleSound = {
                SoundId = "rbxassetid://15673857667", 
                Volume = 1, 
                Looped = true
            }, 
            Animation = 15673860575, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Gang = {
            Sounds = {}, 
            Startup = function(v1237, _, _) --[[ Line: 9547 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref), l_PlayerFromCharacter_0 (copy)
                local v1240 = shared.cfolder({
                    Name = "SBind", 
                    Parent = v101
                });
                v1240:SetAttribute("EmoteProperty", true);
                table.insert(v1237, v1240);
                local v1241, v1242 = v75({
                    SoundId = "rbxassetid://83080858871410", 
                    Volume = 1, 
                    Parent = v101.Torso, 
                    Looped = false
                });
                v1241:Play();
                if l_PlayerFromCharacter_0 then
                    local _ = tick();
                    local l_FriendsAsync_0 = game:GetService("Players"):GetFriendsAsync(l_PlayerFromCharacter_0.UserId);
                    local v1245 = {};
                    local _ = function(v1246) --[[ Line: 9569 ]] --[[ Name: iterPageItems ]]
                        return coroutine.wrap(function() --[[ Line: 9570 ]]
                            -- upvalues: v1246 (copy)
                            local v1247 = 1;
                            while true do
                                for _, v1249 in ipairs(v1246:GetCurrentPage()) do
                                    coroutine.yield(v1249, v1247);
                                end;
                                if not v1246.IsFinished then
                                    v1246:AdvanceToNextPageAsync();
                                    v1247 = v1247 + 1;
                                else
                                    break;
                                end;
                            end;
                        end);
                    end;
                    for v1254, _ in coroutine.wrap(function() --[[ Line: 9570 ]]
                        -- upvalues: l_FriendsAsync_0 (copy)
                        local v1251 = 1;
                        while true do
                            for _, v1253 in ipairs(l_FriendsAsync_0:GetCurrentPage()) do
                                coroutine.yield(v1253, v1251);
                            end;
                            if not l_FriendsAsync_0.IsFinished then
                                l_FriendsAsync_0:AdvanceToNextPageAsync();
                                v1251 = v1251 + 1;
                            else
                                break;
                            end;
                        end;
                    end) do
                        table.insert(v1245, v1254.Id);
                    end;
                    local v1256 = {};
                    for _ = 1, 4 do
                        if #v1245 > 0 then
                            local v1258 = math.random(#v1245);
                            table.insert(v1256, v1245[v1258]);
                            table.remove(v1245, v1258);
                        end;
                    end;
                    game.ReplicatedStorage.Replication:FireAllClients({
                        Effect = "GANG", 
                        Character = v101, 
                        Friends = v1256, 
                        Bind = v1240, 
                        Music = v1242
                    });
                end;
            end, 
            Cooldown = 5, 
            HideWeapon = true, 
            Infinite = true, 
            Idle = 112138009997034, 
            Animation = 119293848229043, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Best Friends"] = {
            Sounds = {}, 
            Startup = function(v1259, _, _) --[[ Line: 9622 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref), l_PlayerFromCharacter_0 (copy)
                local v1262 = shared.cfolder({
                    Name = "SBind", 
                    Parent = v101
                });
                v1262:SetAttribute("EmoteProperty", true);
                table.insert(v1259, v1262);
                local v1263, _ = v75({
                    SoundId = "rbxassetid://83119347007476", 
                    Volume = 0.5, 
                    Parent = v101.PrimaryPart, 
                    Looped = true
                });
                local l_Attachment_5 = Instance.new("Attachment");
                l_Attachment_5.Parent = v101.PrimaryPart;
                l_Attachment_5.Position = Vector3.new(-2.443000078201294, 0, 0, 0);
                v1263.Parent = l_Attachment_5;
                table.insert(v1259, v1263);
                v1263:Play();
                if l_PlayerFromCharacter_0 then
                    local l_FriendsAsync_1 = game:GetService("Players"):GetFriendsAsync(l_PlayerFromCharacter_0.UserId);
                    local v1267 = {};
                    local _ = function(v1268) --[[ Line: 9648 ]] --[[ Name: iterPageItems ]]
                        return coroutine.wrap(function() --[[ Line: 9649 ]]
                            -- upvalues: v1268 (copy)
                            local v1269 = 1;
                            while true do
                                for _, v1271 in ipairs(v1268:GetCurrentPage()) do
                                    coroutine.yield(v1271, v1269);
                                end;
                                if not v1268.IsFinished then
                                    v1268:AdvanceToNextPageAsync();
                                    v1269 = v1269 + 1;
                                else
                                    break;
                                end;
                            end;
                        end);
                    end;
                    for v1276, _ in coroutine.wrap(function() --[[ Line: 9649 ]]
                        -- upvalues: l_FriendsAsync_1 (copy)
                        local v1273 = 1;
                        while true do
                            for _, v1275 in ipairs(l_FriendsAsync_1:GetCurrentPage()) do
                                coroutine.yield(v1275, v1273);
                            end;
                            if not l_FriendsAsync_1.IsFinished then
                                l_FriendsAsync_1:AdvanceToNextPageAsync();
                                v1273 = v1273 + 1;
                            else
                                break;
                            end;
                        end;
                    end) do
                        table.insert(v1267, v1276.Id);
                    end;
                    local v1278 = {};
                    for _ = 1, 3 do
                        if #v1267 > 0 then
                            local v1280 = math.random(#v1267);
                            table.insert(v1278, v1267[v1280]);
                            table.remove(v1267, v1280);
                        end;
                    end;
                    game.ReplicatedStorage.Replication:FireAllClients({
                        Effect = "BFFS", 
                        Character = v101, 
                        Friends = v1278, 
                        Bind = v1262, 
                        Music = l_Attachment_5
                    });
                end;
            end, 
            Cooldown = 5, 
            HideWeapon = true, 
            Infinite = true, 
            Animation = 105494624349321, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["First Rule"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15503520699", 
                    Volume = 1.85, 
                    Looped = false
                }
            }, 
            Startup = function(v1281, _, v1283) --[[ Line: 9704 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref), l_PlayerFromCharacter_0 (copy)
                local v1284 = shared.cfolder({
                    Name = "SBind", 
                    Parent = v101
                });
                v1284:SetAttribute("EmoteProperty", true);
                table.insert(v1281, v1284);
                local v1285, _ = v75({
                    SoundId = "rbxassetid://1837904676", 
                    Volume = 0.25, 
                    Parent = root, 
                    Looped = true
                });
                local l_Attachment_6 = Instance.new("Attachment");
                l_Attachment_6.Parent = v101.PrimaryPart;
                v1285.Parent = l_Attachment_6;
                table.insert(v1281, v1285);
                v1285:Play();
                local v1288 = game.ReplicatedStorage.Emotes.ColaFight:Clone();
                v1288:SetAttribute("EmoteProperty", true);
                table.insert(v1281, v1288);
                v1283.Handle = v1288;
                local l_Handle_17 = v1288.Handle;
                l_Handle_17:SetAttribute("EmoteProperty", true);
                table.insert(v1281, l_Handle_17);
                v1283.md = l_Handle_17;
                v1288.Name = "Handle";
                l_Handle_17.Part0 = v101["Right Arm"];
                l_Handle_17.Part1 = v1288;
                l_Handle_17.Parent = v101["Right Arm"];
                v1288.Parent = v101;
                if l_PlayerFromCharacter_0 then
                    game.ReplicatedStorage.Replication:FireClient(l_PlayerFromCharacter_0, {
                        Effect = "FightC", 
                        Character = v101, 
                        Bind = v1284, 
                        Music = l_Attachment_6
                    });
                end;
            end, 
            Keyframes = {
                claploop = function() --[[ Line: 9744 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://15503520430", 
                        Parent = v101.PrimaryPart, 
                        Volume = 1.5
                    }):Play();
                end
            }, 
            HideWeapon = true, 
            Infinite = true, 
            Idle = 15503546989, 
            IdleKeyframes = true, 
            Animation = 15503532950, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Countdown = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15283152008", 
                    Volume = 1.85, 
                    Looped = false
                }, 
                [4.033] = {
                    SoundId = "rbxassetid://15283155687", 
                    Volume = 5, 
                    Looped = false
                }
            }, 
            Startup = function(v1290, _, v1292) --[[ Line: 9777 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                local v1293 = v75({
                    SoundId = "rbxassetid://1842188426", 
                    Volume = 0.4, 
                    Parent = v101.PrimaryPart
                });
                v1293:Play();
                v1292.ok = v1293;
                for _, v1295 in pairs(game.ReplicatedStorage.Emotes.Revolvers:GetChildren()) do
                    if v1295.Name == "Handle" then
                        local v1296 = v1295:Clone();
                        v1296:SetAttribute("EmoteProperty", true);
                        table.insert(v1290, v1296);
                        v1292[v1296.Name] = v1296;
                        local l_Handle_18 = v1296.Handle;
                        l_Handle_18:SetAttribute("EmoteProperty", true);
                        table.insert(v1290, l_Handle_18);
                        v1292.md = l_Handle_18;
                        v1296.Name = "Handle";
                        l_Handle_18.Part0 = v101["Left Arm"];
                        l_Handle_18.Part1 = v1296;
                        l_Handle_18.Parent = v101["Left Arm"];
                        v1296.Parent = v101;
                    end;
                end;
            end, 
            Keyframes = {
                shoot = function(v1298) --[[ Line: 9801 ]]
                    -- upvalues: l_PlayerFromCharacter_0 (copy), l_TweenService_0 (ref)
                    if l_PlayerFromCharacter_0 then
                        game.ReplicatedStorage.Replication:FireClient(l_PlayerFromCharacter_0, {
                            Effect = "Camshake", 
                            Intensity = 8
                        });
                    end;
                    l_TweenService_0:Create(v1298.ok, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Volume = 0
                    }):Play();
                    v1298.Handle.Gun.Attachment.ParticleEmitter:Emit(2);
                end, 
                ["end"] = function(v1299) --[[ Line: 9816 ]]
                    v1299.Handle:Destroy();
                end
            }, 
            Animation = 15284324734, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        ["New Sheriff"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15311093430", 
                    Volume = 1.5, 
                    Looped = false
                }, 
                [0.1] = {
                    SoundId = "rbxassetid://1842190166", 
                    Volume = 0.3, 
                    Looped = false
                }, 
                [4.2] = {
                    SoundId = "rbxassetid://9114701864", 
                    Volume = 0.5, 
                    Looped = false
                }, 
                [2.49] = {
                    SoundId = "rbxassetid://9113593647", 
                    Volume = 3.6
                }
            }, 
            Startup = function(v1300, _, v1302) --[[ Line: 9852 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1303 = game.ReplicatedStorage.Emotes.Revolver:Clone();
                v1303:SetAttribute("EmoteProperty", true);
                table.insert(v1300, v1303);
                v1302[v1303.Name] = v1303;
                local l_Handle_19 = v1303.Handle;
                l_Handle_19:SetAttribute("EmoteProperty", true);
                table.insert(v1300, l_Handle_19);
                v1302.md = l_Handle_19;
                v1303.Name = "Handle";
                l_Handle_19.Part0 = v101["Right Arm"];
                l_Handle_19.Part1 = v1303;
                l_Handle_19.Parent = v101["Right Arm"];
                v1303.Parent = v101;
            end, 
            Keyframes = {
                shoot = function(v1305) --[[ Line: 9864 ]]
                    -- upvalues: l_PlayerFromCharacter_0 (copy), v75 (ref), v101 (copy)
                    if l_PlayerFromCharacter_0 then
                        game.ReplicatedStorage.Replication:FireClient(l_PlayerFromCharacter_0, {
                            Effect = "Camshake", 
                            Intensity = 8
                        });
                    end;
                    v75({
                        SoundId = "rbxassetid://15310981185", 
                        Parent = v101.PrimaryPart, 
                        TimePosition = 0.11, 
                        Volume = 2.5
                    }):Resume();
                    for _, v1307 in pairs(v1305.Revolver.Shoot:GetChildren()) do
                        v1307.Enabled = true;
                    end;
                    task.delay(0.05, function() --[[ Line: 9882 ]]
                        -- upvalues: v1305 (copy)
                        v1305.Revolver.Shoot:Destroy();
                    end);
                    if not hitbox then
                        hitbox = require(game.ReplicatedStorage.Hitbox);
                    end;
                    if not force then
                        force = require(game.ReplicatedStorage.Force);
                    end;
                    local l_hitbox_Hit_0 = hitbox:GetHit(l_PlayerFromCharacter_0 or true, 7, {
                        side = 5
                    }, false, -3);
                    local v1309 = 2000000000;
                    local v1310 = nil;
                    for _, v1312 in pairs(l_hitbox_Hit_0) do
                        local l_magnitude_0 = (v1312.PrimaryPart.Position - v101.PrimaryPart.Position).magnitude;
                        if l_magnitude_0 < v1309 and v1312.Humanoid.Health <= 0 then
                            v1309 = l_magnitude_0;
                            v1310 = v1312;
                        end;
                    end;
                    l_hitbox_Hit_0 = {
                        v1310
                    };
                    task.delay(0.045, function() --[[ Line: 9905 ]]
                        -- upvalues: l_hitbox_Hit_0 (ref), v101 (ref)
                        for _, v1315 in pairs(l_hitbox_Hit_0) do
                            force:CreateForce({
                                char = v101, 
                                hit = v1315, 
                                pushback = 0, 
                                up = Vector3.new(0, 1.75, 0, 0)
                            });
                            shared.sfx({
                                SoundId = "rbxassetid://15311018533", 
                                Parent = v1315.PrimaryPart, 
                                Volume = 3
                            }):Play();
                        end;
                    end);
                end, 
                ["end"] = function(v1316) --[[ Line: 9923 ]]
                    v1316.Revolver:Destroy();
                end
            }, 
            HideWeapon = true, 
            Animation = 15310973900, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Fool = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15283205480", 
                    Volume = 1.85, 
                    Looped = false
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://1842188443", 
                    Volume = 0.6, 
                    Looped = false
                }, 
                [6.62] = {
                    SoundId = "rbxassetid://15283205587", 
                    Volume = 1.85, 
                    Looped = false
                }
            }, 
            Startup = function(v1317, _, v1319) --[[ Line: 9955 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                for _, v1321 in pairs(game.ReplicatedStorage.Emotes.Revolvers:GetChildren()) do
                    if v1321.Name == "Handle2" then
                        local v1322 = v1321:Clone();
                        v1322:SetAttribute("EmoteProperty", true);
                        table.insert(v1317, v1322);
                        v1319[v1322.Name] = v1322;
                        local l_Handle_20 = v1322.Handle;
                        l_Handle_20:SetAttribute("EmoteProperty", true);
                        table.insert(v1317, l_Handle_20);
                        v1319.md = l_Handle_20;
                        l_Handle_20.C0 = CFrame.new(-0.0250015259, -0.999999762, 0.00322246552, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                        l_Handle_20.C1 = CFrame.new(-0.0500030518, -0.0202150345, 0.0032453537, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                        v1322.Name = "Handle";
                        l_Handle_20.Part0 = v101["Right Arm"];
                        l_Handle_20.Part1 = v1322;
                        l_Handle_20.Parent = v101["Right Arm"];
                        v1322.Parent = v101;
                    end;
                end;
            end, 
            Keyframes = {
                ["end"] = function(v1324) --[[ Line: 9973 ]]
                    v1324.Handle2:Destroy();
                end
            }, 
            HideWeapon = true, 
            Animation = 15283197429, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Snake = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15271610757", 
                    Volume = 1.85, 
                    Looped = false
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://1842190005", 
                    Volume = 0.6, 
                    Looped = false
                }
            }, 
            Startup = function(v1325, _, v1327) --[[ Line: 9999 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                for _, v1329 in pairs(game.ReplicatedStorage.Emotes.Revolvers:GetChildren()) do
                    local v1330 = "Left Arm";
                    if v1329.Name == "Handle2" then
                        v1330 = "Right Arm";
                    end;
                    local v1331 = v1329:Clone();
                    v1331:SetAttribute("EmoteProperty", true);
                    table.insert(v1325, v1331);
                    v1327[v1331.Name] = v1331;
                    local l_Handle_21 = v1331.Handle;
                    l_Handle_21:SetAttribute("EmoteProperty", true);
                    table.insert(v1325, l_Handle_21);
                    v1327.md = l_Handle_21;
                    v1331.Name = "Handle";
                    l_Handle_21.Part0 = v101[v1330];
                    l_Handle_21.Part1 = v1331;
                    l_Handle_21.Parent = v101[v1330];
                    v1331.Parent = v101;
                end;
            end, 
            Keyframes = {
                ["end"] = function(v1333) --[[ Line: 10016 ]]
                    v1333.Handle:Destroy();
                    v1333.Handle2:Destroy();
                end, 
                slow = function(_, _, v1336) --[[ Line: 10021 ]]
                    v1336:AdjustSpeed(0.4);
                end, 
                away = function(_, _, v1339) --[[ Line: 10025 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v1339:AdjustSpeed(1);
                    v75({
                        SoundId = "rbxassetid://15271610473", 
                        Volume = 1.85, 
                        Looped = false, 
                        Parent = v101.PrimaryPart
                    }):Play();
                end
            }, 
            Animation = 15271677861, 
            Looped = false, 
            Stun = "Slowed", 
            HideWeapon = true
        }, 
        ["Lean Back"] = {
            Sounds = {}, 
            Startup = function(v1340, _, v1342) --[[ Line: 10047 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1343 = game.ReplicatedStorage.Emotes.CHAIR:Clone();
                v1343:SetAttribute("EmoteProperty", true);
                table.insert(v1340, v1343);
                v1342.Handle = v1343;
                local l_Handle_22 = v1343.Handle;
                l_Handle_22:SetAttribute("EmoteProperty", true);
                table.insert(v1340, l_Handle_22);
                v1342.md = l_Handle_22;
                v1343.Name = "CHAIR";
                l_Handle_22.Part0 = v101.Torso;
                l_Handle_22.Part1 = v1343;
                l_Handle_22.Parent = v101.Torso;
                v1343.Parent = v101;
                v75({
                    SoundId = "rbxassetid://17106914725", 
                    Parent = v101.Torso, 
                    Volume = 1
                }):Play();
            end, 
            Fix = true, 
            Animation = 17106924052, 
            Stun = "Freeze"
        }, 
        ["Taco Time"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1846971107", 
                    Volume = 0.4, 
                    Looped = true, 
                    TimePosition = 0.1, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v1345, _, v1347) --[[ Line: 10079 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1348 = game.ReplicatedStorage.Emotes.TACO1:Clone();
                v1348:SetAttribute("EmoteProperty", true);
                table.insert(v1345, v1348);
                v1347.Handle = v1348;
                local l_TACO1_0 = v1348.TACO1;
                l_TACO1_0:SetAttribute("EmoteProperty", true);
                table.insert(v1345, l_TACO1_0);
                v1347.md = l_TACO1_0;
                l_TACO1_0.Part0 = v101["Right Arm"];
                l_TACO1_0.Part1 = v1348;
                l_TACO1_0.Parent = v101["Right Arm"];
                v1348.Parent = v101;
                local v1350 = game.ReplicatedStorage.Emotes.TACO2:Clone();
                v1350:SetAttribute("EmoteProperty", true);
                table.insert(v1345, v1350);
                v1347.Handle = v1350;
                local l_TACO2_0 = v1350.TACO2;
                l_TACO2_0:SetAttribute("EmoteProperty", true);
                table.insert(v1345, l_TACO2_0);
                v1347.md = l_TACO2_0;
                l_TACO2_0.Part0 = v101["Left Arm"];
                l_TACO2_0.Part1 = v1350;
                l_TACO2_0.Parent = v101["Left Arm"];
                v1350.Parent = v101;
            end, 
            Looped = true, 
            HideWeapon = true, 
            Animation = 17107076756, 
            Stun = "Freeze"
        }, 
        Card = {
            Sounds = {}, 
            Startup = function(v1352, _, v1354) --[[ Line: 10106 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1355 = game.ReplicatedStorage.Emotes["Meshes/cARD"]:Clone();
                v1355:SetAttribute("EmoteProperty", true);
                table.insert(v1352, v1355);
                v1354.Handle = v1355;
                local v1356 = v1355["Meshes/cARD"];
                v1356:SetAttribute("EmoteProperty", true);
                table.insert(v1352, v1356);
                v1354.md = v1356;
                v1356.Part0 = v101["Right Arm"];
                v1356.Part1 = v1355;
                v1356.Parent = v101["Right Arm"];
                v1355.Parent = v101;
                v75({
                    SoundId = "rbxassetid://17120974824", 
                    Parent = v1355, 
                    Volume = 1
                }):Play();
            end, 
            HideWeapon = true, 
            Animation = 17120966975, 
            Stun = "Freeze"
        }, 
        Plank = {
            Sounds = {}, 
            Startup = function(v1357, _, v1359) --[[ Line: 10131 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1360 = game.ReplicatedStorage.Emotes.Plank:Clone();
                v1360:SetAttribute("EmoteProperty", true);
                table.insert(v1357, v1360);
                v1359.Handle = v1360;
                v1360.Name = "Handle";
                local l_Handle_23 = v1360.Handle;
                l_Handle_23:SetAttribute("EmoteProperty", true);
                table.insert(v1357, l_Handle_23);
                v1359.md = l_Handle_23;
                v1360.Name = "Handle";
                l_Handle_23.Part0 = v101["Right Arm"];
                l_Handle_23.Part1 = v1360;
                l_Handle_23.Parent = v101["Right Arm"];
                v1360.Parent = v101;
                v75({
                    SoundId = "rbxassetid://17107178506", 
                    Parent = v1360, 
                    Volume = 1
                }):Play();
            end, 
            Idle = 17107199838, 
            IdleSound = {
                SoundId = "rbxassetid://17107178615", 
                Volume = 1, 
                Looped = true
            }, 
            HideWeapon = true, 
            Animation = 17107197570, 
            Stun = "Slowed"
        }, 
        Cola = {
            Sounds = {}, 
            Startup = function(v1362, _, v1364) --[[ Line: 10165 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1365 = game.ReplicatedStorage.Emotes.ColaTwo:Clone();
                v1365:SetAttribute("EmoteProperty", true);
                table.insert(v1362, v1365);
                v1364.Handle = v1365;
                local l_Handle_24 = v1365.Handle;
                l_Handle_24:SetAttribute("EmoteProperty", true);
                table.insert(v1362, l_Handle_24);
                v1364.md = l_Handle_24;
                v1365.Name = "Handle";
                l_Handle_24.Part0 = v101["Right Arm"];
                l_Handle_24.Part1 = v1365;
                l_Handle_24.Parent = v101["Right Arm"];
                v1365.Parent = v101;
                v1364.mesh = v1365.Mesh;
                v75({
                    SoundId = "rbxassetid://17120785426", 
                    Parent = v1365, 
                    Volume = 1
                }):Play();
            end, 
            Keyframes = {
                ["end"] = function(v1367, _) --[[ Line: 10183 ]]
                    -- upvalues: l_TweenService_0 (ref)
                    l_TweenService_0:Create(v1367.mesh, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Scale = Vector3.new()
                    }):Play();
                end
            }, 
            HideWeapon = true, 
            Animation = 17120842242, 
            Stun = "Slowed"
        }, 
        Bread = {
            Sounds = {}, 
            Startup = function(v1369, _, v1371) --[[ Line: 10200 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                v1371.breads = {};
                local v1372 = {
                    Bread1 = CFrame.new(-0.9290413856506348, -0.3216838836669922, -0.9804582595825195, -1, 0, 0, 0, 1, 0, 0, 0, -1), 
                    Bread2 = CFrame.new(-0.9290413856506348, -0.41446352005004883, -0.9804582595825195, -1, 0, 0, 0, 1, 0, 0, 0, -1), 
                    Bread3 = CFrame.new(-0.9290413856506348, -0.5068368911743164, -0.9804582595825195, -1, 0, 0, 0, 1, 0, 0, 0, -1), 
                    Bread4 = CFrame.new(-0.9290413856506348, -0.599616527557373, -0.9804582595825195, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                };
                for v1373, v1374 in pairs(v1372) do
                    local v1375 = game.ReplicatedStorage.Emotes.Bread1:Clone();
                    v1375:SetAttribute("EmoteProperty", true);
                    table.insert(v1369, v1375);
                    v1371.Handle = v1375;
                    v1375.Name = v1373;
                    local l_Motor6D_23 = Instance.new("Motor6D");
                    l_Motor6D_23:SetAttribute("EmoteProperty", true);
                    table.insert(v1369, l_Motor6D_23);
                    v1371.md = l_Motor6D_23;
                    v1375.Name = v1373;
                    l_Motor6D_23.Part0 = v101.Torso;
                    l_Motor6D_23.Part1 = v1375;
                    l_Motor6D_23.Parent = v101.Torso;
                    l_Motor6D_23.C0 = v1374;
                    v1375.Parent = v101;
                    table.insert(v1371.breads, v1375);
                end;
                v75({
                    SoundId = "rbxassetid://17121814784", 
                    Parent = v101["Right Arm"], 
                    Volume = 1
                }):Play();
            end, 
            Keyframes = {
                ["end"] = function(v1377, _) --[[ Line: 10228 ]]
                    -- upvalues: l_TweenService_0 (ref)
                    for _, v1380 in pairs(v1377.breads) do
                        for _, v1382 in pairs({
                            v1380, 
                            v1380.Crust
                        }) do
                            l_TweenService_0:Create(v1382, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Size = Vector3.new()
                            }):Play();
                        end;
                    end;
                end
            }, 
            HideWeapon = true, 
            Animation = 17121769642, 
            Stun = "Slowed"
        }, 
        Flashlight = {
            Sounds = {}, 
            Startup = function(_, _, v1385) --[[ Line: 10249 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy), v75 (ref)
                local v1386 = game.ReplicatedStorage.Emotes.Flashlight:Clone();
                l_CollectionService_1:AddTag(v1386, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_Handle_25 = v1386.Handle;
                l_CollectionService_1:AddTag(l_Handle_25, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                v1386.Name = "Handle";
                l_Handle_25.Part0 = v101["Right Arm"];
                l_Handle_25.Part1 = v1386;
                l_Handle_25.Parent = v101["Right Arm"];
                v1386.Parent = v101;
                v1385.mesh = v1386.SurfaceLight;
                v75({
                    SoundId = "rbxassetid://17120880738", 
                    Parent = v1386, 
                    Volume = 1
                }):Play();
            end, 
            Keyframes = {
                start = function(v1388, _) --[[ Line: 10267 ]]
                    v1388.mesh.Enabled = true;
                end
            }, 
            HideWeapon = true, 
            Idle = 17120870445, 
            End = {
                17120873919, 
                0.983, 
                {
                    SoundId = "rbxassetid://12981981352", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Animation = 17120866178, 
            Stun = "Slowed"
        }, 
        Rainy = {
            Sounds = {}, 
            Startup = function(v1390, _, v1392) --[[ Line: 10288 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1393 = game.ReplicatedStorage.Emotes.Cloud:Clone();
                v1393:SetAttribute("EmoteProperty", true);
                table.insert(v1390, v1393);
                v1392.Handle = v1393;
                local l_Weld_6 = Instance.new("Weld");
                l_Weld_6.Part0 = v101.PrimaryPart;
                l_Weld_6.Part1 = v1393;
                l_Weld_6.C0 = CFrame.new(0, 6.6855607, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                l_Weld_6.Parent = v1393;
                v1393.Parent = v101;
                v75({
                    SoundId = "rbxassetid://17121715447", 
                    Parent = v1393, 
                    Volume = 1, 
                    Looped = true
                }):Play();
            end, 
            Looped = true, 
            HideWeapon = true, 
            Animation = 17121695329, 
            Stun = "Freeze"
        }, 
        Box = {
            Sounds = {}, 
            Startup = function(v1395, _, v1397, _, v1399) --[[ Line: 10316 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref), v107 (ref)
                local v1400 = game.ReplicatedStorage.Emotes.Carboard:Clone();
                v1400:SetAttribute("EmoteProperty", true);
                table.insert(v1395, v1400);
                v1397.Handle = v1400;
                local l_Handle_26 = v1400.Handle;
                l_Handle_26:SetAttribute("EmoteProperty", true);
                table.insert(v1395, l_Handle_26);
                v1397.md = l_Handle_26;
                v1400.Name = "Base";
                l_Handle_26.Part0 = v101.PrimaryPart;
                l_Handle_26.Part1 = v1400.Base;
                l_Handle_26.Parent = v101.PrimaryPart;
                v1400.Parent = v101;
                v75({
                    SoundId = "rbxassetid://17122337086", 
                    Parent = v1400.Base, 
                    Volume = 1, 
                    TimePosition = 0.25
                }):Resume();
                task.spawn(function() --[[ Line: 10332 ]]
                    -- upvalues: v107 (ref), v1395 (copy), v75 (ref), v1400 (copy), v1399 (copy), v101 (ref)
                    local v1402 = v107(17122265672);
                    v1402:AdjustWeight(35);
                    table.insert(v1395, v1402);
                    local v1403 = v75({
                        SoundId = "rbxassetid://17122337244", 
                        Parent = v1400.Base, 
                        Volume = 0.15, 
                        Looped = true
                    });
                    while task.wait() and not v1399.interrupted do
                        if v1399.interrupted or not v101.Parent then
                            v1402:Stop();
                            break;
                        elseif v101.Humanoid.MoveDirection ~= Vector3.new() then
                            v1403:Resume();
                            if not v1402.IsPlaying then
                                v1402:Play(0.3);
                            end;
                        else
                            if v1402.IsPlaying then
                                v1402:Stop(0.3);
                            end;
                            v1403:Stop();
                        end;
                    end;
                    v1402:AdjustWeight(0.01);
                    v1402:Stop();
                end);
            end, 
            HideWeapon = true, 
            Idle = 17122254184, 
            Animation = 17122214043, 
            Stun = "Slowed"
        }, 
        ["Air Horn"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17292689498", 
                    ParentTorso = true, 
                    Volume = 1
                }
            }, 
            Startup = function(v1404, _, v1406) --[[ Line: 10383 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1407 = game.ReplicatedStorage.Emotes.Airhorn:Clone();
                v1407:SetAttribute("EmoteProperty", true);
                table.insert(v1404, v1407);
                v1406.Handle = v1407;
                local l_handle_0 = v1407.handle;
                l_handle_0:SetAttribute("EmoteProperty", true);
                table.insert(v1404, l_handle_0);
                v1406.md = l_handle_0;
                l_handle_0.Name = "Airhorn";
                l_handle_0.Part0 = v101["Right Arm"];
                l_handle_0.Part1 = v1407.Airhorn;
                l_handle_0.Parent = v101["Right Arm"];
                v1407.Parent = v101;
            end, 
            HideWeapon = true, 
            Animation = 17292579443, 
            Stun = "Slowed"
        }, 
        Owl = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17292555531", 
                    ParentTorso = true, 
                    Volume = 1
                }
            }, 
            HideWeapon = true, 
            Animation = 17292549897, 
            Stun = "Freeze"
        }, 
        ["Mic Drop"] = {
            Sounds = {}, 
            Startup = function(v1409, _, v1411) --[[ Line: 10417 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1412 = game.ReplicatedStorage.Emotes.MIC:Clone();
                v1412:SetAttribute("EmoteProperty", true);
                table.insert(v1409, v1412);
                v1411.Handle = v1412;
                local l_Handle_27 = v1412.Handle;
                l_Handle_27:SetAttribute("EmoteProperty", true);
                table.insert(v1409, l_Handle_27);
                v1411.md = l_Handle_27;
                v1412.Name = "MIC";
                l_Handle_27.Part0 = v101.PrimaryPart;
                l_Handle_27.Part1 = v1412;
                l_Handle_27.Parent = v101.PrimaryPart;
                v1412.Parent = v101;
                v75({
                    SoundId = "rbxassetid://17106346778", 
                    Parent = v1412, 
                    Volume = 1
                }):Play();
            end, 
            HideWeapon = true, 
            Animation = 17106365733, 
            Stun = "Freeze"
        }, 
        ["Luv This Game"] = {
            Sounds = {}, 
            Startup = function(v1414, _, v1416) --[[ Line: 10443 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1417 = game.ReplicatedStorage.Emotes.HeartTSB:Clone();
                v1417:SetAttribute("EmoteProperty", true);
                table.insert(v1414, v1417);
                v1416.Handle = v1417;
                local l_Main2_0 = v1417.Main2;
                l_Main2_0:SetAttribute("EmoteProperty", true);
                table.insert(v1414, l_Main2_0);
                v1416.md = l_Main2_0;
                l_Main2_0.Name = "Main";
                l_Main2_0.Part0 = v101.PrimaryPart;
                l_Main2_0.Part1 = v1417.Main;
                l_Main2_0.Parent = v101.PrimaryPart;
                v1417.Parent = v101;
                v75({
                    SoundId = "rbxassetid://17269138016", 
                    Parent = v101.PrimaryPart, 
                    Volume = 1
                }):Play();
            end, 
            HideWeapon = true, 
            Animation = 17269134625, 
            Stun = "Slowed"
        }, 
        Mango = {
            Sounds = {}, 
            Startup = function(v1419, _, v1421) --[[ Line: 10469 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1422 = game.ReplicatedStorage.Emotes.MangoFork:Clone();
                v1422:SetAttribute("EmoteProperty", true);
                table.insert(v1419, v1422);
                v1421.Handle = v1422;
                local l_Fork2_0 = v1422.Fork2;
                l_Fork2_0:SetAttribute("EmoteProperty", true);
                table.insert(v1419, l_Fork2_0);
                v1421.md = l_Fork2_0;
                l_Fork2_0.Name = "Fork";
                l_Fork2_0.Part0 = v101["Right Arm"];
                l_Fork2_0.Part1 = v1422.Fork;
                l_Fork2_0.Parent = v101["Right Arm"];
                v1422.Parent = v101;
                v75({
                    SoundId = "rbxassetid://17269071380", 
                    Parent = v1422.Fork, 
                    Volume = 1
                }):Play();
            end, 
            Keyframes = {
                dead = function(v1424, _, _) --[[ Line: 10486 ]]
                    v1424.Handle.Mango:Destroy();
                    v1424.Handle.mangopart:Destroy();
                end
            }, 
            HideWeapon = true, 
            Animation = 17269079177, 
            Stun = "Slowed"
        }, 
        Action = {
            Sounds = {}, 
            Startup = function(v1427, _, v1429) --[[ Line: 10502 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1430 = game.ReplicatedStorage.Emotes.Clapboard:Clone();
                v1430:SetAttribute("EmoteProperty", true);
                table.insert(v1427, v1430);
                v1429.Handle = v1430;
                local l_Handle_28 = v1430.Handle;
                l_Handle_28:SetAttribute("EmoteProperty", true);
                table.insert(v1427, l_Handle_28);
                v1429.md = l_Handle_28;
                l_Handle_28.Name = "Bottom";
                l_Handle_28.Part0 = v101["Left Arm"];
                l_Handle_28.Part1 = v1430.Bottom;
                l_Handle_28.Parent = v101["Left Arm"];
                v1430.Parent = v101;
                v75({
                    SoundId = "rbxassetid://17268545081", 
                    Parent = v1430.Bottom, 
                    Volume = 1
                }):Play();
            end, 
            HideWeapon = true, 
            Animation = 17268549637, 
            Stun = "Slowed"
        }, 
        ["Sad Times"] = {
            Sounds = {
                [2.5] = {
                    SoundId = "rbxassetid://1836112668", 
                    ParentTorso = true, 
                    Volume = 0.175
                }
            }, 
            Startup = function(v1432, _, v1434) --[[ Line: 10532 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1435 = game.ReplicatedStorage.Emotes.Phone2:Clone();
                v1435:SetAttribute("EmoteProperty", true);
                table.insert(v1432, v1435);
                v1434.Handle = v1435;
                local l_Phone2_0 = v1435.Phone2;
                l_Phone2_0:SetAttribute("EmoteProperty", true);
                table.insert(v1432, l_Phone2_0);
                v1434.md = l_Phone2_0;
                l_Phone2_0.Name = "Phone";
                v1435.Name = "Phone";
                l_Phone2_0.Part0 = v101["Right Arm"];
                l_Phone2_0.Part1 = v1435.Phone;
                l_Phone2_0.Parent = v101["Right Arm"];
                v1435.Parent = v101;
                v75({
                    SoundId = "rbxassetid://17268986804", 
                    Parent = v1435.Phone, 
                    Volume = 1
                }):Play();
            end, 
            Keyframes = {
                clap = function() --[[ Line: 10550 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v101["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.2, 
                        RollOffMaxDistance = v1
                    }):Play();
                end
            }, 
            HideWeapon = true, 
            Animation = 17268991944, 
            Idle = 17269023470, 
            IdleKeyframes = true, 
            Stun = "Slowed"
        }, 
        ["Me Reading The Book That"] = {
            Sounds = {}, 
            Startup = function(v1437, _, v1439) --[[ Line: 10573 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1440 = game.ReplicatedStorage.Emotes.Bookk:Clone();
                v1440:SetAttribute("EmoteProperty", true);
                table.insert(v1437, v1440);
                v1439.Handle = v1440;
                local l_Bookk_0 = v1440.Bookk;
                l_Bookk_0:SetAttribute("EmoteProperty", true);
                table.insert(v1437, l_Bookk_0);
                v1439.md = l_Bookk_0;
                v1440.Name = "Book";
                l_Bookk_0.Name = "Base";
                l_Bookk_0.Part0 = v101.PrimaryPart;
                l_Bookk_0.Part1 = v1440.Base;
                l_Bookk_0.Parent = v101.PrimaryPart;
                v1440.Parent = v101;
                v1439.handle = v1440;
                v75({
                    SoundId = "rbxassetid://17268616635", 
                    Parent = v1440.Base, 
                    Volume = 1
                }):Play();
                shared.s = v75({
                    SoundId = "rbxassetid://9043379206", 
                    Parent = v101.Torso, 
                    Volume = 1
                });
                shared.s:Play();
            end, 
            Keyframes = {
                stop = function(_, _, _) --[[ Line: 10599 ]]
                    shared.s:Stop();
                end, 
                freeze = function(_, _, v1447) --[[ Line: 10603 ]]
                    v1447:AdjustSpeed(0);
                end
            }, 
            Fix = true, 
            HideWeapon = true, 
            Looped = true, 
            Animation = 17268619636, 
            Stun = "Freeze"
        }, 
        UFO = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1835904215", 
                    Volume = 0.5, 
                    ParentTorso = true, 
                    Looped = true
                }
            }, 
            Startup = function(v1448, _, v1450) --[[ Line: 10625 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1451 = game.ReplicatedStorage.Emotes.UFO:Clone();
                v1451:SetAttribute("EmoteProperty", true);
                table.insert(v1448, v1451);
                v1450.Handle = v1451;
                local l_UFO_0 = v1451.UFO;
                l_UFO_0:SetAttribute("EmoteProperty", true);
                table.insert(v1448, l_UFO_0);
                v1450.md = l_UFO_0;
                l_UFO_0.Part0 = v101.PrimaryPart;
                l_UFO_0.Part1 = v1451;
                l_UFO_0.Parent = v101.PrimaryPart;
                v1451.Parent = v101;
                v1450.handle = v1451;
            end, 
            HideWeapon = true, 
            Looped = true, 
            Animation = 17268633540, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        ["Pizza Delivery"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://122292723", 
                    Volume = 0.5, 
                    ParentTorso = true, 
                    Looped = true
                }
            }, 
            Startup = function(v1453, _, v1455) --[[ Line: 10652 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1456 = game.ReplicatedStorage.Emotes.Pizza:Clone();
                v1456:SetAttribute("EmoteProperty", true);
                table.insert(v1453, v1456);
                v1455.Handle = v1456;
                local l_Pizza_0 = v1456.Pizza;
                l_Pizza_0:SetAttribute("EmoteProperty", true);
                table.insert(v1453, l_Pizza_0);
                v1455.md = l_Pizza_0;
                l_Pizza_0.Part0 = v101.PrimaryPart;
                l_Pizza_0.Name = "Base";
                l_Pizza_0.Part1 = v1456.Base;
                l_Pizza_0.Parent = v101.PrimaryPart;
                v1456.Parent = v101;
                v1455.handle = v1456;
            end, 
            HideWeapon = true, 
            Looped = true, 
            Animation = 17268742277, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        ["Angry Riff"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1836019934", 
                    Volume = 1, 
                    ParentTorso = true, 
                    Looped = true
                }
            }, 
            Startup = function(v1458, _, v1460) --[[ Line: 10680 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1461 = game.ReplicatedStorage.Emotes.Guitar2:Clone();
                v1461:SetAttribute("EmoteProperty", true);
                table.insert(v1458, v1461);
                v1460.Handle = v1461;
                local l_Guitar_0 = v1461.Guitar;
                l_Guitar_0:SetAttribute("EmoteProperty", true);
                table.insert(v1458, l_Guitar_0);
                v1460.md = l_Guitar_0;
                l_Guitar_0.Part0 = v101["Right Arm"];
                l_Guitar_0.Part1 = v1461;
                v1461.Name = "Guitar";
                l_Guitar_0.Parent = v101["Right Arm"];
                v1461.Parent = v101;
                v1460.handle = v1461;
            end, 
            HideWeapon = true, 
            Looped = true, 
            Animation = 17268926242, 
            Stun = "Slowed"
        }, 
        Flute = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1838868548", 
                    Volume = 1, 
                    ParentTorso = true, 
                    Looped = true
                }
            }, 
            Startup = function(v1463, _, v1465) --[[ Line: 10707 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1466 = game.ReplicatedStorage.Emotes.flute:Clone();
                v1466:SetAttribute("EmoteProperty", true);
                table.insert(v1463, v1466);
                v1465.Handle = v1466;
                local l_Handle_29 = v1466.Handle;
                l_Handle_29:SetAttribute("EmoteProperty", true);
                table.insert(v1463, l_Handle_29);
                v1465.md = l_Handle_29;
                l_Handle_29.Part0 = v101["Right Arm"];
                l_Handle_29.Part1 = v1466;
                v1466.Name = "Handle";
                l_Handle_29.Parent = v101["Right Arm"];
                v1466.Parent = v101;
                v1465.handle = v1466;
            end, 
            Keyframes = {
                clap = function() --[[ Line: 10719 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v101["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.15, 
                        RollOffMaxDistance = v1
                    }):Play();
                end
            }, 
            HideWeapon = true, 
            Looped = true, 
            Animation = 17268859608, 
            Stun = "Slowed"
        }, 
        ["Magic Carpet"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1837365487", 
                    Volume = 0.5, 
                    TimePosition = 0.5, 
                    ParentTorso = true, 
                    Looped = true
                }
            }, 
            Startup = function(v1468, _, v1470) --[[ Line: 10747 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1471 = game.ReplicatedStorage.Emotes.carpet:Clone();
                v1471:SetAttribute("EmoteProperty", true);
                table.insert(v1468, v1471);
                v1470.Handle = v1471;
                local l_carpet_0 = v1471.carpet;
                l_carpet_0:SetAttribute("EmoteProperty", true);
                table.insert(v1468, l_carpet_0);
                v1470.md = l_carpet_0;
                l_carpet_0.Part0 = v101.PrimaryPart;
                l_carpet_0.Part1 = v1471;
                l_carpet_0.Parent = v101.PrimaryPart;
                v1471.Parent = v101;
                v1470.handle = v1471;
            end, 
            HideWeapon = true, 
            Looped = true, 
            Animation = 17268716692, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        Dribble = {
            Sounds = {}, 
            Startup = function(v1473, _, v1475) --[[ Line: 10769 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1476 = game.ReplicatedStorage.Emotes.basklektball:Clone();
                v1476:SetAttribute("EmoteProperty", true);
                table.insert(v1473, v1476);
                v1475.Handle = v1476;
                local l_basklektball_0 = v1476.basklektball;
                l_basklektball_0:SetAttribute("EmoteProperty", true);
                table.insert(v1473, l_basklektball_0);
                v1475.md = l_basklektball_0;
                l_basklektball_0.Part0 = v101.PrimaryPart;
                l_basklektball_0.Part1 = v1476;
                l_basklektball_0.Parent = v101.PrimaryPart;
                v1476.Parent = v101;
                v1475.handle = v1476;
            end, 
            Keyframes = {
                clap = function(v1478, _, _) --[[ Line: 10780 ]]
                    -- upvalues: v1 (ref)
                    shared.sfx({
                        SoundId = "rbxassetid://14404844095", 
                        PlaybackSpeed = Random.new():NextNumber(0.9, 1.1), 
                        Parent = v1478.handle, 
                        RollOffMaxDistance = v1, 
                        Volume = 1
                    }):Play();
                end
            }, 
            HideWeapon = true, 
            Looped = true, 
            Infinite = true, 
            Animation = 17268369862, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        ["Yummy Watermelon"] = {
            Sounds = {}, 
            Startup = function(v1481, _, v1483) --[[ Line: 10805 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                v75({
                    SoundId = "rbxassetid://17268447339", 
                    Parent = v101.Head, 
                    Volume = 1, 
                    Looped = true
                }):Play();
                local v1484 = game.ReplicatedStorage.Emotes.watermelon:Clone();
                v1484:SetAttribute("EmoteProperty", true);
                table.insert(v1481, v1484);
                v1483.Handle = v1484;
                local l_Watermelon_0 = v1484.Watermelon;
                l_Watermelon_0:SetAttribute("EmoteProperty", true);
                table.insert(v1481, l_Watermelon_0);
                v1483.md = l_Watermelon_0;
                l_Watermelon_0.Part0 = v101["Right Arm"];
                v1484.Name = "Watermelon";
                l_Watermelon_0.Part1 = v1484;
                l_Watermelon_0.Parent = v101["Right Arm"];
                v1484.Parent = v101;
                v1483.handle = v1484;
            end, 
            HideWeapon = true, 
            Looped = true, 
            Infinite = true, 
            Animation = 17268468485, 
            Stun = "Freeze"
        }, 
        ["Dry Lips"] = {
            Sounds = {
                [0.7330000000000001] = {
                    SoundId = "rbxassetid://9120086770", 
                    Volume = 0.25
                }, 
                [2.017] = {
                    SoundId = "rbxassetid://9120087000", 
                    Volume = 0.25
                }
            }, 
            Startup = function(v1486, _, v1488) --[[ Line: 10843 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1489 = game.ReplicatedStorage.Emotes.tang:Clone();
                v1489:SetAttribute("EmoteProperty", true);
                table.insert(v1486, v1489);
                v1488.Handle = v1489;
                local l_Part_2 = v1489.Part;
                l_Part_2:SetAttribute("EmoteProperty", true);
                table.insert(v1486, l_Part_2);
                v1488.md = l_Part_2;
                v1489.Name = "Part";
                l_Part_2.Part0 = v101.Head;
                l_Part_2.Part1 = v1489;
                l_Part_2.Parent = v101.Head;
                v1489.Parent = v101;
            end, 
            Animation = 104081288316829, 
            StunAttribute = 1.5, 
            Stun = "Slowed"
        }, 
        Surrender = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17106985996", 
                    Volume = 0.85
                }
            }, 
            Startup = function(v1491, _, v1493) --[[ Line: 10867 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1494 = game.ReplicatedStorage.Emotes.surrender_Flag:Clone();
                v1494:SetAttribute("EmoteProperty", true);
                table.insert(v1491, v1494);
                v1493.Handle = v1494;
                local l_Handle_30 = v1494.Handle;
                l_Handle_30:SetAttribute("EmoteProperty", true);
                table.insert(v1491, l_Handle_30);
                v1493.md = l_Handle_30;
                l_Handle_30.Name = "Pole";
                l_Handle_30.Part0 = v101["Right Arm"];
                l_Handle_30.Part1 = v1494.Pole;
                l_Handle_30.Parent = v101["Right Arm"];
                v1494.Parent = v101;
            end, 
            HideWeapon = true, 
            Animation = 17107015056, 
            Idle = 17107016598, 
            IdleSound = {
                SoundId = "rbxassetid://17106985885", 
                Volume = 0.35, 
                Looped = true
            }, 
            Stun = "Slowed"
        }, 
        Watermelon = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17105975829", 
                    Volume = 0.065, 
                    Looped = true
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://1841061037", 
                    Volume = 0.3, 
                    Looped = true
                }
            }, 
            Startup = function(v1496, _, v1498) --[[ Line: 10904 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1499 = game.ReplicatedStorage.Emotes.Watermelon:Clone();
                v1499:SetAttribute("EmoteProperty", true);
                table.insert(v1496, v1499);
                v1498.Handle = v1499;
                local l_Handle_31 = v1499.Handle;
                l_Handle_31:SetAttribute("EmoteProperty", true);
                table.insert(v1496, l_Handle_31);
                v1498.md = l_Handle_31;
                v1499.Name = "Watermelon";
                l_Handle_31.Part0 = v101["Right Arm"];
                l_Handle_31.Part1 = v1499;
                l_Handle_31.Parent = v101["Right Arm"];
                v1499.Parent = v101;
            end, 
            HideWeapon = true, 
            Animation = 17105983229, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["WATERMELON "] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9045473815", 
                    Volume = 0.4, 
                    Looped = true
                }
            }, 
            Startup = function(v1501, _, v1503) --[[ Line: 10929 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1504 = game.ReplicatedStorage.Emotes.Watermelon2:Clone();
                v1504:SetAttribute("EmoteProperty", true);
                table.insert(v1501, v1504);
                v1503.Handle = v1504;
                local l_Handle_32 = v1504.Handle;
                l_Handle_32:SetAttribute("EmoteProperty", true);
                table.insert(v1501, l_Handle_32);
                v1503.md = l_Handle_32;
                v1504.Name = "Watermelon";
                l_Handle_32.Part0 = v101.HumanoidRootPart;
                l_Handle_32.Part1 = v1504;
                l_Handle_32.Parent = v101.HumanoidRootPart;
                v1504.Parent = v101;
            end, 
            Animation = 17137575195, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Log = {
            Sounds = {}, 
            Startup = function(v1506, _, v1508) --[[ Line: 10948 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1509 = game.ReplicatedStorage.Emotes.Log:Clone();
                v1509:SetAttribute("EmoteProperty", true);
                table.insert(v1506, v1509);
                v1508.Handle = v1509;
                local l_Handle_33 = v1509.Handle;
                l_Handle_33:SetAttribute("EmoteProperty", true);
                table.insert(v1506, l_Handle_33);
                v1508.md = l_Handle_33;
                v1509.Name = "Handle";
                l_Handle_33.Part0 = v101["Right Arm"];
                l_Handle_33.Part1 = v1509;
                l_Handle_33.Parent = v101["Right Arm"];
                v1509.Parent = v101;
                v75({
                    SoundId = "rbxassetid://9120937669", 
                    Parent = v101.PrimaryPart, 
                    Volume = 0.5
                }):Play();
                v75({
                    SoundId = "rbxassetid://9120823421", 
                    Parent = v101.PrimaryPart, 
                    Volume = 0.075, 
                    Looped = true
                }):Play();
            end, 
            Keyframes = {
                clap = function() --[[ Line: 10972 ]] --[[ Name: clap ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://15090365735", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.75
                    }):Play();
                end
            }, 
            Infinite = true, 
            Animation = 15090459593, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Rolling = {
            Sounds = {}, 
            Startup = function(v1511, _, v1513) --[[ Line: 10991 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1514 = game.ReplicatedStorage.Emotes.Film:Clone();
                v1514:SetAttribute("EmoteProperty", true);
                table.insert(v1511, v1514);
                v1513.Handle = v1514;
                local l_Handle_34 = v1514.Handle;
                l_Handle_34:SetAttribute("EmoteProperty", true);
                table.insert(v1511, l_Handle_34);
                v1513.md = l_Handle_34;
                v1514.Name = "Handle";
                l_Handle_34.Part0 = v101["Right Arm"];
                l_Handle_34.Part1 = v1514;
                l_Handle_34.Parent = v101["Right Arm"];
                v1514.Parent = v101;
                v75({
                    SoundId = "rbxassetid://15310783637", 
                    Parent = v1514, 
                    Volume = 0.5, 
                    Looped = true
                }):Play();
            end, 
            Keyframes = {
                claploop = function() --[[ Line: 11009 ]] --[[ Name: claploop ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://15310800059", 
                        Parent = v101.PrimaryPart, 
                        Volume = 1.5
                    }):Play();
                end
            }, 
            HideWeapon = true, 
            Infinite = true, 
            Animation = 15310866392, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Cook = {
            Sounds = {}, 
            Startup = function(v1516, _, v1518) --[[ Line: 11029 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1519 = game.ReplicatedStorage.Emotes.Pan:Clone();
                v1519:SetAttribute("EmoteProperty", true);
                table.insert(v1516, v1519);
                v1518.Handle = v1519;
                local l_Handle_35 = v1519.Handle;
                l_Handle_35:SetAttribute("EmoteProperty", true);
                table.insert(v1516, l_Handle_35);
                v1518.md = l_Handle_35;
                v1519.Name = "Handle";
                l_Handle_35.Part0 = v101["Left Arm"];
                l_Handle_35.Part1 = v1519;
                l_Handle_35.Parent = v101["Left Arm"];
                v1519.Parent = v101;
                v75({
                    SoundId = "rbxassetid://15283317649", 
                    Parent = v1519, 
                    Looped = true
                }):Play();
                v75({
                    SoundId = "rbxassetid://160247625", 
                    Parent = v101.PrimaryPart, 
                    Volume = 0.5
                }):Play();
            end, 
            Keyframes = {
                clap = function() --[[ Line: 11052 ]] --[[ Name: clap ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://15283317709", 
                        Parent = v101.PrimaryPart, 
                        Volume = 2
                    }):Play();
                end
            }, 
            Infinite = true, 
            Animation = 15283329867, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Coffee = {
            Sounds = {}, 
            Startup = function(v1521, _, v1523) --[[ Line: 11071 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1524 = game.ReplicatedStorage.Emotes.Coffee:Clone();
                v1524:SetAttribute("EmoteProperty", true);
                table.insert(v1521, v1524);
                v1523.Handle = v1524;
                local l_m6d_22 = v1524.m6d;
                l_m6d_22:SetAttribute("EmoteProperty", true);
                table.insert(v1521, l_m6d_22);
                v1523.md = l_m6d_22;
                v1524.Name = "Handle";
                l_m6d_22.Part0 = v101["Left Arm"];
                l_m6d_22.Part1 = v1524;
                l_m6d_22.Parent = v101["Left Arm"];
                v1524.Parent = v101;
            end, 
            Keyframes = {
                claploop = function() --[[ Line: 11082 ]] --[[ Name: claploop ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://15487197007", 
                        Parent = v101.PrimaryPart, 
                        Volume = 1
                    }):Play();
                end
            }, 
            Infinite = true, 
            Animation = 15487200157, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Scooter = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17292925358", 
                    Volume = 0.1, 
                    Looped = true
                }
            }, 
            Startup = function(v1526, _, v1528) --[[ Line: 11106 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1529 = game.ReplicatedStorage.Emotes.Scooter:Clone();
                v1529:SetAttribute("EmoteProperty", true);
                table.insert(v1526, v1529);
                v1528.Handle = v1529;
                local l_Motor6D_24 = v1529.Motor6D;
                l_Motor6D_24:SetAttribute("EmoteProperty", true);
                table.insert(v1526, l_Motor6D_24);
                v1528.md = l_Motor6D_24;
                l_Motor6D_24.Part0 = v101.PrimaryPart;
                l_Motor6D_24.Part1 = v1529.Base;
                l_Motor6D_24.Parent = v101.PrimaryPart;
                v1529.Parent = v101;
                local l_ForceField_0 = v101:FindFirstChildOfClass("ForceField");
                local v1532 = false;
                if workspace:GetAttribute("GameStarted") or not workspace:GetAttribute("RankedOnes") then
                    v1532 = true;
                end;
                if l_ForceField_0 and l_ForceField_0:GetAttribute("Emote") then
                    v1532 = false;
                end;
                if v1532 then
                    local l_BodyVelocity_0 = Instance.new("BodyVelocity");
                    l_BodyVelocity_0:SetAttribute("EmoteProperty", true);
                    table.insert(v1526, l_BodyVelocity_0);
                    v1528.BV = l_BodyVelocity_0;
                    l_BodyVelocity_0.Name = "moveme";
                    l_BodyVelocity_0.MaxForce = Vector3.new(10000, 0, 10000, 0);
                    l_BodyVelocity_0:SetAttribute("Speed", 12);
                    l_BodyVelocity_0:SetAttribute("Goto", 12);
                    l_BodyVelocity_0:SetAttribute("RayCheck", true);
                    l_BodyVelocity_0:SetAttribute("End", 1);
                    l_BodyVelocity_0:SetAttribute("Fallout", 0.991);
                    l_BodyVelocity_0.Parent = v101.PrimaryPart;
                end;
            end, 
            Keyframes = {
                clap = function(v1534) --[[ Line: 11137 ]] --[[ Name: clap ]]
                    -- upvalues: v87 (ref), v75 (ref), v101 (copy)
                    task.delay(0.417, function() --[[ Line: 11138 ]]
                        -- upvalues: v1534 (copy), v87 (ref)
                        if v1534.BV and v1534.BV.Parent then
                            local l_BV_0 = v1534.BV;
                            local v1536 = "Speed";
                            local v1537 = 45;
                            local v1538 = -0.01;
                            local v1539 = 0.01;
                            if not v1539 and v1538 then
                                v1539 = v1538;
                                v1538 = 1;
                            end;
                            if not v1539 and not v1538 then
                                v1538 = 0;
                                v1539 = 1;
                            end;
                            l_BV_0:SetAttribute(v1536, v1537 + v87:NextNumber(v1538, v1539));
                        end;
                    end);
                    v75({
                        SoundId = "rbxassetid://17292932603", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.3
                    }):Play();
                end
            }, 
            Infinite = true, 
            Animation = 17292934579, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Skateboard = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15090263539", 
                    Volume = 0.825, 
                    Looped = true
                }
            }, 
            Startup = function(v1540, _, v1542) --[[ Line: 11167 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1543 = game.ReplicatedStorage.Emotes.Skateboard:Clone();
                v1543:SetAttribute("EmoteProperty", true);
                table.insert(v1540, v1543);
                v1542.Handle = v1543;
                local l_m6d_23 = v1543.m6d;
                l_m6d_23:SetAttribute("EmoteProperty", true);
                table.insert(v1540, l_m6d_23);
                v1542.md = l_m6d_23;
                l_m6d_23.Name = "Handle";
                l_m6d_23.Part0 = v101.PrimaryPart;
                l_m6d_23.Part1 = v1543.Handle;
                l_m6d_23.Parent = v101.PrimaryPart;
                v1543.Parent = v101;
                local l_ForceField_1 = v101:FindFirstChildOfClass("ForceField");
                local v1546 = false;
                if workspace:GetAttribute("GameStarted") or not workspace:GetAttribute("RankedOnes") then
                    v1546 = true;
                end;
                if l_ForceField_1 and l_ForceField_1:GetAttribute("Emote") then
                    v1546 = false;
                end;
                if v1546 then
                    local l_BodyVelocity_1 = Instance.new("BodyVelocity");
                    l_BodyVelocity_1:SetAttribute("EmoteProperty", true);
                    table.insert(v1540, l_BodyVelocity_1);
                    v1542.BV = l_BodyVelocity_1;
                    l_BodyVelocity_1.Name = "moveme";
                    l_BodyVelocity_1.MaxForce = Vector3.new(10000, 0, 10000, 0);
                    l_BodyVelocity_1:SetAttribute("Speed", 12);
                    l_BodyVelocity_1:SetAttribute("Goto", 12);
                    l_BodyVelocity_1:SetAttribute("RayCheck", true);
                    l_BodyVelocity_1:SetAttribute("End", 1);
                    l_BodyVelocity_1:SetAttribute("Fallout", 0.991);
                    l_BodyVelocity_1.Parent = v101.PrimaryPart;
                end;
            end, 
            Keyframes = {
                clap = function(v1548) --[[ Line: 11199 ]] --[[ Name: clap ]]
                    -- upvalues: v87 (ref), v75 (ref), v101 (copy)
                    task.delay(2.184, function() --[[ Line: 11200 ]]
                        -- upvalues: v1548 (copy), v87 (ref)
                        if v1548.BV and v1548.BV.Parent then
                            local l_BV_1 = v1548.BV;
                            local v1550 = "Speed";
                            local v1551 = 45;
                            local v1552 = -0.01;
                            local v1553 = 0.01;
                            if not v1553 and v1552 then
                                v1553 = v1552;
                                v1552 = 1;
                            end;
                            if not v1553 and not v1552 then
                                v1552 = 0;
                                v1553 = 1;
                            end;
                            l_BV_1:SetAttribute(v1550, v1551 + v87:NextNumber(v1552, v1553));
                        end;
                    end);
                    v75({
                        SoundId = "rbxassetid://15090244072", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.75
                    }):Play();
                end
            }, 
            Infinite = true, 
            Animation = 15090273850, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Pls = {
            Sounds = {}, 
            Startup = function(v1554, _, v1556) --[[ Line: 11224 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v1557 = game.ReplicatedStorage.Emotes.Sign:Clone();
                v1557:SetAttribute("EmoteProperty", true);
                table.insert(v1554, v1557);
                v1556.Handle = v1557;
                local l_Handle_36 = v1557.Handle;
                l_Handle_36:SetAttribute("EmoteProperty", true);
                table.insert(v1554, l_Handle_36);
                v1556.md = l_Handle_36;
                v1557.Name = "Handle";
                l_Handle_36.Part0 = v101["Left Arm"];
                l_Handle_36.Part1 = v1557;
                l_Handle_36.Parent = v101["Left Arm"];
                v1557.Parent = v101;
                v75({
                    SoundId = "rbxassetid://9126280354", 
                    Parent = v101.PrimaryPart, 
                    Volume = 0.5
                }):Play();
            end, 
            Keyframes = {
                clap = function() --[[ Line: 11241 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://15092688139", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.1
                    }):Play();
                end, 
                claploop = function() --[[ Line: 11249 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://15092688069", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.1
                    }):Play();
                end, 
                snap = function() --[[ Line: 11257 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://15092714389", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.1
                    }):Play();
                end
            }, 
            Infinite = true, 
            Animation = 15092699174, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Square Up"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://72334795012520", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v1561) --[[ Line: 11282 ]]
                    v1561:AdjustSpeed(0);
                end
            }, 
            Startup = function(v1562) --[[ Line: 11287 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1563 = shared.cfolder({
                    Name = "Freeze"
                }, 1.75);
                table.insert(v1562, v1563);
                v1563:SetAttribute("DontInterrupt", true);
                v1563:SetAttribute("NoStop", true);
                v1563:SetAttribute("EmoteProperty", true);
                task.delay(0, function() --[[ Line: 11295 ]]
                    -- upvalues: v1563 (copy), v101 (ref)
                    v1563.Parent = v101;
                end);
            end, 
            HideWeapon = true, 
            Fix = true, 
            Animation = 89673412896825, 
            Stun = "Slowed"
        }, 
        ["Heartful Salute"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17097492489", 
                    Volume = 1, 
                    TimePosition = 0.1, 
                    Looped = false
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v1566) --[[ Line: 11317 ]]
                    v1566:AdjustSpeed(0);
                end
            }, 
            HideWeapon = true, 
            Animation = 17097486020, 
            Stun = "Freeze"
        }, 
        Juggler = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://121999038626924", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Startup = function(v1567, _, v1569) --[[ Line: 11337 ]] --[[ Name: Startup ]]
                -- upvalues: v55 (ref), v101 (copy)
                for _, v1571 in pairs(game.ReplicatedStorage.Emotes.Juggling:GetChildren()) do
                    v55({
                        cleanup = v1567, 
                        char = v101, 
                        object = v1571, 
                        part0 = v101.Torso, 
                        part1 = tostring(v1571), 
                        mind = v1569, 
                        parent = v101.Torso
                    });
                end;
            end, 
            Animation = 119367166308066, 
            Looped = true, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        Thinker = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15090345405", 
                    Volume = 1, 
                    Looped = false
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://1841319934", 
                    Volume = 0.65, 
                    Looped = true
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v1574) --[[ Line: 11374 ]]
                    v1574:AdjustSpeed(0);
                end
            }, 
            Startup = function(v1575, _, v1577) --[[ Line: 11379 ]] --[[ Name: Startup ]]
                -- upvalues: v55 (ref), v101 (copy)
                v55({
                    cleanup = v1575, 
                    char = v101, 
                    object = game.ReplicatedStorage.Emotes.Rock, 
                    part0 = v101.PrimaryPart, 
                    part1 = tostring(game.ReplicatedStorage.Emotes.Rock), 
                    mind = v1577
                });
            end, 
            Animation = 15089930092, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Look!"] = {
            Sounds = {}, 
            Keyframes = {
                clap = function(_) --[[ Line: 11400 ]]
                    -- upvalues: v75 (ref), v1 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://17086269758", 
                        RollOffMaxDistance = v1, 
                        Parent = v101.Head, 
                        Volume = 0.85
                    }):Play();
                end
            }, 
            Infinite = true, 
            Animation = 17086291067, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Munch = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15018666363", 
                    Volume = 1.5, 
                    Looped = false
                }
            }, 
            Startup = function(v1579, _, v1581) --[[ Line: 11425 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1582 = game.ReplicatedStorage.Emotes.Steak:Clone();
                v1582:SetAttribute("EmoteProperty", true);
                table.insert(v1579, v1582);
                v1581.Handle = v1582;
                local l_Handle_37 = v1582.Handle;
                l_Handle_37:SetAttribute("EmoteProperty", true);
                table.insert(v1579, l_Handle_37);
                v1581.md = l_Handle_37;
                v1582.Name = "Handle";
                l_Handle_37.Name = "Handle";
                l_Handle_37.Part0 = v101["Left Arm"];
                l_Handle_37.Part1 = v1582;
                l_Handle_37.Parent = v101["Left Arm"];
                local l_Attachment_7 = v1582.Attachment;
                l_Attachment_7:SetAttribute("EmoteProperty", true);
                table.insert(v1579, l_Attachment_7);
                v1581.att = l_Attachment_7;
                v1582.Parent = v101;
            end, 
            Keyframes = {
                ["end"] = function(v1585) --[[ Line: 11439 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v1585.Handle["Meshes/steak2_Cube"].Transparency = 1;
                    v1585.att.Popcorn.Enabled = false;
                    task.delay(0.3, function() --[[ Line: 11443 ]]
                        -- upvalues: v75 (ref), v101 (ref)
                        v75({
                            SoundId = "rbxassetid://9113414870", 
                            Parent = v101.Head, 
                            Volume = 1
                        }):Play();
                    end);
                end, 
                start = function(v1586) --[[ Line: 11452 ]]
                    v1586.att.Popcorn.Enabled = true;
                end
            }, 
            Animation = 15018688063, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        Salt = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17086202883", 
                    Volume = 0.85, 
                    TimePosition = 0.2, 
                    Looped = false
                }, 
                [2.45] = {
                    SoundId = "rbxassetid://14065053293", 
                    Volume = 0.4
                }
            }, 
            Startup = function(v1587, _, v1589) --[[ Line: 11477 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local l_Attachment_8 = Instance.new("Attachment");
                table.insert(v1587, l_Attachment_8);
                l_Attachment_8:SetAttribute("EmoteProperty", true);
                l_Attachment_8.Parent = v101["Right Arm"];
                l_Attachment_8.Position = Vector3.new(-0.40700000524520874, -0.8999999761581421, 0, 0);
                local v1591 = game.ReplicatedStorage.Emotes.Salt:Clone();
                v1591.Enabled = false;
                v1591.Parent = l_Attachment_8;
                v1589.salt = v1591;
            end, 
            Keyframes = {
                ["end"] = function(v1592) --[[ Line: 11489 ]]
                    v1592.salt.Enabled = false;
                end, 
                start = function(v1593) --[[ Line: 11493 ]]
                    v1593.salt.Enabled = true;
                end
            }, 
            HideWeapon = true, 
            Animation = 17086225519, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Smile = {
            Sounds = {
                [2] = {
                    SoundId = "rbxassetid://15310427179", 
                    Volume = 1.5, 
                    Looped = false
                }, 
                [0.8] = {
                    SoundId = "rbxassetid://12981981352", 
                    Volume = 0.35
                }, 
                [0] = {
                    SoundId = "rbxassetid://12982203916", 
                    Volume = 0.5
                }
            }, 
            Startup = function(v1594, _, v1596) --[[ Line: 11523 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                v75({
                    SoundId = "rbxassetid://7244593699", 
                    Parent = v101.PrimaryPart, 
                    Volume = 0.75
                }):Play();
                v75({
                    SoundId = "rbxassetid://13726870246", 
                    Parent = v101.PrimaryPart, 
                    Volume = 0.75
                }):Play();
                local v1597 = game.ReplicatedStorage.Emotes.Camera.Handle:Clone();
                v1597:SetAttribute("EmoteProperty", true);
                table.insert(v1594, v1597);
                v1596.camera = v1597;
                local l_Handle_38 = v1597.Handle;
                l_Handle_38:SetAttribute("EmoteProperty", true);
                table.insert(v1594, l_Handle_38);
                v1596.md = l_Handle_38;
                v1597.Name = "Handle";
                l_Handle_38.Name = "Handle";
                l_Handle_38.Part0 = v101["Left Arm"];
                l_Handle_38.Part1 = v1597;
                l_Handle_38.Parent = v101["Left Arm"];
                v1597.Parent = v101;
                local v1599 = game.ReplicatedStorage.Emotes.Camera.SmallHandle:Clone();
                v1599:SetAttribute("EmoteProperty", true);
                table.insert(v1594, v1599);
                v1596.picture = v1599;
                local l_SmallHandle_0 = v1599.SmallHandle;
                l_SmallHandle_0:SetAttribute("EmoteProperty", true);
                table.insert(v1594, l_SmallHandle_0);
                v1596.md = l_SmallHandle_0;
                l_SmallHandle_0.Part0 = v101["Right Arm"];
                l_SmallHandle_0.Part1 = v1599;
                l_SmallHandle_0.Parent = v101["Right Arm"];
                v1599.Parent = v101;
                for _, v1602 in pairs(v1596.picture.Photo:GetDescendants()) do
                    if v1602:IsA("BasePart") or v1602:IsA("Decal") then
                        v1602.Transparency = 1;
                    end;
                end;
            end, 
            Keyframes = {
                flash = function(v1603) --[[ Line: 11560 ]]
                    -- upvalues: l_CollectionService_1 (ref), v101 (copy), v91 (ref), v87 (ref)
                    local l_Attachment_9 = Instance.new("Attachment");
                    l_CollectionService_1:AddTag(l_Attachment_9, "emotestuff" .. v101.Name);
                    l_Attachment_9.Parent = v1603.camera.Camera["Camera Low"].Lends;
                    game:GetService("Debris"):AddItem(l_Attachment_9, 5);
                    local v1605 = game.ReplicatedStorage.Emotes.ImpactGlow:Clone();
                    v1605.Parent = l_Attachment_9;
                    shared.resizeparticle(v1605, v91(1, 1.2));
                    v1605:Emit(1);
                    local l_createlight_0 = shared.createlight;
                    local v1607 = {
                        Position = l_Attachment_9.WorldPosition, 
                        Color = Color3.new(1, 1, 1)
                    };
                    local v1608 = 7;
                    local v1609 = 10;
                    if not v1609 and v1608 then
                        v1609 = v1608;
                        v1608 = 1;
                    end;
                    if not v1609 and not v1608 then
                        v1608 = 0;
                        v1609 = 1;
                    end;
                    v1607.Brightness = v87:NextNumber(v1608, v1609);
                    v1608 = 0.3;
                    v1609 = 0.5;
                    if not v1609 and v1608 then
                        v1609 = v1608;
                        v1608 = 1;
                    end;
                    if not v1609 and not v1608 then
                        v1608 = 0;
                        v1609 = 1;
                    end;
                    v1607.Fade = v87:NextNumber(v1608, v1609);
                    v1608 = 10;
                    v1609 = 12;
                    if not v1609 and v1608 then
                        v1609 = v1608;
                        v1608 = 1;
                    end;
                    if not v1609 and not v1608 then
                        v1608 = 0;
                        v1609 = 1;
                    end;
                    v1607.Range = v87:NextNumber(v1608, v1609);
                    l_createlight_0(v1607);
                end, 
                visible = function(v1610) --[[ Line: 11579 ]]
                    for _, v1612 in pairs(v1610.picture.Photo:GetDescendants()) do
                        if v1612:IsA("BasePart") or v1612:IsA("Decal") then
                            v1612.Transparency = 0;
                        end;
                    end;
                end, 
                end1 = function(v1613) --[[ Line: 11587 ]]
                    v1613.camera:Destroy();
                end, 
                end2 = function(v1614) --[[ Line: 11591 ]]
                    v1614.picture:Destroy();
                end
            }, 
            HideWeapon = true, 
            Animation = 15310466614, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        Score = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14678100852", 
                    Volume = 1.25, 
                    Looped = false
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v1617) --[[ Line: 11612 ]]
                    v1617:AdjustSpeed(0);
                end, 
                score = function(v1618, _, _) --[[ Line: 11616 ]]
                    -- upvalues: l_CollectionService_1 (ref)
                    local v1621 = nil;
                    for _, v1623 in pairs(l_CollectionService_1:GetTagged("notepad")) do
                        if v1623 ~= v1618.Handle and (v1623.pages.Position - v1618.Handle.pages.Position).magnitude <= 25 then
                            local l_v1623_FirstChildWhichIsA_0 = v1623:FindFirstChildWhichIsA("TextLabel", true);
                            if l_v1623_FirstChildWhichIsA_0 then
                                v1621 = l_v1623_FirstChildWhichIsA_0.Text;
                            end;
                        end;
                    end;
                    local l_SurfaceGui_0 = v1618.Handle.pages.SurfaceGui;
                    l_SurfaceGui_0.TextLabel.Text = v1621 or math.random(-1, 10);
                    l_SurfaceGui_0.Enabled = true;
                end
            }, 
            Startup = function(v1626, _, v1628) --[[ Line: 11632 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v101 (copy)
                local v1629 = game.ReplicatedStorage.Emotes.Notepad.Model:Clone();
                v1629:SetAttribute("EmoteProperty", true);
                table.insert(v1626, v1629);
                v1628.Handle = v1629;
                l_CollectionService_1:AddTag(v1629, "notepad");
                for _, v1631 in pairs(game.ReplicatedStorage.Emotes.Notepad:GetChildren()) do
                    if v1631:IsA("Motor6D") then
                        local v1632 = v1631:Clone();
                        v1632:SetAttribute("EmoteProperty", true);
                        table.insert(v1626, v1632);
                        v1628.md = v1632;
                        v1632.Part0 = v101["Left Arm"];
                        v1632.Part1 = v1629[v1631.Name];
                        v1632.Parent = v101["Left Arm"];
                    end;
                end;
                v1629.Parent = v101;
            end, 
            Animation = 14678167232, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        Crowbar = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14697227297", 
                    Volume = 1.5, 
                    TimePosition = 0, 
                    Looped = true
                }
            }, 
            Startup = function(v1633, _, v1635) --[[ Line: 11663 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1636 = game.ReplicatedStorage.Emotes.crowbar:Clone();
                v1636:SetAttribute("EmoteProperty", true);
                table.insert(v1633, v1636);
                v1635.Handle = v1636;
                local l_M6D_0 = v1636.M6D;
                l_M6D_0:SetAttribute("EmoteProperty", true);
                table.insert(v1633, l_M6D_0);
                v1635.md = l_M6D_0;
                l_M6D_0.Name = "Handle";
                l_M6D_0.Part0 = v101["Left Arm"];
                l_M6D_0.Part1 = v1636.Handle;
                l_M6D_0.Parent = v101["Left Arm"];
                v1636.Parent = v101;
            end, 
            Animation = 14697228259, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Popcorn = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15018377297", 
                    Volume = 3, 
                    TimePosition = 0, 
                    Looped = true
                }
            }, 
            Startup = function(v1638, _, v1640) --[[ Line: 11689 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1641 = game.ReplicatedStorage.Emotes.Popcorn:Clone();
                v1641:SetAttribute("EmoteProperty", true);
                table.insert(v1638, v1641);
                v1640.Handle = v1641;
                local l_Handle_39 = v1641.Handle;
                l_Handle_39:SetAttribute("EmoteProperty", true);
                table.insert(v1638, l_Handle_39);
                v1640.md = l_Handle_39;
                v1641.Name = "Handle";
                l_Handle_39.Name = "Handle";
                l_Handle_39.Part0 = v101["Left Arm"];
                l_Handle_39.Part1 = v1641;
                l_Handle_39.Parent = v101["Left Arm"];
                local l_Attachment_10 = v1641.Attachment;
                l_Attachment_10.Popcorn.Enabled = true;
                l_Attachment_10:SetAttribute("EmoteProperty", true);
                table.insert(v1638, l_Attachment_10);
                v1640.att = l_Attachment_10;
                l_Attachment_10.Parent = v101["Right Arm"];
                v1641.Parent = v101;
            end, 
            Animation = 15018466007, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Mop = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14520228185", 
                    Volume = 0.9, 
                    TimePosition = 0, 
                    Looped = true
                }
            }, 
            Startup = function(v1644, _, v1646) --[[ Line: 11720 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1647 = game.ReplicatedStorage.Emotes.Mop.Handle:Clone();
                v1647:SetAttribute("EmoteProperty", true);
                table.insert(v1644, v1647);
                v1646.Handle = v1647;
                local v1648 = game.ReplicatedStorage.Emotes.Mop.M6D:Clone();
                v1648:SetAttribute("EmoteProperty", true);
                table.insert(v1644, v1648);
                v1646.md = v1648;
                v1648.Name = "Handle";
                v1648.Part0 = v101["Left Arm"];
                v1648.Part1 = v1647;
                v1648.Parent = v101["Left Arm"];
                v1647.Parent = v101;
            end, 
            Animation = 14520410356, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Bouncy = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14659137741", 
                    Volume = 0.9, 
                    TimePosition = 0, 
                    Looped = true
                }
            }, 
            Startup = function(v1649, _, v1651) --[[ Line: 11745 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1652 = game.ReplicatedStorage.Emotes.Bounce.Sphere:Clone();
                v1652:SetAttribute("EmoteProperty", true);
                table.insert(v1649, v1652);
                v1651.Handle = v1652;
                v1652.BrickColor = BrickColor.Random();
                local l_Motor6D_25 = v1652:FindFirstChildOfClass("Motor6D");
                l_Motor6D_25:SetAttribute("EmoteProperty", true);
                table.insert(v1649, l_Motor6D_25);
                v1651.md = l_Motor6D_25;
                l_Motor6D_25.Name = "Sphere";
                l_Motor6D_25.Part0 = v101.PrimaryPart;
                l_Motor6D_25.Part1 = v1652;
                l_Motor6D_25.Parent = v101.PrimaryPart;
                v1652.Parent = v101;
            end, 
            Fix = true, 
            Animation = 14659143045, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Wiggle = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1835606556", 
                    Volume = 0.3, 
                    TimePosition = 0.25, 
                    Looped = true
                }
            }, 
            Animation = 14495337027, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Gleeful Jumping"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://109463610060222", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Animation = 136460538117500, 
            Looped = true, 
            Stun = "Slowed", 
            StunAttribute = 1.15
        }, 
        Crazy = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14492925439", 
                    Volume = 2.75, 
                    Looped = false
                }
            }, 
            Keyframes = {
                start = function(v1654, v1655) --[[ Line: 11805 ]]
                    -- upvalues: v101 (copy)
                    local v1656 = game.ReplicatedStorage.Emotes.Confused:Clone();
                    local l_Weld_7 = Instance.new("Weld");
                    v1654.crazy = v1656;
                    v1654.particle = v1656.Attachment.Swirl;
                    for _, v1659 in pairs({
                        v1656, 
                        l_Weld_7
                    }) do
                        v1659:SetAttribute("EmoteProperty", true);
                        table.insert(v1655, v1659);
                    end;
                    l_Weld_7.Parent = v1656;
                    l_Weld_7.Part0 = v101.PrimaryPart;
                    l_Weld_7.Part1 = v1656;
                    l_Weld_7.C0 = CFrame.new(0, 2.75, 0);
                    v1656.Transparency = 1;
                    v1656.Parent = workspace.Thrown;
                    game.ReplicatedStorage.Replication:FireAllClients({
                        Effect = "Rotate", 
                        Weld = l_Weld_7, 
                        Crazy = v1656
                    });
                end, 
                ["end"] = function(v1660, _) --[[ Line: 11830 ]]
                    -- upvalues: l_TweenService_0 (ref)
                    local l_crazy_0 = v1660.crazy;
                    local l_particle_0 = v1660.particle;
                    l_crazy_0.Transparency = 0;
                    l_TweenService_0:Create(l_crazy_0, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Transparency = 1
                    }):Play();
                    task.spawn(function() --[[ Line: 11839 ]]
                        -- upvalues: l_particle_0 (copy)
                        for _ = 1, 25 do
                            if l_particle_0.Parent then
                                local v1665 = {};
                                for _, v1667 in pairs(l_particle_0.Transparency.Keypoints) do
                                    table.insert(v1665, NumberSequenceKeypoint.new(v1667.Time, v1667.Value * 1.1, v1667.Envelope));
                                end;
                                l_particle_0.Transparency = NumberSequence.new(v1665);
                                task.wait();
                            else
                                break;
                            end;
                        end;
                    end);
                end
            }, 
            Animation = 14494902453, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        ["Traditional Duel"] = {
            Keyframes = {
                ready = function(_, v1669) --[[ Line: 11861 ]]
                    -- upvalues: v75 (ref), v87 (ref), v101 (copy), l_TweenService_0 (ref)
                    local l_v75_0 = v75;
                    local v1671 = {
                        SoundId = "rbxassetid://15502708435"
                    };
                    local v1672 = 1.9;
                    local v1673 = 2.1;
                    if not v1673 and v1672 then
                        v1673 = v1672;
                        v1672 = 1;
                    end;
                    if not v1673 and not v1672 then
                        v1672 = 0;
                        v1673 = 1;
                    end;
                    v1671.Volume = v87:NextNumber(v1672, v1673);
                    v1671.Parent = v101.Torso;
                    l_v75_0(v1671):Play();
                    for _, v1675 in pairs(v1669) do
                        if typeof(v1675) == "Instance" and v1675:IsA("Sound") and v1675.SoundId == "rbxassetid://1843699308" then
                            l_TweenService_0:Create(v1675, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                                Volume = 0
                            }):Play();
                        end;
                    end;
                end, 
                shoot = function(v1676) --[[ Line: 11876 ]]
                    for _, v1678 in pairs(v1676.Revolver.Shoot:GetChildren()) do
                        v1678.Enabled = true;
                    end;
                    task.delay(0.05, function() --[[ Line: 11880 ]]
                        -- upvalues: v1676 (copy)
                        v1676.Revolver.Shoot:Destroy();
                    end);
                end, 
                away = function(v1679) --[[ Line: 11885 ]]
                    -- upvalues: l_TweenService_0 (ref)
                    l_TweenService_0:Create(v1679.Revolver.Gun.Mesh, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Scale = Vector3.new()
                    }):Play();
                end
            }, 
            Startup = function(v1680, _, v1682) --[[ Line: 11892 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1683 = game.ReplicatedStorage.Emotes.Revolver:Clone();
                v1683:SetAttribute("EmoteProperty", true);
                table.insert(v1680, v1683);
                v1682[v1683.Name] = v1683;
                local l_Handle_40 = v1683.Handle;
                l_Handle_40:SetAttribute("EmoteProperty", true);
                table.insert(v1680, l_Handle_40);
                v1682.md = l_Handle_40;
                v1683.Name = "Handle";
                l_Handle_40.Part0 = v101["Right Arm"];
                l_Handle_40.Part1 = v1683;
                l_Handle_40.C0 = CFrame.new(0, -1, -0.01);
                l_Handle_40.C1 = CFrame.new(0, 0, 0);
                v1683:FindFirstChildOfClass("Weld").C0 = CFrame.new(-0.245002747, -0.67500329, 0.100135803, 1, 0, -0, 0, 0, 1, 0, -1, 0);
                l_Handle_40.Parent = v101["Right Arm"];
                v1683.Parent = v101;
            end, 
            Dual = {
                DoBoth = false, 
                Dist = 16, 
                NoRotate = 10.3, 
                Callback = function(v1685, v1686, v1687, v1688) --[[ Line: 11910 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref)
                    local _, _ = v75({
                        SoundId = "rbxassetid://15502708235", 
                        Parent = v1685.Torso, 
                        Volume = 1
                    }):Play();
                    local _, _ = v75({
                        SoundId = "rbxassetid://15502708235", 
                        Parent = v1686.Torso, 
                        Volume = 1
                    }):Play();
                    local v1693, v1694 = v75({
                        SoundId = "rbxassetid://1843699308", 
                        CFrame = CFrame.new(), 
                        Volume = 1
                    });
                    table.insert(v1687, v1693);
                    v1693:Play();
                    v1694.Parent = v1685.PrimaryPart;
                    v1694.WorldPosition = (v1685.PrimaryPart.CFrame * CFrame.new(0, 0, -v1688 / 2)).Position;
                    v75({
                        SoundId = "rbxassetid://1842188393", 
                        Parent = v1694, 
                        Volume = 1
                    }):Play();
                end
            }, 
            HideWeapon = true, 
            FixRotation = true, 
            Fix = true, 
            Tag = "duelgun", 
            Animation = 15502751480, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Clap Clap"] = {
            Keyframes = {
                clap = function(v1695, _, v1697) --[[ Line: 11953 ]]
                    -- upvalues: v101 (copy), v1 (ref)
                    if not v1695.speed then
                        v1695.speed = 1;
                    end;
                    v1697:AdjustSpeed((math.clamp(v1695.speed, 1, 10)));
                    v1695.speed = v1695.speed + 0.025;
                    shared.sfx({
                        SoundId = "rbxassetid://9099667351", 
                        Parent = v101.PrimaryPart, 
                        RollOffMaxDistance = v1, 
                        Volume = 0.2
                    }):Play();
                end, 
                claploop = function() --[[ Line: 11969 ]]
                    -- upvalues: v101 (copy), v1 (ref)
                    shared.sfx({
                        SoundId = "rbxassetid://16038515606", 
                        Parent = v101.PrimaryPart, 
                        RollOffMaxDistance = v1, 
                        Volume = 0.2
                    }):Play();
                end, 
                snap = function() --[[ Line: 11978 ]]
                    -- upvalues: v101 (copy), v1 (ref)
                    shared.sfx({
                        SoundId = "rbxassetid://9099667351", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.2, 
                        RollOffMaxDistance = v1
                    }):Play();
                end
            }, 
            Startup = function() --[[ Line: 11988 ]] --[[ Name: Startup ]]

            end, 
            Dual = {
                DoBoth = false, 
                Dist = 3.5, 
                Callback = function(v1698, _, _, v1701) --[[ Line: 11995 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref)
                    local _, v1703 = v75({
                        SoundId = "rbxassetid://14519690317", 
                        CFrame = CFrame.new(), 
                        Volume = 1.5
                    });
                    v1703.Parent = v1698.PrimaryPart;
                    v1703.WorldPosition = (v1698.PrimaryPart.CFrame * CFrame.new(0, 0, -v1701 / 2)).Position;
                end
            }, 
            HideWeapon = true, 
            Infinite = true, 
            Tag = "ptycake", 
            Animation = 16038562573, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Rock Paper Scissor"] = {
            Keyframes = {
                show = function(_, v1705) --[[ Line: 12017 ]]
                    -- upvalues: v101 (copy), l_TweenService_0 (ref)
                    local v1706 = game.ReplicatedStorage.Emotes.RPS:Clone();
                    v1706:SetAttribute("EmoteProperty", true);
                    table.insert(v1705, v1706);
                    v1706.ImageLabel.Image = ({
                        "rbxassetid://14519869178", 
                        "rbxassetid://14519869488", 
                        "rbxassetid://14519869787"
                    })[math.random(1, 3)];
                    v1706.Parent = v101["Left Arm"];
                    v1706.Enabled = true;
                    task.delay(1, function() --[[ Line: 12029 ]]
                        -- upvalues: l_TweenService_0 (ref), v1706 (copy)
                        l_TweenService_0:Create(v1706.ImageLabel, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                            Size = UDim2.new(0, 0, 0, 0)
                        }):Play();
                    end);
                end
            }, 
            Startup = function() --[[ Line: 12037 ]] --[[ Name: Startup ]]

            end, 
            Dual = {
                DoBoth = false, 
                Dist = 7.2, 
                Callback = function(v1707, _, _, v1710) --[[ Line: 12044 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref)
                    local v1711, v1712 = v75({
                        SoundId = "rbxassetid://14519690317", 
                        CFrame = CFrame.new(), 
                        Volume = 1.5
                    });
                    task.delay(0.15, function() --[[ Line: 12051 ]]
                        -- upvalues: v1711 (copy)
                        if v1711.Parent then
                            v1711:Play();
                        end;
                    end);
                    v1712.Parent = v1707.PrimaryPart;
                    v1712.WorldPosition = (v1707.PrimaryPart.CFrame * CFrame.new(0, 0, -v1710 / 2)).Position;
                end
            }, 
            Tag = "rps", 
            Animation = 14519894954, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Steel = {
            Dual = {
                DoBoth = false, 
                Dist = 8, 
                NoRotate = 18.3, 
                Callback = function(v1713, _, v1715, _) --[[ Line: 12073 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref)
                    if not v1715.done then
                        v1715.done = true;
                        local l_AnimationPlayer_0 = require(v1713.CharacterHandler:WaitForChild("AnimationPlayer"));
                        l_AnimationPlayer_0 = function(v1718) --[[ Line: 12083 ]]
                            -- upvalues: l_AnimationPlayer_0 (copy), v1713 (copy)
                            return l_AnimationPlayer_0.playAnimation(v1713:FindFirstChild("Humanoid"), v1718);
                        end;
                        l_AnimationPlayer_0 = l_AnimationPlayer_0(15963617746);
                        l_AnimationPlayer_0.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_0:AdjustWeight(1);
                        l_AnimationPlayer_0:Play();
                        table.insert(v1715, l_AnimationPlayer_0);
                        local v1719, v1720 = v75({
                            SoundId = "rbxassetid://15963599920", 
                            CFrame = CFrame.new(), 
                            Volume = 1
                        });
                        table.insert(v1715, v1719);
                        v1719:Play();
                        v1720.Parent = v1713["Left Arm"];
                        return;
                    else
                        return;
                    end;
                end
            }, 
            Startup = function() --[[ Line: 12106 ]] --[[ Name: Startup ]]

            end, 
            Fix = true, 
            HideWeapon = true, 
            Tag = "steel", 
            Animation = 15963602367, 
            AnimationTwo = 15963617746, 
            Stun = "Freeze"
        }, 
        ["Friendly Hug"] = {
            Startup = function(_, _, _, _) --[[ Line: 12119 ]] --[[ Name: Startup ]]
                -- upvalues: v104 (copy)
                if v104 then
                    return;
                else
                    return;
                end;
            end, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17097669113", 
                    Volume = 1
                }
            }, 
            Dual = {
                DoBoth = false, 
                NoRotate = 0, 
                Freeze = false, 
                Attach = true, 
                RotateCheck = true, 
                Callback = function(v1725, v1726, v1727, _) --[[ Line: 12138 ]] --[[ Name: Callback ]]
                    -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v75 (ref)
                    if not v1727.done then
                        v1727.done = true;
                        local v1729 = shared.cfolder({
                            Name = "RootAnchor"
                        });
                        v1729.Parent = v1725;
                        table.insert(v1727, v1729);
                        l_CollectionService_1:AddTag(v1729, "RemoveOnLeave" .. (v104 or l_PlayerFromCharacter_0 or v1725).Name);
                        local v1730 = {};
                        local v1731 = {};
                        for _, v1733 in pairs({
                            v1725
                        }) do
                            table.insert(v1731, v1733.DescendantAdded:connect(function(v1734) --[[ Line: 12156 ]]
                                -- upvalues: v1730 (copy)
                                if v1734:IsA("BasePart") then
                                    v1734.CollisionGroup = "nocol";
                                    table.insert(v1730, v1734);
                                end;
                            end));
                            for _, v1736 in pairs(v1733:GetDescendants()) do
                                if v1736:IsA("BasePart") then
                                    v1736.CollisionGroup = "nocol";
                                    local v1737 = nil;
                                    v1737 = v1736:GetPropertyChangedSignal("CollisionGroup"):Connect(function() --[[ Line: 12167 ]]
                                        -- upvalues: v1736 (copy)
                                        if v1736.CollisionGroup ~= "nocol" then
                                            v1736.CollisionGroup = "nocol";
                                        end;
                                    end);
                                    table.insert(v1731, v1737);
                                    do
                                        local l_v1737_0 = v1737;
                                        task.delay(2, function() --[[ Line: 12174 ]]
                                            -- upvalues: l_v1737_0 (ref)
                                            if l_v1737_0 then
                                                return l_v1737_0:Disconnect();
                                            else
                                                return;
                                            end;
                                        end);
                                        table.insert(v1730, v1736);
                                    end;
                                end;
                            end;
                        end;
                        v1729:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 12185 ]]
                            -- upvalues: v1729 (copy), v1731 (copy), v1730 (copy)
                            if not v1729.Parent then
                                for _, v1740 in pairs(v1731) do
                                    v1740:Disconnect();
                                end;
                                for _, v1742 in pairs(v1730) do
                                    v1742.CollisionGroup = "playercol";
                                end;
                            end;
                        end);
                        l_CollectionService_1:AddTag(v1729, v1726.Name .. "carry");
                        local l_AnimationPlayer_1 = require(v1725.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_1_0 = l_AnimationPlayer_1 --[[ copy: 8 -> 18 ]];
                        local function v1746(v1745) --[[ Line: 12200 ]]
                            -- upvalues: l_l_AnimationPlayer_1_0 (copy), v1725 (copy)
                            return l_l_AnimationPlayer_1_0.playAnimation(v1725:FindFirstChild("Humanoid"), v1745);
                        end;
                        local l_AnimationPlayer_2 = require(v1726.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_2_0 = l_AnimationPlayer_2 --[[ copy: 9 -> 19 ]];
                        l_AnimationPlayer_1 = function(v1749) --[[ Line: 12209 ]]
                            -- upvalues: l_l_AnimationPlayer_2_0 (copy), v1726 (copy)
                            return l_l_AnimationPlayer_2_0.playAnimation(v1726:FindFirstChild("Humanoid"), v1749);
                        end;
                        l_AnimationPlayer_2 = l_AnimationPlayer_1(17097648428);
                        l_AnimationPlayer_2.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_2:AdjustWeight(1);
                        l_AnimationPlayer_2:Play();
                        table.insert(v1727, l_AnimationPlayer_2);
                        l_AnimationPlayer_1(17096821069):AdjustWeight(0.01);
                        table.insert(v1727, l_AnimationPlayer_2.Stopped:Once(function() --[[ Line: 12220 ]]
                            -- upvalues: l_AnimationPlayer_1 (copy)
                            l_AnimationPlayer_1(17097627771):Stop();
                        end));
                        local v1750 = v1746(17097651485);
                        v1750.Priority = Enum.AnimationPriority.Action4;
                        v1750:AdjustWeight(1);
                        v1750:Play();
                        table.insert(v1727, v1750);
                        v75({
                            SoundId = "rbxassetid://17097669243", 
                            Parent = v1726.Torso, 
                            Volume = 1
                        }):Play();
                        game.ReplicatedStorage.Replication:FireAllClients({
                            Effect = "Smooth Grab", 
                            CanBypass = true, 
                            Hit = v1725, 
                            StartOffset = v1725.PrimaryPart.CFrame, 
                            From = v1726.PrimaryPart, 
                            Offset = CFrame.new(0, 0, -3), 
                            Anchor = v1729
                        });
                        return;
                    else
                        return;
                    end;
                end
            }, 
            Keyframes = {
                freeze = function(_, _, v1753) --[[ Line: 12249 ]]
                    v1753:AdjustSpeed(0);
                end
            }, 
            HideWeapon = true, 
            Fix = true, 
            Looped = true, 
            Tag = "hug1", 
            Animation = 17097627771, 
            AnimationTwo = 17097651485, 
            Stun = "Freeze"
        }, 
        ["Fresh Cut"] = {
            Startup = function(v1754, _, v1756, _) --[[ Line: 12264 ]] --[[ Name: Startup ]]
                -- upvalues: v104 (copy), v75 (ref), v101 (copy)
                if v104 then
                    return;
                else
                    v75({
                        SoundId = "rbxassetid://17106578615", 
                        Parent = v101.PrimaryPart, 
                        Volume = 1
                    }):Play();
                    local v1758 = game.ReplicatedStorage.Emotes.CHAIRBASE:Clone();
                    v1758:SetAttribute("EmoteProperty", true);
                    table.insert(v1754, v1758);
                    v1756.Handle = v1758;
                    local l_Handle_41 = v1758.Handle;
                    l_Handle_41:SetAttribute("EmoteProperty", true);
                    table.insert(v1754, l_Handle_41);
                    v1756.md = l_Handle_41;
                    v1758.Name = "CHAIRBASE";
                    l_Handle_41.Part0 = v101.PrimaryPart;
                    l_Handle_41.Part1 = v1758;
                    l_Handle_41.Parent = v101.PrimaryPart;
                    v1758.Parent = v101;
                    local v1760 = game.ReplicatedStorage.Emotes.Clipper:Clone();
                    v1760:SetAttribute("EmoteProperty", true);
                    table.insert(v1754, v1760);
                    v1756.Handle = v1760;
                    local l_Handle_42 = v1760.Handle;
                    l_Handle_42:SetAttribute("EmoteProperty", true);
                    table.insert(v1754, l_Handle_42);
                    v1756.md = l_Handle_42;
                    v1760.Name = "Clipper";
                    l_Handle_42.Part0 = v101["Right Arm"];
                    l_Handle_42.Part1 = v1760;
                    l_Handle_42.Parent = v101["Right Arm"];
                    v1760.Parent = v101;
                    return;
                end;
            end, 
            Dual = {
                DoBoth = false, 
                NoRotate = 0, 
                Freeze = false, 
                Attach = true, 
                RotateCheck = true, 
                Callback = function(v1762, v1763, v1764, _) --[[ Line: 12298 ]] --[[ Name: Callback ]]
                    -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v75 (ref)
                    if not v1764.done then
                        v1764.done = true;
                        local v1766 = shared.cfolder({
                            Name = "RootAnchor"
                        });
                        v1766.Parent = v1762;
                        table.insert(v1764, v1766);
                        l_CollectionService_1:AddTag(v1766, "RemoveOnLeave" .. (v104 or l_PlayerFromCharacter_0 or v1762).Name);
                        local v1767 = {};
                        local v1768 = {};
                        for _, v1770 in pairs({
                            v1762
                        }) do
                            table.insert(v1768, v1770.DescendantAdded:connect(function(v1771) --[[ Line: 12315 ]]
                                -- upvalues: v1767 (copy)
                                if v1771:IsA("BasePart") then
                                    v1771.CollisionGroup = "nocol";
                                    table.insert(v1767, v1771);
                                end;
                            end));
                            for _, v1773 in pairs(v1770:GetDescendants()) do
                                if v1773:IsA("BasePart") then
                                    v1773.CollisionGroup = "nocol";
                                    table.insert(v1767, v1773);
                                end;
                            end;
                        end;
                        v1766:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 12330 ]]
                            -- upvalues: v1766 (copy), v1768 (copy), v1767 (copy)
                            if not v1766.Parent then
                                for _, v1775 in pairs(v1768) do
                                    v1775:Disconnect();
                                end;
                                for _, v1777 in pairs(v1767) do
                                    v1777.CollisionGroup = "playercol";
                                end;
                            end;
                        end);
                        l_CollectionService_1:AddTag(v1766, v1763.Name .. "barber");
                        v75({
                            SoundId = "rbxassetid://17106662871", 
                            Parent = v1762.Head, 
                            TimePosition = 0.15, 
                            Volume = 0.5
                        }):Resume();
                        local l_AnimationPlayer_3 = require(v1762.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_3_0 = l_AnimationPlayer_3 --[[ copy: 8 -> 17 ]];
                        local function v1781(v1780) --[[ Line: 12352 ]]
                            -- upvalues: l_l_AnimationPlayer_3_0 (copy), v1762 (copy)
                            return l_l_AnimationPlayer_3_0.playAnimation(v1762:FindFirstChild("Humanoid"), v1780);
                        end;
                        local l_AnimationPlayer_4 = require(v1763.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_4_0 = l_AnimationPlayer_4 --[[ copy: 9 -> 18 ]];
                        l_AnimationPlayer_3 = function(v1784) --[[ Line: 12360 ]]
                            -- upvalues: l_l_AnimationPlayer_4_0 (copy), v1763 (copy)
                            return l_l_AnimationPlayer_4_0.playAnimation(v1763:FindFirstChild("Humanoid"), v1784);
                        end;
                        l_AnimationPlayer_4 = l_AnimationPlayer_3(17106475377);
                        l_AnimationPlayer_4.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_4:AdjustWeight(1);
                        l_AnimationPlayer_4:Play(0);
                        table.insert(v1764, l_AnimationPlayer_4);
                        l_AnimationPlayer_3(17106466215):AdjustWeight(0.001);
                        v1781(17106466215):AdjustWeight(0.001);
                        local v1785 = false;
                        table.insert(v1764, l_AnimationPlayer_4.Stopped:Once(function() --[[ Line: 12374 ]]
                            -- upvalues: l_AnimationPlayer_3 (copy), v1781 (copy), v1785 (ref)
                            l_AnimationPlayer_3(17106466215):Stop(0);
                            v1781(17106466215):Stop(0);
                            v1785 = true;
                        end));
                        task.delay(9.3, function() --[[ Line: 12380 ]]
                            -- upvalues: v1785 (ref), l_AnimationPlayer_4 (copy), v1762 (copy)
                            if v1785 or not l_AnimationPlayer_4.IsPlaying then
                                return;
                            else
                                for _, v1787 in pairs(v1762:GetDescendants()) do
                                    if v1787:IsA("Accessory") and v1787:FindFirstChild("HairAttachment", true) then
                                        v1787:Destroy();
                                    end;
                                end;
                                local l_Children_0 = game.ReplicatedStorage.Emotes.Hairs:GetChildren();
                                l_Children_0 = l_Children_0[math.random(#l_Children_0)]:Clone();
                                v1762.Humanoid:AddAccessory(l_Children_0);
                                return;
                            end;
                        end);
                        local v1789 = v1781(17106484670);
                        v1789.Priority = Enum.AnimationPriority.Action4;
                        v1789:AdjustWeight(1);
                        v1789:Play(0);
                        table.insert(v1764, v1789);
                        game.ReplicatedStorage.Replication:FireAllClients({
                            Effect = "Smooth Grab", 
                            CanBypass = true, 
                            Hit = v1762, 
                            StartOffset = v1762.PrimaryPart.CFrame, 
                            From = v1763.PrimaryPart, 
                            NoLook = true, 
                            Offset = CFrame.new(-3, 0, 0), 
                            Anchor = v1766
                        });
                        return;
                    else
                        return;
                    end;
                end
            }, 
            Keyframes = {
                freeze = function(_, _, v1792) --[[ Line: 12413 ]]
                    v1792:AdjustSpeed(0);
                end
            }, 
            HideWeapon = true, 
            Fix = true, 
            Looped = true, 
            Tag = "barber1", 
            Animation = 17106466215, 
            AnimationTwo = 17106475377, 
            Stun = "Freeze"
        }, 
        ["Ping Pong"] = {
            Startup = function(v1793, _, v1795, _) --[[ Line: 12428 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v1797 = game.ReplicatedStorage.Emotes.Racket:Clone();
                v1797:SetAttribute("EmoteProperty", true);
                table.insert(v1793, v1797);
                v1795.Handle = v1797;
                local l_m6d_24 = v1797.m6d;
                l_m6d_24:SetAttribute("EmoteProperty", true);
                table.insert(v1793, l_m6d_24);
                v1795.md = l_m6d_24;
                l_m6d_24.Name = "Handle";
                l_m6d_24.Part0 = v101["Right Arm"];
                l_m6d_24.Part1 = v1797.Handle;
                l_m6d_24.Parent = v101["Right Arm"];
                v1797.Parent = v101;
            end, 
            Dual = {
                DoBoth = false, 
                NoRotate = 0, 
                Attach = true, 
                RotateCheck = true, 
                Callback = function(v1799, v1800, v1801, _, v1803) --[[ Line: 12443 ]] --[[ Name: Callback ]]
                    -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v75 (ref), v1 (ref)
                    if not v1801.done then
                        v1801.done = true;
                        local v1804 = shared.cfolder({
                            Name = "RootAnchor"
                        });
                        v1804.Parent = v1799;
                        table.insert(v1801, v1804);
                        l_CollectionService_1:AddTag(v1804, "RemoveOnLeave" .. (v104 or l_PlayerFromCharacter_0 or v1799).Name);
                        local v1805 = game.ReplicatedStorage.Emotes.TablePP:Clone();
                        v1805:SetAttribute("EmoteProperty", true);
                        table.insert(v1801, v1805);
                        v1803.Handle = v1805;
                        v1805.Name = "Table";
                        l_CollectionService_1:AddTag(v1805, "RemoveOnLeave" .. v1800.Name);
                        local l_Table_0 = v1805.Table;
                        l_Table_0:SetAttribute("EmoteProperty", true);
                        table.insert(v1801, l_Table_0);
                        v1803.md = l_Table_0;
                        l_Table_0.Part0 = v1800.PrimaryPart;
                        l_Table_0.Part1 = v1805;
                        l_Table_0.Parent = v1800.PrimaryPart;
                        l_CollectionService_1:AddTag(l_Table_0, "RemoveOnLeave" .. v1800.Name);
                        v1805.Parent = v1800;
                        v75({
                            SoundId = "rbxassetid://1837226630", 
                            Parent = v1805, 
                            Volume = 0.5
                        }):Play();
                        local v1807 = game.ReplicatedStorage.Emotes.Ball:Clone();
                        v1807:SetAttribute("EmoteProperty", true);
                        table.insert(v1801, v1807);
                        v1803.Handle = v1807;
                        l_CollectionService_1:AddTag(v1807, "RemoveOnLeave" .. v1800.Name);
                        local l_Ball_1 = v1807.Ball;
                        l_Ball_1:SetAttribute("EmoteProperty", true);
                        table.insert(v1801, l_Ball_1);
                        v1803.md = l_Ball_1;
                        l_Ball_1.Part0 = v1800.PrimaryPart;
                        l_Ball_1.Part1 = v1807;
                        l_Ball_1.Parent = v1800.PrimaryPart;
                        l_CollectionService_1:AddTag(l_Ball_1, "RemoveOnLeave" .. v1800.Name);
                        v1807.Parent = v1800;
                        local v1809 = {};
                        local v1810 = {};
                        for _, v1812 in pairs({
                            v1799
                        }) do
                            table.insert(v1810, v1812.DescendantAdded:connect(function(v1813) --[[ Line: 12485 ]]
                                -- upvalues: v1809 (copy)
                                if v1813:IsA("BasePart") then
                                    v1813.CollisionGroup = "nocol";
                                    table.insert(v1809, v1813);
                                end;
                            end));
                            for _, v1815 in pairs(v1812:GetDescendants()) do
                                if v1815:IsA("BasePart") then
                                    v1815.CollisionGroup = "nocol";
                                    table.insert(v1809, v1815);
                                end;
                            end;
                        end;
                        v1804:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 12500 ]]
                            -- upvalues: v1804 (copy), v1810 (copy), v1809 (copy)
                            if not v1804.Parent then
                                for _, v1817 in pairs(v1810) do
                                    v1817:Disconnect();
                                end;
                                for _, v1819 in pairs(v1809) do
                                    v1819.CollisionGroup = "playercol";
                                end;
                            end;
                        end);
                        l_CollectionService_1:AddTag(v1804, v1800.Name .. "barber");
                        local l_AnimationPlayer_5 = require(v1799.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_5_0 = l_AnimationPlayer_5 --[[ copy: 13 -> 22 ]];
                        local function v1823(v1822) --[[ Line: 12515 ]]
                            -- upvalues: l_l_AnimationPlayer_5_0 (copy), v1799 (copy)
                            return l_l_AnimationPlayer_5_0.playAnimation(v1799:FindFirstChild("Humanoid"), v1822);
                        end;
                        local l_AnimationPlayer_6 = require(v1800.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_6_0 = l_AnimationPlayer_6 --[[ copy: 14 -> 23 ]];
                        l_AnimationPlayer_5 = function(v1826) --[[ Line: 12523 ]]
                            -- upvalues: l_l_AnimationPlayer_6_0 (copy), v1800 (copy)
                            return l_l_AnimationPlayer_6_0.playAnimation(v1800:FindFirstChild("Humanoid"), v1826);
                        end;
                        l_AnimationPlayer_6 = l_AnimationPlayer_5(17108522793);
                        local v1827 = 1;
                        table.insert(v1801, l_AnimationPlayer_6:GetMarkerReachedSignal("clap"):Connect(function() --[[ Line: 12530 ]]
                            -- upvalues: v1807 (copy), v1 (ref), v1827 (ref), l_AnimationPlayer_5 (copy), v1823 (copy)
                            shared.sfx({
                                SoundId = ({
                                    "rbxassetid://17108510911", 
                                    "rbxassetid://17108511010", 
                                    "rbxassetid://17108511153"
                                })[math.random(1, 3)], 
                                Volume = 0.75, 
                                Parent = v1807, 
                                RollOffMaxDistance = v1
                            }):Play();
                            v1827 = math.clamp(v1827 + 0.005, 1, 10);
                            l_AnimationPlayer_5(17108522793):AdjustSpeed(v1827);
                            v1823(17108399691):AdjustSpeed(v1827);
                        end));
                        l_AnimationPlayer_6.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_6:AdjustWeight(1);
                        l_AnimationPlayer_6:Play(0);
                        table.insert(v1801, l_AnimationPlayer_6);
                        l_AnimationPlayer_5(17108345170):AdjustWeight(0.001);
                        v1823(17108345170):AdjustWeight(0.001);
                        local v1828 = v1823(17108399691);
                        v1828.Priority = Enum.AnimationPriority.Action4;
                        v1828:AdjustWeight(1);
                        v1828:Play(0);
                        table.insert(v1801, v1828);
                        game.ReplicatedStorage.Replication:FireAllClients({
                            Effect = "Smooth Grab", 
                            CanBypass = true, 
                            Hit = v1799, 
                            StartOffset = v1799.PrimaryPart.CFrame, 
                            From = v1800.PrimaryPart, 
                            Offset = CFrame.new(0, 0, -11.304), 
                            Anchor = v1804
                        });
                        return;
                    else
                        return;
                    end;
                end
            }, 
            HideWeapon = true, 
            Fix = true, 
            Looped = true, 
            Tag = "pingpong1", 
            Animation = 17108345170, 
            AnimationTwo = 17108399691, 
            Stun = "Freeze"
        }, 
        ["Duel Request"] = {
            Startup = function(_, _, _, _) --[[ Line: 12579 ]] --[[ Name: Startup ]]
                -- upvalues: v104 (copy)
                if v104 then
                    return;
                else
                    return;
                end;
            end, 
            Sounds = {
                [0] = {
                    SoundId = v104 and "rbxassetid://17466175687" or "rbxassetid://17466175395", 
                    ParentTorso = true, 
                    Volume = 1.5
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v1835) --[[ Line: 12594 ]]
                    v1835:AdjustSpeed(0);
                end
            }, 
            Dual = {
                DoBoth = false, 
                NoRotate = 0, 
                Freeze = false, 
                Attach = true, 
                CallOnAccept = true, 
                RotateCheck = true, 
                Callback = function(v1836, v1837, v1838, _) --[[ Line: 12606 ]] --[[ Name: Callback ]]
                    -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), l_TweenService_0 (ref)
                    if not v1838.done then
                        v1838.done = true;
                        local v1840 = shared.cfolder({
                            Name = "RootAnchor"
                        });
                        v1840.Parent = v1836;
                        table.insert(v1838, v1840);
                        l_CollectionService_1:AddTag(v1840, "RemoveOnLeave" .. (v104 or l_PlayerFromCharacter_0 or v1836).Name);
                        local v1841 = {};
                        local v1842 = {};
                        for _, v1844 in pairs({
                            v1836
                        }) do
                            table.insert(v1842, v1844.DescendantAdded:connect(function(v1845) --[[ Line: 12623 ]]
                                -- upvalues: v1841 (copy)
                                if v1845:IsA("BasePart") then
                                    v1845.CollisionGroup = "nocol";
                                    table.insert(v1841, v1845);
                                end;
                            end));
                            for _, v1847 in pairs(v1844:GetDescendants()) do
                                if v1847:IsA("BasePart") then
                                    v1847.CollisionGroup = "nocol";
                                    table.insert(v1841, v1847);
                                end;
                            end;
                        end;
                        v1840:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 12638 ]]
                            -- upvalues: v1840 (copy), v1842 (copy), v1841 (copy)
                            if not v1840.Parent then
                                for _, v1849 in pairs(v1842) do
                                    v1849:Disconnect();
                                end;
                                for _, v1851 in pairs(v1841) do
                                    v1851.CollisionGroup = "playercol";
                                end;
                            end;
                        end);
                        l_CollectionService_1:AddTag(v1840, v1837.Name .. "carry");
                        local l_AnimationPlayer_7 = require(v1836.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local function v1854(v1853) --[[ Line: 12653 ]]
                            -- upvalues: l_AnimationPlayer_7 (copy), v1836 (copy)
                            return l_AnimationPlayer_7.playAnimation(v1836:FindFirstChild("Humanoid"), v1853);
                        end;
                        local l_AnimationPlayer_8 = require(v1837.CharacterHandler:WaitForChild("AnimationPlayer"));
                        l_AnimationPlayer_8 = function(v1856) --[[ Line: 12661 ]]
                            -- upvalues: l_AnimationPlayer_8 (copy), v1837 (copy)
                            return l_AnimationPlayer_8.playAnimation(v1837:FindFirstChild("Humanoid"), v1856);
                        end;
                        l_AnimationPlayer_8 = l_AnimationPlayer_8(17465453123);
                        l_AnimationPlayer_8.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_8:AdjustWeight(1);
                        l_AnimationPlayer_8:Play();
                        table.insert(v1838, l_AnimationPlayer_8);
                        task.delay(1.2, function() --[[ Line: 12672 ]]
                            -- upvalues: l_AnimationPlayer_8 (copy), v1836 (copy), v1837 (copy)
                            if l_AnimationPlayer_8.IsPlaying then
                                shared.sfx({
                                    SoundId = "rbxassetid://17466175248", 
                                    CFrame = CFrame.new((v1836.PrimaryPart.Position + v1837.PrimaryPart.Position) / 2), 
                                    Volume = 2
                                }):Play();
                            end;
                        end);
                        local v1857 = v1854(17465871318);
                        v1857.Priority = Enum.AnimationPriority.Action4;
                        v1857:AdjustWeight(1);
                        v1857:Play();
                        table.insert(v1838, v1857);
                        task.delay(2.833, function() --[[ Line: 12688 ]]
                            -- upvalues: v1838 (copy), l_AnimationPlayer_8 (copy), v1857 (copy), l_TweenService_0 (ref)
                            local l_NumberValue_0 = Instance.new("NumberValue");
                            l_NumberValue_0.Value = 1;
                            table.insert(v1838, l_NumberValue_0);
                            table.insert(v1838, l_NumberValue_0:GetPropertyChangedSignal("Value"):Connect(function() --[[ Line: 12692 ]]
                                -- upvalues: l_AnimationPlayer_8 (ref), l_NumberValue_0 (copy), v1857 (ref)
                                l_AnimationPlayer_8:AdjustSpeed(l_NumberValue_0.Value);
                                v1857:AdjustSpeed(l_NumberValue_0.Value);
                            end));
                            l_TweenService_0:Create(l_NumberValue_0, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Value = 0
                            }):Play();
                        end);
                        game.ReplicatedStorage.Replication:FireAllClients({
                            Effect = "Smooth Grab", 
                            CanBypass = true, 
                            Hit = v1836, 
                            StartOffset = v1836.PrimaryPart.CFrame, 
                            From = v1837.PrimaryPart, 
                            Offset = CFrame.new(0, 0, -4.5), 
                            Anchor = v1840
                        });
                        return;
                    else
                        return;
                    end;
                end
            }, 
            HideWeapon = true, 
            Fix = true, 
            Looped = true, 
            Tag = "duelreq", 
            Animation = 17464923657, 
            AnimationTwo = 17465871318, 
            Stun = "Freeze"
        }, 
        Swerve = {
            Startup = function(_, _, _, _) --[[ Line: 12724 ]] --[[ Name: Startup ]]
                -- upvalues: v104 (copy)
                if v104 then
                    return;
                else
                    return;
                end;
            end, 
            Dual = {
                DoBoth = false, 
                NoRotate = 0, 
                Freeze = false, 
                Attach = true, 
                Distance = 3, 
                RotateCheck = true, 
                Callback = function(v1863, v1864, v1865, _) --[[ Line: 12737 ]] --[[ Name: Callback ]]
                    -- upvalues: l_CollectionService_1 (ref), v75 (ref)
                    if not v1865.done then
                        v1865.done = true;
                        l_CollectionService_1:AddTag(anchor, v1864.Name .. "carry");
                        local l_AnimationPlayer_9 = require(v1863.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_9_0 = l_AnimationPlayer_9 --[[ copy: 5 -> 8 ]];
                        local function v1870(v1869) --[[ Line: 12756 ]]
                            -- upvalues: l_l_AnimationPlayer_9_0 (copy), v1863 (copy)
                            return l_l_AnimationPlayer_9_0.playAnimation(v1863:FindFirstChild("Humanoid"), v1869);
                        end;
                        local l_AnimationPlayer_10 = require(v1864.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_10_0 = l_AnimationPlayer_10 --[[ copy: 6 -> 9 ]];
                        l_AnimationPlayer_9 = function(v1873) --[[ Line: 12764 ]]
                            -- upvalues: l_l_AnimationPlayer_10_0 (copy), v1864 (copy)
                            return l_l_AnimationPlayer_10_0.playAnimation(v1864:FindFirstChild("Humanoid"), v1873);
                        end;
                        l_AnimationPlayer_10 = l_AnimationPlayer_9(72439513503134);
                        l_AnimationPlayer_10.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_10:AdjustWeight(1);
                        l_AnimationPlayer_10:Play();
                        table.insert(v1865, l_AnimationPlayer_10);
                        v1870(83001379083977):AdjustWeight(0.01);
                        l_AnimationPlayer_9(83001379083977):AdjustWeight(0.01);
                        table.insert(v1865, l_AnimationPlayer_10.Stopped:Once(function() --[[ Line: 12777 ]]
                            -- upvalues: l_AnimationPlayer_9 (copy)
                            l_AnimationPlayer_9(83001379083977):Stop(0);
                        end));
                        local v1874 = v1870(90129590700134);
                        v1874.Priority = Enum.AnimationPriority.Action4;
                        v1874:AdjustWeight(1);
                        v1874:Play();
                        table.insert(v1865, v1874);
                        v75({
                            SoundId = "rbxassetid://94760577993598", 
                            Parent = v1864.Torso, 
                            Volume = 1
                        }):Play();
                        return;
                    else
                        return;
                    end;
                end
            }, 
            HideWeapon = true, 
            Fix = true, 
            Looped = true, 
            Tag = "swerveee", 
            Animation = 83001379083977, 
            AnimationTwo = 17096829509, 
            Stun = "Freeze"
        }, 
        ["Bizarre Duo"] = {
            Startup = function(_, _, _, _) --[[ Line: 12805 ]] --[[ Name: Startup ]]
                -- upvalues: v104 (copy)
                if v104 then
                    return;
                else
                    return;
                end;
            end, 
            Dual = {
                DoBoth = false, 
                NoRotate = 0, 
                Freeze = false, 
                Dist = CFrame.new(3.75712967, 0, 0.85508728), 
                NoLook = true, 
                Attach = true, 
                RotateCheck = true, 
                Callback = function(v1879, v1880, v1881, _, _, v1884) --[[ Line: 12819 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref)
                    if not v1881.done then
                        v1881.done = true;
                        local l_AnimationPlayer_11 = require(v1879.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_11_0 = l_AnimationPlayer_11 --[[ copy: 7 -> 11 ]];
                        local function v1888(v1887) --[[ Line: 12829 ]]
                            -- upvalues: l_l_AnimationPlayer_11_0 (copy), v1879 (copy)
                            return l_l_AnimationPlayer_11_0.playAnimation(v1879:FindFirstChild("Humanoid"), v1887);
                        end;
                        local l_AnimationPlayer_12 = require(v1880.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_12_0 = l_AnimationPlayer_12 --[[ copy: 8 -> 12 ]];
                        l_AnimationPlayer_11 = function(v1891) --[[ Line: 12837 ]]
                            -- upvalues: l_l_AnimationPlayer_12_0 (copy), v1880 (copy)
                            return l_l_AnimationPlayer_12_0.playAnimation(v1880:FindFirstChild("Humanoid"), v1891);
                        end;
                        l_AnimationPlayer_12 = l_AnimationPlayer_11(114351492594331);
                        l_AnimationPlayer_12.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_12:AdjustWeight(1);
                        l_AnimationPlayer_12:Play();
                        table.insert(v1881, l_AnimationPlayer_12);
                        v1888(109864108341281):AdjustWeight(0.01);
                        l_AnimationPlayer_11(109864108341281):AdjustWeight(0.01);
                        table.insert(v1881, l_AnimationPlayer_12.Stopped:Once(function() --[[ Line: 12849 ]]
                            -- upvalues: l_AnimationPlayer_11 (copy), v1881 (copy), v1888 (copy)
                            local v1892 = l_AnimationPlayer_11(114307604981653);
                            table.insert(v1881, v1892);
                            v1892:Play();
                            local v1893 = v1888(119026456567237);
                            table.insert(v1881, v1893);
                            v1893:Play();
                        end));
                        local v1894 = v1888(136739918287439);
                        v1894.Priority = Enum.AnimationPriority.Action4;
                        v1894:AdjustWeight(1);
                        v1894:Play();
                        table.insert(v1881, v1894);
                        task.delay(0.917, function() --[[ Line: 12862 ]]
                            -- upvalues: v1884 (copy), v1881 (copy), v1880 (copy)
                            if v1884.interrupted then
                                return;
                            else
                                local l_Attachment_11 = Instance.new("Attachment");
                                l_Attachment_11:SetAttribute("EmoteProperty", true);
                                table.insert(v1881, l_Attachment_11);
                                l_Attachment_11.Parent = v1880["Right Arm"];
                                l_Attachment_11.Position = Vector3.new(0.5, -1, -0, 0);
                                for _, v1897 in pairs(game.ReplicatedStorage.Emotes.FistTouch:GetChildren()) do
                                    v1897:Clone().Parent = l_Attachment_11;
                                end;
                                for _, v1899 in pairs(l_Attachment_11:GetChildren()) do
                                    v1899:Emit(v1899:GetAttribute("EmitCount"));
                                end;
                                return;
                            end;
                        end);
                        task.delay(1.667, function() --[[ Line: 12875 ]]
                            -- upvalues: v1884 (copy), v1881 (copy), v1880 (copy)
                            if v1884.interrupted then
                                return;
                            else
                                local v1900 = game.ReplicatedStorage.Emotes.Menacing:Clone();
                                v1900:SetAttribute("EmoteProperty", true);
                                table.insert(v1881, v1900);
                                local l_Weld_8 = Instance.new("Weld");
                                l_Weld_8.Part0 = v1880.PrimaryPart;
                                l_Weld_8.Part1 = v1900;
                                l_Weld_8.C0 = CFrame.new(1.75713348, 0.5, 1.35508728);
                                l_Weld_8.Parent = v1900;
                                v1900.Parent = v1880;
                                for _, v1903 in pairs(v1900:GetDescendants()) do
                                    if v1903:IsA("ParticleEmitter") then
                                        v1903:Emit(v1903:GetAttribute("EmitCount"));
                                    end;
                                end;
                                return;
                            end;
                        end);
                        local l_Attachment_12 = Instance.new("Attachment");
                        l_Attachment_12:SetAttribute("EmoteProperty", true);
                        table.insert(v1881, l_Attachment_12);
                        l_Attachment_12.Parent = v1880.PrimaryPart;
                        l_Attachment_12.Position = Vector3.new(2.325000047683716, 0, 0.20900000631809235, 0);
                        v75({
                            SoundId = "rbxassetid://76338639500620", 
                            Parent = l_Attachment_12, 
                            Volume = 0.5
                        }):Play();
                        return;
                    else
                        return;
                    end;
                end
            }, 
            HideWeapon = true, 
            Fix = true, 
            Looped = true, 
            Tag = "dance1", 
            Animation = 109864108341281, 
            AnimationTwo = 1, 
            Stun = "Freeze"
        }, 
        Dance = {
            Startup = function(_, _, _, _) --[[ Line: 12914 ]] --[[ Name: Startup ]]
                -- upvalues: v104 (copy)
                if v104 then
                    return;
                else
                    return;
                end;
            end, 
            Dual = {
                DoBoth = false, 
                NoRotate = 0, 
                Freeze = false, 
                Attach = true, 
                RotateCheck = true, 
                Callback = function(v1909, v1910, v1911, _) --[[ Line: 12926 ]] --[[ Name: Callback ]]
                    -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v75 (ref)
                    if not v1911.done then
                        v1911.done = true;
                        local v1913 = shared.cfolder({
                            Name = "RootAnchor"
                        });
                        v1913.Parent = v1909;
                        table.insert(v1911, v1913);
                        l_CollectionService_1:AddTag(v1913, "RemoveOnLeave" .. (v104 or l_PlayerFromCharacter_0 or v1909).Name);
                        local v1914 = {};
                        local v1915 = {};
                        for _, v1917 in pairs({
                            v1909
                        }) do
                            table.insert(v1915, v1917.DescendantAdded:connect(function(v1918) --[[ Line: 12943 ]]
                                -- upvalues: v1914 (copy)
                                if v1918:IsA("BasePart") then
                                    v1918.CollisionGroup = "nocol";
                                    table.insert(v1914, v1918);
                                end;
                            end));
                            for _, v1920 in pairs(v1917:GetDescendants()) do
                                if v1920:IsA("BasePart") then
                                    v1920.CollisionGroup = "nocol";
                                    table.insert(v1914, v1920);
                                end;
                            end;
                        end;
                        v1913:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 12958 ]]
                            -- upvalues: v1913 (copy), v1915 (copy), v1914 (copy)
                            if not v1913.Parent then
                                for _, v1922 in pairs(v1915) do
                                    v1922:Disconnect();
                                end;
                                for _, v1924 in pairs(v1914) do
                                    v1924.CollisionGroup = "playercol";
                                end;
                            end;
                        end);
                        l_CollectionService_1:AddTag(v1913, v1910.Name .. "carry");
                        v75({
                            SoundId = "rbxassetid://17096532969", 
                            Parent = v1910.PrimaryPart, 
                            Looped = true, 
                            Volume = 0.5
                        }):Play();
                        local l_AnimationPlayer_13 = require(v1909.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_13_0 = l_AnimationPlayer_13 --[[ copy: 8 -> 17 ]];
                        local function v1928(v1927) --[[ Line: 12980 ]]
                            -- upvalues: l_l_AnimationPlayer_13_0 (copy), v1909 (copy)
                            return l_l_AnimationPlayer_13_0.playAnimation(v1909:FindFirstChild("Humanoid"), v1927);
                        end;
                        local l_AnimationPlayer_14 = require(v1910.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_14_0 = l_AnimationPlayer_14 --[[ copy: 9 -> 18 ]];
                        l_AnimationPlayer_13 = function(v1931) --[[ Line: 12988 ]]
                            -- upvalues: l_l_AnimationPlayer_14_0 (copy), v1910 (copy)
                            return l_l_AnimationPlayer_14_0.playAnimation(v1910:FindFirstChild("Humanoid"), v1931);
                        end;
                        l_AnimationPlayer_14 = l_AnimationPlayer_13(17096828632);
                        l_AnimationPlayer_14.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_14:AdjustWeight(1);
                        l_AnimationPlayer_14:Play();
                        table.insert(v1911, l_AnimationPlayer_14);
                        v1928(17096821069):AdjustWeight(0.01);
                        l_AnimationPlayer_13(17096821069):AdjustWeight(0.01);
                        table.insert(v1911, l_AnimationPlayer_14.Stopped:Once(function() --[[ Line: 13000 ]]
                            -- upvalues: l_AnimationPlayer_13 (copy)
                            l_AnimationPlayer_13(17096821069):Stop(0);
                        end));
                        local v1932 = v1928(17096829509);
                        v1932.Priority = Enum.AnimationPriority.Action4;
                        v1932:AdjustWeight(1);
                        v1932:Play();
                        table.insert(v1911, v1932);
                        v75({
                            SoundId = "rbxassetid://17096893930", 
                            Parent = v1910.Torso, 
                            Volume = 1
                        }):Play();
                        game.ReplicatedStorage.Replication:FireAllClients({
                            Effect = "Smooth Grab", 
                            CanBypass = true, 
                            Hit = v1909, 
                            StartOffset = v1909.PrimaryPart.CFrame, 
                            From = v1910.PrimaryPart, 
                            Offset = CFrame.new(0, 0, -3), 
                            Anchor = v1913
                        });
                        return;
                    else
                        return;
                    end;
                end
            }, 
            HideWeapon = true, 
            Fix = true, 
            Looped = true, 
            Tag = "dance1", 
            Animation = 17096821069, 
            AnimationTwo = 17096829509, 
            Stun = "Freeze"
        }, 
        Drag = {
            Startup = function(v1933, _, v1935, _) --[[ Line: 13038 ]] --[[ Name: Startup ]]
                -- upvalues: v104 (copy), l_CollectionService_1 (ref), v101 (copy)
                if v104 then
                    return;
                else
                    local v1937 = shared.cfolder({
                        Name = "Freeze"
                    });
                    if not v1935.stun then
                        v1935.stun = {};
                    end;
                    table.insert(v1935.stun, v1937);
                    table.insert(v1933, v1937);
                    v1937:SetAttribute("DontInterrupt", true);
                    v1937:SetAttribute("NoStop", true);
                    v1937:SetAttribute("EmoteProperty", true);
                    l_CollectionService_1:AddTag(v1937, "Startupstun" .. v101.Name);
                    task.delay(0, function() --[[ Line: 13056 ]]
                        -- upvalues: v1937 (copy), v101 (ref)
                        v1937.Parent = v101;
                    end);
                    return;
                end;
            end, 
            Dual = {
                DoBoth = false, 
                NoRotate = 0, 
                CanRotate = 0, 
                Attach = true, 
                Dead = true, 
                RotateCheck = true, 
                Callback = function(v1938, v1939, v1940, _, _) --[[ Line: 13068 ]] --[[ Name: Callback ]]
                    -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v75 (ref)
                    task.delay(0.03, function() --[[ Line: 13069 ]]
                        -- upvalues: l_CollectionService_1 (ref), v1939 (copy)
                        for _, v1944 in pairs(l_CollectionService_1:GetTagged("Startupstun" .. v1939.Name)) do
                            game:GetService("Debris"):AddItem(v1944, 0);
                        end;
                    end);
                    if not v1940.done then
                        v1940.done = true;
                        local v1945 = shared.cfolder({
                            Name = "RootAnchor"
                        });
                        v1945.Parent = v1938;
                        table.insert(v1940, v1945);
                        l_CollectionService_1:AddTag(v1945, "RemoveOnLeave" .. (v104 or l_PlayerFromCharacter_0 or v1938).Name);
                        local v1946 = {};
                        local v1947 = {};
                        for _, v1949 in pairs({
                            v1938
                        }) do
                            table.insert(v1947, v1949.DescendantAdded:connect(function(v1950) --[[ Line: 13091 ]]
                                -- upvalues: v1946 (copy)
                                if v1950:IsA("BasePart") then
                                    v1950.CollisionGroup = "nocol";
                                    table.insert(v1946, v1950);
                                end;
                            end));
                            for _, v1952 in pairs(v1949:GetDescendants()) do
                                if v1952:IsA("BasePart") then
                                    v1952.CollisionGroup = "nocol";
                                    table.insert(v1946, v1952);
                                end;
                            end;
                        end;
                        v1945:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 13106 ]]
                            -- upvalues: v1945 (copy), v1947 (copy), v1946 (copy)
                            if not v1945.Parent then
                                for _, v1954 in pairs(v1947) do
                                    v1954:Disconnect();
                                end;
                                for _, v1956 in pairs(v1946) do
                                    v1956.CollisionGroup = "playercol";
                                end;
                            end;
                        end);
                        l_CollectionService_1:AddTag(v1945, v1939.Name .. "carry");
                        local v1957 = v75({
                            SoundId = "rbxassetid://17120622268", 
                            Parent = v1938.Torso, 
                            Looped = true, 
                            Volume = 0.2
                        });
                        v1957:Play();
                        l_CollectionService_1:AddTag(v1957, "RemoveOnLeave" .. v1938.Name);
                        l_CollectionService_1:AddTag(v1957, "RemoveOnLeave" .. v1939.Name);
                        local l_AnimationPlayer_15 = require(v1938.CharacterHandler:WaitForChild("AnimationPlayer"));
                        l_AnimationPlayer_15 = function(v1959) --[[ Line: 13130 ]]
                            -- upvalues: l_AnimationPlayer_15 (copy), v1938 (copy)
                            return l_AnimationPlayer_15.playAnimation(v1938:FindFirstChild("Humanoid"), v1959);
                        end;
                        l_AnimationPlayer_15 = l_AnimationPlayer_15(17120643504);
                        l_AnimationPlayer_15.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_15:AdjustWeight(1);
                        l_AnimationPlayer_15:Play();
                        table.insert(v1940, l_AnimationPlayer_15);
                        game.ReplicatedStorage.Replication:FireAllClients({
                            Effect = "Smooth Grab", 
                            CanBypass = true, 
                            Hit = v1938, 
                            NoLook = true, 
                            From = v1939.PrimaryPart, 
                            Offset = CFrame.new(-0.5, 0, -0.025), 
                            Anchor = v1945
                        });
                        return;
                    else
                        return;
                    end;
                end
            }, 
            Keyframes = {
                clap = function() --[[ Line: 13154 ]]
                    -- upvalues: v104 (copy), v75 (ref), v1 (ref)
                    if not v104 then
                        return;
                    else
                        v75({
                            SoundId = "rbxassetid://" .. ({
                                7455224144, 
                                7455246815, 
                                7455224490
                            })[math.random(1, 3)], 
                            Parent = v104["Left Leg"], 
                            PlaybackSpeed = 1, 
                            Volume = 0.6, 
                            RollOffMaxDistance = v1
                        }):Play();
                        return;
                    end;
                end
            }, 
            HideWeapon = true, 
            Fix = true, 
            Tag = "drag1", 
            Animation = 17120635926, 
            AnimationTwo = 17120643504, 
            Infinite = true, 
            Looped = true, 
            Stun = "Slowed", 
            StunAttribute = 1.5
        }, 
        Carry = {
            Startup = function(v1960, _, v1962, _) --[[ Line: 13180 ]] --[[ Name: Startup ]]
                -- upvalues: v104 (copy), l_CollectionService_1 (ref), v101 (copy)
                if v104 then
                    return;
                else
                    local v1964 = shared.cfolder({
                        Name = "Freeze"
                    });
                    if not v1962.stun then
                        v1962.stun = {};
                    end;
                    table.insert(v1962.stun, v1964);
                    table.insert(v1960, v1964);
                    v1964:SetAttribute("DontInterrupt", true);
                    v1964:SetAttribute("NoStop", true);
                    v1964:SetAttribute("EmoteProperty", true);
                    l_CollectionService_1:AddTag(v1964, "Startupstun" .. v101.Name);
                    print(v101);
                    task.delay(0, function() --[[ Line: 13198 ]]
                        -- upvalues: v1964 (copy), v101 (ref)
                        v1964.Parent = v101;
                    end);
                    return;
                end;
            end, 
            Dual = {
                DoBoth = false, 
                NoRotate = 0, 
                CanRotate = 0, 
                Attach = true, 
                Dead = true, 
                RotateCheck = true, 
                Callback = function(v1965, v1966, v1967, _, _) --[[ Line: 13210 ]] --[[ Name: Callback ]]
                    -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v75 (ref)
                    task.delay(0.03, function() --[[ Line: 13211 ]]
                        -- upvalues: l_CollectionService_1 (ref), v1966 (copy)
                        for _, v1971 in pairs(l_CollectionService_1:GetTagged("Startupstun" .. v1966.Name)) do
                            game:GetService("Debris"):AddItem(v1971, 0);
                        end;
                    end);
                    if not v1967.done then
                        v1967.done = true;
                        local v1972 = shared.cfolder({
                            Name = "RootAnchor"
                        });
                        v1972.Parent = v1965;
                        table.insert(v1967, v1972);
                        l_CollectionService_1:AddTag(v1972, "RemoveOnLeave" .. (v104 or l_PlayerFromCharacter_0 or v1965).Name);
                        local v1973 = {};
                        local v1974 = {};
                        for _, v1976 in pairs({
                            v1965
                        }) do
                            table.insert(v1974, v1976.DescendantAdded:connect(function(v1977) --[[ Line: 13233 ]]
                                -- upvalues: v1973 (copy)
                                if v1977:IsA("BasePart") then
                                    v1977.CollisionGroup = "nocol";
                                    table.insert(v1973, v1977);
                                end;
                            end));
                            for _, v1979 in pairs(v1976:GetDescendants()) do
                                if v1979:IsA("BasePart") then
                                    v1979.CollisionGroup = "nocol";
                                    table.insert(v1973, v1979);
                                end;
                            end;
                        end;
                        v1972:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 13248 ]]
                            -- upvalues: v1972 (copy), v1974 (copy), v1973 (copy)
                            if not v1972.Parent then
                                for _, v1981 in pairs(v1974) do
                                    v1981:Disconnect();
                                end;
                                for _, v1983 in pairs(v1973) do
                                    v1983.CollisionGroup = "playercol";
                                end;
                            end;
                        end);
                        l_CollectionService_1:AddTag(v1972, v1966.Name .. "carry");
                        v75({
                            SoundId = "rbxassetid://17096532969", 
                            Parent = v1966.PrimaryPart, 
                            Looped = true, 
                            Volume = 0.5
                        }):Play();
                        local l_AnimationPlayer_16 = require(v1965.CharacterHandler:WaitForChild("AnimationPlayer"));
                        l_AnimationPlayer_16 = function(v1985) --[[ Line: 13270 ]]
                            -- upvalues: l_AnimationPlayer_16 (copy), v1965 (copy)
                            return l_AnimationPlayer_16.playAnimation(v1965:FindFirstChild("Humanoid"), v1985);
                        end;
                        l_AnimationPlayer_16 = l_AnimationPlayer_16(17096487990);
                        l_AnimationPlayer_16.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_16:AdjustWeight(1);
                        l_AnimationPlayer_16:Play();
                        table.insert(v1967, l_AnimationPlayer_16);
                        game.ReplicatedStorage.Replication:FireAllClients({
                            Effect = "Smooth Grab", 
                            CanBypass = true, 
                            Hit = v1965, 
                            From = v1966.PrimaryPart, 
                            Offset = CFrame.new(0, 0, -3), 
                            Anchor = v1972
                        });
                        return;
                    else
                        return;
                    end;
                end
            }, 
            Keyframes = {}, 
            HideWeapon = true, 
            Fix = true, 
            Tag = "carry1", 
            Animation = 17096486393, 
            AnimationTwo = 17096487990, 
            Infinite = true, 
            Looped = true, 
            Stun = "Slowed", 
            StunAttribute = 1.5
        }, 
        ["Cart Ride"] = {
            Startup = function(v1986, _, v1988, _) --[[ Line: 13308 ]] --[[ Name: Startup ]]
                -- upvalues: v104 (copy), v101 (copy), v1 (ref)
                if v104 then
                    return;
                else
                    local v1990 = game.ReplicatedStorage.Emotes.cart:Clone();
                    v1990:SetAttribute("EmoteProperty", true);
                    table.insert(v1986, v1990);
                    v1988.Handle = v1990;
                    local l_cart_0 = v1990.cart;
                    l_cart_0:SetAttribute("EmoteProperty", true);
                    table.insert(v1986, l_cart_0);
                    v1988.md = l_cart_0;
                    v1990.Name = "cart";
                    l_cart_0.Part0 = v101.PrimaryPart;
                    l_cart_0.Part1 = v1990;
                    l_cart_0.Parent = v101.PrimaryPart;
                    v1990.Parent = v101;
                    shared.sfx({
                        SoundId = "rbxassetid://15989599068", 
                        Parent = v1990, 
                        Looped = true, 
                        Volume = 0.5, 
                        RollOffMaxDistance = v1
                    }):Play();
                    local l_ForceField_2 = v101:FindFirstChildOfClass("ForceField");
                    local v1993 = false;
                    if workspace:GetAttribute("GameStarted") or not workspace:GetAttribute("RankedOnes") then
                        v1993 = true;
                    end;
                    if l_ForceField_2 and l_ForceField_2:GetAttribute("Emote") then
                        v1993 = false;
                    end;
                    if v1993 then
                        v1988.first = 0;
                        local l_BodyVelocity_2 = Instance.new("BodyVelocity");
                        l_BodyVelocity_2:SetAttribute("EmoteProperty", true);
                        table.insert(v1986, l_BodyVelocity_2);
                        v1988.BV = l_BodyVelocity_2;
                        l_BodyVelocity_2.Name = "moveme";
                        l_BodyVelocity_2.MaxForce = Vector3.new(40000, 0, 40000, 0);
                        l_BodyVelocity_2:SetAttribute("Speed", 6);
                        l_BodyVelocity_2:SetAttribute("Goto", 6);
                        l_BodyVelocity_2:SetAttribute("RayCheck", true);
                        l_BodyVelocity_2:SetAttribute("End", 1);
                        l_BodyVelocity_2:SetAttribute("Fallout", 0.995);
                        l_BodyVelocity_2.Parent = v101.PrimaryPart;
                    end;
                    return;
                end;
            end, 
            Dual = {
                DoBoth = false, 
                NoRotate = 0, 
                Freeze = false, 
                Attach = true, 
                RotateCheck = true, 
                Callback = function(v1995, v1996, v1997, _) --[[ Line: 13357 ]] --[[ Name: Callback ]]
                    -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy)
                    if not v1997.done then
                        v1997.done = true;
                        local v1999 = shared.cfolder({
                            Name = "RootAnchor"
                        });
                        v1999.Parent = v1995;
                        table.insert(v1997, v1999);
                        l_CollectionService_1:AddTag(v1999, "RemoveOnLeave" .. (v104 or l_PlayerFromCharacter_0 or v1995).Name);
                        local v2000 = {};
                        local v2001 = {};
                        for _, v2003 in pairs({
                            v1995
                        }) do
                            table.insert(v2001, v2003.DescendantAdded:connect(function(v2004) --[[ Line: 13374 ]]
                                -- upvalues: v2000 (copy)
                                if v2004:IsA("BasePart") then
                                    v2004.CollisionGroup = "nocol";
                                    table.insert(v2000, v2004);
                                end;
                            end));
                            for _, v2006 in pairs(v2003:GetDescendants()) do
                                if v2006:IsA("BasePart") then
                                    v2006.CollisionGroup = "nocol";
                                    table.insert(v2000, v2006);
                                end;
                            end;
                        end;
                        v1999:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 13389 ]]
                            -- upvalues: v1999 (copy), v2001 (copy), v2000 (copy)
                            if not v1999.Parent then
                                for _, v2008 in pairs(v2001) do
                                    v2008:Disconnect();
                                end;
                                for _, v2010 in pairs(v2000) do
                                    v2010.CollisionGroup = "playercol";
                                end;
                            end;
                        end);
                        l_CollectionService_1:AddTag(v1999, v1996.Name .. "cartride");
                        local l_AnimationPlayer_17 = require(v1995.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_17_0 = l_AnimationPlayer_17 --[[ copy: 8 -> 17 ]];
                        local function v2014(v2013) --[[ Line: 13404 ]]
                            -- upvalues: l_l_AnimationPlayer_17_0 (copy), v1995 (copy)
                            return l_l_AnimationPlayer_17_0.playAnimation(v1995:FindFirstChild("Humanoid"), v2013);
                        end;
                        l_AnimationPlayer_17 = v2014(15685170827);
                        l_AnimationPlayer_17.Priority = Enum.AnimationPriority.Core;
                        l_AnimationPlayer_17:AdjustWeight(0.001);
                        table.insert(v1997, l_AnimationPlayer_17);
                        local v2015 = v2014(15685307415);
                        v2015.Priority = Enum.AnimationPriority.Action4;
                        v2015:AdjustWeight(1);
                        v2015:Play();
                        table.insert(v1997, v2015);
                        game.ReplicatedStorage.Replication:FireAllClients({
                            Effect = "Smooth Grab", 
                            CanBypass = true, 
                            Hit = v1995, 
                            From = v1996.PrimaryPart, 
                            NoLook = true, 
                            Offset = CFrame.new(0, 0, 0), 
                            Anchor = v1999
                        });
                        return;
                    else
                        return;
                    end;
                end
            }, 
            Keyframes = {
                clap = function(v2016) --[[ Line: 13432 ]]
                    -- upvalues: v104 (copy), v75 (ref), v101 (copy), l_CollectionService_1 (ref), v87 (ref)
                    if v104 then
                        return;
                    else
                        v75({
                            SoundId = "rbxassetid://15685183097", 
                            Parent = v101.Torso, 
                            Volume = 1
                        }):Play();
                        if v2016.first == 0 then
                            v2016.first = v2016.first + 1;
                            return;
                        else
                            local l_l_CollectionService_1_Tagged_0 = l_CollectionService_1:GetTagged(v101.Name .. "cartride");
                            if #l_l_CollectionService_1_Tagged_0 > 0 then
                                v75({
                                    SoundId = "rbxassetid://15685183294", 
                                    Parent = l_l_CollectionService_1_Tagged_0[1].Parent.Torso, 
                                    Volume = 1
                                }):Play();
                            end;
                            if v2016.BV and v2016.BV.Parent then
                                local l_BV_2 = v2016.BV;
                                l_BV_2:SetAttribute("Goto", 12);
                                local v2019 = "Speed";
                                local v2020 = 45;
                                local v2021 = -0.01;
                                local v2022 = 0.01;
                                if not v2022 and v2021 then
                                    v2022 = v2021;
                                    v2021 = 1;
                                end;
                                if not v2022 and not v2021 then
                                    v2021 = 0;
                                    v2022 = 1;
                                end;
                                l_BV_2:SetAttribute(v2019, v2020 + v87:NextNumber(v2021, v2022));
                            end;
                            return;
                        end;
                    end;
                end
            }, 
            HideWeapon = true, 
            Tag = "cartride", 
            Animation = 15685170827, 
            AnimationTwo = 15685307415, 
            Infinite = true, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Pretty Please"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1839643165", 
                    Volume = 0.3
                }
            }, 
            Startup = function(v2023, v2024, _, _, v2027) --[[ Line: 13482 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v87 (ref), v91 (ref)
                local v2028 = {};
                for v2029 = 1, 2 do
                    local v2030 = 1;
                    if v2029 == 2 then
                        v2030 = -1;
                    end;
                    local l_Attachment_13 = Instance.new("Attachment");
                    table.insert(v2023, l_Attachment_13);
                    l_Attachment_13:SetAttribute("EmoteProperty", true);
                    local v2032 = game.ReplicatedStorage.Emotes.eye:Clone();
                    v2032.Parent = l_Attachment_13;
                    l_Attachment_13.Parent = v101.Head;
                    v2032.Enabled = true;
                    l_Attachment_13.Position = Vector3.new(v2030 * 0.23, 0.164, -0.75);
                    table.insert(v2028, v2032);
                end;
                task.spawn(function() --[[ Line: 13497 ]]
                    -- upvalues: v2024 (copy), v2027 (copy), v2028 (copy), v87 (ref), v91 (ref)
                    local _ = Random.new();
                    while wait(0.06) and v2024.IsPlaying and not v2027.interrupted do
                        for _, v2035 in pairs(v2028) do
                            if v2035.Parent then
                                local v2036 = -0.01;
                                local v2037 = 0.01;
                                if not v2037 and v2036 then
                                    v2037 = v2036;
                                    v2036 = 1;
                                end;
                                if not v2037 and not v2036 then
                                    v2036 = 0;
                                    v2037 = 1;
                                end;
                                local v2038 = v87:NextNumber(v2036, v2037);
                                v2037 = -0.01;
                                local v2039 = 0.01;
                                if not v2039 and v2037 then
                                    v2039 = v2037;
                                    v2037 = 1;
                                end;
                                if not v2039 and not v2037 then
                                    v2037 = 0;
                                    v2039 = 1;
                                end;
                                v2035.StudsOffset = Vector3.new(v2038, v87:NextNumber(v2037, v2039), v91(-0.01, 0.01)) / 2;
                            else
                                break;
                            end;
                        end;
                    end;
                end);
            end, 
            Animation = 16584277208, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Face Grab"] = {
            Startup = function() --[[ Line: 13521 ]] --[[ Name: Startup ]]

            end, 
            Dual = {
                DoBoth = false, 
                Dist = 1.85, 
                Attach = true, 
                NoRotate = 1e999, 
                RotateCheck = true, 
                Callback = function(v2040, v2041, v2042, _) --[[ Line: 13531 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref)
                    local v2044, _ = v75({
                        SoundId = "rbxassetid://18829223347", 
                        Parent = v2040.Head, 
                        Looped = false, 
                        Volume = 1.5
                    });
                    v2044:Play();
                    local l_AnimationPlayer_18 = require(v2040.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local function v2048(v2047) --[[ Line: 13543 ]]
                        -- upvalues: l_AnimationPlayer_18 (copy), v2040 (copy)
                        return l_AnimationPlayer_18.playAnimation(v2040:FindFirstChild("Humanoid"), v2047);
                    end;
                    local l_AnimationPlayer_19 = require(v2041.CharacterHandler:WaitForChild("AnimationPlayer"));
                    l_AnimationPlayer_19 = function(v2050) --[[ Line: 13551 ]]
                        -- upvalues: l_AnimationPlayer_19 (copy), v2041 (copy)
                        return l_AnimationPlayer_19.playAnimation(v2041:FindFirstChild("Humanoid"), v2050);
                    end;
                    l_AnimationPlayer_19 = l_AnimationPlayer_19(18897624255);
                    local v2051 = v2048(18897625847);
                    v2051.Priority = Enum.AnimationPriority.Action4;
                    v2051.Looped = true;
                    v2051:AdjustWeight(1);
                    v2051:Play();
                    table.insert(v2042, v2051);
                    task.spawn(function() --[[ Line: 13563 ]]
                        -- upvalues: v2051 (copy), l_AnimationPlayer_19 (copy)
                        local v2052 = tick();
                        repeat
                            task.wait();
                        until tick() - v2052 > 4.117 or not v2051.IsPlaying;
                        if not v2051.IsPlaying then
                            return;
                        else
                            for _, v2054 in pairs({
                                l_AnimationPlayer_19, 
                                v2051
                            }) do
                                if v2054.IsPlaying then
                                    v2054:AdjustSpeed(0);
                                end;
                            end;
                            return;
                        end;
                    end);
                end
            }, 
            Tag = "grabface", 
            HideWeapon = true, 
            Animation = 18897624255, 
            AnimationFixes = {
                18897624255, 
                18897625847
            }, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Picnic = {
            Startup = function(v2055, _, v2057, _) --[[ Line: 13585 ]] --[[ Name: Startup ]]
                -- upvalues: v104 (copy), v101 (copy), v75 (ref)
                if v104 then
                    local v2059 = game.ReplicatedStorage.Emotes.Sandwich:Clone();
                    v2059:SetAttribute("EmoteProperty", true);
                    table.insert(v2055, v2059);
                    v2057.Handle = v2059;
                    local l_Sandwich_0 = v2059.Sandwich;
                    l_Sandwich_0:SetAttribute("EmoteProperty", true);
                    table.insert(v2055, l_Sandwich_0);
                    v2057.md = l_Sandwich_0;
                    l_Sandwich_0.Part0 = v101["Right Arm"];
                    l_Sandwich_0.Part1 = v2059;
                    l_Sandwich_0.Parent = v101["Right Arm"];
                    v2059.Parent = v101;
                    return;
                else
                    local v2061 = game.ReplicatedStorage.Emotes.Blanket:Clone();
                    v2061:SetAttribute("EmoteProperty", true);
                    table.insert(v2055, v2061);
                    v2057.Handle = v2061;
                    local l_Blanket_0 = v2061.Blanket;
                    l_Blanket_0:SetAttribute("EmoteProperty", true);
                    table.insert(v2055, l_Blanket_0);
                    v2057.md = l_Blanket_0;
                    l_Blanket_0.Part0 = v101.PrimaryPart;
                    l_Blanket_0.Part1 = v2061;
                    l_Blanket_0.Parent = v101.PrimaryPart;
                    v2061.Parent = v101;
                    v75({
                        SoundId = "rbxassetid://1841681029", 
                        Parent = v2061, 
                        Looped = true, 
                        Volume = 0.5
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://83896975323570", 
                        Parent = v101.Torso, 
                        Looped = false, 
                        Volume = 0.75
                    }):Play();
                    local v2063 = game.ReplicatedStorage.Emotes.Picnick:Clone();
                    v2063:SetAttribute("EmoteProperty", true);
                    table.insert(v2055, v2063);
                    v2057.Handle = v2063;
                    v2063.Name = "Model";
                    local l_Base_1 = v2063.Base;
                    l_Base_1:SetAttribute("EmoteProperty", true);
                    table.insert(v2055, l_Base_1);
                    v2057.md = l_Base_1;
                    l_Base_1.Part0 = v101["Right Arm"];
                    l_Base_1.Part1 = v2063.PicnicBasket.Base;
                    l_Base_1.Parent = v101["Right Arm"];
                    v2063.Parent = v101;
                    return;
                end;
            end, 
            Dual = {
                DoBoth = false, 
                Dist = CFrame.new(0, 0, -5), 
                Attach = true, 
                Freeze = false, 
                NoRotate = 1e999, 
                RotateCheck = true, 
                Callback = function(v2065, v2066, v2067, _) --[[ Line: 13633 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref)
                    local l_AnimationPlayer_20 = require(v2065.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local l_l_AnimationPlayer_20_0 = l_AnimationPlayer_20 --[[ copy: 5 -> 9 ]];
                    local function v2072(v2071) --[[ Line: 13645 ]]
                        -- upvalues: l_l_AnimationPlayer_20_0 (copy), v2065 (copy)
                        return l_l_AnimationPlayer_20_0.playAnimation(v2065:FindFirstChild("Humanoid"), v2071);
                    end;
                    local l_AnimationPlayer_21 = require(v2066.CharacterHandler:WaitForChild("AnimationPlayer"));
                    l_AnimationPlayer_20 = function(v2074) --[[ Line: 13653 ]]
                        -- upvalues: l_AnimationPlayer_21 (copy), v2066 (copy)
                        return l_AnimationPlayer_21.playAnimation(v2066:FindFirstChild("Humanoid"), v2074);
                    end;
                    l_AnimationPlayer_20(139619595225529):AdjustWeight(0.001);
                    v75({
                        SoundId = "rbxassetid://120033833303346", 
                        Parent = v2066["Right Arm"], 
                        Volume = 1
                    }):Play();
                    local v2075 = l_AnimationPlayer_20(114257381413858);
                    v2075.Priority = Enum.AnimationPriority.Action4;
                    v2075:AdjustWeight(1);
                    v2075:Play();
                    table.insert(v2067, v2075.Stopped:Once(function() --[[ Line: 13671 ]]
                        -- upvalues: l_AnimationPlayer_20 (copy), v2067 (copy), v75 (ref), v2066 (copy)
                        local v2076 = l_AnimationPlayer_20(114413870666811);
                        table.insert(v2067, v2076);
                        v2076.Priority = Enum.AnimationPriority.Action4;
                        v2076.Looped = true;
                        v2076:AdjustWeight(1);
                        table.insert(v2067, v2076:GetMarkerReachedSignal("clap"):Connect(function() --[[ Line: 13676 ]]
                            -- upvalues: v75 (ref), v2066 (ref)
                            v75({
                                SoundId = "rbxassetid://109123564480693", 
                                Parent = v2066["Right Arm"], 
                                Volume = 1
                            }):Play();
                        end));
                        v2076:Play();
                    end));
                    table.insert(v2067, v2075);
                    v75({
                        SoundId = "rbxassetid://111931707991797", 
                        Parent = v2065["Right Arm"], 
                        Volume = 1
                    }):Play();
                    local v2077 = v2072(111355299827059);
                    v2077.Priority = Enum.AnimationPriority.Action4;
                    v2077:AdjustWeight(1);
                    v2077:Play();
                    table.insert(v2067, v2077.Stopped:Once(function() --[[ Line: 13698 ]]
                        -- upvalues: v2072 (copy), v2067 (copy), v75 (ref), v2065 (copy)
                        local v2078 = v2072(72956068899498);
                        table.insert(v2067, v2078);
                        v2078.Priority = Enum.AnimationPriority.Action4;
                        v2078.Looped = true;
                        table.insert(v2067, v2078:GetMarkerReachedSignal("clap"):Connect(function() --[[ Line: 13702 ]]
                            -- upvalues: v75 (ref), v2065 (ref)
                            v75({
                                SoundId = "rbxassetid://101684470526234", 
                                Parent = v2065["Right Arm"], 
                                Volume = 1
                            }):Play();
                        end));
                        v2078:AdjustWeight(1);
                        v2078:Play();
                    end));
                    table.insert(v2067, v2077);
                end
            }, 
            Keyframes = {
                freeze = function(_, _, v2081) --[[ Line: 13718 ]]
                    v2081:AdjustSpeed(0);
                end
            }, 
            Tag = "paint", 
            HideWeapon = true, 
            Fix = true, 
            Animation = 140367976090553, 
            AnimationFixes = {
                18897684855, 
                18897682478, 
                18897686619
            }, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Masterpiece = {
            Startup = function(v2082, _, v2084, _) --[[ Line: 13733 ]] --[[ Name: Startup ]]
                -- upvalues: v104 (copy), v101 (copy), v75 (ref)
                if v104 then
                    local v2086 = game.ReplicatedStorage.Emotes.Frame:Clone();
                    v2086:SetAttribute("EmoteProperty", true);
                    table.insert(v2082, v2086);
                    v2084.Handle = v2086;
                    local l_m6d_25 = v2086.m6d;
                    l_m6d_25:SetAttribute("EmoteProperty", true);
                    table.insert(v2082, l_m6d_25);
                    v2084.md = l_m6d_25;
                    l_m6d_25.Part0 = v101.PrimaryPart;
                    l_m6d_25.Part1 = v2086;
                    l_m6d_25.Name = "Frame";
                    l_m6d_25.Parent = v101.PrimaryPart;
                    v2086.Parent = v101;
                    return;
                else
                    v75({
                        SoundId = "rbxassetid://1840161104", 
                        Parent = v101.PrimaryPart, 
                        Looped = true, 
                        Volume = 0.4
                    }):Play();
                    local v2088 = game.ReplicatedStorage.Emotes.brush:Clone();
                    v2088:SetAttribute("EmoteProperty", true);
                    table.insert(v2082, v2088);
                    v2084.Handle = v2088;
                    local l_brush_0 = v2088.brush;
                    l_brush_0:SetAttribute("EmoteProperty", true);
                    table.insert(v2082, l_brush_0);
                    v2084.md = l_brush_0;
                    l_brush_0.Part0 = v101.PrimaryPart;
                    l_brush_0.Part1 = v2088;
                    l_brush_0.Parent = v101.PrimaryPart;
                    v2088.Parent = v101;
                    v75({
                        SoundId = "rbxassetid://18835321626", 
                        Parent = v2088, 
                        Volume = 1.5
                    }):Play();
                    local v2090 = game.ReplicatedStorage.Emotes.palette:Clone();
                    v2090:SetAttribute("EmoteProperty", true);
                    table.insert(v2082, v2090);
                    v2084.Handle = v2090;
                    local l_palette_0 = v2090.palette;
                    l_palette_0:SetAttribute("EmoteProperty", true);
                    table.insert(v2082, l_palette_0);
                    v2084.md = l_palette_0;
                    l_palette_0.Part0 = v101.PrimaryPart;
                    l_palette_0.Part1 = v2090;
                    l_palette_0.Parent = v101.PrimaryPart;
                    v2090.Parent = v101;
                    return;
                end;
            end, 
            Dual = {
                DoBoth = false, 
                NoLook = true, 
                Dist = CFrame.new(4, 0, 0), 
                Attach = true, 
                Freeze = false, 
                NoRotate = 1e999, 
                RotateCheck = true, 
                Callback = function(v2092, v2093, v2094, _) --[[ Line: 13781 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref)
                    local v2096, _ = v75({
                        SoundId = "rbxassetid://18835337426", 
                        Parent = v2093["Right Arm"], 
                        Looped = true, 
                        Volume = 1.5
                    });
                    v2096:Play();
                    local l_AnimationPlayer_22 = require(v2092.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local function v2100(v2099) --[[ Line: 13793 ]]
                        -- upvalues: l_AnimationPlayer_22 (copy), v2092 (copy)
                        return l_AnimationPlayer_22.playAnimation(v2092:FindFirstChild("Humanoid"), v2099);
                    end;
                    local l_AnimationPlayer_23 = require(v2093.CharacterHandler:WaitForChild("AnimationPlayer"));
                    l_AnimationPlayer_23 = function(v2102) --[[ Line: 13801 ]]
                        -- upvalues: l_AnimationPlayer_23 (copy), v2093 (copy)
                        return l_AnimationPlayer_23.playAnimation(v2093:FindFirstChild("Humanoid"), v2102);
                    end;
                    l_AnimationPlayer_23 = l_AnimationPlayer_23(18897682478);
                    l_AnimationPlayer_23.Priority = Enum.AnimationPriority.Action4;
                    l_AnimationPlayer_23.Looped = true;
                    l_AnimationPlayer_23:AdjustWeight(1);
                    l_AnimationPlayer_23:Play();
                    table.insert(v2094, l_AnimationPlayer_23);
                    local v2103 = v2100(18897686619);
                    v2103.Priority = Enum.AnimationPriority.Action4;
                    v2103.Looped = true;
                    v2103:AdjustWeight(1);
                    v2103:Play();
                    table.insert(v2094, v2103);
                end
            }, 
            Keyframes = {
                freeze = function(_, _, v2106) --[[ Line: 13822 ]]
                    v2106:AdjustSpeed(0);
                end
            }, 
            Tag = "paint", 
            HideWeapon = true, 
            Fix = true, 
            Animation = 18897684855, 
            AnimationFixes = {
                18897684855, 
                18897682478, 
                18897686619
            }, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Think!!!"] = {
            Startup = function(_, _, _) --[[ Line: 13837 ]] --[[ Name: Startup ]]
                -- upvalues: v104 (copy)
                if v104 then
                    return;
                else
                    return;
                end;
            end, 
            Sounds = {}, 
            Keyframes = {}, 
            Dual = {
                DoBoth = false, 
                Dist = -0.01, 
                Attach = true, 
                NoRotate = 3.417, 
                Callback = function(v2110, v2111, v2112, _, _) --[[ Line: 13856 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref)
                    local l_AnimationPlayer_24 = require(v2110.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local l_l_AnimationPlayer_24_0 = l_AnimationPlayer_24 --[[ copy: 6 -> 8 ]];
                    local function v2118(v2117) --[[ Line: 13860 ]]
                        -- upvalues: l_l_AnimationPlayer_24_0 (copy), v2110 (copy)
                        return l_l_AnimationPlayer_24_0.playAnimation(v2110:FindFirstChild("Humanoid"), v2117);
                    end;
                    local l_AnimationPlayer_25 = require(v2111.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local l_l_AnimationPlayer_25_0 = l_AnimationPlayer_25 --[[ copy: 7 -> 9 ]];
                    l_AnimationPlayer_24 = function(v2121) --[[ Line: 13868 ]]
                        -- upvalues: l_l_AnimationPlayer_25_0 (copy), v2111 (copy)
                        return l_l_AnimationPlayer_25_0.playAnimation(v2111:FindFirstChild("Humanoid"), v2121);
                    end;
                    v75({
                        SoundId = "rbxassetid://18836260464", 
                        Parent = v2111.Torso, 
                        Volume = 1
                    }):Play();
                    l_AnimationPlayer_25 = v2118(18897721681);
                    l_AnimationPlayer_25.Priority = Enum.AnimationPriority.Action4;
                    l_AnimationPlayer_25:AdjustWeight(1);
                    l_AnimationPlayer_25:Play();
                    table.insert(v2112, l_AnimationPlayer_25);
                end
            }, 
            Tag = "thnk", 
            Animation = 18897718868, 
            Fix = true, 
            AnimationFixes = {
                18897718868, 
                18897721681
            }, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Carry 2"] = {
            Startup = function(v2122, _, v2124) --[[ Line: 13896 ]] --[[ Name: Startup ]]
                -- upvalues: v104 (copy), l_CollectionService_1 (ref), l_PlayerFromCharacter_0 (copy), v101 (copy)
                if v104 then
                    return;
                else
                    local v2125 = shared.cfolder({
                        Name = "Freeze"
                    }, 3.922);
                    table.insert(v2122, v2125);
                    l_CollectionService_1:AddTag(v2125, "blah" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    v2125:SetAttribute("DontInterrupt", true);
                    v2125:SetAttribute("NoStop", true);
                    v2125:SetAttribute("EmoteProperty", true);
                    task.delay(0, function() --[[ Line: 13909 ]]
                        -- upvalues: v2125 (copy), v101 (ref)
                        v2125.Parent = v101;
                    end);
                    v2124.frz = v2125;
                    return;
                end;
            end, 
            Sounds = {}, 
            Keyframes = {}, 
            Dual = {
                DoBoth = false, 
                Dist = 3.179, 
                Attach = true, 
                CanRotate = true, 
                RotateCheck = true, 
                Callback = function(v2126, v2127, v2128, _, _) --[[ Line: 13931 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref), l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy)
                    local l_AnimationPlayer_26 = require(v2126.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local l_l_AnimationPlayer_26_0 = l_AnimationPlayer_26 --[[ copy: 6 -> 10 ]];
                    local function v2134(v2133) --[[ Line: 13935 ]]
                        -- upvalues: l_l_AnimationPlayer_26_0 (copy), v2126 (copy)
                        return l_l_AnimationPlayer_26_0.playAnimation(v2126:FindFirstChild("Humanoid"), v2133);
                    end;
                    local l_AnimationPlayer_27 = require(v2127.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local l_l_AnimationPlayer_27_0 = l_AnimationPlayer_27 --[[ copy: 7 -> 11 ]];
                    l_AnimationPlayer_26 = function(v2137) --[[ Line: 13943 ]]
                        -- upvalues: l_l_AnimationPlayer_27_0 (copy), v2127 (copy)
                        return l_l_AnimationPlayer_27_0.playAnimation(v2127:FindFirstChild("Humanoid"), v2137);
                    end;
                    l_AnimationPlayer_27 = v2134(18897899497);
                    l_AnimationPlayer_27.Priority = Enum.AnimationPriority.Action4;
                    l_AnimationPlayer_27:AdjustWeight(1);
                    l_AnimationPlayer_27:Play();
                    local v2138 = v75({
                        SoundId = "rbxassetid://18846119968", 
                        Parent = v2126.Torso, 
                        Volume = 1
                    });
                    v2138:SetAttribute("EmoteProperty", true);
                    v2138:Play();
                    table.insert(v2128, v2138);
                    table.insert(v2128, l_AnimationPlayer_27);
                    table.insert(v2128, l_AnimationPlayer_27.Stopped:Once(function() --[[ Line: 13960 ]]
                        -- upvalues: l_AnimationPlayer_26 (copy), v2128 (copy), v2134 (copy), l_CollectionService_1 (ref), v104 (ref), l_PlayerFromCharacter_0 (ref), v2126 (copy), v75 (ref), v2127 (copy)
                        local v2139 = l_AnimationPlayer_26(18897885015);
                        v2139.Priority = Enum.AnimationPriority.Action4;
                        v2139.Looped = true;
                        v2139:AdjustWeight(1);
                        v2139:Play();
                        table.insert(v2128, v2139);
                        local v2140 = v2134(18897893429);
                        v2140.Priority = Enum.AnimationPriority.Action4;
                        v2140.Looped = true;
                        v2140:AdjustWeight(1);
                        v2140:Play();
                        table.insert(v2128, v2140);
                        local l_pairs_0 = pairs;
                        local l_l_CollectionService_1_0 = l_CollectionService_1;
                        local v2143 = "blah";
                        local v2144 = v104 or l_PlayerFromCharacter_0 or v2126;
                        for _, v2146 in l_pairs_0(l_l_CollectionService_1_0:GetTagged(v2143 .. v2144.Name)) do
                            v2146:Destroy();
                        end;
                        l_pairs_0 = v75({
                            SoundId = "rbxassetid://18846302530", 
                            Parent = v2127.Torso, 
                            Looped = true, 
                            Volume = 0.25
                        });
                        l_pairs_0:SetAttribute("EmoteProperty", true);
                        l_pairs_0:Play();
                        table.insert(v2128, l_pairs_0);
                    end));
                    local v2147 = l_AnimationPlayer_26(18897896476);
                    v2147.Priority = Enum.AnimationPriority.Action4;
                    v2147:AdjustWeight(1);
                    v2147:Play();
                    table.insert(v2128, v2147);
                end
            }, 
            Tag = "backcarry", 
            Animation = 18897896476, 
            AnimationFixes = {
                18897896476, 
                18897899497, 
                18897893429, 
                18897885015
            }, 
            Looped = true, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        Piggyback = {
            Startup = function() --[[ Line: 14005 ]] --[[ Name: Startup ]]
                -- upvalues: v104 (copy), v75 (ref), v101 (copy)
                if v104 then
                    return;
                else
                    v75({
                        SoundId = "rbxassetid://18835998166", 
                        Volume = 1, 
                        Looped = true, 
                        Parent = v101["Left Leg"]
                    }):Play();
                    return;
                end;
            end, 
            Sounds = {}, 
            Keyframes = {}, 
            Dual = {
                DoBoth = false, 
                Dist = -0.01, 
                Freeze = false, 
                Attach = true, 
                CanRotate = true, 
                RotateCheck = true, 
                Callback = function(v2148, v2149, v2150, _) --[[ Line: 14033 ]] --[[ Name: Callback ]]
                    local l_AnimationPlayer_28 = require(v2148.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local l_l_AnimationPlayer_28_0 = l_AnimationPlayer_28 --[[ copy: 5 -> 7 ]];
                    local function v2155(v2154) --[[ Line: 14037 ]]
                        -- upvalues: l_l_AnimationPlayer_28_0 (copy), v2148 (copy)
                        return l_l_AnimationPlayer_28_0.playAnimation(v2148:FindFirstChild("Humanoid"), v2154);
                    end;
                    local l_AnimationPlayer_29 = require(v2149.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local l_l_AnimationPlayer_29_0 = l_AnimationPlayer_29 --[[ copy: 6 -> 8 ]];
                    l_AnimationPlayer_28 = function(v2158) --[[ Line: 14045 ]]
                        -- upvalues: l_l_AnimationPlayer_29_0 (copy), v2149 (copy)
                        return l_l_AnimationPlayer_29_0.playAnimation(v2149:FindFirstChild("Humanoid"), v2158);
                    end;
                    l_AnimationPlayer_29 = v2155(18897690248);
                    l_AnimationPlayer_29.Priority = Enum.AnimationPriority.Action4;
                    l_AnimationPlayer_29.Looped = true;
                    l_AnimationPlayer_29:AdjustWeight(1);
                    l_AnimationPlayer_29:Play();
                    table.insert(v2150, l_AnimationPlayer_29);
                end
            }, 
            Tag = "piggyback", 
            Animation = 18897692607, 
            AnimationFixes = {
                18897692607, 
                18897690248
            }, 
            Looped = true, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        Lalala = {
            Startup = function() --[[ Line: 14068 ]] --[[ Name: Startup ]]

            end, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17097669113", 
                    Volume = 1
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v2161) --[[ Line: 14080 ]]
                    v2161:AdjustSpeed(0);
                end
            }, 
            Dual = {
                DoBoth = false, 
                Dist = 3.8, 
                Freeze = false, 
                Attach = true, 
                NoRotate = 1e999, 
                RotateCheck = true, 
                Callback = function(v2162, v2163, v2164, _) --[[ Line: 14092 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref)
                    local v2166, _ = v75({
                        SoundId = "rbxassetid://18828726970", 
                        Looped = true, 
                        Volume = 1
                    });
                    v2166.Parent = v2162.PrimaryPart;
                    v2166:Play();
                    local v2168, _ = v75({
                        SoundId = "rbxassetid://9038380332", 
                        Looped = true, 
                        Volume = 0.2
                    });
                    v2168.Parent = v2162.PrimaryPart;
                    v2168:Play();
                    local l_AnimationPlayer_30 = require(v2162.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local function v2172(v2171) --[[ Line: 14117 ]]
                        -- upvalues: l_AnimationPlayer_30 (copy), v2162 (copy)
                        return l_AnimationPlayer_30.playAnimation(v2162:FindFirstChild("Humanoid"), v2171);
                    end;
                    local l_AnimationPlayer_31 = require(v2163.CharacterHandler:WaitForChild("AnimationPlayer"));
                    l_AnimationPlayer_31 = function(v2174) --[[ Line: 14125 ]]
                        -- upvalues: l_AnimationPlayer_31 (copy), v2163 (copy)
                        return l_AnimationPlayer_31.playAnimation(v2163:FindFirstChild("Humanoid"), v2174);
                    end;
                    l_AnimationPlayer_31 = l_AnimationPlayer_31(18897652035);
                    l_AnimationPlayer_31.Priority = Enum.AnimationPriority.Action4;
                    l_AnimationPlayer_31.Looped = true;
                    l_AnimationPlayer_31:AdjustWeight(1);
                    l_AnimationPlayer_31:Play();
                    table.insert(v2164, l_AnimationPlayer_31);
                    local v2175 = v2172(18897657904);
                    v2175.Priority = Enum.AnimationPriority.Action4;
                    v2175.Looped = true;
                    v2175:AdjustWeight(1);
                    v2175:Play();
                    table.insert(v2164, v2175);
                    task.spawn(function() --[[ Line: 14144 ]]
                        -- upvalues: v2166 (copy), v2175 (copy), l_AnimationPlayer_31 (copy)
                        local v2176 = 1;
                        repeat
                            task.wait(0.5);
                            v2176 = v2176 + 0.0071428571428571435;
                            v2166.PlaybackSpeed = v2176;
                            v2175:AdjustSpeed(v2176);
                            l_AnimationPlayer_31:AdjustSpeed(v2176);
                        until not v2175.IsPlaying or not l_AnimationPlayer_31.IsPlaying;
                    end);
                end
            }, 
            Tag = "lalala", 
            Animation = 18897655615, 
            AnimationFixes = {
                18897652035, 
                18897657904
            }, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Moonlight Blade"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://131885679205734", 
                    Volume = 1.25
                }, 
                [6] = {
                    SoundId = "rbxassetid://128405033807309", 
                    Volume = 1.25, 
                    Looped = true
                }, 
                [1] = {
                    SoundId = "rbxassetid://120830407661030", 
                    Volume = 0.5, 
                    Looped = true
                }
            }, 
            Startup = function(v2177, _, _) --[[ Line: 14183 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v2180 = game.ReplicatedStorage.Emotes.clonedsword:Clone();
                v2180:SetAttribute("EmoteProperty", true);
                table.insert(v2177, v2180);
                l_CollectionService_1:AddTag(v2180, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local l_HandleM_0 = v2180.HandleM;
                l_HandleM_0:SetAttribute("EmoteProperty", true);
                table.insert(v2177, l_HandleM_0);
                l_CollectionService_1:AddTag(l_HandleM_0, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_HandleM_0.Part0 = v101["Right Arm"];
                l_HandleM_0.Part1 = v2180.Handle;
                l_HandleM_0.Parent = v101["Right Arm"];
                l_HandleM_0.Name = "Handle";
                v2180.Parent = v101;
            end, 
            Keyframes = {
                swap = function() --[[ Line: 14200 ]]
                    -- upvalues: v101 (copy)
                    local v2182 = nil;
                    for _, v2184 in pairs(v101:GetDescendants()) do
                        if tostring(v2184) == "ice dagger" then
                            v2182 = v2184;
                            break;
                        end;
                    end;
                    game:GetService("TweenService"):Create(v2182, TweenInfo.new(0.35), {
                        Transparency = 0
                    }):Play();
                    if v2182 and v2182.Parent:IsA("MeshPart") then
                        game:GetService("TweenService"):Create(v2182.Parent, TweenInfo.new(0.35), {
                            Transparency = 1
                        }):Play();
                    end;
                end, 
                swapback = function() --[[ Line: 14217 ]]
                    -- upvalues: v101 (copy)
                    local v2185 = nil;
                    for _, v2187 in pairs(v101:GetDescendants()) do
                        if tostring(v2187) == "ice dagger" then
                            v2185 = v2187;
                            break;
                        end;
                    end;
                    game:GetService("TweenService"):Create(v2185, TweenInfo.new(0.065), {
                        Transparency = 1
                    }):Play();
                    if v2185 and v2185.Parent:IsA("MeshPart") then
                        game:GetService("TweenService"):Create(v2185.Parent, TweenInfo.new(0.065), {
                            Transparency = 0
                        }):Play();
                    end;
                end
            }, 
            StunAttribute = 1.5, 
            Animation = 128517914413709, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        ["Respectful Bow"] = {
            Startup = function() --[[ Line: 14243 ]] --[[ Name: Startup ]]

            end, 
            Keyframes = {}, 
            Dual = {
                DoBoth = false, 
                Dist = 7, 
                NoRotate = 1.45, 
                Callback = function(v2188, _, _, v2191) --[[ Line: 14255 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref)
                    local v2192, v2193 = v75({
                        SoundId = "rbxassetid://16584014240", 
                        CFrame = CFrame.new(), 
                        Volume = 1
                    });
                    v2193.Parent = v2188.PrimaryPart;
                    v2193.WorldPosition = (v2188.PrimaryPart.CFrame * CFrame.new(0, 0, -v2191 / 2)).Position;
                    v2192:Play();
                end
            }, 
            Tag = "respbow", 
            Animation = 16584194737, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Cheers = {
            Startup = function(v2194, _, v2196, _) --[[ Line: 14275 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                v75({
                    SoundId = "rbxassetid://3929467449", 
                    Parent = v101.PrimaryPart, 
                    Volume = 0.5, 
                    PlaybackSpeed = 1.5
                }):Play();
                local v2198 = game.ReplicatedStorage.Emotes.Colaa:Clone();
                v2198:SetAttribute("EmoteProperty", true);
                table.insert(v2194, v2198);
                v2196.Handle = v2198;
                local l_Handle_43 = v2198.Handle;
                l_Handle_43:SetAttribute("EmoteProperty", true);
                table.insert(v2194, l_Handle_43);
                v2196.md = l_Handle_43;
                v2198.Name = "Handle";
                l_Handle_43.Part0 = v101["Right Arm"];
                l_Handle_43.Part1 = v2198;
                l_Handle_43.Parent = v101["Right Arm"];
                v2198.Parent = v101;
            end, 
            Dual = {
                DoBoth = false, 
                Dist = 3.5, 
                NoRotate = 3.15, 
                Callback = function(v2200, _, _, v2203) --[[ Line: 14296 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref)
                    local v2204, v2205 = v75({
                        SoundId = "rbxassetid://15486190633", 
                        CFrame = CFrame.new(), 
                        Volume = 1
                    });
                    v2205.Parent = v2200.PrimaryPart;
                    v2205.WorldPosition = (v2200.PrimaryPart.CFrame * CFrame.new(0, 0, -v2203 / 2)).Position;
                    v2204:Play();
                end
            }, 
            Keyframes = {
                ["end"] = function(v2206) --[[ Line: 14310 ]]
                    -- upvalues: l_TweenService_0 (ref)
                    l_TweenService_0:Create(v2206.Handle["Bloxy Cola Decoration"].Mesh, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Scale = Vector3.new()
                    }):Play();
                end
            }, 
            HideWeapon = true, 
            Tag = "chers", 
            Animation = 15486180872, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Bizarre Handshake"] = {
            Startup = function(_, _, _, _) --[[ Line: 14325 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                v75({
                    SoundId = "rbxassetid://3929467449", 
                    Parent = v101.PrimaryPart, 
                    Volume = 0.5, 
                    PlaybackSpeed = 1.5
                }):Play();
            end, 
            Dual = {
                DoBoth = false, 
                Dist = 3.5, 
                NoRotate = 8.3, 
                Callback = function(v2211, _, _, v2214) --[[ Line: 14338 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref)
                    local v2215, v2216 = v75({
                        SoundId = "rbxassetid://15018915276", 
                        CFrame = CFrame.new(), 
                        Volume = 1
                    });
                    v2216.Parent = v2211.PrimaryPart;
                    v2216.WorldPosition = (v2211.PrimaryPart.CFrame * CFrame.new(0, 0, -v2214 / 2)).Position;
                    v2215:Play();
                end
            }, 
            Tag = "bizzarehandshake", 
            Animation = 15018853350, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Highfive = {
            Startup = function(_, _, _, _) --[[ Line: 14358 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                v75({
                    SoundId = "rbxassetid://3929467449", 
                    Parent = v101.PrimaryPart, 
                    Volume = 0.5, 
                    PlaybackSpeed = 1.5
                }):Play();
            end, 
            Dual = {
                DoBoth = false, 
                Dist = 3.5, 
                NoRotate = 3, 
                Callback = function(v2221, _, _, v2224) --[[ Line: 14371 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref)
                    local v2225, v2226 = v75({
                        SoundId = "rbxassetid://15091001878", 
                        CFrame = CFrame.new(), 
                        TimePosition = 0.15, 
                        Volume = 2
                    });
                    v2226.Parent = v2221.PrimaryPart;
                    v2226.WorldPosition = (v2221.PrimaryPart.CFrame * CFrame.new(0, 0, -v2224 / 2)).Position;
                    v2225:Resume();
                end
            }, 
            Tag = "highfive", 
            Animation = 15223422794, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Fist Bump"] = {
            HideWeapon = true, 
            Startup = function(_, _, _, _) --[[ Line: 14393 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                v75({
                    SoundId = "rbxassetid://3929467449", 
                    Parent = v101.PrimaryPart, 
                    Volume = 0.5, 
                    PlaybackSpeed = 1.5
                }):Play();
            end, 
            Dual = {
                DoBoth = false, 
                Dist = 4.8, 
                Callback = function(v2231, _, _, v2234) --[[ Line: 14405 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref)
                    local v2235, v2236 = v75({
                        SoundId = "rbxassetid://15290318024", 
                        CFrame = CFrame.new(), 
                        Volume = 1.5
                    });
                    v2236.Parent = v2231.PrimaryPart;
                    v2236.WorldPosition = (v2231.PrimaryPart.CFrame * CFrame.new(0, 0, -v2234 / 2)).Position;
                    v2235:Play();
                end
            }, 
            Tag = "fistbupm", 
            Animation = 15290322193, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Dap Me Up"] = {
            Startup = function(_, _, _, _) --[[ Line: 14425 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                v75({
                    SoundId = "rbxassetid://3929467449", 
                    Parent = v101.PrimaryPart, 
                    Volume = 0.5, 
                    PlaybackSpeed = 1.5
                }):Play();
            end, 
            Dual = {
                DoBoth = false, 
                Dist = 3.5, 
                Callback = function(v2241, _, _, v2244) --[[ Line: 14437 ]] --[[ Name: Callback ]]
                    -- upvalues: v75 (ref)
                    local v2245, v2246 = v75({
                        SoundId = "rbxassetid://14407585440", 
                        CFrame = CFrame.new(), 
                        Volume = 1.5
                    });
                    v2246.Parent = v2241.PrimaryPart;
                    v2246.WorldPosition = (v2241.PrimaryPart.CFrame * CFrame.new(0, 0, -v2244 / 2)).Position;
                    v2245:Play();
                end
            }, 
            Tag = "dap", 
            Animation = 15007878015, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Bully = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1847174988", 
                    Volume = 0.6, 
                    TimePosition = 0.6, 
                    Looped = true
                }
            }, 
            Keyframes = {
                claploop = function() --[[ Line: 14467 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://2704706975", 
                        Volume = 1, 
                        Parent = v101.Head
                    }):Play();
                end
            }, 
            Infinite = true, 
            Animation = 14014580605, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Exercise = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1843271056", 
                    Volume = 0.6, 
                    TimePosition = 3, 
                    Looped = true
                }
            }, 
            Keyframes = {
                clap = function() --[[ Line: 14493 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://9114760154", 
                        Volume = 0.25, 
                        Parent = v101.Head
                    }):Play();
                end
            }, 
            Infinite = true, 
            Animation = 15017946867, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Chrono = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9046628228", 
                    Volume = 0.4, 
                    TimePosition = 1.5, 
                    Looped = true
                }
            }, 
            Animation = 13935172019, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Moves = {
            Startup = function(v2247) --[[ Line: 14533 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                local v2248 = math.random(1, 2);
                local v2249 = v75({
                    SoundId = v2248 == 1 and "rbxassetid://1836736766" or "rbxassetid://9044612350", 
                    Volume = 0.75, 
                    TimePosition = v2248 == 1 and 19 or 1, 
                    Looped = true, 
                    Parent = v101.PrimaryPart
                });
                v2249:SetAttribute("EmoteProperty", true);
                table.insert(v2247, v2249);
                v2249:Play();
            end, 
            Animation = 13874517117, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["You Hear That?"] = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15018202933", 
                    Volume = 3.25, 
                    Looped = true
                }
            }, 
            Animation = 15018219692, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Boogie = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1846808425", 
                    Volume = 0.75, 
                    Looped = true
                }
            }, 
            Animation = 15017959263, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Shuffle = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1842612601", 
                    Volume = 0.75, 
                    Looped = true
                }
            }, 
            Animation = 13874572427, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["Salt Shaker"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15453864958", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Startup = function(v2250, _, v2252) --[[ Line: 14604 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2253 = game.ReplicatedStorage.Emotes["Salt shaker"]:Clone();
                v2252.bb = v2253;
                table.insert(v2250, v2253);
                v2253:SetAttribute("EmoteProperty", true);
                local l_Motor6D_26 = v2253:FindFirstChildOfClass("Motor6D");
                table.insert(v2250, l_Motor6D_26);
                l_Motor6D_26:SetAttribute("EmoteProperty", true);
                l_Motor6D_26.Part0 = v101["Left Arm"];
                l_Motor6D_26.Name = "Handle";
                l_Motor6D_26.Part1 = v2253.Handle;
                l_Motor6D_26.Parent = v101["Left Arm"];
                v2253.Parent = v101;
            end, 
            Keyframes = {
                claploop = function(v2255) --[[ Line: 14619 ]]
                    v2255.bb.Salt.Attachment.ParticleEmitter:Emit(5);
                end
            }, 
            Infinite = true, 
            Animation = 15453855128, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["You Alright?"] = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14612768785", 
                    Volume = 2, 
                    Looped = false
                }
            }, 
            Startup = function(v2256, _, v2258) --[[ Line: 14640 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v2259 = game.ReplicatedStorage.Emotes.basketball:Clone();
                v2258.bb = v2259;
                table.insert(v2256, v2259);
                v2259:SetAttribute("EmoteProperty", true);
                local l_Motor6D_27 = v2259:FindFirstChildOfClass("Motor6D");
                table.insert(v2256, l_Motor6D_27);
                l_Motor6D_27:SetAttribute("EmoteProperty", true);
                l_Motor6D_27.Part0 = v101["Left Arm"];
                l_Motor6D_27.Parent = v101["Left Arm"];
                l_Motor6D_27.C0 = CFrame.new(-0.035, -1.542, -0.006);
                l_Motor6D_27.Part1 = v2259.Handle;
                v2259.Parent = v101;
                v75({
                    SoundId = "rbxassetid://14612801058", 
                    Parent = v2259.Handle, 
                    Volume = 0.4
                }):Play();
            end, 
            Keyframes = {
                ["end"] = function(v2261) --[[ Line: 14661 ]]
                    v2261.bb:Destroy();
                end
            }, 
            Animation = 14612894074, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Guilty = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15092639799", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v2262, _, v2264) --[[ Line: 14680 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2265 = game.ReplicatedStorage.Emotes.sign:Clone();
                v2265:SetAttribute("EmoteProperty", true);
                table.insert(v2262, v2265);
                v2264.Handle = v2265;
                local l_m6d_26 = v2265.m6d;
                l_m6d_26:SetAttribute("EmoteProperty", true);
                table.insert(v2262, l_m6d_26);
                v2264.md = l_m6d_26;
                v2265.Name = "Handle";
                l_m6d_26.Part0 = v101["Left Arm"];
                l_m6d_26.Part1 = v2265.Handle;
                l_m6d_26.Parent = v101["Left Arm"];
                v2265.Parent = v101;
            end, 
            Keyframes = {
                claploop = function(_, _, _, _) --[[ Line: 14691 ]]
                    -- upvalues: l_CollectionService_1 (ref), v101 (copy), v91 (ref), v87 (ref), v75 (ref)
                    local l_Attachment_14 = Instance.new("Attachment");
                    l_CollectionService_1:AddTag(l_Attachment_14, "emotestuff" .. v101.Name);
                    l_Attachment_14.Parent = workspace.Terrain;
                    game:GetService("Debris"):AddItem(l_Attachment_14, 5);
                    local l_PrimaryPart_0 = v101.PrimaryPart;
                    l_Attachment_14.WorldPosition = (l_PrimaryPart_0.CFrame + l_PrimaryPart_0.CFrame.lookVector * 10).Position + Vector3.new(0, 2, 0, 0);
                    local v2273 = game.ReplicatedStorage.Emotes.ImpactGlow:Clone();
                    v2273.Parent = l_Attachment_14;
                    shared.resizeparticle(v2273, v91(1, 1.2));
                    v2273:Emit(1);
                    local l_createlight_1 = shared.createlight;
                    local v2275 = {
                        Position = l_Attachment_14.WorldPosition, 
                        Color = Color3.new(1, 1, 1)
                    };
                    local v2276 = 7;
                    local v2277 = 10;
                    if not v2277 and v2276 then
                        v2277 = v2276;
                        v2276 = 1;
                    end;
                    if not v2277 and not v2276 then
                        v2276 = 0;
                        v2277 = 1;
                    end;
                    v2275.Brightness = v87:NextNumber(v2276, v2277);
                    v2276 = 0.3;
                    v2277 = 0.5;
                    if not v2277 and v2276 then
                        v2277 = v2276;
                        v2276 = 1;
                    end;
                    if not v2277 and not v2276 then
                        v2276 = 0;
                        v2277 = 1;
                    end;
                    v2275.Fade = v87:NextNumber(v2276, v2277);
                    v2276 = 10;
                    v2277 = 12;
                    if not v2277 and v2276 then
                        v2277 = v2276;
                        v2276 = 1;
                    end;
                    if not v2277 and not v2276 then
                        v2276 = 0;
                        v2277 = 1;
                    end;
                    v2275.Range = v87:NextNumber(v2276, v2277);
                    l_createlight_1(v2275);
                    v75({
                        SoundId = ({
                            "rbxassetid://14616094683", 
                            "rbxassetid://14616213070", 
                            "rbxassetid://14616213367", 
                            "rbxassetid://14616213705", 
                            "rbxassetid://14616214083"
                        })[math.random(1, 5)], 
                        Parent = l_Attachment_14, 
                        Volume = 0.5
                    }):Play();
                end, 
                ["end"] = function(v2278, _, _) --[[ Line: 14727 ]]
                    -- upvalues: l_TweenService_0 (ref), v101 (copy)
                    local l_sign_1 = v2278.Handle.sign;
                    game:GetService("Debris"):AddItem(l_sign_1, 5);
                    v2278.Handle.Handle.sign:Destroy();
                    l_sign_1.Parent = workspace.Thrown;
                    l_TweenService_0:Create(l_sign_1, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Size = Vector3.new()
                    }):Play();
                    local l_BodyVelocity_3 = Instance.new("BodyVelocity");
                    l_BodyVelocity_3.MaxForce = Vector3.new(40000, 40000, 40000, 0);
                    l_BodyVelocity_3.Velocity = v101.PrimaryPart.CFrame.RightVector * -20;
                    l_BodyVelocity_3.Velocity = l_BodyVelocity_3.Velocity + Vector3.new(0, 8, 0, 0);
                    l_BodyVelocity_3.Parent = l_sign_1;
                    game:GetService("Debris"):AddItem(l_BodyVelocity_3, 0.15);
                end
            }, 
            Animation = 15092657164, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Table Flip"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15438974600", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v2283, _, v2285) --[[ Line: 14759 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2286 = game.ReplicatedStorage.Emotes.Table:Clone();
                v2286:SetAttribute("EmoteProperty", true);
                table.insert(v2283, v2286);
                v2285.Handle = v2286;
                local l_Handle_44 = v2286.Handle;
                l_Handle_44:SetAttribute("EmoteProperty", true);
                table.insert(v2283, l_Handle_44);
                v2285.md = l_Handle_44;
                v2286.Name = "Handle";
                l_Handle_44.Part0 = v101.HumanoidRootPart;
                l_Handle_44.Part1 = v2286;
                l_Handle_44.Parent = v101.HumanoidRootPart;
                v2286.Parent = v101;
            end, 
            Keyframes = {
                go = function(v2288, _, _, _) --[[ Line: 14770 ]]
                    -- upvalues: l_CollectionService_1 (ref), v101 (copy), l_PlayerFromCharacter_0 (copy), v75 (ref)
                    local v2292 = 0;
                    local v2293 = game.ReplicatedStorage.Emotes.Table:Clone();
                    l_CollectionService_1:AddTag(v2293, "emotestuff" .. v101.Name);
                    game:GetService("Debris"):AddItem(v2293, 5);
                    v2293.CanCollide = true;
                    v2293.CanTouch = true;
                    v2293.CanQuery = false;
                    v2293.Massless = false;
                    v2293.CollisionGroup = "nocol";
                    v2293.CFrame = v2288.Handle.CFrame;
                    v2288.Handle:Destroy();
                    v2293.Parent = workspace.Thrown;
                    local v2294 = Instance.new("Attachment", v2293);
                    v2294.Position = Vector3.new(0, -0.25, 0.25, 0);
                    local v2295 = Instance.new("LinearVelocity", v2294);
                    v2295.MaxForce = 40000;
                    v2295.VectorVelocity = v101.PrimaryPart.CFrame.lookVector * 35 + Vector3.new(0, 60, 0, 0);
                    v2295.Attachment0 = v2294;
                    game:GetService("Debris"):AddItem(v2295, 0.15);
                    v2293:SetNetworkOwner(l_PlayerFromCharacter_0);
                    local v2296 = nil;
                    v2296 = v2293.Touched:Connect(function(v2297) --[[ Line: 14793 ]]
                        -- upvalues: v2292 (ref), v2293 (copy), v75 (ref)
                        if v2297:IsDescendantOf(workspace.Live) or tick() - v2292 < 0.075 then
                            return;
                        elseif math.abs(v2293.Velocity.Y) < 2 then
                            return;
                        else
                            v2292 = 1e999;
                            v75({
                                SoundId = "rbxassetid://15438974803", 
                                Parent = v2293, 
                                Volume = 2
                            }):Play();
                            v75({
                                SoundId = "rbxassetid://9120957636", 
                                Parent = v2293, 
                                Volume = 1
                            }):Play();
                            return;
                        end;
                    end);
                    task.delay(5, function() --[[ Line: 14814 ]]
                        -- upvalues: v2296 (ref)
                        v2296:Disconnect();
                    end);
                end
            }, 
            Animation = 15438946008, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Ls = {
            Sounds = {}, 
            Startup = function(v2298, _, v2300) --[[ Line: 14829 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2301 = game.ReplicatedStorage.Emotes.Letter:Clone();
                v2301:SetAttribute("EmoteProperty", true);
                table.insert(v2298, v2301);
                v2300.Handle = v2301;
                local l_Handle_45 = v2301.Handle;
                l_Handle_45:SetAttribute("EmoteProperty", true);
                table.insert(v2298, l_Handle_45);
                v2300.md = l_Handle_45;
                v2301.Name = "Handle";
                l_Handle_45.Part0 = v101["Right Arm"];
                l_Handle_45.Part1 = v2301;
                l_Handle_45.Parent = v101["Right Arm"];
                v2301.Parent = v101;
            end, 
            Keyframes = {
                clap = function(v2303) --[[ Line: 14840 ]]
                    -- upvalues: l_TweenService_0 (ref), v75 (ref)
                    l_TweenService_0:Create(v2303.Handle.Part.Mesh, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                        Scale = Vector3.new(0.23999999463558197, 0.23999999463558197, 0.23999999463558197, 0)
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://9117842014", 
                        Parent = v2303.Handle.Part, 
                        Volume = 0.25
                    }):Play();
                end, 
                claploop = function(v2304, _, _, _) --[[ Line: 14852 ]]
                    -- upvalues: l_CollectionService_1 (ref), v101 (copy), v75 (ref), v87 (ref), l_PlayerFromCharacter_0 (copy), l_TweenService_0 (ref)
                    local v2308 = tick();
                    local v2309 = game.ReplicatedStorage.Emotes.Letter.Part:Clone();
                    l_CollectionService_1:AddTag(v2309, "emotestuff" .. v101.Name);
                    game:GetService("Debris"):AddItem(v2309, 5);
                    v2309.CanCollide = true;
                    v2309.CanTouch = true;
                    v2309.CanQuery = false;
                    v2309.Massless = false;
                    v2309.CollisionGroup = "nocol";
                    v2309.CFrame = v2304.Handle.Part.CFrame;
                    v2304.Handle.Part.Mesh.Scale = Vector3.new();
                    v2309.Parent = workspace.Thrown;
                    local l_v75_1 = v75;
                    local v2311 = {
                        SoundId = "rbxassetid://15453510339", 
                        Parent = v2309, 
                        Volume = 0.75
                    };
                    local v2312 = 0.95;
                    local v2313 = 1.25;
                    if not v2313 and v2312 then
                        v2313 = v2312;
                        v2312 = 1;
                    end;
                    if not v2313 and not v2312 then
                        v2312 = 0;
                        v2313 = 1;
                    end;
                    v2311.PlaybackSpeed = v87:NextNumber(v2312, v2313);
                    v2311.TimePosition = 0.1;
                    l_v75_1(v2311):Resume();
                    l_v75_1 = Instance.new("BodyVelocity");
                    l_v75_1.MaxForce = Vector3.new(40000, 40000, 40000, 0);
                    local l_CFrame_0 = v101.PrimaryPart.CFrame;
                    local l_Angles_0 = CFrame.Angles;
                    local v2316 = 0;
                    local v2317 = -15;
                    local v2318 = 15;
                    if not v2318 and v2317 then
                        v2318 = v2317;
                        v2317 = 1;
                    end;
                    if not v2318 and not v2317 then
                        v2317 = 0;
                        v2318 = 1;
                    end;
                    v2312 = (l_CFrame_0 * l_Angles_0(v2316, math.rad((v87:NextNumber(v2317, v2318))), 0)).lookVector;
                    l_CFrame_0 = 30;
                    l_Angles_0 = 40;
                    if not l_Angles_0 and l_CFrame_0 then
                        l_Angles_0 = l_CFrame_0;
                        l_CFrame_0 = 1;
                    end;
                    if not l_Angles_0 and not l_CFrame_0 then
                        l_CFrame_0 = 0;
                        l_Angles_0 = 1;
                    end;
                    local v2319 = v2312 * v87:NextNumber(l_CFrame_0, l_Angles_0);
                    v2313 = 0;
                    l_Angles_0 = 5;
                    v2316 = 7.5;
                    if not v2316 and l_Angles_0 then
                        v2316 = l_Angles_0;
                        l_Angles_0 = 1;
                    end;
                    if not v2316 and not l_Angles_0 then
                        l_Angles_0 = 0;
                        v2316 = 1;
                    end;
                    l_v75_1.Velocity = v2319 + Vector3.new(v2313, v87:NextNumber(l_Angles_0, v2316), 0);
                    l_v75_1.Parent = v2309;
                    game:GetService("Debris"):AddItem(l_v75_1, 0.15);
                    v2309:SetNetworkOwner(l_PlayerFromCharacter_0);
                    v2311 = v2309.Mesh;
                    v2319 = nil;
                    v2319 = v2309.Touched:Connect(function(v2320) --[[ Line: 14883 ]]
                        -- upvalues: v2308 (ref), v2309 (copy), v75 (ref), v87 (ref), l_TweenService_0 (ref), v2311 (copy)
                        if v2320:IsDescendantOf(workspace.Live) or tick() - v2308 < 0.075 then
                            return;
                        elseif math.abs(v2309.Velocity.Y) < 2 then
                            return;
                        else
                            v2308 = 1e999;
                            local l_v75_2 = v75;
                            local v2322 = {
                                SoundId = "rbxassetid://9118172318", 
                                Parent = v2309, 
                                Volume = 0.5
                            };
                            local v2323 = 1;
                            local v2324 = 1.5;
                            if not v2324 and v2323 then
                                v2324 = v2323;
                                v2323 = 1;
                            end;
                            if not v2324 and not v2323 then
                                v2323 = 0;
                                v2324 = 1;
                            end;
                            v2322.PlaybackSpeed = v87:NextNumber(v2323, v2324);
                            l_v75_2(v2322):Play();
                            task.delay(0.75, function() --[[ Line: 14899 ]]
                                -- upvalues: l_TweenService_0 (ref), v2311 (ref), v2309 (ref)
                                l_TweenService_0:Create(v2311, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                                    Scale = Vector3.new(0, 0, 0, 0)
                                }):Play();
                                task.delay(0.5, function() --[[ Line: 14903 ]]
                                    -- upvalues: v2309 (ref)
                                    v2309:Destroy();
                                end);
                            end);
                            return;
                        end;
                    end);
                    task.delay(1, function() --[[ Line: 14909 ]]
                        -- upvalues: v2319 (ref)
                        v2319:Disconnect();
                    end);
                end
            }, 
            Infinite = true, 
            Animation = 15453677841, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        ["And One"] = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14615768920", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v2325, _, v2327) --[[ Line: 14931 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2328 = game.ReplicatedStorage.Emotes.basketball:Clone();
                v2327.bb = v2328;
                table.insert(v2325, v2328);
                v2328:SetAttribute("EmoteProperty", true);
                local l_Motor6D_28 = v2328:FindFirstChildOfClass("Motor6D");
                table.insert(v2325, l_Motor6D_28);
                l_Motor6D_28:SetAttribute("EmoteProperty", true);
                l_Motor6D_28.Part0 = v101.PrimaryPart;
                l_Motor6D_28.Name = "Handle";
                l_Motor6D_28.Parent = v101.PrimaryPart;
                l_Motor6D_28.C0 = CFrame.new(-1.5, -1.375, 0);
                l_Motor6D_28.Part1 = v2328.Handle;
                v2328.Parent = v101;
            end, 
            Keyframes = {
                jump = function(_, _, _, v2333) --[[ Line: 14947 ]]
                    -- upvalues: v87 (ref), l_CollectionService_1 (ref), v101 (copy), v91 (ref), v75 (ref)
                    task.spawn(function() --[[ Line: 14948 ]]
                        -- upvalues: v87 (ref), v2333 (copy), l_CollectionService_1 (ref), v101 (ref), v91 (ref), v75 (ref)
                        local v2334 = 1;
                        local v2335 = 3;
                        local v2336 = 4;
                        if not v2336 and v2335 then
                            v2336 = v2335;
                            v2335 = 1;
                        end;
                        if not v2336 and not v2335 then
                            v2335 = 0;
                            v2336 = 1;
                        end;
                        for _ = v2334, v87:NextInteger(v2335, v2336) do
                            if v2333.interrupted then
                                return;
                            else
                                v2335 = Instance.new("Attachment");
                                l_CollectionService_1:AddTag(v2335, "emotestuff" .. v101.Name);
                                v2335.Parent = v101.PrimaryPart;
                                game:GetService("Debris"):AddItem(v2335, 5);
                                v2336 = v101.PrimaryPart;
                                local l_Position_0 = v2336.Position;
                                local v2339 = -10;
                                local v2340 = 10;
                                if not v2340 and v2339 then
                                    v2340 = v2339;
                                    v2339 = 1;
                                end;
                                if not v2340 and not v2339 then
                                    v2339 = 0;
                                    v2340 = 1;
                                end;
                                local v2341 = l_Position_0 + Vector3.new(v87:NextNumber(v2339, v2340), 0, v91(-10, 10));
                                v2335.WorldPosition = v2336.Position + (v2341 - v2336.Position).Unit * 10;
                                l_Position_0 = v2335.WorldPosition;
                                local v2342 = 0;
                                v2340 = 1;
                                local v2343 = 3;
                                if not v2343 and v2340 then
                                    v2343 = v2340;
                                    v2340 = 1;
                                end;
                                if not v2343 and not v2340 then
                                    v2340 = 0;
                                    v2343 = 1;
                                end;
                                v2335.WorldPosition = l_Position_0 + Vector3.new(v2342, v87:NextNumber(v2340, v2343), 0);
                                l_Position_0 = game.ReplicatedStorage.Emotes.ImpactGlow:Clone();
                                l_Position_0.Parent = v2335;
                                shared.resizeparticle(l_Position_0, v91(1, 1.2));
                                l_Position_0:Emit(1);
                                local l_createlight_2 = shared.createlight;
                                v2342 = {
                                    Position = v2335.WorldPosition, 
                                    Color = Color3.new(1, 1, 1)
                                };
                                v2340 = 7;
                                v2343 = 10;
                                if not v2343 and v2340 then
                                    v2343 = v2340;
                                    v2340 = 1;
                                end;
                                if not v2343 and not v2340 then
                                    v2340 = 0;
                                    v2343 = 1;
                                end;
                                v2342.Brightness = v87:NextNumber(v2340, v2343);
                                v2340 = 0.3;
                                v2343 = 0.5;
                                if not v2343 and v2340 then
                                    v2343 = v2340;
                                    v2340 = 1;
                                end;
                                if not v2343 and not v2340 then
                                    v2340 = 0;
                                    v2343 = 1;
                                end;
                                v2342.Fade = v87:NextNumber(v2340, v2343);
                                v2340 = 10;
                                v2343 = 12;
                                if not v2343 and v2340 then
                                    v2343 = v2340;
                                    v2340 = 1;
                                end;
                                if not v2343 and not v2340 then
                                    v2340 = 0;
                                    v2343 = 1;
                                end;
                                v2342.Range = v87:NextNumber(v2340, v2343);
                                l_createlight_2(v2342);
                                v75({
                                    SoundId = ({
                                        "rbxassetid://14616094683", 
                                        "rbxassetid://14616213070", 
                                        "rbxassetid://14616213367", 
                                        "rbxassetid://14616213705", 
                                        "rbxassetid://14616214083"
                                    })[math.random(1, 5)], 
                                    Parent = v2335, 
                                    Volume = 0.5
                                }):Play();
                                task.wait(v91(0, 0.175));
                            end;
                        end;
                    end);
                end, 
                throw = function(v2345, _, _, _) --[[ Line: 14992 ]]
                    -- upvalues: l_CollectionService_1 (ref), v101 (copy), l_PlayerFromCharacter_0 (copy), v75 (ref)
                    v2345.bb["B-Ball"].Transparency = 1;
                    local v2349 = game.ReplicatedStorage.Emotes.basketball["B-Ball"]:Clone();
                    l_CollectionService_1:AddTag(v2349, "emotestuff" .. v101.Name);
                    game:GetService("Debris"):AddItem(v2349, 5);
                    v2349.CanCollide = true;
                    v2349.CanTouch = true;
                    v2349.CanQuery = false;
                    v2349.Massless = false;
                    v2349.CollisionGroup = "nocol";
                    v2349.CFrame = v2345.bb["B-Ball"].CFrame;
                    v2349.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1);
                    v2349.Parent = workspace.Thrown;
                    v2349:SetNetworkOwner(l_PlayerFromCharacter_0);
                    local v2350 = v101.PrimaryPart.CFrame + v101.PrimaryPart.CFrame.lookVector * 50;
                    local v2351 = Vector3.new(0, -workspace.Gravity, 0);
                    local v2352 = v101.PrimaryPart.CFrame * Vector3.new(0, 0, -2, 0);
                    local v2353 = (v2350.Position - v2352 - 0.5 * v2351 * 1 * 1) / 1;
                    local v2354 = 0;
                    v2349.Velocity = v2353;
                    local v2355 = nil;
                    v2355 = v2349.Touched:Connect(function(v2356) --[[ Line: 15014 ]]
                        -- upvalues: v2354 (ref), v2349 (copy), v75 (ref)
                        if v2356:IsDescendantOf(workspace.Live) or tick() - v2354 < 0.075 then
                            return;
                        elseif math.abs(v2349.Velocity.Y) < 4 then
                            return;
                        else
                            v2354 = tick();
                            v75({
                                SoundId = "rbxassetid://14404844095", 
                                Parent = v2349, 
                                Volume = 2, 
                                PlaybackSpeed = Random.new():NextNumber(0.9, 1.1)
                            }):Play();
                            return;
                        end;
                    end);
                    task.delay(5, function() --[[ Line: 15030 ]]
                        -- upvalues: v2355 (ref)
                        v2355:Disconnect();
                    end);
                end
            }, 
            Animation = 14616272668, 
            Fix = true, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Millionare = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14613168242", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v2357, _, v2359) --[[ Line: 15052 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref), l_TweenService_0 (ref)
                local v2360 = game.ReplicatedStorage.Emotes.Briefcase:Clone();
                v2359.bb = v2360;
                table.insert(v2357, v2360);
                v2360:SetAttribute("EmoteProperty", true);
                local l_M6D_1 = v2360.M6D;
                table.insert(v2357, l_M6D_1);
                l_M6D_1:SetAttribute("EmoteProperty", true);
                l_M6D_1.Part0 = v101.PrimaryPart;
                l_M6D_1.Name = "Root";
                l_M6D_1.Part1 = v2360.Root;
                l_M6D_1.Parent = v101.PrimaryPart;
                v2360.Parent = v101;
                local v2362 = v75({
                    SoundId = "rbxassetid://9042544497", 
                    Volume = 0, 
                    TimePosition = 1.15, 
                    Looped = false, 
                    Parent = v101.PrimaryPart
                });
                v2362:SetAttribute("EmoteProperty", true);
                v2362:Resume();
                l_TweenService_0:Create(v2362, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Volume = 0.3
                }):Play();
            end, 
            Keyframes = {
                ["end"] = function(v2363) --[[ Line: 15079 ]]
                    v2363.bb:Destroy();
                end
            }, 
            Animation = 14613239786, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        RAHHH = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14399836732", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Keyframes = {
                slam = function(v2364) --[[ Line: 15100 ]]
                    -- upvalues: l_CollectionService_1 (ref), v101 (copy), l_PlayerFromCharacter_0 (copy), v75 (ref)
                    local v2365 = game.ReplicatedStorage.Emotes.basketball["B-Ball"]:Clone();
                    l_CollectionService_1:AddTag(v2365, "emotestuff" .. v101.Name);
                    game:GetService("Debris"):AddItem(v2365, 5);
                    v2365.CanCollide = true;
                    v2365.CanTouch = true;
                    v2365.CanQuery = false;
                    v2365.Massless = false;
                    v2365.CollisionGroup = "nocol";
                    v2365.CFrame = v2364.bb["B-Ball"].CFrame;
                    v2365.Velocity = Vector3.new(0, -75, 0, 0);
                    v2365.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1);
                    v2365.Parent = workspace.Thrown;
                    v2365:SetNetworkOwner(l_PlayerFromCharacter_0);
                    local v2366 = 0;
                    local v2367 = nil;
                    v2367 = v2365.Touched:Connect(function(v2368) --[[ Line: 15116 ]]
                        -- upvalues: v2366 (ref), v2365 (copy), v75 (ref)
                        if v2368:IsDescendantOf(workspace.Live) or tick() - v2366 < 0.075 then
                            return;
                        elseif math.abs(v2365.Velocity.Y) < 4 then
                            return;
                        else
                            v2366 = tick();
                            v75({
                                SoundId = "rbxassetid://14404844095", 
                                Parent = v2365, 
                                Volume = 2, 
                                PlaybackSpeed = Random.new():NextNumber(0.9, 1.1)
                            }):Play();
                            return;
                        end;
                    end);
                    task.delay(5, function() --[[ Line: 15132 ]]
                        -- upvalues: v2367 (ref)
                        v2367:Disconnect();
                    end);
                    v2364.bb:Destroy();
                    v75({
                        SoundId = "rbxassetid://14405165735", 
                        Parent = v2364.hoop, 
                        Volume = 1
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://14404816151", 
                        Parent = v101:FindFirstChild("Torso"), 
                        Volume = 2
                    }):Play();
                end
            }, 
            Startup = function(v2369, _, v2371) --[[ Line: 15151 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2372 = game.ReplicatedStorage.Emotes.basketball:Clone();
                v2371.bb = v2372;
                table.insert(v2369, v2372);
                v2372:SetAttribute("EmoteProperty", true);
                local v2373 = game.ReplicatedStorage.Emotes.hoop:Clone();
                local l_Weld_9 = Instance.new("Weld");
                l_Weld_9.Part0 = v101.PrimaryPart;
                l_Weld_9.Part1 = v2373.Main;
                l_Weld_9.Parent = v2373;
                l_Weld_9.C0 = CFrame.new(0.0489730835, 5.62188959, -4.88491774, -2.98023224E-8, 1.49011612E-8, 0.99999994, 0, 1, 1.49011612E-8, -1, 0, 2.98023224E-8);
                v2373:SetAttribute("EmoteProperty", true);
                table.insert(v2369, v2373);
                v2373.Parent = v101;
                v2371.hoop = v2373.Main;
                local l_Motor6D_29 = v2372:FindFirstChildOfClass("Motor6D");
                table.insert(v2369, l_Motor6D_29);
                l_Motor6D_29:SetAttribute("EmoteProperty", true);
                l_Motor6D_29.Part0 = v101["Left Arm"];
                l_Motor6D_29.Parent = v101["Left Arm"];
                l_Motor6D_29.C0 = CFrame.new(0, -1.375, 0);
                l_Motor6D_29.Part1 = v2372.Handle;
                v2372.Parent = v101;
            end, 
            Fix = true, 
            Animation = 14403375793, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Pipe Down"] = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14406939515", 
                    Volume = 2, 
                    Looped = false
                }
            }, 
            Keyframes = {
                ["end"] = function(v2376) --[[ Line: 15192 ]]
                    v2376.pipe.Transparency = 1;
                end
            }, 
            Startup = function(v2377, _, v2379) --[[ Line: 15197 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2380 = game.ReplicatedStorage.Emotes["metal pipe"]:Clone();
                local l_Part_3 = v2380.Part;
                l_Part_3.Part0 = v101["Right Arm"];
                l_Part_3.Part1 = v2380["Metal pipe"].Part;
                v2379.pipe = v2380["Metal pipe"];
                for _, v2383 in pairs({
                    v2380, 
                    l_Part_3
                }) do
                    v2383:SetAttribute("EmoteProperty", true);
                    table.insert(v2377, v2383);
                end;
                l_Part_3.Parent = v101["Right Arm"];
                v2380.Parent = v101;
            end, 
            Animation = 14406991505, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Weight = {
            Keyframes = {
                freeze = function(_, _, v2386) --[[ Line: 15219 ]]
                    v2386:AdjustSpeed(0);
                end
            }, 
            Startup = function(v2387, _, v2389) --[[ Line: 15224 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v2390 = game.ReplicatedStorage.Emotes.Weight:Clone();
                v2390:SetAttribute("EmoteProperty", true);
                table.insert(v2387, v2390);
                v2389.Handle = v2390;
                local l_Motor6D_30 = v2390:FindFirstChildOfClass("Motor6D");
                l_Motor6D_30:SetAttribute("EmoteProperty", true);
                table.insert(v2387, l_Motor6D_30);
                v2389.md = l_Motor6D_30;
                l_Motor6D_30.Name = "Handle";
                l_Motor6D_30.Part0 = v101["Left Arm"];
                l_Motor6D_30.Part1 = v2390.Handle;
                l_Motor6D_30.Parent = v101["Left Arm"];
                v2390.Parent = v101;
                v75({
                    SoundId = "rbxassetid://15674264465", 
                    Parent = v101.Torso, 
                    Volume = 2
                }):Play();
            end, 
            HideWeapon = true, 
            Animation = 15674270929, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Take My Money"] = {
            Keyframes = {
                coins = function(_, _, _) --[[ Line: 15248 ]]
                    -- upvalues: v101 (copy)
                    game.ReplicatedStorage.Replication:FireAllClients({
                        Effect = "Coins", 
                        root = v101.PrimaryPart
                    });
                end
            }, 
            Startup = function(v2395, _, v2397) --[[ Line: 15256 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2398 = game.ReplicatedStorage.Emotes.TakeMoney["Meshes/Card_model"]:Clone();
                v2398:SetAttribute("EmoteProperty", true);
                table.insert(v2395, v2398);
                v2397.Handle = v2398;
                local l_Motor6D_31 = v2398:FindFirstChildOfClass("Motor6D");
                l_Motor6D_31:SetAttribute("EmoteProperty", true);
                table.insert(v2395, l_Motor6D_31);
                v2397.md = l_Motor6D_31;
                l_Motor6D_31.Name = "Meshes/Card_model";
                l_Motor6D_31.Part0 = v101["Left Arm"];
                l_Motor6D_31.Part1 = v2398;
                l_Motor6D_31.Parent = v101["Left Arm"];
                v2398.Parent = v101;
                local v2400 = game.ReplicatedStorage.Emotes.TakeMoney.Counter:Clone();
                v2400:SetAttribute("EmoteProperty", true);
                table.insert(v2395, v2400);
                v2400.Name = "asjdaiosdjasjd";
                local l_Weld_10 = Instance.new("Weld");
                l_Weld_10.Part0 = v101.PrimaryPart;
                l_Weld_10.Part1 = v2400.Bottom;
                l_Weld_10.C0 = CFrame.new(0.320178986, -1.92516398, -2.43821144, -2.60999286E-7, 3.78694926E-6, -1.00000024, 4.02372007E-6, 1.00000262, 1.25370036E-6, 1.00000143, -1.38620999E-6, -9.6974091E-8);
                l_Weld_10.Parent = v2400.Bottom;
                v2400.Parent = v101;
                task.delay(0, function() --[[ Line: 15273 ]]
                    -- upvalues: v2400 (copy)
                    for _, v2403 in pairs(v2400:GetChildren()) do
                        v2403.CollisionGroup = "nocol";
                    end;
                end);
            end, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16593642774", 
                    Volume = 2, 
                    Looped = false
                }
            }, 
            Animation = 16593648830, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Garbage = {
            Keyframes = {
                freeze = function(_, _, v2406) --[[ Line: 15295 ]]
                    v2406:AdjustSpeed(0);
                end
            }, 
            Startup = function(v2407, _, v2409) --[[ Line: 15300 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v2410 = game.ReplicatedStorage.Emotes.trashbag:Clone();
                v2410:SetAttribute("EmoteProperty", true);
                table.insert(v2407, v2410);
                v2409.Handle = v2410;
                local l_Motor6D_32 = v2410:FindFirstChildOfClass("Motor6D");
                l_Motor6D_32:SetAttribute("EmoteProperty", true);
                table.insert(v2407, l_Motor6D_32);
                v2409.md = l_Motor6D_32;
                l_Motor6D_32.Name = "Sphere";
                l_Motor6D_32.Part0 = v101.PrimaryPart;
                l_Motor6D_32.Part1 = v2410.Sphere;
                l_Motor6D_32.Parent = v101.PrimaryPart;
                v2410.Parent = v101;
                v75({
                    SoundId = "rbxassetid://14498158970", 
                    Parent = v2410.Sphere, 
                    Volume = 1
                }):Play();
            end, 
            Animation = 14498295360, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Silence = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14498550793", 
                    Volume = 0.75, 
                    Looped = false
                }
            }, 
            Keyframes = {
                deaf = function(_, v2413) --[[ Line: 15331 ]]
                    -- upvalues: v101 (copy)
                    local v2414 = shared.cfolder({
                        Name = "#Deafened", 
                        Parent = v101
                    });
                    v2414:SetAttribute("EmoteProperty", true);
                    table.insert(v2413, v2414);
                end, 
                freeze = function(_, _, v2417) --[[ Line: 15340 ]]
                    v2417:AdjustSpeed(0);
                end
            }, 
            Startup = function(v2418, _, v2420) --[[ Line: 15345 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local l_Silence_0 = game.ReplicatedStorage.Emotes.Silence;
                local v2422 = l_Silence_0["Earplug Handle"]:Clone();
                v2422:SetAttribute("EmoteProperty", true);
                table.insert(v2418, v2422);
                v2420.Handle = v2422;
                local v2423 = v2422[v2422.Name];
                v2423:SetAttribute("EmoteProperty", true);
                table.insert(v2418, v2423);
                v2420.md = v2423;
                v2423.Name = "Handle";
                v2423.Part0 = v101["Right Arm"];
                v2423.Part1 = v2422;
                v2423.Parent = v101["Right Arm"];
                v2422.Parent = v101;
                local v2424 = l_Silence_0["Earplug Handle2"]:Clone();
                v2424:SetAttribute("EmoteProperty", true);
                table.insert(v2418, v2424);
                v2420.Handle = v2424;
                local v2425 = v2424[v2424.Name];
                v2425:SetAttribute("EmoteProperty", true);
                table.insert(v2418, v2425);
                v2420.md = v2425;
                v2425.Name = "Handle";
                v2425.Part0 = v101["Left Arm"];
                v2425.Part1 = v2424;
                v2425.Parent = v101["Left Arm"];
                v2424.Parent = v101;
            end, 
            Animation = 14498033288, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        ["Fresh Fries"] = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14406845410", 
                    Volume = 2, 
                    Looped = false
                }
            }, 
            Keyframes = {
                appear = function(v2426) --[[ Line: 15380 ]]
                    for _, v2428 in pairs(v2426.fries:GetChildren()) do
                        if v2428.Name ~= "primary" then
                            v2428.Transparency = 0;
                        end;
                    end;
                end, 
                freeze = function(_, _, v2431) --[[ Line: 15388 ]]
                    v2431:AdjustSpeed(0);
                end, 
                gone = function(v2432) --[[ Line: 15392 ]]
                    v2432.box:Destroy();
                end
            }, 
            Startup = function(v2433, _, v2435) --[[ Line: 15398 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2436 = game.ReplicatedStorage.Emotes.Fries.Fries:Clone();
                v2436:SetAttribute("EmoteProperty", true);
                table.insert(v2433, v2436);
                v2435.fries = v2436;
                local v2437 = game.ReplicatedStorage.Emotes.Fries.primary:Clone();
                v2437:SetAttribute("EmoteProperty", true);
                table.insert(v2433, v2437);
                v2437.Part0 = v101.PrimaryPart;
                v2437.Part1 = v2436.primary;
                v2437.Parent = v101.PrimaryPart;
                v2436.Parent = v101;
                local v2438 = game.ReplicatedStorage.Emotes.Fries.Model:Clone();
                v2438:SetAttribute("EmoteProperty", true);
                table.insert(v2433, v2438);
                local v2439 = game.ReplicatedStorage.Emotes.Fries["primary part"]:Clone();
                v2439:SetAttribute("EmoteProperty", true);
                table.insert(v2433, v2439);
                v2439.Part0 = v101["Right Arm"];
                v2439.Part1 = v2438["primary part"];
                v2439.Parent = v101["Right Arm"];
                v2438.Parent = v101;
                v2435.box = v2438;
                local v2440 = game.ReplicatedStorage.Emotes.Fries.Chair:Clone();
                v2440:SetAttribute("EmoteProperty", true);
                table.insert(v2433, v2440);
                local l_Weld_11 = Instance.new("Weld");
                l_Weld_11.Part0 = v101.PrimaryPart;
                l_Weld_11.Part1 = v2440;
                l_Weld_11.C0 = CFrame.new(-0.0262451172, -0.944903374, 0.946708679, 1, 4.04431057E-6, -1.05499259E-6, -4.04430102E-6, 1, 8.92530261E-6, 1.05502875E-6, -8.92529806E-6, 1);
                l_Weld_11.Parent = v2440;
                v2440.Parent = v101;
                local v2442 = game.ReplicatedStorage.Emotes.Fries.Table:Clone();
                v2442:SetAttribute("EmoteProperty", true);
                table.insert(v2433, v2442);
                local l_Weld_12 = Instance.new("Weld");
                l_Weld_12.Part0 = v101.PrimaryPart;
                l_Weld_12.Part1 = v2442;
                l_Weld_12.C0 = CFrame.new(-1.52587891E-5, -1.70007861, -2.60010529, 1, 4.04431057E-6, -1.05499259E-6, -4.04430102E-6, 1, 8.92530261E-6, 1.05502875E-6, -8.92529806E-6, 1);
                l_Weld_12.Parent = v2442;
                v2442.Parent = v101;
            end, 
            Animation = 14406679583, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Spread = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14056281965", 
                    Volume = 3.5, 
                    Looped = false
                }
            }, 
            Keyframes = {
                gone = function(v2444) --[[ Line: 15452 ]]
                    for _, v2446 in pairs(v2444) do
                        v2446:Destroy();
                    end;
                end
            }, 
            Startup = function(v2447, _, v2449) --[[ Line: 15459 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy), l_TweenService_0 (ref)
                local v2450 = v75({
                    SoundId = "rbxassetid://1837644729", 
                    Volume = 0, 
                    TimePosition = 1.1, 
                    Looped = false, 
                    Parent = v101.PrimaryPart
                });
                v2450:SetAttribute("EmoteProperty", true);
                v2450:Resume();
                l_TweenService_0:Create(v2450, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Volume = 0.75
                }):Play();
                local v2451 = game.ReplicatedStorage.Emotes.Money.Handle:Clone();
                v2451:SetAttribute("EmoteProperty", true);
                table.insert(v2447, v2451);
                v2449.Handle = v2451;
                local v2452 = game.ReplicatedStorage.Emotes.Money.M6D:Clone();
                v2452:SetAttribute("EmoteProperty", true);
                table.insert(v2447, v2452);
                v2449.md = v2452;
                v2452.Name = "Handle";
                v2452.Part0 = v101["Left Arm"];
                v2452.Part1 = v2451;
                v2452.Parent = v101["Left Arm"];
                v2451.Parent = v101;
            end, 
            Animation = 14056341330, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        ["Keyboard Warrior"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14357786890", 
                    Volume = 1.25, 
                    Looped = true
                }
            }, 
            Startup = function(v2453) --[[ Line: 15496 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2454 = game.ReplicatedStorage.Emotes.Keyboard.Handle:Clone();
                v2454:SetAttribute("EmoteProperty", true);
                table.insert(v2453, v2454);
                local v2455 = game.ReplicatedStorage.Emotes.Keyboard.M6D:Clone();
                v2455:SetAttribute("EmoteProperty", true);
                table.insert(v2453, v2455);
                v2455.Name = "Handle";
                v2455.Part0 = v101.HumanoidRootPart;
                v2455.Part1 = v2454;
                v2455.Parent = v101.HumanoidRootPart;
                v2454.Parent = v101;
            end, 
            Animation = 14357783332, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Rage = {
            Sounds = {}, 
            Startup = function(v2456, _, v2458) --[[ Line: 15516 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v2459 = game.ReplicatedStorage.Emotes.Keyboard.Handle:Clone();
                v2459:SetAttribute("EmoteProperty", true);
                table.insert(v2456, v2459);
                v2458.kb = v2459.Keyboard;
                local v2460 = game.ReplicatedStorage.Emotes.Keyboard.M6D:Clone();
                v2460:SetAttribute("EmoteProperty", true);
                table.insert(v2456, v2460);
                v2460.Name = "Handle";
                v2460.Part0 = v101.HumanoidRootPart;
                v2460.Part1 = v2459;
                v2460.Parent = v101.HumanoidRootPart;
                v2459.Parent = v101;
                local v2461 = v75({
                    SoundId = "rbxassetid://15290205166", 
                    Parent = v2459, 
                    TimePosition = 0.25, 
                    Volume = 2
                });
                v2461:Resume();
                v2458.s = v2461;
            end, 
            Keyframes = {
                ["end"] = function(v2462, _, _) --[[ Line: 15536 ]]
                    -- upvalues: l_CollectionService_1 (ref), v101 (copy), l_PlayerFromCharacter_0 (copy)
                    local v2465 = v2462.kb:Clone();
                    l_CollectionService_1:AddTag(v2465, "emotestuff" .. v101.Name);
                    v2462.kb.Transparency = 1;
                    game:GetService("Debris"):AddItem(v2465, 5);
                    v2465.CanCollide = true;
                    v2465.CanTouch = true;
                    v2465.CanQuery = false;
                    v2465.Massless = false;
                    v2465.CollisionGroup = "nocol";
                    v2465.CFrame = v2462.kb.CFrame;
                    v2465.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1);
                    v2465.Parent = workspace.Thrown;
                    if v2462.s then
                        v2462.s.Parent = v2465;
                    end;
                    v2465:SetNetworkOwner(l_PlayerFromCharacter_0);
                    v2465.Velocity = Vector3.new(0, -50, 0, 0);
                    v2465.AssemblyAngularVelocity = Vector3.new(math.random(-90, 90), math.random(-90, 90), math.random(-90, 90));
                end
            }, 
            Animation = 15290188901, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        Chair = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14056074389", 
                    Volume = 2.25, 
                    Looped = false
                }
            }, 
            Startup = function(v2466) --[[ Line: 15571 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2467 = game.ReplicatedStorage.Emotes.Chair.Handle:Clone();
                v2467:SetAttribute("EmoteProperty", true);
                table.insert(v2466, v2467);
                local v2468 = game.ReplicatedStorage.Emotes.Chair.M6D:Clone();
                v2468:SetAttribute("EmoteProperty", true);
                table.insert(v2466, v2468);
                v2468.Name = "Handle";
                v2468.Part0 = v101.HumanoidRootPart;
                v2468.Part1 = v2467;
                v2468.Parent = v101.HumanoidRootPart;
                v2467.Parent = v101;
            end, 
            Keyframes = {
                freeze = function(_, _, v2471) --[[ Line: 15582 ]]
                    v2471:AdjustSpeed(0);
                end
            }, 
            Animation = 14056032417, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        RIP = {
            HideWeapon = true, 
            Startup = function(v2472, _, v2474) --[[ Line: 15594 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v2475 = game.ReplicatedStorage.Emotes.Grave.Grave:Clone();
                v2475:SetAttribute("EmoteProperty", true);
                table.insert(v2472, v2475);
                local v2476 = game.ReplicatedStorage.Emotes.Grave.M6D:Clone();
                v2476:SetAttribute("EmoteProperty", true);
                table.insert(v2472, v2476);
                v2476.Name = "Handle";
                v2476.Part0 = v101.HumanoidRootPart;
                v2476.Part1 = v2475;
                v2476.Parent = v101.HumanoidRootPart;
                v2475.Parent = v101;
                v2474.handle = v2475;
                v75({
                    SoundId = "rbxassetid://14399156027", 
                    Volume = 1, 
                    TimePosition = 0.12, 
                    Parent = v101.PrimaryPart
                }):Resume();
            end, 
            Keyframes = {
                freeze = function(_, _, v2479) --[[ Line: 15613 ]]
                    v2479:AdjustSpeed(0);
                end, 
                smash = function(v2480) --[[ Line: 15617 ]]
                    -- upvalues: v75 (ref)
                    v2480.handle.Attachment.Dust:Emit(10);
                    v75({
                        SoundId = "rbxassetid://14399155774", 
                        Parent = v2480.handle, 
                        Volume = 1.25, 
                        TimePosition = 0.047
                    }):Resume();
                end
            }, 
            Fix = true, 
            Animation = 14399170033, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["RK Coin Trick"] = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14056453575", 
                    Volume = 1, 
                    Looped = false
                }
            }, 
            Startup = function(v2481) --[[ Line: 15644 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2482 = game.ReplicatedStorage.Emotes.Coin.Handle:Clone();
                v2482:SetAttribute("EmoteProperty", true);
                table.insert(v2481, v2482);
                local v2483 = game.ReplicatedStorage.Emotes.Coin.M6D:Clone();
                v2483:SetAttribute("EmoteProperty", true);
                table.insert(v2481, v2483);
                v2483.Name = "Handle";
                v2483.Part0 = v101["Left Arm"];
                v2483.Part1 = v2482;
                v2483.Parent = v101["Left Arm"];
                v2482.Parent = v101;
            end, 
            Animation = 14055990256, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        Think = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9046379730", 
                    Volume = 0.75, 
                    Looped = true
                }
            }, 
            Keyframes = {
                claploop = function() --[[ Line: 15669 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://9114456730", 
                        Volume = 0.85, 
                        Parent = v101.Head
                    }):Play();
                end
            }, 
            Startup = function(v2484, _) --[[ Line: 15678 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2486 = game.ReplicatedStorage.Emotes.Think.Attachment:Clone();
                v2486:SetAttribute("EmoteProperty", true);
                table.insert(v2484, v2486);
                v2486.Parent = v101.HumanoidRootPart;
            end, 
            Infinite = true, 
            Animation = 13801090462, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["No Limit"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9042542555", 
                    Volume = 0.75, 
                    Looped = true
                }
            }, 
            Animation = 13777338337, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Soul = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1836860450", 
                    Volume = 0.75, 
                    Looped = true
                }
            }, 
            Animation = 13777407704, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Chill = {
            Animation = 13736115009, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        Penguin = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1839021706", 
                    Volume = 0.5, 
                    Looped = true
                }
            }, 
            Animation = 13735821189, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Laugh = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9056830251", 
                    Volume = 1.75, 
                    Looped = false
                }
            }, 
            Animation = 8887084105, 
            Stun = "Slowed"
        }, 
        Sturdy = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1848269635", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Animation = 13720956493, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Boppin = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://13772555886", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Infinite = true, 
            Animation = 13796404333, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Untouchable = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15019328411", 
                    Volume = 3, 
                    Looped = false
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://3750949270", 
                    Volume = 0.2, 
                    Looped = true
                }
            }, 
            Startup = function(v2487) --[[ Line: 15798 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), l_CollectionService_1 (ref)
                local v2488 = shared.cfolder({
                    Name = "InfinityDebris", 
                    Parent = v101
                });
                l_CollectionService_1:AddTag(v2488, "InfinityDebris");
                table.insert(v2487, v2488);
            end, 
            Keyframes = {
                freeze = function(_, _, v2491) --[[ Line: 15808 ]]
                    v2491:AdjustSpeed(0);
                end
            }, 
            Animation = 15020965094, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Sweat = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15502557516", 
                    Volume = 1.5, 
                    Looped = false
                }, 
                [2.6] = {
                    SoundId = "rbxassetid://15502591598", 
                    Volume = 0.5, 
                    Looped = false
                }
            }, 
            Startup = function(v2492, _, v2494) --[[ Line: 15833 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local l_Attachment_15 = Instance.new("Attachment");
                table.insert(v2492, l_Attachment_15);
                l_Attachment_15.Parent = v101.Head;
                l_Attachment_15.Position = Vector3.new(-0.1889999955892563, -0.007000000216066837, 0.4569999873638153, 0);
                local v2496 = game.ReplicatedStorage.Emotes.Sweating:Clone();
                v2494.Crying = v2496;
                table.insert(v2492, v2496);
                v2496.Parent = l_Attachment_15;
                local l_Attachment_16 = Instance.new("Attachment");
                table.insert(v2492, l_Attachment_16);
                l_Attachment_16.Parent = v101.Head;
                l_Attachment_16.Position = Vector3.new(0.1899999976158142, 0.5, -0.46399998664855957, 0);
                local v2498 = game.ReplicatedStorage.Emotes.Sweated:Clone();
                v2494.Crying2 = v2498;
                table.insert(v2492, v2498);
                v2498.Parent = l_Attachment_16;
            end, 
            Keyframes = {
                sweat = function(v2499) --[[ Line: 15852 ]]
                    v2499.Crying.Enabled = false;
                    v2499.Crying2:Emit(10);
                end
            }, 
            HideWeapon = true, 
            Animation = 15488553333, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Cry = {
            HideWeapon = true, 
            Startup = function(v2500, _) --[[ Line: 15866 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v2502 = game.ReplicatedStorage.Emotes.Crying:Clone();
                table.insert(v2500, v2502);
                v2502.Parent = v101.Head;
                local v2503 = v75({
                    SoundId = "rbxassetid://9113234042", 
                    Parent = v101.Head, 
                    TimePosition = 1, 
                    Looped = true, 
                    Volume = 7
                });
                v2503:Resume();
                table.insert(v2500, v2503);
            end, 
            Animation = 13874287198, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["We Ball"] = {
            HideWeapon = true, 
            Sounds = {
                [0.03] = {
                    SoundId = "rbxassetid://13874113188", 
                    Volume = 2.75, 
                    Looped = false
                }
            }, 
            Startup = function(v2504) --[[ Line: 15896 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref), l_TweenService_0 (ref)
                local v2505 = game.ReplicatedStorage.Emotes.basketball:Clone();
                table.insert(v2504, v2505);
                v2505:SetAttribute("EmoteProperty", true);
                local l_Motor6D_33 = v2505:FindFirstChildOfClass("Motor6D");
                table.insert(v2504, l_Motor6D_33);
                l_Motor6D_33:SetAttribute("EmoteProperty", true);
                l_Motor6D_33.Part0 = v101.PrimaryPart;
                l_Motor6D_33.Parent = v101.PrimaryPart;
                l_Motor6D_33.Part1 = v2505.Handle;
                v2505.Parent = v101;
                task.delay(5.233, function() --[[ Line: 15908 ]]
                    -- upvalues: v2505 (copy)
                    if v2505 then
                        v2505:Destroy();
                    end;
                end);
                local v2507 = v75({
                    SoundId = "rbxassetid://9046712764", 
                    Volume = 0, 
                    TimePosition = 0.4, 
                    Looped = false, 
                    Parent = v101.PrimaryPart
                });
                v2507:SetAttribute("EmoteProperty", true);
                v2507:Resume();
                l_TweenService_0:Create(v2507, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Volume = 0.4
                }):Play();
                table.insert(v2504, v2507);
            end, 
            Animation = 13874117043, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Bring It"] = {
            Keyframes = {
                start = function() --[[ Line: 15937 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://12981991293", 
                        Parent = v101.PrimaryPart, 
                        PlaybackSpeed = 1, 
                        Volume = 0.4
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://12332220659", 
                        Volume = 0.45, 
                        PlaybackSpeed = 1, 
                        Parent = v101.PrimaryPart
                    }):Play();
                end, 
                one = function() --[[ Line: 15953 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://9117373365", 
                        Volume = 0.75, 
                        PlaybackSpeed = 1.45, 
                        Parent = v101.PrimaryPart
                    }):Play();
                end, 
                two = function() --[[ Line: 15962 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://12332220659", 
                        Volume = 1.35, 
                        PlaybackSpeed = 1.9, 
                        Parent = v101.PrimaryPart
                    }):Play();
                end
            }, 
            Animation = 13801083337, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Applause = {
            Keyframes = {
                claploop = function() --[[ Line: 15979 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    local v2508 = v75({
                        SoundId = "rbxassetid://1840084272", 
                        PlaybackSpeed = 1, 
                        Volume = 0.5, 
                        Parent = v101.PrimaryPart
                    });
                    v2508:Play();
                    game:service("TweenService"):Create(v2508, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        Volume = 0
                    }):Play();
                end
            }, 
            Infinite = true, 
            Animation = 14056379526, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Heh = {
            Keyframes = {
                start = function(v2509, v2510) --[[ Line: 16001 ]]
                    -- upvalues: v101 (copy), v75 (ref)
                    local v2511 = game.ReplicatedStorage.Emotes.Glasses:Clone();
                    v2511:SetAttribute("EmoteProperty", true);
                    v2511.Parent = v101;
                    table.insert(v2510, v2511);
                    local l_Motor6D_34 = Instance.new("Motor6D");
                    l_Motor6D_34:SetAttribute("EmoteProperty", true);
                    table.insert(v2510, l_Motor6D_34);
                    l_Motor6D_34.Part0 = v101["Left Arm"];
                    l_Motor6D_34.C0 = CFrame.new(0.00482857227, -0.974339962, -0.0985401124, 0.99999547, 1.35184547E-27, -3.3606216E-28, 1.00842308E-27, -0.0216581449, 0.999762356, 0, -0.999764025, -0.0216580443);
                    l_Motor6D_34.Part1 = v2511.Handle;
                    l_Motor6D_34.Parent = v101["Left Arm"];
                    local v2513 = v75({
                        SoundId = "rbxassetid://13773962010", 
                        Volume = 1.5, 
                        PlaybackSpeed = 1.15, 
                        Parent = v2511.Handle
                    });
                    v2513:Play();
                    task.delay(0.5, function() --[[ Line: 16022 ]]
                        -- upvalues: v2513 (copy)
                        game:service("TweenService"):Create(v2513, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            Volume = 0
                        }):Play();
                    end);
                    v2509.glasses = v2511;
                    v75({
                        SoundId = "rbxassetid://3929467229", 
                        Parent = v101.Head, 
                        PlaybackSpeed = 1.5, 
                        Volume = 0.4
                    }):Play();
                end, 
                vfx = function(v2514, v2515) --[[ Line: 16038 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://13773869254", 
                        Parent = v101.Head, 
                        PlaybackSpeed = 1, 
                        Volume = 0.9
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://12332220659", 
                        Parent = v101.Head, 
                        Volume = 0.35, 
                        PlaybackSpeed = 1.35
                    }):Play();
                    local l_Attachment_17 = Instance.new("Attachment");
                    l_Attachment_17:SetAttribute("EmoteProperty", true);
                    l_Attachment_17.CFrame = CFrame.new(-0.239279747, 0.309562922, -0.575252533, -0.0331349373, -0.72963804, -0.683030546, -0.989827991, -0.0706492513, 0.123488307, -0.138357326, 0.68017441, -0.719875157);
                    l_Attachment_17.Parent = v101.Head;
                    table.insert(v2515, l_Attachment_17);
                    for _, v2518 in pairs(game.ReplicatedStorage.Emotes.Shine:GetChildren()) do
                        local v2519 = v2518:Clone();
                        v2519.Parent = l_Attachment_17;
                        shared.resizeparticle(v2519, 1.5);
                        v2519:Emit(1);
                    end;
                    if v2514.glasses then
                        local l_glasses_0 = v2514.glasses;
                        for _, v2522 in pairs({
                            l_glasses_0.Glass1, 
                            l_glasses_0.Glass2
                        }) do
                            v2522.Material = Enum.Material.Neon;
                            v2522.Color = Color3.new(1, 1, 1);
                            v2522.Transparency = 0;
                            task.delay(0.5, function() --[[ Line: 16071 ]]
                                -- upvalues: v2522 (copy)
                                game:service("TweenService"):Create(v2522, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    Color = Color3.fromRGB(105, 102, 92), 
                                    Transparency = 0.75
                                }):Play();
                            end);
                        end;
                    end;
                end, 
                gone = function(v2523) --[[ Line: 16081 ]]
                    if v2523.glasses then
                        v2523.glasses:Destroy();
                    end;
                end, 
                away = function() --[[ Line: 16087 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://12981991293", 
                        Parent = v101.Head, 
                        PlaybackSpeed = 1.5, 
                        Volume = 0.4
                    }):Play();
                end
            }, 
            Animation = 13773978314, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Facepalm = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://10456925537", 
                    Volume = 0.25
                }
            }, 
            Keyframes = {
                facepalm = function() --[[ Line: 16111 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://511340819", 
                        Parent = v101.Head, 
                        TimePosition = 0.1, 
                        Volume = 1.5
                    }):Resume();
                    task.delay(1, function() --[[ Line: 16119 ]]
                        -- upvalues: v75 (ref), v101 (ref)
                        v75({
                            SoundId = "rbxassetid://3848835272", 
                            Parent = v101.Head, 
                            Volume = 0.4, 
                            PlaybackSpeed = 1.25
                        }):Play();
                    end);
                end, 
                sway = function() --[[ Line: 16129 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://3929467229", 
                        Parent = v101.Head, 
                        PlaybackSpeed = 1.5, 
                        Volume = 0.5
                    }):Play();
                end
            }, 
            Animation = 14056367009, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        Crack = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://12332220659", 
                    Volume = 0.375, 
                    PlaybackSpeed = 1.5
                }
            }, 
            Keyframes = {
                crack1 = function() --[[ Line: 16155 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://9113541085", 
                        Parent = v101.Head, 
                        Volume = 0.75
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://12332220659", 
                        Volume = 0.375, 
                        PlaybackSpeed = 2, 
                        Parent = v101.Head
                    }):Play();
                end, 
                crack2 = function() --[[ Line: 16170 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://9113538220", 
                        Parent = v101.Head, 
                        Volume = 0.75
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://12981991293", 
                        Parent = v101.PrimaryPart, 
                        PlaybackSpeed = 1.5, 
                        Volume = 0.375, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                crack3 = function() --[[ Line: 16186 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://6930015332", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.75
                    }):Play();
                end, 
                crack4 = function(_, _, v2526) --[[ Line: 16194 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://9113538216", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.75
                    }):Play();
                    v2526:AdjustSpeed(1.5);
                    v75({
                        SoundId = "rbxassetid://12981991293", 
                        Parent = v101.PrimaryPart, 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.375, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                fist = function() --[[ Line: 16211 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://7543903290", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.9
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://296072089", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.9
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://8595975458", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.9
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://12332220659", 
                        Volume = 0.5, 
                        PlaybackSpeed = 1.5, 
                        Parent = v101.PrimaryPart, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                fist2 = function() --[[ Line: 16239 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://7515452875", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.75
                    }):Play();
                end
            }, 
            Animation = 14056370647, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        ["Fancy Reading"] = {
            HideWeapon = true, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16583992179", 
                    Volume = 1
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://9046455305", 
                    Volume = 0.4, 
                    Looped = true
                }
            }, 
            Startup = function(v2527, _, _) --[[ Line: 16268 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2530 = game.ReplicatedStorage.Emotes.book:Clone();
                v2530:SetAttribute("EmoteProperty", true);
                table.insert(v2527, v2530);
                v2530.Parent = v101;
                local l_LeftHandle_2 = v2530.LeftHandle;
                l_LeftHandle_2:SetAttribute("EmoteProperty", true);
                table.insert(v2527, l_LeftHandle_2);
                l_LeftHandle_2.RootPart.Part0 = l_LeftHandle_2;
                l_LeftHandle_2.RootPart.Part1 = v2530.RootPart;
                l_LeftHandle_2.Parent = v101;
                local v2532 = game.ReplicatedStorage.Emotes.monocle:Clone();
                v2532:SetAttribute("EmoteProperty", true);
                table.insert(v2527, v2532);
                local l_m6d_27 = v2532.m6d;
                l_m6d_27:SetAttribute("EmoteProperty", true);
                table.insert(v2527, l_m6d_27);
                l_m6d_27.Name = "Meshes/monocle_Cylinder.002";
                l_m6d_27.Part0 = v101.Head;
                l_m6d_27.Part1 = v2532[l_m6d_27.Name];
                l_m6d_27.Parent = v101.Head;
                v2532.Parent = v101.Head;
                local l_m6d_28 = v2530.m6d;
                l_m6d_28:SetAttribute("EmoteProperty", true);
                table.insert(v2527, l_m6d_28);
                l_m6d_28.Name = "LeftHandle";
                l_m6d_28.Part0 = v101["Left Arm"];
                l_m6d_28.Part1 = l_LeftHandle_2;
                l_m6d_28.Parent = v101["Left Arm"];
                v2530.Parent = v101["Left Arm"];
            end, 
            Animation = 16583901798, 
            Idle = 16583918087, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        ["Rocket Ride"] = {
            HideWeapon = true, 
            Sounds = {
                [0.01] = {
                    SoundId = "rbxassetid://1837322223", 
                    Volume = 0.4, 
                    TimePosition = 0.5, 
                    Looped = true
                }
            }, 
            Startup = function(v2535, _, _) --[[ Line: 16311 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v2538 = game.ReplicatedStorage.Emotes.rocket:Clone();
                v2538:SetAttribute("EmoteProperty", true);
                table.insert(v2535, v2538);
                v2538.Parent = v101;
                for _, v2540 in pairs(v2538:GetChildren()) do
                    if v2540.Name ~= "Rocket" and v2540:IsA("BasePart") then
                        v2540.Transparency = 1;
                    end;
                end;
                local l_Weld_13 = Instance.new("Weld");
                l_Weld_13.Part0 = v101.PrimaryPart;
                l_Weld_13.Part1 = v2538.Base;
                l_Weld_13.C0 = CFrame.new(-0.0188751221, -2.70935678, 3.05175781E-5, 0, 0, 1, 0, 1, 0, -1, 0, 0);
                l_Weld_13.Parent = v2538;
                v75({
                    SoundId = "rbxassetid://9119414082", 
                    Parent = v2538.Rocket, 
                    Volume = 0.3, 
                    Looped = true
                }):Play();
                local l_Animation_0 = Instance.new("Animation");
                l_Animation_0.AnimationId = "rbxassetid://16584484676";
                v2538.AnimationController:LoadAnimation(l_Animation_0):Play();
            end, 
            Animation = 16584466961, 
            Looped = true, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        Read = {
            Keyframes = {
                book = function() --[[ Line: 16346 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://7244593699", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.75
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://4458782689", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.75
                    }):Play();
                end, 
                start = function(v2543, v2544) --[[ Line: 16360 ]]
                    -- upvalues: v101 (copy), v75 (ref), v1 (ref)
                    local v2545 = game.ReplicatedStorage.Emotes.Book.BookRig:Clone();
                    local v2546 = game.ReplicatedStorage.Emotes.Book.MiddleCover:Clone();
                    v2546.Part0 = v101["Left Arm"];
                    v2546.Part1 = v2545.MiddleCover;
                    v2546.Parent = v101["Left Arm"];
                    v2545.LeftCover.SurfaceGui.TextLabel.Text = v101.Name;
                    v2545:SetAttribute("EmoteProperty", true);
                    v2546:SetAttribute("EmoteProperty", true);
                    v2545.Parent = v101;
                    table.insert(v2544, v2545);
                    table.insert(v2544, v2546);
                    v2543.book = v2545;
                    v75({
                        SoundId = "rbxassetid://12332220659", 
                        Volume = 0.3333333333333333, 
                        PlaybackSpeed = 1.5, 
                        Parent = v101.PrimaryPart, 
                        RollOffMaxDistance = v1
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://12981991293", 
                        Parent = v101.PrimaryPart, 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.39999999999999997, 
                        RollOffMaxDistance = v1
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://13726870246", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.39999999999999997, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                up = function() --[[ Line: 16398 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://4458775948", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.6
                    }):Play();
                end, 
                close = function() --[[ Line: 16406 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://3763472732", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.7
                    }):Play();
                end, 
                away = function() --[[ Line: 16414 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://3848838070", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.39999999999999997, 
                        PlaybackSpeed = 1.5
                    }):Play();
                end, 
                gone = function(v2547) --[[ Line: 16423 ]]
                    if v2547.book then
                        v2547.book:Destroy();
                    end;
                end, 
                swish1 = function() --[[ Line: 16429 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://4458759938", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.5, 
                        PlaybackSpeed = 1.15
                    }):Play();
                end, 
                swish2 = function() --[[ Line: 16438 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://3929467449", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.5, 
                        PlaybackSpeed = 1.35
                    }):Play();
                end, 
                swish3 = function() --[[ Line: 16447 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://3929467229", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.5, 
                        PlaybackSpeed = 1.25
                    }):Play();
                end, 
                swish4 = function() --[[ Line: 16456 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://4458759938", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.5, 
                        PlaybackSpeed = 1.25
                    }):Play();
                end, 
                step = function() --[[ Line: 16465 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v101["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.2, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                step2 = function() --[[ Line: 16475 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v101["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.2, 
                        RollOffMaxDistance = v1
                    }):Play();
                end
            }, 
            Animation = 13735596559, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["4K"] = {
            Keyframes = {
                start = function(_, _, v2550) --[[ Line: 16493 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v2550:AdjustSpeed(2.25);
                    v75({
                        SoundId = "rbxassetid://12332220659", 
                        Volume = 0.25, 
                        PlaybackSpeed = 1.85, 
                        Parent = v101.PrimaryPart, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                pull = function(v2551, v2552, v2553) --[[ Line: 16504 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v2553:AdjustSpeed(1);
                    v75({
                        SoundId = "rbxassetid://12981991293", 
                        Parent = v101.PrimaryPart, 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.3, 
                        RollOffMaxDistance = v1
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://13726870246", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.3, 
                        RollOffMaxDistance = v1
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://873073853", 
                        Parent = v101.PrimaryPart, 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.35, 
                        RollOffMaxDistance = v1
                    }):Play();
                    local v2554 = game.ReplicatedStorage.Emotes.Phone:Clone();
                    table.insert(v2552, v2554);
                    v2554.Name = "PhoneEmote";
                    v2554:SetAttribute("EmoteProperty", true);
                    v2554.Parent = v101;
                    local l_Weld_14 = Instance.new("Weld");
                    l_Weld_14.Part0 = v101["Left Arm"];
                    l_Weld_14.Part1 = v2554;
                    l_Weld_14.C0 = CFrame.new(0.135000005, -1, -0.460000008, 4.37113883E-8, 3.82137093E-15, -1, 8.74227766E-8, -1, 0, -1, -8.74227766E-8, -4.37113883E-8);
                    l_Weld_14.Parent = v2554;
                    v2551.phone = v2554;
                end, 
                away = function(v2556, _, _) --[[ Line: 16541 ]]
                    if v2556.phone then
                        v2556.phone:Destroy();
                    end;
                end, 
                done = function() --[[ Line: 16547 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = "rbxassetid://12332220659", 
                        Volume = 0.3333333333333333, 
                        PlaybackSpeed = 2, 
                        Parent = v101.PrimaryPart
                    }):Play();
                end, 
                snap = function(v2559) --[[ Line: 16556 ]]
                    -- upvalues: v75 (ref), v1 (ref)
                    if v2559.phone then
                        v75({
                            SoundId = "rbxassetid://8550763922", 
                            Parent = v2559.phone.Attachment2, 
                            Volume = 0.5, 
                            PlaybackSpeed = 1.5, 
                            RollOffMaxDistance = v1
                        }):Play();
                        for _, v2561 in pairs(v2559.phone.Attachment2:GetChildren()) do
                            if v2561:IsA("ParticleEmitter") then
                                v2561:Emit(1);
                            end;
                        end;
                    end;
                end
            }, 
            Animation = 13735352472, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Hold On"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16522927439", 
                    Volume = 1, 
                    PlaybackSpeed = 1
                }
            }, 
            Startup = function(v2562, _, v2564) --[[ Line: 16588 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2565 = game.ReplicatedStorage.Emotes.Phone:Clone();
                table.insert(v2562, v2565);
                v2565.Name = "Handle";
                v2565.Transparency = 1;
                v2565:SetAttribute("EmoteProperty", true);
                v2565.Parent = v101;
                local l_Motor6D_35 = Instance.new("Motor6D");
                l_Motor6D_35:SetAttribute("EmoteProperty", true);
                table.insert(v2562, l_Motor6D_35);
                l_Motor6D_35.Name = "Meshes/IPHONE12 MESH ";
                l_Motor6D_35.Part0 = v101["Right Arm"];
                l_Motor6D_35.Part1 = v2565;
                l_Motor6D_35.C0 = CFrame.new(-0.134792328, -0.986119986, -0.459802628, 2.98023224E-8, -1.49011585E-8, 1, 2.98023224E-8, -1, -1.49011594E-8, 1, 2.98023224E-8, -2.98023224E-8);
                l_Motor6D_35.Parent = v101["Right Arm"];
                v2564.phone = v2565;
            end, 
            Keyframes = {
                appear = function(v2567) --[[ Line: 16604 ]]
                    v2567.phone.Transparency = 0;
                end, 
                disappear = function(v2568) --[[ Line: 16608 ]]
                    v2568.phone:Destroy();
                end
            }, 
            Animation = 16522919821, 
            Stun = "Freeze"
        }, 
        ["On That Day"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://133608543934609", 
                    Volume = 1, 
                    PlaybackSpeed = 1
                }
            }, 
            Startup = function(v2569, _, _) --[[ Line: 16626 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local v2572 = false;
                local function _(v2573) --[[ Line: 16627 ]]
                    -- upvalues: v2569 (copy), l_CollectionService_1 (ref), v104 (ref), l_PlayerFromCharacter_0 (ref), v101 (ref)
                    v2573:SetAttribute("EmoteProperty", true);
                    table.insert(v2569, v2573);
                    l_CollectionService_1:AddTag(v2573, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                end;
                local v2575 = game.ReplicatedStorage.Emotes.ArmSlap:Clone();
                v2575.Parent = v101;
                v2575:SetAttribute("EmoteProperty", true);
                table.insert(v2569, v2575);
                l_CollectionService_1:AddTag(v2575, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                local _ = function(v2576) --[[ Line: 16635 ]]
                    -- upvalues: v2575 (copy)
                    for _, v2578 in pairs(v2575:GetDescendants()) do
                        if tostring(v2578) == v2576 then
                            return v2578;
                        end;
                    end;
                end;
                for _, v2581 in pairs(game.ReplicatedStorage.Emotes.kjphone:GetChildren()) do
                    local v2582 = v2581:Clone();
                    v2582.Parent = v101.PrimaryPart;
                    v2582.Part0 = v101.PrimaryPart;
                    local v2583 = tostring(v2581);
                    local v2584;
                    for _, v2586 in pairs(v2575:GetDescendants()) do
                        if tostring(v2586) == v2583 then
                            v2584 = v2586;
                            v2572 = true;
                        end;
                        if v2572 then
                            break;
                        end;
                    end;
                    if not v2572 then
                        v2584 = nil;
                    end;
                    v2572 = false;
                    v2582.Part1 = v2584;
                end;
                game:GetService("Debris"):AddItem(v2575, 6.983);
            end, 
            HideWeapon = true, 
            Animation = 84515101199811, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Selfie In Style"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://15091441859", 
                    Volume = 1, 
                    PlaybackSpeed = 1
                }
            }, 
            Startup = function(v2587, _, v2589) --[[ Line: 16668 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2590 = game.ReplicatedStorage.Emotes.Phone:Clone();
                table.insert(v2587, v2590);
                v2590.Name = "PhoneEmote";
                v2590:SetAttribute("EmoteProperty", true);
                v2590.Parent = v101;
                local l_Weld_15 = Instance.new("Weld");
                l_Weld_15.Part0 = v101["Left Arm"];
                l_Weld_15.Part1 = v2590;
                l_Weld_15.C0 = CFrame.new(0.135000005, -1, -0.460000008, 4.37113883E-8, 3.82137093E-15, -1, 8.74227766E-8, -1, 0, -1, -8.74227766E-8, -4.37113883E-8);
                l_Weld_15.Parent = v2590;
                v2589.phone = v2590;
            end, 
            Keyframes = {
                selfie = function(v2592) --[[ Line: 16682 ]]
                    -- upvalues: v75 (ref), v1 (ref)
                    if v2592.phone then
                        v75({
                            SoundId = "rbxassetid://8550763922", 
                            Parent = v2592.phone.Attachment, 
                            PlaybackSpeed = 1.2, 
                            Volume = 0.5, 
                            RollOffMaxDistance = v1
                        }):Play();
                        for _, v2594 in pairs(v2592.phone.Attachment:GetChildren()) do
                            if v2594:IsA("ParticleEmitter") then
                                v2594:Emit(1);
                            end;
                        end;
                    end;
                end, 
                ["end"] = function(v2595) --[[ Line: 16699 ]]
                    v2595.phone:Destroy();
                end
            }, 
            Fix = true, 
            Animation = 15091452031, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Selfie = {
            Keyframes = {
                start = function(_, _, v2598) --[[ Line: 16712 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v2598:AdjustSpeed(2.25);
                    v75({
                        SoundId = "rbxassetid://12332220659", 
                        Volume = 0.5, 
                        PlaybackSpeed = 1.85, 
                        Parent = v101.PrimaryPart, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                phone = function() --[[ Line: 16723 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://13726870246", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.6, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                pull = function(v2599, v2600, v2601) --[[ Line: 16732 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v2601:AdjustSpeed(1);
                    v75({
                        SoundId = "rbxassetid://12981991293", 
                        Parent = v101.PrimaryPart, 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.6, 
                        RollOffMaxDistance = v1
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://873073853", 
                        Parent = v101.PrimaryPart, 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.7, 
                        RollOffMaxDistance = v1
                    }):Play();
                    local v2602 = game.ReplicatedStorage.Emotes.Phone:Clone();
                    table.insert(v2600, v2602);
                    v2602.Name = "PhoneEmote";
                    v2602:SetAttribute("EmoteProperty", true);
                    v2602.Parent = v101;
                    local l_Weld_16 = Instance.new("Weld");
                    l_Weld_16.Part0 = v101["Left Arm"];
                    l_Weld_16.Part1 = v2602;
                    l_Weld_16.C0 = CFrame.new(0.135000005, -1, -0.460000008, 4.37113883E-8, 3.82137093E-15, -1, 8.74227766E-8, -1, 0, -1, -8.74227766E-8, -4.37113883E-8);
                    l_Weld_16.Parent = v2602;
                    v2599.phone = v2602;
                end, 
                away = function(_, _, v2606) --[[ Line: 16762 ]]
                    v2606:AdjustSpeed(1.5);
                end, 
                ["2away"] = function(v2607) --[[ Line: 16766 ]]
                    if v2607.phone then
                        v2607.phone:Destroy();
                    end;
                end, 
                step = function() --[[ Line: 16772 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v101["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.2, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                picture = function(v2608) --[[ Line: 16782 ]]
                    -- upvalues: v75 (ref), v1 (ref)
                    if v2608.phone then
                        v75({
                            SoundId = "rbxassetid://8550763922", 
                            Parent = v2608.phone.Attachment, 
                            Volume = 0.5, 
                            PlaybackSpeed = 1.2, 
                            RollOffMaxDistance = v1
                        }):Play();
                        for _, v2610 in pairs(v2608.phone.Attachment:GetChildren()) do
                            if v2610:IsA("ParticleEmitter") then
                                v2610:Emit(1);
                            end;
                        end;
                    end;
                end
            }, 
            Animation = 13727204855, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Fork = {
            Startup = function(v2611, _) --[[ Line: 16806 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref)
                local v2613 = game.ReplicatedStorage.Emotes.Fork.RightGrip:Clone();
                table.insert(v2611, v2613);
                local l_Motor6D_36 = Instance.new("Motor6D");
                l_Motor6D_36.C0 = CFrame.new(-5.49316406E-4, -1.00001884, 5.7220459E-5, -1.1920929E-7, 1.00000012, 0, 1.00000012, -1.1920929E-7, 0, 0, 0, -1.00000024);
                l_Motor6D_36.Part0 = v101["Left Arm"];
                l_Motor6D_36.Part1 = v2613;
                l_Motor6D_36.Parent = v2613;
                v2613.Parent = v101;
                local v2615 = game.ReplicatedStorage.Emotes.Fork.Fork:Clone();
                table.insert(v2611, v2615);
                v2613.Fork.Part0 = v2613;
                v2613:SetAttribute("EmoteProperty", true);
                v2613.Fork.Part1 = v2615;
                v2615:SetAttribute("EmoteProperty", true);
                v2615.Parent = v101;
                local v2616 = v75({
                    SoundId = "rbxassetid://13727102947", 
                    Volume = 0.4, 
                    Looped = true, 
                    Parent = v2615
                });
                table.insert(v2611, v2616);
                v2616:Play();
            end, 
            Stun = "Slowed", 
            Looped = true, 
            Animation = 13727117367
        }, 
        OK = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://13722809593", 
                    Volume = 1
                }
            }, 
            Startup = function() --[[ Line: 16845 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2617 = game.ReplicatedStorage.Emotes.BillboardGui:Clone();
                v2617.Enabled = true;
                v2617.Parent = v101.Head;
                task.delay(2, function() --[[ Line: 16849 ]]
                    -- upvalues: v2617 (copy)
                    game:service("TweenService"):Create(v2617.ImageLabel, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        ImageTransparency = 1
                    }):Play();
                end);
                game:GetService("Debris"):AddItem(v2617, 3);
            end, 
            Animation = 0
        }, 
        Sheathe = {
            Sounds = {}, 
            Startup = function() --[[ Line: 16864 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                for _ = 1, 10 do
                    local l_GrabWeapon_0 = v101:FindFirstChild("GrabWeapon");
                    if l_GrabWeapon_0 then
                        l_GrabWeapon_0:Destroy();
                    end;
                end;
            end, 
            Animation = 0
        }, 
        L = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1846079994", 
                    Volume = 1, 
                    Looped = true
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://6906260279", 
                    Volume = 0.5
                }
            }, 
            Animation = 18231574269, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Umbrella = {
            Keyframes = {
                freeze = function(_, _, v2622) --[[ Line: 16897 ]]
                    v2622:AdjustSpeed(0);
                end, 
                open = function(v2623, _, _) --[[ Line: 16901 ]]
                    local l_umbrella_0 = v2623.umbrella;
                    if not l_umbrella_0 then
                        return;
                    else
                        game:service("TweenService"):Create(l_umbrella_0.TopUmbrella.Mesh, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                            Scale = Vector3.new(1.100000023841858, 0.75, 1.100000023841858, 0), 
                            Offset = Vector3.new(0, 1, 0, 0)
                        }):Play();
                        return;
                    end;
                end
            }, 
            Startup = function(v2627, _, v2629) --[[ Line: 16914 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                v75({
                    SoundId = "rbxassetid://13875814315", 
                    Parent = v101.PrimaryPart, 
                    Volume = 2.5
                }):Play();
                local v2630 = game.ReplicatedStorage.Emotes.Umbrella:Clone();
                table.insert(v2627, v2630);
                v2630:SetAttribute("EmoteProperty", true);
                local l_Motor6D_37 = v2630:FindFirstChildOfClass("Motor6D");
                table.insert(v2627, l_Motor6D_37);
                l_Motor6D_37:SetAttribute("EmoteProperty", true);
                l_Motor6D_37.Part0 = v101["Right Arm"];
                l_Motor6D_37.Parent = v101["Right Arm"];
                l_Motor6D_37.Part1 = v2630.Handle;
                v2630.TopUmbrella.Mesh.Offset = Vector3.new(0, 0, 0, 0);
                v2630.TopUmbrella.Mesh.Scale = Vector3.new(0.10000000149011612, 1.5, 0.10000000149011612, 0);
                v2630.Parent = v101;
                v2629.umbrella = v2630;
            end, 
            HideWeapon = true, 
            Animation = 14056388573, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        Relax = {
            Keyframes = {
                freeze = function(_, _, v2634) --[[ Line: 16944 ]]
                    v2634:AdjustSpeed(0);
                end, 
                start = function() --[[ Line: 16948 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://12332099688", 
                        Volume = 1, 
                        Parent = v101.PrimaryPart
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://13631231525", 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.9
                    }):Play();
                    task.delay(0.4, function() --[[ Line: 16961 ]]
                        -- upvalues: v75 (ref), v101 (ref), v1 (ref)
                        v75({
                            SoundId = "rbxassetid://12332220659", 
                            Volume = 0.95, 
                            PlaybackSpeed = 1.85, 
                            Parent = v101.PrimaryPart, 
                            RollOffMaxDistance = v1
                        }):Play();
                        v75({
                            SoundId = "rbxassetid://4953436541", 
                            Volume = 1.15, 
                            PlaybackSpeed = 1.85, 
                            Parent = v101.PrimaryPart, 
                            RollOffMaxDistance = v1
                        }):Play();
                    end);
                end, 
                step = function() --[[ Line: 16980 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v101["Left Arm"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.5, 
                        RollOffMaxDistance = v1
                    }):Play();
                end
            }, 
            Animation = 13736196609, 
            Stun = "Freeze"
        }, 
        Sleepy = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://14348081142", 
                    PlaybackSpeed = 1, 
                    Volume = 1.75
                }
            }, 
            Looped = false, 
            Animation = 14348083862, 
            Stun = "Freeze"
        }, 
        Steps = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://9045623796", 
                    PlaybackSpeed = 1, 
                    Volume = 0.35, 
                    Looped = true
                }
            }, 
            Keyframes = {
                claploop = function(v2635, _, _) --[[ Line: 17021 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    if not v2635.turn then
                        v2635.turn = 1;
                    end;
                    v75({
                        SoundId = v2635.turn % 2 == 0 and "rbxassetid://14351823273" or "rbxassetid://14351823038", 
                        Parent = v101["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.25, 
                        RollOffMaxDistance = v1
                    }):Play();
                    v2635.turn = v2635.turn + 1;
                end
            }, 
            Infinite = true, 
            Looped = true, 
            Animation = 14351868272, 
            Stun = "Slowed"
        }, 
        Saunter = {
            Sounds = {}, 
            Keyframes = {
                clap = function(_, _, _) --[[ Line: 17049 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v101["Left Leg"], 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.3, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                claploop = function(_, _, _) --[[ Line: 17059 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v101["Right Leg"], 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.3, 
                        RollOffMaxDistance = v1
                    }):Play();
                end
            }, 
            HideWeapon = true, 
            Infinite = true, 
            Looped = true, 
            Animation = 17086054994, 
            Stun = "Slowed", 
            StunAttribute = 1.5
        }, 
        ["Silly Walk"] = {
            Sounds = {}, 
            Keyframes = {
                clap = function(v2644, _, _) --[[ Line: 17083 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    if not v2644.num or v2644.num > 2 then
                        v2644.num = 1;
                    end;
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            16584838006, 
                            16584838984
                        })[v2644.num], 
                        Parent = v101["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.11
                    }):Play();
                    v2644.num = v2644.num + 1;
                end
            }, 
            Infinite = true, 
            Looped = true, 
            Animation = 16585974532, 
            Stun = "Slowed", 
            StunAttribute = 2
        }, 
        Skewed = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1844765268", 
                    PlaybackSpeed = 1, 
                    Volume = 0.25, 
                    Looped = true
                }
            }, 
            Keyframes = {
                claploop = function(_, _, _) --[[ Line: 17115 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v101["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.8, 
                        RollOffMaxDistance = v1
                    }):Play();
                end
            }, 
            Startup = function() --[[ Line: 17126 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                v75({
                    SoundId = "rbxassetid://" .. ({
                        7455224144, 
                        7455246815, 
                        7455224490
                    })[math.random(1, 3)], 
                    Parent = v101["Left Leg"], 
                    PlaybackSpeed = 1, 
                    Volume = 0.8, 
                    RollOffMaxDistance = v1
                }):Play();
            end, 
            Infinite = true, 
            Looped = true, 
            Animation = 14405440932, 
            Stun = "Slowed"
        }, 
        Groceries = {
            Sounds = {}, 
            Keyframes = {
                claploop = function(_, _, v2652) --[[ Line: 17147 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v101["Left Leg"], 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.4, 
                        RollOffMaxDistance = v1
                    }):Play();
                    task.delay(0.5, function() --[[ Line: 17156 ]]
                        -- upvalues: v2652 (copy), v75 (ref), v101 (ref)
                        if v2652.IsPlaying then
                            v75({
                                SoundId = ({
                                    "rbxassetid://9125595581", 
                                    "rbxassetid://9114663061", 
                                    "rbxassetid://9114663248", 
                                    "rbxassetid://9114662567"
                                })[math.random(1, 4)], 
                                Volume = 0.2, 
                                Parent = v101["Left Arm"]
                            }):Play();
                        end;
                    end);
                end
            }, 
            Startup = function(v2653, _, _) --[[ Line: 17173 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2656 = game.ReplicatedStorage.Emotes.Grocery:Clone();
                v2656:SetAttribute("EmoteProperty", true);
                table.insert(v2653, v2656);
                v2656.Name = "Handle";
                local l_Handle_46 = v2656.Handle;
                l_Handle_46:SetAttribute("EmoteProperty", true);
                table.insert(v2653, l_Handle_46);
                l_Handle_46.Name = "Handle";
                l_Handle_46.Part0 = v101["Left Arm"];
                l_Handle_46.Part1 = v2656;
                l_Handle_46.Parent = v101["Left Arm"];
                v2656.Parent = v101["Left Arm"];
            end, 
            Infinite = true, 
            Looped = true, 
            Animation = 15237948811, 
            Stun = "Slowed"
        }, 
        ["Happy Steps"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1846012134", 
                    Volume = 0.35, 
                    Looped = true
                }
            }, 
            Keyframes = {
                clap = function(_, _, _) --[[ Line: 17200 ]]
                    -- upvalues: v75 (ref), v101 (copy)
                    v75({
                        SoundId = ({
                            "rbxassetid://16002610872", 
                            "rbxassetid://16002610798", 
                            "rbxassetid://16002610939"
                        })[math.random(1, 3)], 
                        Parent = v101["Left Leg"], 
                        Volume = 0.25
                    }):Play();
                end
            }, 
            Startup = function(v2661, _, _) --[[ Line: 17209 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2664 = game.ReplicatedStorage.Emotes.Stars:Clone();
                v2664:SetAttribute("EmoteProperty", true);
                table.insert(v2661, v2664);
                v2664.Parent = v101.Torso;
            end, 
            Infinite = true, 
            Looped = true, 
            Animation = 16021093085, 
            Stun = "Slowed", 
            StunAttribute = 1.75
        }, 
        Soda = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://1844765268", 
                    PlaybackSpeed = 1, 
                    Volume = 0.25, 
                    Looped = true
                }
            }, 
            Keyframes = {
                claploop = function(_, _, _) --[[ Line: 17232 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v101["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.8, 
                        RollOffMaxDistance = v1
                    }):Play();
                end
            }, 
            Startup = function(v2668) --[[ Line: 17243 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v75 (ref), v1 (ref)
                local v2669 = game.ReplicatedStorage.Emotes.Cola.Handle:Clone();
                v2669:SetAttribute("EmoteProperty", true);
                table.insert(v2668, v2669);
                local v2670 = game.ReplicatedStorage.Emotes.Cola.M6D:Clone();
                v2670:SetAttribute("EmoteProperty", true);
                table.insert(v2668, v2670);
                v2670.Name = "Handle";
                v2670.Part0 = v101["Left Arm"];
                v2670.Part1 = v2669;
                v2670.Parent = v101["Left Arm"];
                v2669.Parent = v101;
                v75({
                    SoundId = "rbxassetid://" .. ({
                        7455224144, 
                        7455246815, 
                        7455224490
                    })[math.random(1, 3)], 
                    Parent = v101["Left Leg"], 
                    PlaybackSpeed = 1, 
                    Volume = 0.8, 
                    RollOffMaxDistance = v1
                }):Play();
                v75({
                    SoundId = ({
                        "rbxassetid://10721950", 
                        "rbxassetid://10722059"
                    })[math.random(1, 2)], 
                    Parent = v101.PrimaryPart, 
                    Volume = 0.35
                }):Play();
            end, 
            Infinite = true, 
            Looped = true, 
            Animation = 14352383313, 
            Stun = "Slowed"
        }, 
        ["Anything To Look Cool"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://131225278629242", 
                    Volume = 1
                }
            }, 
            Keyframes = {}, 
            Animation = 82694531595019, 
            Stun = "Freeze"
        }, 
        ["K.O"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://116622800082209", 
                    Volume = 1
                }
            }, 
            Keyframes = {}, 
            Animation = 113991685821848, 
            Stun = "Freeze"
        }, 
        Train = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://92097736113843", 
                    Volume = 1
                }
            }, 
            Keyframes = {}, 
            Animation = 87360104656237, 
            Stun = "Freeze"
        }, 
        Behold = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://84936624374846", 
                    Volume = 1
                }
            }, 
            Keyframes = {}, 
            Animation = 119727504197041, 
            Idle = 121985820220625, 
            Stun = "Freeze"
        }, 
        Bow = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://12332099688", 
                    PlaybackSpeed = 0.8, 
                    Volume = 1
                }, 
                [0.5] = {
                    SoundId = "rbxassetid://12981991293", 
                    Volume = 0.5, 
                    PlaybackSpeed = 0.8
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v2673) --[[ Line: 17362 ]]
                    v2673:AdjustSpeed(0);
                end
            }, 
            Animation = 13773998974, 
            Stun = "Freeze"
        }, 
        Kneel = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://12332099688", 
                    Volume = 1
                }, 
                [0.25] = {
                    SoundId = "rbxassetid://12332220659", 
                    Volume = 0.5, 
                    PlaybackSpeed = 2
                }, 
                [0.26] = {
                    SoundId = "rbxassetid://13631231525", 
                    PlaybackSpeed = 1.25, 
                    Volume = 0.9
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v2676) --[[ Line: 17392 ]]
                    v2676:AdjustSpeed(0);
                end
            }, 
            Animation = 13721154327, 
            Stun = "Freeze"
        }, 
        Confused = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://12332099688", 
                    Volume = 0.6, 
                    PlaybackSpeed = 0.9
                }
            }, 
            Keyframes = {
                look = function() --[[ Line: 17411 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://5031986894", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.65, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                step = function() --[[ Line: 17420 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v101["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.2, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                step2 = function() --[[ Line: 17430 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v101["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.3, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                step3 = function() --[[ Line: 17440 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v101["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.3, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                cloth = function() --[[ Line: 17451 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://12982203916", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.35, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                cloth2 = function() --[[ Line: 17460 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://12981981352", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.35, 
                        RollOffMaxDistance = v1
                    }):Play();
                end
            }, 
            Animation = 13735938143, 
            Stun = "Freeze", 
            Looped = false
        }, 
        Crush = {
            Keyframes = {
                start = function() --[[ Line: 17477 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://12981991293", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.3, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                point = function() --[[ Line: 17486 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://13631231525", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.9, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                cloth2 = function() --[[ Line: 17495 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://12982203916", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.3, 
                        RollOffMaxDistance = v1
                    }):Play();
                    task.delay(0.5, function() --[[ Line: 17503 ]]
                        -- upvalues: v75 (ref), v101 (ref), v1 (ref)
                        v75({
                            SoundId = "rbxassetid://13716998561", 
                            Parent = v101.PrimaryPart, 
                            Volume = 2, 
                            RollOffMaxDistance = v1
                        }):Play();
                    end);
                end, 
                distort = function() --[[ Line: 17513 ]]

                end, 
                snap = function() --[[ Line: 17517 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://9125818080", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.9, 
                        RollOffMaxDistance = v1
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://9113542363", 
                        Parent = v101.PrimaryPart, 
                        Volume = 0.8, 
                        RollOffMaxDistance = v1
                    }):Play();
                    v75({
                        SoundId = "rbxassetid://13717046717", 
                        Parent = v101.PrimaryPart, 
                        Volume = 1, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                step = function() --[[ Line: 17540 ]]
                    -- upvalues: v75 (ref), v101 (copy), v1 (ref)
                    v75({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v101["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.2, 
                        RollOffMaxDistance = v1
                    }):Play();
                end
            }, 
            Animation = 13716964686, 
            Looped = false, 
            Stun = "Freeze"
        }
    };
    local v2839 = {
        Nightchild = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://89198363635558", 
                    Volume = 1, 
                    Looped = true
                }, 
                [0.01] = {
                    SoundId = "rbxassetid://107426550092076", 
                    Volume = 1, 
                    Looped = true
                }
            }, 
            Startup = function(v2677, _, _) --[[ Line: 17573 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy)
                local function _(v2680) --[[ Line: 17574 ]]
                    -- upvalues: v2677 (copy), l_CollectionService_1 (ref), v104 (ref), l_PlayerFromCharacter_0 (ref), v101 (ref)
                    v2680:SetAttribute("EmoteProperty", true);
                    table.insert(v2677, v2680);
                    l_CollectionService_1:AddTag(v2680, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    v2680.Parent = workspace.Thrown;
                end;
                local v2682 = game.ReplicatedStorage.Emotes.GM:Clone();
                v2682:SetAttribute("EmoteProperty", true);
                table.insert(v2677, v2682);
                l_CollectionService_1:AddTag(v2682, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                v2682.Parent = workspace.Thrown;
                v2682.Parent = v101;
                local l_Primary1_0 = v2682.Primary1;
                l_Primary1_0:SetAttribute("EmoteProperty", true);
                table.insert(v2677, l_Primary1_0);
                l_CollectionService_1:AddTag(l_Primary1_0, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                l_Primary1_0.Parent = workspace.Thrown;
                l_Primary1_0.Part0 = v101.Torso;
                l_Primary1_0.Part1 = v2682.PrimaryPart;
                l_Primary1_0.Parent = v101.Torso;
                l_Primary1_0.Name = "Primary";
                local v2684 = game.ReplicatedStorage.Emotes.AuraBox:Clone();
                v2684:SetAttribute("EmoteProperty", true);
                table.insert(v2677, v2684);
                l_CollectionService_1:AddTag(v2684, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                v2684.Parent = workspace.Thrown;
                v2684.Anchored = false;
                local l_Weld_17 = Instance.new("Weld");
                l_Weld_17.C0 = CFrame.new(-0.0500144958, 3.30000019, 0.250011444, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                l_Weld_17.Part0 = v101.PrimaryPart;
                l_Weld_17.Part1 = v2684;
                l_Weld_17.Parent = v2684;
                for _, v2687 in pairs(v101:GetChildren()) do
                    if v2687:IsA("BasePart") then
                        for _, v2689 in pairs(game.ReplicatedStorage.Emotes.StartGlitch:GetChildren()) do
                            local v2690 = v2689:Clone();
                            v2690.Parent = v2687;
                            v2690:SetAttribute("EmoteProperty", true);
                            table.insert(v2677, v2690);
                            l_CollectionService_1:AddTag(v2690, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                            v2690.Parent = workspace.Thrown;
                        end;
                    end;
                end;
            end, 
            Keyframes = {
                burst = function() --[[ Line: 17611 ]]
                    -- upvalues: v101 (copy), v7 (ref)
                    local v2691 = game.ReplicatedStorage.Emotes.BurstEffect:Clone();
                    game.Debris:AddItem(v2691, 3);
                    v2691.Parent = workspace.Thrown;
                    v2691.CFrame = v101.PrimaryPart.CFrame * CFrame.new(-1.33514404E-5, 2.79999971, -0.199993134, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                    v7(v2691);
                end
            }, 
            Animation = 73949048256257, 
            HideWeapon = true, 
            Stun = "Slowed", 
            StunAttribute = 1.5, 
            Looped = true, 
            Infinite = true, 
            DontDisconnectMarkers = true
        }, 
        ["Eternal Seal"] = {
            Preview = 88190176825744, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://79605009444651", 
                    ParentTorso = true, 
                    Volume = 2
                }
            }, 
            Keyframes = {
                one = function(v2692, _, _, _) --[[ Line: 17642 ]]
                    v2692.sound.Parent = v2692.strings:FindFirstChild("1_001", true);
                end, 
                two = function(v2696, _, _, _) --[[ Line: 17646 ]]
                    v2696.sound.Parent = v2696.realmp.RealmPrismPart;
                end
            }, 
            Startup = function(v2700, _, v2702) --[[ Line: 17651 ]] --[[ Name: Startup ]]
                -- upvalues: l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), v101 (copy), v75 (ref), l_TweenService_0 (ref)
                local function _(v2703) --[[ Line: 17652 ]]
                    -- upvalues: v2700 (copy), l_CollectionService_1 (ref), v104 (ref), l_PlayerFromCharacter_0 (ref), v101 (ref)
                    v2703:SetAttribute("EmoteProperty", true);
                    table.insert(v2700, v2703);
                    l_CollectionService_1:AddTag(v2703, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    v2703.Parent = workspace.Thrown;
                end;
                local v2705 = game.ReplicatedStorage.Emotes.PrisonRealmRig:Clone();
                v2705:SetAttribute("EmoteProperty", true);
                table.insert(v2700, v2705);
                l_CollectionService_1:AddTag(v2705, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                v2705.Parent = workspace.Thrown;
                local v2706 = game.ReplicatedStorage.Emotes.RealmPrism:Clone();
                v2706:SetAttribute("EmoteProperty", true);
                table.insert(v2700, v2706);
                l_CollectionService_1:AddTag(v2706, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                v2706.Parent = workspace.Thrown;
                local v2707 = game.ReplicatedStorage.Emotes.Strings:Clone();
                v2707:SetAttribute("EmoteProperty", true);
                table.insert(v2700, v2707);
                l_CollectionService_1:AddTag(v2707, "emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                v2707.Parent = workspace.Thrown;
                for _, v2709 in pairs({
                    v2705, 
                    v2706, 
                    unpack(v2707:GetChildren())
                }) do
                    v2709.PrimaryPart.Anchored = false;
                    local l_Weld_18 = Instance.new("Weld");
                    l_Weld_18.Part0 = v101.PrimaryPart;
                    l_Weld_18.Part1 = v2709.PrimaryPart;
                    l_Weld_18.C0 = v2709:GetAttribute("Offset");
                    l_Weld_18.Parent = v2709.PrimaryPart;
                end;
                v2702.realmp = v2706;
                v2702.strings = v2707;
                local v2711 = v75({
                    SoundId = "rbxassetid://116434570262349", 
                    Parent = v2705:FindFirstChild("Bone_L", true), 
                    Volume = 2
                });
                v2702.sound = v2711;
                v2711:Play();
                local l_Animation_1 = Instance.new("Animation");
                l_Animation_1.AnimationId = "rbxassetid://132931842051377";
                l_Animation_1 = v2705.AnimationController:LoadAnimation(l_Animation_1);
                l_Animation_1:Play();
                table.insert(v2700, l_Animation_1);
                local l_Animation_2 = Instance.new("Animation");
                l_Animation_2.AnimationId = "rbxassetid://73313263538976";
                l_Animation_2 = v2706.Humanoid:LoadAnimation(l_Animation_2);
                l_Animation_2:Play();
                table.insert(v2700, l_Animation_2);
                for v2714, v2715 in pairs({
                    115400109213203, 
                    129152881643120, 
                    116148929833466, 
                    106613129685108, 
                    85535076926939, 
                    136688312702757
                }) do
                    local l_Animation_3 = Instance.new("Animation");
                    l_Animation_3.AnimationId = "rbxassetid://" .. v2715;
                    l_Animation_3 = v2707["String" .. v2714].AnimationController:LoadAnimation(l_Animation_3);
                    l_Animation_3:Play();
                    table.insert(v2700, l_Animation_3);
                end;
                local l_Cube_2_0 = v2705.Cube_2;
                local l_Cube_finals_0 = v2705.Cube_finals;
                local l_OPEN_0 = v2705.OPEN;
                local l_CIRCLE_001_0 = v2705.CIRCLE_001;
                local l_Sphere_001_0 = v2705.Sphere_001;
                local l_RealmPrismPart_0 = v2706.RealmPrismPart;
                local l_Eye_014_0 = v2707.String4.Eye_014;
                local l_Cube_001_0 = v2707.String2.Cube_001;
                local l_Cube_001_1 = v2707.String6.Cube_001;
                local l_Eye_014_1 = v2707.String6.Eye_014;
                local l_Eye_014_2 = v2707.String1.Eye_014;
                local l_Cube_001_2 = v2707.String3.Cube_001;
                local l_Cube_001_3 = v2707.String1.Cube_001;
                local l_Eye_014_3 = v2707.String2.Eye_014;
                local l_Eye_014_4 = v2707.String3.Eye_014;
                local l_Cube_001_4 = v2707.String4.Cube_001;
                local l_Cube_001_5 = v2707.String5.Cube_001;
                local l_Eye_014_5 = v2707.String5.Eye_014;
                local l_Talismanmesh_0 = v2705.Talismanmesh;
                task.delay(3.667, function() --[[ Line: 17719 ]]
                    -- upvalues: v2705 (copy)
                    if not v2705.Parent then
                        return;
                    else
                        v2705.RootPart.PrismRootPart.Talisman.ParticleEmitter:Emit(1);
                        return;
                    end;
                end);
                l_RealmPrismPart_0.Transparency = 1;
                l_RealmPrismPart_0.Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0);
                l_Eye_014_0.Transparency = 1;
                l_Eye_014_0.Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0);
                l_Cube_001_0.Transparency = 1;
                l_Cube_001_0.Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0);
                l_Eye_014_2.Transparency = 1;
                l_Eye_014_2.Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0);
                l_Eye_014_1.Transparency = 1;
                l_Cube_001_2.Transparency = 1;
                l_Cube_001_2.Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0);
                l_Eye_014_5.Transparency = 1;
                l_Eye_014_5.Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0);
                l_Cube_001_1.Transparency = 1;
                l_Eye_014_4.Transparency = 1;
                l_Eye_014_4.Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0);
                l_Cube_001_5.Transparency = 1;
                l_Cube_001_5.Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0);
                l_Eye_014_3.Transparency = 1;
                l_Eye_014_3.Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0);
                l_Cube_001_3.Transparency = 1;
                l_Cube_001_3.Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0);
                l_Cube_001_4.Transparency = 1;
                l_Cube_001_4.Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0);
                l_OPEN_0.Transparency = 1;
                l_OPEN_0.Size = Vector3.new(1.1759774684906006, 1.1805156469345093, 0.518254816532135, 0);
                l_Cube_finals_0.Transparency = 1;
                l_Cube_finals_0.Size = Vector3.new(1.5681942701339722, 1.5681939125061035, 0.4096067249774933, 0);
                l_Cube_2_0.Transparency = 1;
                l_Cube_2_0.Size = Vector3.new(1.5681941509246826, 1.568193793296814, 0.6605415344238281, 0);
                l_Sphere_001_0.Transparency = 1;
                l_Sphere_001_0.Size = Vector3.new(0.5494463443756104, 0.5494464635848999, 0.5494464635848999, 0);
                l_CIRCLE_001_0.Transparency = 1;
                l_CIRCLE_001_0.Size = Vector3.new(0.48892268538475037, 0.4391794502735138, 0.2009500116109848, 0);
                l_RealmPrismPart_0.Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0);
                task.delay(9.15, function() --[[ Line: 17760 ]]
                    -- upvalues: l_TweenService_0 (ref), l_RealmPrismPart_0 (copy)
                    l_TweenService_0:Create(l_RealmPrismPart_0, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                end);
                task.delay(9.166666666666666, function() --[[ Line: 17763 ]]
                    -- upvalues: l_TweenService_0 (ref), l_RealmPrismPart_0 (copy)
                    l_TweenService_0:Create(l_RealmPrismPart_0, TweenInfo.new(0.016666666666667496, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(3.3399999141693115, 3.312000036239624, 3.315999984741211, 0)
                    }):Play();
                end);
                task.delay(9.183333333333334, function() --[[ Line: 17766 ]]
                    -- upvalues: l_TweenService_0 (ref), l_RealmPrismPart_0 (copy)
                    l_TweenService_0:Create(l_RealmPrismPart_0, TweenInfo.new(0.049999999999998934, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.6697041988372803, 1.6561146974563599, 1.657652497291565, 0)
                    }):Play();
                end);
                task.delay(9.233333333333333, function() --[[ Line: 17769 ]]
                    -- upvalues: l_TweenService_0 (ref), l_RealmPrismPart_0 (copy)
                    l_TweenService_0:Create(l_RealmPrismPart_0, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.062999963760376, 2, 1.0570000410079956, 0)
                    }):Play();
                end);
                task.delay(9.35, function() --[[ Line: 17772 ]]
                    -- upvalues: l_TweenService_0 (ref), l_RealmPrismPart_0 (copy)
                    l_TweenService_0:Create(l_RealmPrismPart_0, TweenInfo.new(0.2833333333333332, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(0.5, 0.5, 0.5, 0)
                    }):Play();
                end);
                task.delay(9.633333333333333, function() --[[ Line: 17775 ]]
                    -- upvalues: l_TweenService_0 (ref), l_RealmPrismPart_0 (copy)
                    l_TweenService_0:Create(l_RealmPrismPart_0, TweenInfo.new(3.6500000000000004, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                end);
                task.delay(13.283333333333333, function() --[[ Line: 17778 ]]
                    -- upvalues: l_TweenService_0 (ref), l_RealmPrismPart_0 (copy)
                    l_TweenService_0:Create(l_RealmPrismPart_0, TweenInfo.new(0.016666666666667496, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1
                    }):Play();
                end);
                task.delay(6.85, function() --[[ Line: 17782 ]]
                    -- upvalues: l_TweenService_0 (ref), l_Eye_014_0 (copy), l_Cube_001_0 (copy), l_Eye_014_2 (copy), l_Eye_014_1 (copy), l_Cube_001_2 (copy), l_Eye_014_5 (copy), l_Cube_001_1 (copy), l_Eye_014_4 (copy), l_Cube_001_5 (copy), l_Eye_014_3 (copy), l_Cube_001_3 (copy), l_Cube_001_4 (copy)
                    l_TweenService_0:Create(l_Eye_014_0, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_0, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_2, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_1, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_2, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_5, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_1, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_4, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_5, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_3, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_3, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_4, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                end);
                task.delay(6.866666666666666, function() --[[ Line: 17796 ]]
                    -- upvalues: l_TweenService_0 (ref), l_Eye_014_0 (copy), l_Cube_001_0 (copy), l_Eye_014_2 (copy), l_Eye_014_1 (copy), l_Cube_001_2 (copy), l_Eye_014_5 (copy), l_Cube_001_1 (copy), l_Eye_014_4 (copy), l_Cube_001_5 (copy), l_Eye_014_3 (copy), l_Cube_001_3 (copy), l_Cube_001_4 (copy)
                    l_TweenService_0:Create(l_Eye_014_0, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.7093806266784668, 1.6954684257507324, 1.6970425844192505, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_0, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(6.345957279205322, 0.6005618572235107, 1.416975498199463, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_2, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.7093806266784668, 1.6954684257507324, 1.6970425844192505, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_1, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.7093806266784668, 1.6954684257507324, 1.6970425844192505, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_2, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(6.345957279205322, 0.6005618572235107, 1.416975498199463, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_5, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.7093806266784668, 1.6954684257507324, 1.6970425844192505, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_1, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(6.345957279205322, 0.6005618572235107, 1.416975498199463, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_4, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.7093806266784668, 1.6954684257507324, 1.6970425844192505, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_5, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(6.345957279205322, 0.6005618572235107, 1.416975498199463, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_3, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.7093806266784668, 1.6954684257507324, 1.6970425844192505, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_3, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(6.345957279205322, 0.6005618572235107, 1.416975498199463, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_4, TweenInfo.new(0.3166666666666673, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(6.345957279205322, 0.6005618572235107, 1.416975498199463, 0)
                    }):Play();
                end);
                task.delay(7.183333333333334, function() --[[ Line: 17810 ]]
                    -- upvalues: l_TweenService_0 (ref), l_Eye_014_0 (copy), l_Cube_001_0 (copy), l_Eye_014_2 (copy), l_Eye_014_1 (copy), l_Cube_001_2 (copy), l_Eye_014_5 (copy), l_Cube_001_1 (copy), l_Eye_014_4 (copy), l_Cube_001_5 (copy), l_Eye_014_3 (copy), l_Cube_001_3 (copy), l_Cube_001_4 (copy)
                    l_TweenService_0:Create(l_Eye_014_0, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.7093806266784668, 1.6954684257507324, 1.6970425844192505, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_0, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(6.345957279205322, 0.6005618572235107, 1.416975498199463, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_2, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.7093806266784668, 1.6954684257507324, 1.6970425844192505, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_1, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.7093806266784668, 1.6954684257507324, 1.6970425844192505, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_2, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(6.345957279205322, 0.6005618572235107, 1.416975498199463, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_5, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.7093806266784668, 1.6954684257507324, 1.6970425844192505, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_1, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(6.345957279205322, 0.6005618572235107, 1.416975498199463, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_4, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.7093806266784668, 1.6954684257507324, 1.6970425844192505, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_5, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(6.345957279205322, 0.6005618572235107, 1.416975498199463, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_3, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.7093806266784668, 1.6954684257507324, 1.6970425844192505, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_3, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(6.345957279205322, 0.6005618572235107, 1.416975498199463, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_4, TweenInfo.new(1.916666666666666, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(6.345957279205322, 0.6005618572235107, 1.416975498199463, 0)
                    }):Play();
                end);
                task.delay(9.1, function() --[[ Line: 17824 ]]
                    -- upvalues: l_TweenService_0 (ref), l_Eye_014_0 (copy), l_Cube_001_0 (copy), l_Eye_014_2 (copy), l_Eye_014_1 (copy), l_Cube_001_2 (copy), l_Eye_014_5 (copy), l_Cube_001_1 (copy), l_Eye_014_4 (copy), l_Cube_001_5 (copy), l_Eye_014_3 (copy), l_Cube_001_3 (copy), l_Cube_001_4 (copy)
                    l_TweenService_0:Create(l_Eye_014_0, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_0, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_2, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_1, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_2, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_5, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_1, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_4, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_5, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_3, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_3, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_4, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                end);
                task.delay(9.216666666666667, function() --[[ Line: 17838 ]]
                    -- upvalues: l_TweenService_0 (ref), l_Eye_014_0 (copy), l_Cube_001_0 (copy), l_Eye_014_2 (copy), l_Eye_014_1 (copy), l_Cube_001_2 (copy), l_Eye_014_5 (copy), l_Cube_001_1 (copy), l_Eye_014_4 (copy), l_Cube_001_5 (copy), l_Eye_014_3 (copy), l_Cube_001_3 (copy), l_Cube_001_4 (copy)
                    l_TweenService_0:Create(l_Eye_014_0, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_0, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_2, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_1, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_2, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_5, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_1, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_4, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_5, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Eye_014_3, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_3, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_001_4, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1, 
                        Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582, 0)
                    }):Play();
                end);
                task.delay(0.4, function() --[[ Line: 17852 ]]
                    -- upvalues: l_TweenService_0 (ref), l_OPEN_0 (copy), l_Cube_finals_0 (copy), l_Cube_2_0 (copy), l_Sphere_001_0 (copy), l_CIRCLE_001_0 (copy)
                    l_TweenService_0:Create(l_OPEN_0, TweenInfo.new(0.016666666666666663, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                    l_TweenService_0:Create(l_Cube_finals_0, TweenInfo.new(0.016666666666666663, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                    l_TweenService_0:Create(l_Cube_2_0, TweenInfo.new(0.016666666666666663, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                    l_TweenService_0:Create(l_Sphere_001_0, TweenInfo.new(0.016666666666666663, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                    l_TweenService_0:Create(l_CIRCLE_001_0, TweenInfo.new(0.016666666666666663, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                end);
                task.delay(0.4166666666666667, function() --[[ Line: 17859 ]]
                    -- upvalues: l_TweenService_0 (ref), l_OPEN_0 (copy), l_Cube_finals_0 (copy), l_Cube_2_0 (copy), l_Sphere_001_0 (copy), l_CIRCLE_001_0 (copy)
                    l_TweenService_0:Create(l_OPEN_0, TweenInfo.new(4.133333333333333, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.1759774684906006, 1.1805156469345093, 0.518254816532135, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_finals_0, TweenInfo.new(4.133333333333333, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.5681942701339722, 1.5681939125061035, 0.4096067249774933, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_2_0, TweenInfo.new(4.133333333333333, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.5681941509246826, 1.568193793296814, 0.6605415344238281, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Sphere_001_0, TweenInfo.new(4.133333333333333, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(0.5494463443756104, 0.5494464635848999, 0.5494464635848999, 0)
                    }):Play();
                    l_TweenService_0:Create(l_CIRCLE_001_0, TweenInfo.new(4.133333333333333, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(0.48892268538475037, 0.4391794502735138, 0.2009500116109848, 0)
                    }):Play();
                end);
                task.delay(4.55, function() --[[ Line: 17866 ]]
                    -- upvalues: l_TweenService_0 (ref), l_Talismanmesh_0 (copy), l_OPEN_0 (copy), l_Cube_finals_0 (copy), l_Cube_2_0 (copy), l_Sphere_001_0 (copy), l_CIRCLE_001_0 (copy)
                    l_TweenService_0:Create(l_Talismanmesh_0, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1
                    }):Play();
                    l_TweenService_0:Create(l_OPEN_0, TweenInfo.new(0.31666666666666643, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(7.461335182189941, 7.493675231933594, 2.7742624282836914, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_finals_0, TweenInfo.new(0.31666666666666643, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(10.256355285644531, 10.256352424621582, 2.0000128746032715, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_2_0, TweenInfo.new(0.31666666666666643, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(10.256354331970215, 10.256351470947266, 3.7882277965545654, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Sphere_001_0, TweenInfo.new(0.31666666666666643, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(2.996539831161499, 2.9965405464172363, 2.9965410232543945, 0)
                    }):Play();
                    l_TweenService_0:Create(l_CIRCLE_001_0, TweenInfo.new(0.31666666666666643, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(2.5652353763580322, 2.210754632949829, 0.5130806565284729, 0)
                    }):Play();
                end);
                task.delay(4.866666666666666, function() --[[ Line: 17874 ]]
                    -- upvalues: l_TweenService_0 (ref), l_OPEN_0 (copy), l_Cube_finals_0 (copy), l_Cube_2_0 (copy), l_Sphere_001_0 (copy), l_CIRCLE_001_0 (copy)
                    l_TweenService_0:Create(l_OPEN_0, TweenInfo.new(1.4500000000000002, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(7.461335182189941, 7.493675231933594, 2.7742624282836914, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_finals_0, TweenInfo.new(1.4500000000000002, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(10.256355285644531, 10.256352424621582, 2.0000128746032715, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_2_0, TweenInfo.new(1.4500000000000002, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(10.256354331970215, 10.256351470947266, 3.7882277965545654, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Sphere_001_0, TweenInfo.new(1.4500000000000002, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(2.996539831161499, 2.9965405464172363, 2.9965410232543945, 0)
                    }):Play();
                    l_TweenService_0:Create(l_CIRCLE_001_0, TweenInfo.new(1.4500000000000002, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(2.5652353763580322, 2.210754632949829, 0.5130806565284729, 0)
                    }):Play();
                end);
                task.delay(6.316666666666666, function() --[[ Line: 17881 ]]
                    -- upvalues: l_TweenService_0 (ref), l_OPEN_0 (copy), l_Cube_finals_0 (copy), l_Cube_2_0 (copy), l_Sphere_001_0 (copy), l_CIRCLE_001_0 (copy)
                    l_TweenService_0:Create(l_OPEN_0, TweenInfo.new(0.35000000000000053, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.10000000149011612, 0.10000000149011612, 0.10000000149011612, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_finals_0, TweenInfo.new(0.35000000000000053, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.10000000149011612, 0.10000000149011612, 0.10000000149011612, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Cube_2_0, TweenInfo.new(0.35000000000000053, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.10000000149011612, 0.10000000149011612, 0.10000000149011612, 0)
                    }):Play();
                    l_TweenService_0:Create(l_Sphere_001_0, TweenInfo.new(0.35000000000000053, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.10000000149011612, 0.10000000149011612, 0.10000000149011612, 0)
                    }):Play();
                    l_TweenService_0:Create(l_CIRCLE_001_0, TweenInfo.new(0.35000000000000053, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0, 
                        Size = Vector3.new(0.10000000149011612, 0.10000000149011612, 0.10000000149011612, 0)
                    }):Play();
                end);
                task.delay(6.666666666666667, function() --[[ Line: 17888 ]]
                    -- upvalues: l_TweenService_0 (ref), l_OPEN_0 (copy), l_Cube_finals_0 (copy), l_Cube_2_0 (copy), l_Sphere_001_0 (copy), l_CIRCLE_001_0 (copy)
                    l_TweenService_0:Create(l_OPEN_0, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1
                    }):Play();
                    l_TweenService_0:Create(l_Cube_finals_0, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1
                    }):Play();
                    l_TweenService_0:Create(l_Cube_2_0, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1
                    }):Play();
                    l_TweenService_0:Create(l_Sphere_001_0, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1
                    }):Play();
                    l_TweenService_0:Create(l_CIRCLE_001_0, TweenInfo.new(0.016666666666666607, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1
                    }):Play();
                end);
            end, 
            Animation = 100255267749203, 
            HideWeapon = true, 
            Limited = true, 
            Stun = "Freeze", 
            KillEmote = true
        }, 
        ["Final Stand"] = {
            Sounds = {}, 
            Cooldown = 20, 
            Limited = true, 
            AuraEffect = true, 
            Preview = 109527502104358, 
            Animation = 113876851900426, 
            Stun = "Freeze", 
            Startup = function(v2736, _, _) --[[ Line: 17916 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v102 (copy)
                for _, v2740 in pairs(v101:GetDescendants()) do
                    if v2740:IsA("Sound") and tostring(v2740) == "CrushEmoteAmbience" then
                        game:GetService("TweenService"):Create(v2740, TweenInfo.new(0.75), {
                            Volume = 0
                        }):Play();
                        task.delay(1, function() --[[ Line: 17921 ]]
                            -- upvalues: v2740 (copy)
                            if v2740 and v2740.Parent then
                                v2740:Destroy();
                            end;
                        end);
                    end;
                    if (v2740:IsA("ParticleEmitter") or v2740:IsA("Attachment")) and v2740:GetAttribute("LimitedAura") then
                        if v2740:IsA("ParticleEmitter") then
                            v2740.Enabled = false;
                        else
                            for _, v2742 in pairs(v2740:GetChildren()) do
                                v2742.Enabled = false;
                            end;
                        end;
                        task.delay(4, function() --[[ Line: 17934 ]]
                            -- upvalues: v2740 (copy)
                            if v2740 and v2740.Parent then
                                v2740:Destroy();
                            end;
                        end);
                    end;
                end;
                local l_Accessory_0 = Instance.new("Accessory");
                l_Accessory_0.Name = "#EmoteHolder_" .. math.random(1, 100000);
                l_Accessory_0.Parent = v101;
                l_Accessory_0:SetAttribute("EmoteProperty", true);
                table.insert(v2736, l_Accessory_0);
                game.ReplicatedStorage.Replication:FireAllClients({
                    Type = "ReplicateEmoteVfx", 
                    Character = v101, 
                    vfxName = v102, 
                    SpecificModule = game.ReplicatedStorage.Emotes.VFX, 
                    AnimSent = 113876851900426, 
                    RealBind = l_Accessory_0
                });
                task.delay(9, function() --[[ Line: 17960 ]]
                    -- upvalues: l_Accessory_0 (copy), v101 (ref)
                    if not l_Accessory_0 or not l_Accessory_0.Parent or not workspace.Live:FindFirstChild((tostring(v101))) then
                        return;
                    else
                        local v2744 = {};
                        for v2745, v2746 in pairs({
                            "rbxassetid://112446641141594", 
                            "rbxassetid://98080224862986"
                        }) do
                            local v2747 = shared.sfx({
                                SoundId = v2746, 
                                Parent = v101.Torso, 
                                Name = "CrushEmoteAmbience", 
                                Volume = v2745 == 2 and 0.3 or 1, 
                                Looped = true
                            });
                            v2747:Play();
                            table.insert(v2744, v2747);
                        end;
                        local l_v101_0 = v101;
                        local v2749 = game.ReplicatedStorage.Emotes.VFX.VfxMods.FS.vfx.Aura:Clone();
                        for _, v2751 in pairs(v2749:GetChildren()) do
                            local l_l_v101_0_FirstChild_0 = l_v101_0:FindFirstChild(v2751.Name);
                            if l_l_v101_0_FirstChild_0 then
                                for _, v2754 in pairs(v2751:GetChildren()) do
                                    if v2751.Name == "HumanoidRootPart" then
                                        l_l_v101_0_FirstChild_0 = l_v101_0.Torso;
                                    end;
                                    if v2754:IsA("ParticleEmitter") then
                                        v2754.LockedToPart = true;
                                    end;
                                    v2754.Parent = l_l_v101_0_FirstChild_0;
                                    v2754:SetAttribute("LimitedAura", true);
                                    task.delay(65, function() --[[ Line: 18002 ]]
                                        -- upvalues: v2754 (copy)
                                        if v2754 and v2754.Parent then
                                            v2754:Destroy();
                                        end;
                                    end);
                                    task.delay(60, function() --[[ Line: 18004 ]]
                                        -- upvalues: v2744 (copy), v2754 (copy)
                                        for _, v2756 in pairs(v2744) do
                                            game:GetService("TweenService"):Create(v2756, TweenInfo.new(0.5), {
                                                Volume = 0
                                            }):Play();
                                            task.delay(0.75, function() --[[ Line: 18009 ]]
                                                -- upvalues: v2756 (copy)
                                                if v2756 and v2756.Parent then
                                                    v2756:Destroy();
                                                end;
                                            end);
                                        end;
                                        if v2754:IsA("ParticleEmitter") then
                                            v2754.Enabled = false;
                                            return;
                                        else
                                            for _, v2758 in pairs(v2754:GetChildren()) do
                                                v2758.Enabled = false;
                                            end;
                                            return;
                                        end;
                                    end);
                                end;
                            end;
                        end;
                        v2749:Destroy();
                        return;
                    end;
                end);
            end
        }, 
        ["Boundless Rage"] = {
            Sounds = {}, 
            AuraEffect = true, 
            Limited = true, 
            Cooldown = 20, 
            Preview = 80531366520745, 
            Animation = 107649573628906, 
            Stun = "Freeze", 
            Startup = function(v2759, _, _) --[[ Line: 18044 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy), v102 (copy)
                for _, v2763 in pairs(v101:GetDescendants()) do
                    if v2763:IsA("Sound") and tostring(v2763) == "CrushEmoteAmbience" then
                        game:GetService("TweenService"):Create(v2763, TweenInfo.new(0.75), {
                            Volume = 0
                        }):Play();
                        task.delay(1, function() --[[ Line: 18050 ]]
                            -- upvalues: v2763 (copy)
                            if v2763 and v2763.Parent then
                                v2763:Destroy();
                            end;
                        end);
                    end;
                    if (v2763:IsA("ParticleEmitter") or v2763:IsA("Attachment")) and v2763:GetAttribute("LimitedAura") then
                        if v2763:IsA("ParticleEmitter") then
                            v2763.Enabled = false;
                        else
                            for _, v2765 in pairs(v2763:GetChildren()) do
                                v2765.Enabled = false;
                            end;
                        end;
                        task.delay(4, function() --[[ Line: 18063 ]]
                            -- upvalues: v2763 (copy)
                            if v2763 and v2763.Parent then
                                v2763:Destroy();
                            end;
                        end);
                    end;
                end;
                local l_Accessory_1 = Instance.new("Accessory");
                l_Accessory_1.Name = "#EmoteHolder_" .. math.random(1, 100000);
                l_Accessory_1.Parent = v101;
                l_Accessory_1:SetAttribute("EmoteProperty", true);
                table.insert(v2759, l_Accessory_1);
                game.ReplicatedStorage.Replication:FireAllClients({
                    Type = "ReplicateEmoteVfx", 
                    Character = v101, 
                    vfxName = v102, 
                    SpecificModule = game.ReplicatedStorage.Emotes.VFX, 
                    AnimSent = 107649573628906, 
                    RealBind = l_Accessory_1
                });
                local v2767 = shared.cfolder({
                    Name = "NoRotate", 
                    Parent = v101
                }, 10);
                v2767:SetAttribute("EmoteProperty", true);
                table.insert(v2759, v2767);
                task.delay(4, function() --[[ Line: 18095 ]]
                    -- upvalues: l_Accessory_1 (copy), v101 (ref)
                    if not l_Accessory_1 or not l_Accessory_1.Parent or not workspace.Live:FindFirstChild((tostring(v101))) then
                        return;
                    else
                        local l_v101_1 = v101;
                        local v2769 = game.ReplicatedStorage.Emotes.VFX.VfxMods.Boundless.vfx.AuraChar:Clone();
                        game.Debris:AddItem(v2769, 5);
                        local v2770 = shared.sfx({
                            SoundId = "rbxassetid://81055990581650", 
                            Parent = l_v101_1.Torso, 
                            Name = "CrushEmoteAmbience", 
                            Volume = 1, 
                            Looped = true
                        });
                        v2770:Play();
                        for _, v2772 in pairs(v2769:GetChildren()) do
                            if v2772:IsA("BasePart") then
                                local l_l_v101_1_FirstChild_0 = l_v101_1:FindFirstChild(v2772.Name);
                                for _, v2775 in pairs(v2772:GetChildren()) do
                                    if l_l_v101_1_FirstChild_0 and (v2775:IsA("Attachment") or v2775:IsA("ParticleEmitter")) then
                                        local v2776 = v2775:Clone();
                                        v2776.Parent = l_l_v101_1_FirstChild_0;
                                        v2776:SetAttribute("LimitedAura", true);
                                        task.delay(60, function() --[[ Line: 18128 ]]
                                            -- upvalues: v2770 (copy), v2776 (copy)
                                            game:GetService("TweenService"):Create(v2770, TweenInfo.new(0.5), {
                                                Volume = 0
                                            }):Play();
                                            task.delay(0.75, function() --[[ Line: 18131 ]]
                                                -- upvalues: v2770 (ref)
                                                if v2770 and v2770.Parent then
                                                    v2770:Destroy();
                                                end;
                                            end);
                                            if v2776:IsA("ParticleEmitter") then
                                                v2776.Enabled = false;
                                                return;
                                            else
                                                for _, v2778 in pairs(v2776:GetChildren()) do
                                                    v2778.Enabled = false;
                                                end;
                                                return;
                                            end;
                                        end);
                                        task.delay(65, function() --[[ Line: 18141 ]]
                                            -- upvalues: v2776 (copy)
                                            if v2776 and v2776.Parent then
                                                v2776:Destroy();
                                            end;
                                        end);
                                    end;
                                end;
                            end;
                        end;
                        v2769:Destroy();
                        return;
                    end;
                end);
            end
        }, 
        ["The Hunt"] = {
            Startup = function(_, _, _) --[[ Line: 18154 ]] --[[ Name: Startup ]]
                -- upvalues: v75 (ref), v101 (copy)
                v75({
                    SoundId = "rbxassetid://16749048896", 
                    Parent = v101.PrimaryPart, 
                    Volume = 0.65
                }):Play();
            end, 
            Keyframes = {}, 
            Animation = 16719053698
        }, 
        ["Eighth Key"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://16719111858", 
                    Volume = 1.5, 
                    Looped = false, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v2782, _, _) --[[ Line: 18179 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2785 = game.ReplicatedStorage.Emotes.Keys[8]:Clone();
                v2785:SetAttribute("EmoteProperty", true);
                table.insert(v2782, v2785);
                local l_m6d_29 = v2785.m6d;
                l_m6d_29:SetAttribute("EmoteProperty", true);
                table.insert(v2782, l_m6d_29);
                l_m6d_29.Name = v2785.Name;
                l_m6d_29.Part0 = v101.PrimaryPart;
                l_m6d_29.Part1 = v2785;
                l_m6d_29.Parent = v101.PrimaryPart;
                v2785.Parent = v101;
            end, 
            Animation = 16719107050
        }, 
        ["Tenth Key"] = {
            Startup = function(v2787, _, _) --[[ Line: 18194 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2790 = game.ReplicatedStorage.Emotes.Keys[10]:Clone();
                v2790:SetAttribute("EmoteProperty", true);
                table.insert(v2787, v2790);
                local l_m6d_30 = v2790.m6d;
                l_m6d_30:SetAttribute("EmoteProperty", true);
                table.insert(v2787, l_m6d_30);
                l_m6d_30.Name = v2790.Name;
                l_m6d_30.Part0 = v101.PrimaryPart;
                l_m6d_30.Part1 = v2790;
                l_m6d_30.Parent = v101.PrimaryPart;
                v2790.Parent = v101;
                shared.sfx({
                    SoundId = "rbxassetid://16725117208", 
                    Parent = v2790, 
                    Volume = 1.5
                }):Play();
            end, 
            Animation = 16725121777
        }, 
        ["Sixth Key"] = {
            Startup = function(v2792, _, _) --[[ Line: 18215 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2795 = game.ReplicatedStorage.Emotes.Keys[6]:Clone();
                v2795:SetAttribute("EmoteProperty", true);
                table.insert(v2792, v2795);
                local l_m6d_31 = v2795.m6d;
                l_m6d_31:SetAttribute("EmoteProperty", true);
                table.insert(v2792, l_m6d_31);
                l_m6d_31.Name = v2795.Name;
                l_m6d_31.Part0 = v101.PrimaryPart;
                l_m6d_31.Part1 = v2795;
                l_m6d_31.Parent = v101.PrimaryPart;
                v2795.Parent = v101;
                shared.sfx({
                    SoundId = "rbxassetid://16725146789", 
                    Parent = v2795, 
                    Volume = 1.5
                }):Play();
            end, 
            Animation = 16725167915
        }, 
        ["Ninth Key"] = {
            Startup = function(v2797, _, _) --[[ Line: 18236 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2800 = game.ReplicatedStorage.Emotes.Keys[9]:Clone();
                v2800:SetAttribute("EmoteProperty", true);
                table.insert(v2797, v2800);
                local l_m6d_32 = v2800.m6d;
                l_m6d_32:SetAttribute("EmoteProperty", true);
                table.insert(v2797, l_m6d_32);
                l_m6d_32.Name = v2800.Name;
                l_m6d_32.Part0 = v101.PrimaryPart;
                l_m6d_32.Part1 = v2800;
                l_m6d_32.Parent = v101.PrimaryPart;
                v2800.Parent = v101;
                shared.sfx({
                    SoundId = "rbxassetid://16719157711", 
                    Parent = v2800, 
                    Volume = 1.5
                }):Play();
            end, 
            Animation = 16719149848
        }, 
        ["First Key"] = {
            Startup = function(v2802, _, _) --[[ Line: 18257 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2805 = game.ReplicatedStorage.Emotes.Keys[1]:Clone();
                v2805:SetAttribute("EmoteProperty", true);
                table.insert(v2802, v2805);
                local l_m6d_33 = v2805.m6d;
                l_m6d_33:SetAttribute("EmoteProperty", true);
                table.insert(v2802, l_m6d_33);
                l_m6d_33.Name = v2805.Name;
                l_m6d_33.Part0 = v101.PrimaryPart;
                l_m6d_33.Part1 = v2805;
                l_m6d_33.Parent = v101.PrimaryPart;
                v2805.Parent = v101;
                shared.sfx({
                    SoundId = "rbxassetid://16719180495", 
                    Parent = v2805, 
                    TimePosition = 0.075, 
                    Volume = 1.5
                }):Resume();
            end, 
            Animation = 16719183472
        }, 
        ["Seventh Key"] = {
            Startup = function(v2807, _, _) --[[ Line: 18279 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2810 = game.ReplicatedStorage.Emotes.Keys[7]:Clone();
                v2810:SetAttribute("EmoteProperty", true);
                table.insert(v2807, v2810);
                local l_m6d_34 = v2810.m6d;
                l_m6d_34:SetAttribute("EmoteProperty", true);
                table.insert(v2807, l_m6d_34);
                l_m6d_34.Name = v2810.Name;
                l_m6d_34.Part0 = v101.PrimaryPart;
                l_m6d_34.Part1 = v2810;
                l_m6d_34.Parent = v101.PrimaryPart;
                v2810.Parent = v101;
                shared.sfx({
                    SoundId = "rbxassetid://16719202700", 
                    Parent = v2810, 
                    TimePosition = 0, 
                    Volume = 1.5
                }):Resume();
            end, 
            Animation = 16719205513
        }, 
        ["Third Key"] = {
            Startup = function(v2812, _, _) --[[ Line: 18301 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2815 = game.ReplicatedStorage.Emotes.Keys[3]:Clone();
                v2815:SetAttribute("EmoteProperty", true);
                table.insert(v2812, v2815);
                local l_m6d_35 = v2815.m6d;
                l_m6d_35:SetAttribute("EmoteProperty", true);
                table.insert(v2812, l_m6d_35);
                l_m6d_35.Name = v2815.Name;
                l_m6d_35.Part0 = v101.PrimaryPart;
                l_m6d_35.Part1 = v2815;
                l_m6d_35.Parent = v101.PrimaryPart;
                v2815.Parent = v101;
                shared.sfx({
                    SoundId = "rbxassetid://16725331724", 
                    Parent = v2815, 
                    Volume = 1.5
                }):Resume();
            end, 
            Animation = 16725337143
        }, 
        ["Fourth Key"] = {
            Startup = function(v2817, _, _) --[[ Line: 18322 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2820 = game.ReplicatedStorage.Emotes.Keys[4]:Clone();
                v2820:SetAttribute("EmoteProperty", true);
                table.insert(v2817, v2820);
                local l_m6d_36 = v2820.m6d;
                l_m6d_36:SetAttribute("EmoteProperty", true);
                table.insert(v2817, l_m6d_36);
                l_m6d_36.Name = v2820.Name;
                l_m6d_36.Part0 = v101.PrimaryPart;
                l_m6d_36.Part1 = v2820;
                l_m6d_36.Parent = v101.PrimaryPart;
                v2820.Parent = v101;
                shared.sfx({
                    SoundId = "rbxassetid://16719261316", 
                    Parent = v2820, 
                    TimePosition = 0.2, 
                    Volume = 1.5
                }):Resume();
            end, 
            Animation = 16719220174
        }, 
        ["Fifth Key"] = {
            Startup = function(v2822, _, _) --[[ Line: 18344 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2825 = game.ReplicatedStorage.Emotes.Keys[5]:Clone();
                v2825:SetAttribute("EmoteProperty", true);
                table.insert(v2822, v2825);
                local l_m6d_37 = v2825.m6d;
                l_m6d_37:SetAttribute("EmoteProperty", true);
                table.insert(v2822, l_m6d_37);
                l_m6d_37.Name = v2825.Name;
                l_m6d_37.Part0 = v101.PrimaryPart;
                l_m6d_37.Part1 = v2825;
                l_m6d_37.Parent = v101.PrimaryPart;
                v2825.Parent = v101;
                shared.sfx({
                    SoundId = "rbxassetid://16725540436", 
                    Parent = v2825, 
                    Volume = 1.5
                }):Resume();
            end, 
            Animation = 16725350277
        }, 
        ["Second Key"] = {
            Startup = function(v2827, _, _) --[[ Line: 18365 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2830 = game.ReplicatedStorage.Emotes.Keys[2]:Clone();
                v2830:SetAttribute("EmoteProperty", true);
                table.insert(v2827, v2830);
                local l_m6d_38 = v2830.m6d;
                l_m6d_38:SetAttribute("EmoteProperty", true);
                table.insert(v2827, l_m6d_38);
                l_m6d_38.Name = v2830.Name;
                l_m6d_38.Part0 = v101.PrimaryPart;
                l_m6d_38.Part1 = v2830;
                l_m6d_38.Parent = v101.PrimaryPart;
                v2830.Parent = v101;
                task.delay(0.3, function() --[[ Line: 18375 ]]
                    -- upvalues: v2830 (copy)
                    if v2830.Parent then
                        shared.sfx({
                            SoundId = "rbxassetid://16719230370", 
                            Parent = v2830, 
                            TimePosition = 0, 
                            Volume = 1.5
                        }):Resume();
                    end;
                end);
            end, 
            Animation = 16719226293
        }, 
        ["Monster Mash Potion"] = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://35930009", 
                    Looped = true, 
                    Volume = 0.25, 
                    ParentTorso = true
                }
            }, 
            Startup = function(v2832, _, _) --[[ Line: 18400 ]] --[[ Name: Startup ]]
                -- upvalues: v101 (copy)
                local v2835 = game.ReplicatedStorage.Emotes.potion:Clone();
                v2835.Parent = v101;
                local l_Weld_19 = Instance.new("Weld");
                l_Weld_19.Part0 = v101["Right Arm"];
                l_Weld_19.Part1 = v2835;
                l_Weld_19.C0 = CFrame.new(-0.100006104, -1, 0.499969482, 1, 0, 0, 0, -1.00000012, -2.79396772E-9, 0, -2.79396772E-9, -1);
                l_Weld_19.Parent = v2835;
                for _, v2838 in pairs({
                    l_Weld_19, 
                    v2835
                }) do
                    v2838:SetAttribute("EmoteProperty", true);
                    table.insert(v2832, v2838);
                end;
            end, 
            HideWeapon = true, 
            Looped = true, 
            Animation = 35654637, 
            Stun = "Slowed"
        }
    };
    if v105 then
        for v2840, _ in pairs(v2839) do
            if string.split(v2840, " ")[2] == "Key" or v2840 == "The Hunt" then
                v2839[v2840].HideWeapon = true;
                v2839[v2840].Stun = "Freeze";
                v2839[v2840].Ease = 0;
                v2839[v2840].CantCancel = true;
                v2839[v2840].Key = true;
                v2839[v2840].NoRotate = true;
                v2839[v2840].Keyframes = {
                    ["end"] = function() --[[ Line: 18428 ]]

                    end
                };
            end;
        end;
        for v2842, v2843 in pairs(v2839) do
            v108[v2842] = v2843;
        end;
    end;
    if v103 then
        return v108;
    elseif tick() - (v101:GetAttribute("EmoteCD") or 0) < 0 then
        return;
    elseif not v108[v102] then
        return;
    else
        v108 = v108[v102];
        if not shared.intcheck then
            return;
        else
            if v108.KillEmote then
                local l_ForceField_3 = v101:FindFirstChildOfClass("ForceField");
                if l_ForceField_3 and l_ForceField_3:GetAttribute("Emote") then
                    return;
                end;
            end;
            if v101:FindFirstChild("KillEmoteInProgress") then
                return;
            elseif v108.KillEmote and not v67(v101) then
                return;
            else
                local v2845 = require(v101.CharacterHandler:FindFirstChild("AnimationPlayer") or v101.CharacterHandler:WaitForChild("AnimationPlayer"));
                local l_v2845_0 = v2845 --[[ copy: 10 -> 46 ]];
                v107 = function(v2847) --[[ Line: 18468 ]]
                    -- upvalues: l_v2845_0 (copy), v101 (copy)
                    return l_v2845_0.playAnimation(v101:FindFirstChild("Humanoid"), v2847);
                end;
                v2845 = 0;
                if v102 == "OK" or v102 == "And One" then
                    v2845 = v2845 + 2;
                end;
                if v102 == "Cart Ride" then
                    v2845 = v2845 + 1.5;
                end;
                if v102 == "Untouchable" or v102 == "Hologram" or v102 == "Party" then
                    v2845 = v2845 + 2;
                end;
                v101:SetAttribute("EmoteCD", tick() + v2845);
                local v2848 = v107(v108.Animation);
                local v2849 = {
                    v2848
                };
                v2848.Looped = v108.Looped;
                shared.cfolder({
                    Name = "CancelEmote2", 
                    Parent = v101
                }, 0.1);
                local v2850 = shared.cfolder({
                    Name = "DoingEmote"
                });
                v2850:SetAttribute("Name", v102);
                v2850:SetAttribute("FixRotation", v108.FixRotation);
                l_CollectionService_1:AddTag(v2850, "emotestun" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                v2850.Parent = v101;
                if v108.Tag then
                    l_CollectionService_1:AddTag(v2850, v108.Tag);
                    l_CollectionService_1:AddTag(v2850, "interactableEmote");
                end;
                table.insert(v2849, v2850);
                if v108.Stun then
                    local v2851 = shared.cfolder({
                        Name = v108.Stun
                    });
                    if v108.StunAttribute then
                        v2851:SetAttribute("Div", v108.StunAttribute);
                    end;
                    v2851:SetAttribute("EmoteStun", true);
                    l_CollectionService_1:AddTag(v2851, "emotestun" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    v2851.Parent = v101;
                    table.insert(v2849, v2851);
                end;
                if v108.CanWalk then
                    local v2852 = shared.cfolder({
                        Name = "CanWalk"
                    });
                    l_CollectionService_1:AddTag(v2852, "emotestun" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    v2852.Parent = v101;
                    table.insert(v2849, v2852);
                end;
                if v108.NoRotate then
                    local v2853 = shared.cfolder({
                        Name = "NoRotate"
                    });
                    l_CollectionService_1:AddTag(v2853, "emotestun" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    v2853.Parent = v101;
                    table.insert(v2849, v2853);
                end;
                if v108.HideWeapon and v101:GetAttribute("WeaponHolding") then
                    local v2854 = shared.cfolder({
                        Name = "GrabWeapon"
                    });
                    v2854:SetAttribute("inf", true);
                    v2854.Parent = v101;
                    local v2855 = shared.cfolder({
                        Name = "HideWeapon", 
                        Parent = v101
                    });
                    l_CollectionService_1:AddTag(v2855, "emotestun" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    l_CollectionService_1:AddTag(v2854, "emotestun" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                    table.insert(v2849, v2855);
                    table.insert(v2849, v2854);
                end;
                if v108.Heavy then
                    table.insert(v2849, shared.cfolder({
                        Name = "HeavyBody", 
                        Parent = v101
                    }));
                end;
                if v101:FindFirstChild("NoCancel") then
                    v108.CantCancel = true;
                end;
                local v2856 = shared.intcheck(v101, v2849, nil, v108.CantCancel);
                if v2856.interrupted then
                    return;
                else
                    if v108.CantCancel then
                        for _ = 1, 5 do
                            local l_AbsoluteImmortal_0 = v101:FindFirstChild("AbsoluteImmortal");
                            if l_AbsoluteImmortal_0 then
                                l_AbsoluteImmortal_0:Destroy();
                            else
                                break;
                            end;
                        end;
                        local l_ForceField_4 = Instance.new("ForceField");
                        l_ForceField_4.Visible = false;
                        l_ForceField_4.Name = "AbsoluteImmortal";
                        l_ForceField_4:SetAttribute("Emote", true);
                        l_ForceField_4:SetAttribute("EmoteProperty", true);
                        table.insert(v2849, l_ForceField_4);
                        l_ForceField_4.Parent = v101;
                    end;
                    table.insert(v2849, v101.DescendantAdded:Connect(function(v2860) --[[ Line: 18594 ]]
                        -- upvalues: v2849 (copy)
                        task.wait();
                        if v2860.Name == "EmoteSFX" and v2860:IsA("Sound") then
                            table.insert(v2849, v2860);
                            local v2861 = nil;
                            do
                                local l_v2861_0 = v2861;
                                l_v2861_0 = v2860:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 18598 ]]
                                    -- upvalues: v2860 (copy), v2849 (ref), l_v2861_0 (ref)
                                    if not v2860.Parent then
                                        table.remove(v2849, table.find(v2849, v2860));
                                        return l_v2861_0:Disconnect();
                                    else
                                        return;
                                    end;
                                end);
                                table.insert(v2849, l_v2861_0);
                            end;
                        end;
                    end));
                    if v102 == "Boppin" then
                        local v2863 = {
                            smear2 = CFrame.new(-0.791710854, 1.84644032, -0.135307789, 0.9807778, -0.0889977589, 0.173650175, 0.0903706253, 0.995908499, 4.47683476E-7, -0.172939673, 0.0156924464, 0.984807432), 
                            smear22 = CFrame.new(-0.745628357, 1.85068655, -0.143433571, 0.9807778, -0.0889977589, 0.173650175, 0.0903706253, 0.995908499, 4.47683476E-7, -0.172939673, 0.0156924464, 0.984807432), 
                            smear23 = CFrame.new(-0.481506348, 1.87502241, -0.190005302, 0.98077774, -0.0889983475, 0.173649952, 0.0903712064, 0.995908439, 3.92749484E-7, -0.172939405, 0.0156925842, 0.984807491), 
                            smear3 = CFrame.new(-1.09635735, 2.04136896, -0.893452168, 0.975248516, -0.220937833, 0.00918622315, 0.218309477, 0.968592405, 0.119048409, -0.035201937, -0.114095852, 0.992848933), 
                            smear24 = CFrame.new(-0.481506348, 1.87502241, -0.190005302, 0.98077774, -0.0889983475, 0.173649952, 0.0903712064, 0.995908439, 3.92749484E-7, -0.172939405, 0.0156925842, 0.984807491), 
                            smear25 = CFrame.new(-0.481506348, 1.87502241, -0.190005302, 0.98077774, -0.0889983475, 0.173649952, 0.0903712064, 0.995908439, 3.92749484E-7, -0.172939405, 0.0156925842, 0.984807491), 
                            smear32 = CFrame.new(-1.09635735, 2.04136896, -0.893452168, 0.975248516, -0.220937833, 0.00918622315, 0.218309477, 0.968592405, 0.119048409, -0.035201937, -0.114095852, 0.992848933), 
                            smear26 = CFrame.new(1.28601265, -10.2580585, -0.501669407, 0.969846249, -0.171009481, 0.173649028, 0.173647553, 0.984808147, 1.73008459E-7, -0.171010911, 0.030153567, 0.984807611), 
                            smear33 = CFrame.new(-1.09635735, 2.04136896, -0.893452168, 0.975248516, -0.220937833, 0.00918622315, 0.218309477, 0.968592405, 0.119048409, -0.035201937, -0.114095852, 0.992848933), 
                            smear1 = CFrame.new(-0.528757095, 1.55774784, -1.00612593, 0.981060326, -0.0858316347, 0.173648164, 0.087155737, 0.99619472, -2.22650054E-9, -0.172987401, 0.0151344342, 0.984807789)
                        };
                        v108.Keyframes = {};
                        for v2864, v2865 in pairs(v2863) do
                            v108.Keyframes[v2864] = function(v2866) --[[ Line: 18624 ]]
                                -- upvalues: v2864 (copy), v2849 (copy), v101 (copy), v2865 (copy)
                                local v2867 = game.ReplicatedStorage.Emotes.Smear[string.sub(v2864, 1, 6)]:Clone();
                                v2867:SetAttribute("EmoteProperty", true);
                                table.insert(v2849, v2867);
                                local l_Weld_20 = Instance.new("Weld");
                                l_Weld_20.Parent = v2867;
                                l_Weld_20.Part0 = v101.PrimaryPart;
                                l_Weld_20.Part1 = v2867;
                                l_Weld_20.C0 = v2865;
                                v2866[v2864] = v2867;
                                v2867.Parent = v101;
                            end;
                            v108.Keyframes[v2864 .. "end"] = function(v2869) --[[ Line: 18639 ]]
                                -- upvalues: v2864 (copy)
                                local v2870 = v2869[v2864];
                                if v2870 then
                                    v2870:Destroy();
                                end;
                            end;
                        end;
                    end;
                    local v2871 = {};
                    if v108.Animation ~= 0 then
                        v101:SetAttribute("SideDashDisable", true);
                        v2848:Play(v108.Ease);
                    end;
                    if v108.KillEmote then
                        local v2872 = v67(v101);
                        local l_PrimaryPart_1 = v101.PrimaryPart;
                        local v2874 = nil;
                        local v2875 = nil;
                        local v2876 = {};
                        local v2877 = {};
                        local v2878 = nil;
                        local function v2880(v2879) --[[ Line: 18665 ]]
                            -- upvalues: v101 (copy)
                            game.ReplicatedStorage.Replication:FireAllClients({
                                Effect = "Smooth Grab", 
                                CanBypass = true, 
                                Hit = v2879.hit, 
                                From = v101.PrimaryPart, 
                                NoLook = true, 
                                Offset = v2879.offset, 
                                Anchor = v2879.anchor
                            });
                        end;
                        local l_v2877_0 = v2877 --[[ copy: 21 -> 47 ]];
                        local function v2885(v2882) --[[ Line: 18677 ]]
                            -- upvalues: l_v2877_0 (copy)
                            for _, v2884 in pairs(l_v2877_0) do
                                if v2884:IsA("Animation") then
                                    v2884:Stop(v2882.speed or 0);
                                end;
                                v2884:Destroy();
                            end;
                        end;
                        do
                            local l_v2874_0, l_v2875_0, l_v2878_0 = v2874, v2875, v2878;
                            local function v2891(v2889) --[[ Line: 18687 ]]
                                -- upvalues: l_v2874_0 (ref)
                                if not workspace.Live:FindFirstChild((tostring(l_v2874_0))) then
                                    return;
                                else
                                    local l_BodyVelocity_4 = Instance.new("BodyVelocity");
                                    l_BodyVelocity_4.MaxForce = Vector3.new(40000, 40000, 40000, 0);
                                    l_BodyVelocity_4.Velocity = v2889.Velocity;
                                    l_BodyVelocity_4.Parent = l_v2874_0.PrimaryPart;
                                    game.Debris:AddItem(l_BodyVelocity_4, v2889.DeletionTime);
                                    return;
                                end;
                            end;
                            local v2892 = {};
                            local l_v2892_0 = v2892 --[[ copy: 26 -> 48 ]];
                            local function v2898(v2894) --[[ Line: 18699 ]]
                                -- upvalues: l_v2892_0 (copy), v2849 (copy), v101 (copy)
                                for _, v2896 in pairs(l_v2892_0) do
                                    v2896:Destroy();
                                end;
                                local l_BodyVelocity_5 = Instance.new("BodyVelocity");
                                table.insert(v2849, l_BodyVelocity_5);
                                table.insert(l_v2892_0, l_BodyVelocity_5);
                                l_BodyVelocity_5.Name = "moveme";
                                l_BodyVelocity_5.MaxForce = Vector3.new(40000, 0, 40000, 0);
                                l_BodyVelocity_5:SetAttribute("Speed", v2894.speed or 100);
                                l_BodyVelocity_5:SetAttribute("Fallout", v2894.fallout or 0.95);
                                l_BodyVelocity_5:SetAttribute("End", v2894.endd or 5);
                                l_BodyVelocity_5.Parent = v101.PrimaryPart;
                                game.Debris:AddItem(l_BodyVelocity_5, v2894.deletiontime or 5);
                            end;
                            local function v2901(v2899) --[[ Line: 18715 ]]
                                local v2900 = {
                                    Effect = "Ground Crater", 
                                    Seed = math.random(1, 2000000000), 
                                    start = v2899.startpos, 
                                    ["end"] = Vector3.new(0, -14, 0, 0), 
                                    amount = v2899.amount, 
                                    size = v2899.size, 
                                    nosound = v2899.nosound
                                };
                                game.ReplicatedStorage.Replication:FireAllClients(v2900);
                            end;
                            local l_v2885_0 = v2885 --[[ copy: 24 -> 49 ]];
                            local l_v2891_0 = v2891 --[[ copy: 25 -> 50 ]];
                            local l_v2901_0 = v2901 --[[ copy: 28 -> 51 ]];
                            local l_v2898_0 = v2898 --[[ copy: 27 -> 52 ]];
                            local l_l_PrimaryPart_1_0 = l_PrimaryPart_1 --[[ copy: 17 -> 53 ]];
                            local v2989 = {
                                ["Beneath Me"] = {
                                    VictimAnim = 74811458332755, 
                                    GrabOffset = CFrame.new(0, 0, 0), 
                                    ForceStopAnim = true, 
                                    Markers = {
                                        stomp = function() --[[ Line: 18735 ]]
                                            -- upvalues: v17 (ref), v101 (copy), l_v2874_0 (ref)
                                            v17({
                                                v101, 
                                                l_v2874_0
                                            }, 3);
                                        end, 
                                        stomp2 = function() --[[ Line: 18739 ]]
                                            -- upvalues: v17 (ref), v101 (copy), l_v2874_0 (ref), l_v2885_0 (copy), l_v2891_0 (copy), l_v2901_0 (copy)
                                            v17({
                                                v101, 
                                                l_v2874_0
                                            }, 8);
                                            l_v2885_0();
                                            shared.ragdoll({
                                                hit = l_v2874_0, 
                                                time = 20
                                            });
                                            l_v2891_0({
                                                Velocity = Vector3.new(0, math.random(100, 125), 0), 
                                                DeletionTime = Random.new():NextNumber(0.1, 0.125)
                                            });
                                            l_v2901_0({
                                                startpos = l_v2874_0.PrimaryPart.Position, 
                                                ["end"] = Vector3.new(0, -24, 0, 0), 
                                                amount = 6, 
                                                nosound = true, 
                                                size = 0.3
                                            });
                                            l_v2901_0({
                                                ["end"] = Vector3.new(0, -24, 0, 0), 
                                                amount = 9, 
                                                nosound = true, 
                                                nosmoke = true, 
                                                size = 1.34, 
                                                startpos = l_v2874_0.PrimaryPart.Position, 
                                                sizemult = 2
                                            });
                                        end
                                    }
                                }, 
                                ["Sure Hit"] = {
                                    VictimAnim = 85149748400452, 
                                    GrabOffset = CFrame.new(0, 0, -2), 
                                    DontStopVicAnimationOnAnchorDeletion = true, 
                                    StartTime = 0.7, 
                                    Markers = {
                                        rip = function() --[[ Line: 18783 ]]
                                            -- upvalues: l_v2874_0 (ref), v2849 (copy), v101 (copy), l_v2885_0 (copy), l_v2878_0 (ref)
                                            l_v2874_0:SetAttribute("NoHeadLerp", true);
                                            local l_ForceField_5 = Instance.new("ForceField");
                                            l_ForceField_5.Visible = false;
                                            l_ForceField_5.Name = "AbsoluteImmortal";
                                            l_ForceField_5.Parent = l_v2874_0;
                                            shared.cfolder({
                                                Name = "RootAnchor", 
                                                Parent = l_v2874_0
                                            });
                                            local l_ForceField_6 = Instance.new("ForceField");
                                            l_ForceField_6.Parent = l_v2874_0;
                                            l_ForceField_6.Visible = false;
                                            l_v2874_0.Torso.Neck:Destroy();
                                            local l_Head_0 = l_v2874_0.Head;
                                            l_Head_0.CanCollide = false;
                                            l_Head_0.Massless = true;
                                            l_Head_0.Parent = workspace.Thrown;
                                            for _, v2911 in pairs(l_Head_0:GetDescendants()) do
                                                if v2911:IsA("BillboardGui") then
                                                    v2911:Destroy();
                                                end;
                                            end;
                                            local l_Weld_21 = Instance.new("Weld");
                                            for _, v2914 in pairs({
                                                l_Head_0, 
                                                l_Weld_21
                                            }) do
                                                table.insert(v2849, v2914);
                                                game.Debris:AddItem(v2914, 15);
                                            end;
                                            l_Weld_21.Parent = v101;
                                            l_Weld_21.Part0 = v101["Right Arm"];
                                            l_Weld_21.Part1 = l_Head_0;
                                            l_Weld_21.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(0, 1.5707963267948966, 0);
                                            task.delay(1.85, function() --[[ Line: 18826 ]]
                                                -- upvalues: l_v2885_0 (ref), l_v2878_0 (ref)
                                                l_v2885_0();
                                                l_v2878_0:AdjustSpeed(0);
                                            end);
                                            shared.ragdoll({
                                                hit = l_v2874_0, 
                                                time = 20
                                            });
                                            task.delay(1.5, function() --[[ Line: 18836 ]]
                                                -- upvalues: l_Head_0 (copy), l_v2874_0 (ref)
                                                if l_Head_0 and l_Head_0.Parent then
                                                    local function v2916(v2915) --[[ Line: 18838 ]] --[[ Name: fadeOut ]]
                                                        game:GetService("TweenService"):Create(v2915, TweenInfo.new(0.65), {
                                                            Transparency = 1
                                                        }):Play();
                                                    end;
                                                    local function v2920(v2917) --[[ Line: 18842 ]] --[[ Name: fadeOutDescendants ]]
                                                        -- upvalues: v2916 (copy)
                                                        for _, v2919 in pairs(v2917:GetDescendants()) do
                                                            if v2919:IsA("Part") or v2919:IsA("MeshPart") or v2919:IsA("Decal") then
                                                                v2916(v2919);
                                                            end;
                                                        end;
                                                    end;
                                                    for _, v2922 in pairs(l_v2874_0:GetDescendants()) do
                                                        if v2922:IsA("Accessory") then
                                                            v2920(v2922);
                                                        end;
                                                    end;
                                                    v2916(l_Head_0);
                                                    v2920(l_Head_0);
                                                end;
                                            end);
                                        end
                                    }
                                }, 
                                ["Eternal Seal"] = {
                                    VictimAnim = 74819612786417, 
                                    GrabOffset = CFrame.new(0, 0, 0), 
                                    DontStopVicAnimationOnAnchorDeletion = true, 
                                    EndOffset = CFrame.new(-1.01794529, -0.614216805, -26.8296661, -0.993651807, 0.0824780315, 0.0765090287, 0.105090812, 0.923230588, 0.369596004, -0.0401519351, 0.375290096, -0.926037431), 
                                    Markers = {
                                        two = function() --[[ Line: 18871 ]]
                                            -- upvalues: l_v2874_0 (ref), v11 (ref), l_v2878_0 (ref), l_v2885_0 (copy)
                                            local l_ForceField_7 = Instance.new("ForceField");
                                            l_ForceField_7.Visible = false;
                                            l_ForceField_7.Name = "AbsoluteImmortal";
                                            l_ForceField_7.Parent = l_v2874_0;
                                            local _ = shared.cfolder({
                                                Name = "RootAnchor", 
                                                Parent = l_v2874_0
                                            });
                                            v11(l_v2874_0);
                                            l_v2878_0:AdjustSpeed(0);
                                            l_v2885_0();
                                            local l_Name_0 = l_v2874_0.Name;
                                            local l_PlayerFromCharacter_2 = game.Players:GetPlayerFromCharacter(l_v2874_0);
                                            if l_PlayerFromCharacter_2 then
                                                l_Name_0 = l_PlayerFromCharacter_2.DisplayName;
                                            end;
                                            game.ReplicatedStorage.Replication:FireAllClients({
                                                Effect = "System Message", 
                                                Info = {
                                                    Text = string.format("[S] %s has been sealed.", l_Name_0), 
                                                    Color = Color3.fromRGB(205, 84, 75), 
                                                    Font = Enum.Font.SourceSansBold, 
                                                    FontSize = Enum.FontSize.Size24
                                                }
                                            });
                                        end
                                    }
                                }, 
                                ["Ban Hammer"] = {
                                    VictimAnim = 88611791573910, 
                                    GrabOffset = CFrame.new(0, 0, 0), 
                                    DontStopVicAnimationOnAnchorDeletion = true, 
                                    EndOffset = CFrame.new(0, -2, -8) * CFrame.Angles(-1.5707963267948966, 3.141592653589793, 0), 
                                    Markers = {
                                        slam = function() --[[ Line: 18913 ]]
                                            -- upvalues: l_v2874_0 (ref), v17 (ref), v101 (copy), l_v2878_0 (ref), l_v2885_0 (copy), l_v2901_0 (copy)
                                            local l_ForceField_8 = Instance.new("ForceField");
                                            l_ForceField_8.Visible = false;
                                            l_ForceField_8.Name = "AbsoluteImmortal";
                                            l_ForceField_8.Parent = l_v2874_0;
                                            local _ = shared.cfolder({
                                                Name = "RootAnchor", 
                                                Parent = l_v2874_0
                                            });
                                            game.ReplicatedStorage.Replication:FireAllClients({
                                                Effect = "Death FX", 
                                                Character = l_v2874_0
                                            });
                                            v17({
                                                v101, 
                                                l_v2874_0
                                            }, 8);
                                            l_v2878_0:Stop(0);
                                            l_v2885_0();
                                            shared.ragdoll({
                                                hit = l_v2874_0, 
                                                time = 20
                                            });
                                            game.ReplicatedStorage.Replication:FireAllClients({
                                                Effect = "System Message", 
                                                Info = {
                                                    Text = string.format("[S] %s has been banned from the game <font size=\"10\" color=\"rgb(255, 255, 255)\">just kidding!!!</font>", l_v2874_0.Name), 
                                                    Color = Color3.fromRGB(205, 84, 75), 
                                                    Font = Enum.Font.SourceSansBold, 
                                                    FontSize = Enum.FontSize.Size24
                                                }
                                            });
                                            l_v2901_0({
                                                startpos = l_v2874_0.PrimaryPart.Position, 
                                                ["end"] = Vector3.new(0, -24, 0, 0), 
                                                amount = 6, 
                                                nosound = true, 
                                                size = 0.45
                                            });
                                            l_v2901_0({
                                                ["end"] = Vector3.new(0, -24, 0, 0), 
                                                amount = 8, 
                                                nosound = true, 
                                                nosmoke = true, 
                                                size = 1.5, 
                                                startpos = l_v2874_0.PrimaryPart.Position, 
                                                sizemult = 2.35
                                            });
                                        end
                                    }
                                }, 
                                ["Heart Strike"] = {
                                    VictimAnim = 98112252644080, 
                                    GrabOffset = CFrame.new(0, 0, 0), 
                                    EndOffset = CFrame.new(0, 0, 10) * CFrame.Angles(0, 3.141592653589793, 0), 
                                    VictimAnimStopped = true, 
                                    DontStopVicAnimationOnAnchorDeletion = true, 
                                    DontCFrame = true, 
                                    Markers = {
                                        die = function() --[[ Line: 18978 ]]
                                            -- upvalues: l_v2874_0 (ref), v101 (copy), l_v2885_0 (copy)
                                            local l_ForceField_9 = Instance.new("ForceField");
                                            l_ForceField_9.Visible = false;
                                            l_ForceField_9.Name = "AbsoluteImmortal";
                                            l_ForceField_9.Parent = l_v2874_0;
                                            local v2930 = v101.Torso.CFrame * CFrame.new(4, 0, -4) * CFrame.Angles(0, -0.6981317007977318, 0);
                                            l_v2885_0();
                                            l_v2874_0:SetPrimaryPartCFrame(v2930);
                                        end
                                    }
                                }, 
                                ["Boxed Up"] = {
                                    DontRestoreVictimCollisions = true, 
                                    VictimAnim = 109129404577713, 
                                    GrabOffset = CFrame.new(0, 0, -3.5) * CFrame.Angles(0, 3.141592653589793, 0), 
                                    Markers = {
                                        down = function() --[[ Line: 18998 ]]
                                            -- upvalues: l_v2874_0 (ref), v11 (ref), v101 (copy), v2849 (copy)
                                            shared.cfolder({
                                                Name = "RootAnchor", 
                                                Parent = l_v2874_0
                                            });
                                            v11(l_v2874_0);
                                            wait(0.2);
                                            if v101.PrimaryPart:FindFirstChild("Present") then
                                                table.remove(v2849, table.find(v2849, v101.PrimaryPart:FindFirstChild("Present")));
                                                for _, v2932 in pairs(v101.PrimaryPart:FindFirstChild("Present"):GetDescendants()) do
                                                    if v2932:IsA("Part") or v2932:IsA("MeshPart") then
                                                        game:GetService("TweenService"):Create(v2932, TweenInfo.new(0.25), {
                                                            Transparency = 1
                                                        }):Play();
                                                    end;
                                                end;
                                            end;
                                        end, 
                                        up = function() --[[ Line: 19020 ]]
                                            -- upvalues: v17 (ref), v101 (copy), l_v2874_0 (ref)
                                            v17({
                                                v101, 
                                                l_v2874_0
                                            }, 3);
                                        end, 
                                        axekick = function() --[[ Line: 19024 ]]
                                            -- upvalues: v17 (ref), v101 (copy), l_v2874_0 (ref)
                                            v17({
                                                v101, 
                                                l_v2874_0
                                            }, 6, 0.15);
                                        end
                                    }
                                }, 
                                ["Dragon Combo"] = {
                                    CanRotate = true, 
                                    VictimAnim = 105042527798191, 
                                    GrabOffset = CFrame.new(0, 0, -3) * CFrame.Angles(0, 3.141592653589793, 0), 
                                    EndOffset = CFrame.new(-5, 0, -3) * CFrame.Angles(0, 3.141592653589793, 0), 
                                    Markers = {
                                        kick = function() --[[ Line: 19038 ]]
                                            -- upvalues: v17 (ref), v101 (copy), l_v2874_0 (ref), l_v2898_0 (copy)
                                            v17({
                                                v101, 
                                                l_v2874_0
                                            }, 4, 0.1);
                                            l_v2898_0({
                                                speed = 80, 
                                                fallout = 0.9, 
                                                endd = 5, 
                                                deletiontime = 0.25
                                            });
                                        end, 
                                        move2 = function() --[[ Line: 19049 ]]
                                            -- upvalues: l_v2898_0 (copy)
                                            l_v2898_0({
                                                speed = 30, 
                                                fallout = 0.935, 
                                                endd = 5, 
                                                deletiontime = 0.5
                                            });
                                        end, 
                                        move = function() --[[ Line: 19058 ]]
                                            -- upvalues: l_v2898_0 (copy)
                                            l_v2898_0({
                                                speed = 25, 
                                                fallout = 0.935, 
                                                endd = 5, 
                                                deletiontime = 0.5
                                            });
                                        end, 
                                        move3 = function() --[[ Line: 19067 ]]
                                            -- upvalues: l_v2898_0 (copy)
                                            l_v2898_0({
                                                speed = 25, 
                                                fallout = 0.935, 
                                                endd = 5, 
                                                deletiontime = 0.5
                                            });
                                        end, 
                                        before = function() --[[ Line: 19076 ]]
                                            -- upvalues: l_v2898_0 (copy)
                                            l_v2898_0({
                                                speed = 60, 
                                                fallout = 0.95, 
                                                endd = 5, 
                                                deletiontime = 0.5
                                            });
                                        end, 
                                        knee = function() --[[ Line: 19085 ]]
                                            -- upvalues: v17 (ref), v101 (copy), l_v2874_0 (ref), l_v2898_0 (copy)
                                            v17({
                                                v101, 
                                                l_v2874_0
                                            }, 4, 0.1);
                                            l_v2898_0({
                                                speed = 80, 
                                                fallout = 0.9, 
                                                endd = 5, 
                                                deletiontime = 0.25
                                            });
                                        end, 
                                        elbow = function() --[[ Line: 19096 ]]
                                            -- upvalues: l_v2898_0 (copy), v2848 (copy), v17 (ref), v101 (copy), l_v2874_0 (ref)
                                            l_v2898_0({
                                                speed = 80, 
                                                fallout = 0.95, 
                                                endd = 5, 
                                                deletiontime = 1
                                            });
                                            for v2933 = 1, 2 do
                                                if not v2848.IsPlaying then
                                                    return;
                                                else
                                                    v17({
                                                        v101, 
                                                        l_v2874_0
                                                    }, 2, v2933 == 2 and 0.5 or 0.1);
                                                    task.wait(0.25);
                                                end;
                                            end;
                                        end, 
                                        here = function() --[[ Line: 19115 ]]
                                            -- upvalues: l_v2874_0 (ref), v101 (copy)
                                            l_v2874_0:SetPrimaryPartCFrame(v101.PrimaryPart.CFrame * CFrame.new(-5, 0, -3) * CFrame.Angles(0, 3.141592653589793, 0));
                                        end, 
                                        connect = function() --[[ Line: 19119 ]]

                                        end, 
                                        finished = function() --[[ Line: 19123 ]]
                                            -- upvalues: v17 (ref), v101 (copy), l_v2874_0 (ref), l_v2885_0 (copy), v75 (ref), l_v2901_0 (copy)
                                            v17({
                                                v101, 
                                                l_v2874_0
                                            }, 8, 0.5);
                                            l_v2885_0();
                                            local l_BodyVelocity_6 = Instance.new("BodyVelocity");
                                            l_BodyVelocity_6.MaxForce = Vector3.new(1000000, 1000000, 1000000, 0);
                                            l_BodyVelocity_6.Velocity = -v101.PrimaryPart.CFrame.RightVector * 10 + Vector3.new(0, -50, 0, 0);
                                            l_BodyVelocity_6.Parent = l_v2874_0.PrimaryPart;
                                            task.delay(0.1, function() --[[ Line: 19132 ]]
                                                -- upvalues: l_BodyVelocity_6 (copy)
                                                l_BodyVelocity_6.Velocity = Vector3.new(0, 150, 0, 0);
                                            end);
                                            game.Debris:AddItem(l_BodyVelocity_6, 0.15);
                                            local l_Position_1 = l_v2874_0.PrimaryPart.Position;
                                            v75({
                                                SoundId = "rbxassetid://126972610957117", 
                                                CFrame = CFrame.new(l_Position_1), 
                                                TimePosition = 1, 
                                                Volume = 4
                                            }):Resume();
                                            l_v2901_0({
                                                startpos = l_Position_1, 
                                                ["end"] = Vector3.new(0, -24, 0, 0), 
                                                amount = 6, 
                                                size = 0.3
                                            });
                                            l_v2901_0({
                                                ["end"] = Vector3.new(0, -24, 0, 0), 
                                                amount = 9, 
                                                nosmoke = true, 
                                                size = 1.34, 
                                                startpos = l_Position_1, 
                                                sizemult = 2, 
                                                nosound = true
                                            });
                                        end
                                    }
                                }, 
                                Ruthless = {
                                    VictimAnim = 90695671597431, 
                                    GrabOffset = CFrame.new(0, 0, 0), 
                                    VictimSfx = "rbxassetid://75797337808333", 
                                    DontCFrame = true, 
                                    DontRagdoll = true, 
                                    DontStopVicAnimationOnAnchorDeletion = true, 
                                    Markers = {
                                        heavypunch = function() --[[ Line: 19179 ]]
                                            -- upvalues: v75 (ref), v101 (copy), l_v2874_0 (ref), l_v2885_0 (copy), l_v2878_0 (ref), v17 (ref)
                                            v75({
                                                SoundId = "rbxassetid://81685116276323", 
                                                CFrame = v101.Torso.CFrame, 
                                                Volume = 2
                                            }):Play();
                                            l_v2874_0:SetPrimaryPartCFrame(v101.PrimaryPart.CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(0, 3.141592653589793, 0));
                                            l_v2885_0();
                                            l_v2878_0:Stop(0);
                                            shared.ragdoll({
                                                hit = l_v2874_0, 
                                                time = 10
                                            });
                                            local l_BodyVelocity_7 = Instance.new("BodyVelocity");
                                            l_BodyVelocity_7.MaxForce = Vector3.new(100000, 100000, 100000, 0);
                                            l_BodyVelocity_7.Velocity = v101.PrimaryPart.CFrame.lookVector * math.random(110, 130) + Vector3.new(0, 10, 0, 0);
                                            l_BodyVelocity_7.Parent = l_v2874_0.PrimaryPart;
                                            game.Debris:AddItem(l_BodyVelocity_7, 0.15);
                                            v17({
                                                v101, 
                                                l_v2874_0
                                            }, 8, 0.35);
                                        end
                                    }
                                }, 
                                Weak = {
                                    VictimAnim = 119807482462660, 
                                    GrabOffset = CFrame.new(0, -0.1, -2.9) * CFrame.Angles(0, 3.141592653589793, 0), 
                                    CanRotate = true, 
                                    VictimSfx = "rbxassetid://115534752820424", 
                                    Markers = {
                                        crack = function() --[[ Line: 19217 ]]
                                            -- upvalues: l_v2874_0 (ref), l_l_PrimaryPart_1_0 (copy), l_v2885_0 (copy), l_v2878_0 (ref), v17 (ref), v101 (copy)
                                            l_v2874_0:SetPrimaryPartCFrame(l_l_PrimaryPart_1_0.CFrame * CFrame.new(0, -0.1, -2.9) * CFrame.Angles(0, 3.141592653589793, 0));
                                            task.delay(0.91, function() --[[ Line: 19220 ]]
                                                -- upvalues: l_v2885_0 (ref), l_v2878_0 (ref)
                                                l_v2885_0();
                                                l_v2878_0:Stop(0);
                                            end);
                                            v17({
                                                v101, 
                                                l_v2874_0
                                            }, 6, 0.065);
                                        end
                                    }
                                }, 
                                ["Energy Barrage"] = {
                                    VictimAnim = 96013088878070, 
                                    GrabOffset = CFrame.new(0, 0, -3.15) * CFrame.Angles(0, 3.141592653589793, 0), 
                                    DontCFrame = true, 
                                    DontRagdoll = true, 
                                    DontStopVicAnimationOnAnchorDeletion = true, 
                                    DontRestoreVictimCollisions = true, 
                                    Markers = {
                                        start = function() --[[ Line: 19240 ]]
                                            -- upvalues: l_v2874_0 (ref), l_l_PrimaryPart_1_0 (copy), l_v2885_0 (copy), l_v2878_0 (ref)
                                            local _ = tick();
                                            l_v2874_0:SetPrimaryPartCFrame(l_l_PrimaryPart_1_0.CFrame * CFrame.new(0, 0, -3.15) * CFrame.Angles(0, 3.141592653589793, 0));
                                            task.delay(1.2, function() --[[ Line: 19244 ]]
                                                -- upvalues: l_v2874_0 (ref), l_v2885_0 (ref), l_v2878_0 (ref), l_l_PrimaryPart_1_0 (ref)
                                                local _ = shared.cfolder({
                                                    Name = "RootAnchor", 
                                                    Parent = l_v2874_0
                                                }, 0.35);
                                                l_v2885_0();
                                                l_v2878_0:Stop(0);
                                                shared.ragdoll({
                                                    hit = l_v2874_0, 
                                                    time = 25
                                                });
                                                l_v2874_0:SetPrimaryPartCFrame(l_l_PrimaryPart_1_0.CFrame * CFrame.new(0, -2, -3.75) * CFrame.Angles(-1.5707963267948966, 0, 0));
                                                l_v2874_0.PrimaryPart.Velocity = Vector3.new(0, 0, 0, 0);
                                            end);
                                        end
                                    }
                                }, 
                                Insect = {
                                    VictimAnim = 70500126966316, 
                                    GrabOffset = CFrame.new(0, 0, -4) * CFrame.Angles(0, 3.141592653589793, 0), 
                                    Markers = {
                                        flick = function() --[[ Line: 19270 ]]
                                            -- upvalues: l_v2885_0 (copy), v17 (ref), v101 (copy), l_v2874_0 (ref), v82 (ref)
                                            l_v2885_0();
                                            v17({
                                                v101, 
                                                l_v2874_0
                                            }, 6, 0.15);
                                            local l_BodyVelocity_8 = Instance.new("BodyVelocity");
                                            l_BodyVelocity_8.MaxForce = Vector3.new(40000, 40000, 40000, 0);
                                            l_BodyVelocity_8.Velocity = v101.PrimaryPart.CFrame.lookVector * 500 + Vector3.new(0, 50, 0, 0);
                                            l_BodyVelocity_8.Parent = l_v2874_0.PrimaryPart;
                                            game.Debris:AddItem(l_BodyVelocity_8, 0.2);
                                            local l_BodyAngularVelocity_0 = Instance.new("BodyAngularVelocity");
                                            l_BodyAngularVelocity_0.Name = "BAV";
                                            l_BodyAngularVelocity_0.AngularVelocity = Vector3.new(math.random(5, 10), math.random(1, 5), math.random(2, 6));
                                            l_BodyAngularVelocity_0.MaxTorque = Vector3.new(40000, 40000, 40000, 0);
                                            l_BodyAngularVelocity_0.Parent = l_v2874_0.PrimaryPart;
                                            game:service("Debris"):AddItem(l_BodyAngularVelocity_0, 0.15);
                                            local l_l_v2874_0_0 = l_v2874_0;
                                            shared.sfx({
                                                SoundId = "rbxassetid://74450756836645", 
                                                Parent = l_l_v2874_0_0.Torso, 
                                                Volume = 3
                                            }):Play();
                                            require(game.ReplicatedStorage.Hitbox):CheckCollision({
                                                hit = l_l_v2874_0_0, 
                                                dmg = 0, 
                                                time = 3, 
                                                NoCrater = true, 
                                                nosound = true, 
                                                AccurateCheck = true, 
                                                IgnoreRankedWalls = true, 
                                                CraterTime = 3, 
                                                callback = function(_, v2943) --[[ Line: 19306 ]] --[[ Name: callback ]]
                                                    -- upvalues: v82 (ref), l_l_v2874_0_0 (copy), v101 (ref)
                                                    local v2944, v2945 = v82({
                                                        orig = l_l_v2874_0_0.PrimaryPart.Position, 
                                                        dir = Vector3.new(0, -37.5, 0, 0)
                                                    });
                                                    if not v2944 or v2943 or not l_l_v2874_0_0.Parent or not l_l_v2874_0_0.PrimaryPart or not l_l_v2874_0_0.PrimaryPart.Parent then
                                                        return;
                                                    else
                                                        for _, v2947 in pairs({
                                                            l_l_v2874_0_0, 
                                                            v101
                                                        }) do
                                                            local l_PlayerFromCharacter_3 = game.Players:GetPlayerFromCharacter(v2947);
                                                            if l_PlayerFromCharacter_3 then
                                                                game.ReplicatedStorage.Replication:FireClient(l_PlayerFromCharacter_3, {
                                                                    Effect = "Camshake", 
                                                                    Intensity = 8, 
                                                                    Last = 0.75
                                                                });
                                                            end;
                                                        end;
                                                        task.spawn(function() --[[ Line: 19327 ]]
                                                            -- upvalues: l_l_v2874_0_0 (ref)
                                                            l_l_v2874_0_0.PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, -250, 0, 0);
                                                            for _, v2950 in pairs(l_l_v2874_0_0:GetChildren()) do
                                                                if v2950:IsA("BasePart") then
                                                                    v2950.AssemblyLinearVelocity = Vector3.new(0, -250, 0, 0);
                                                                end;
                                                            end;
                                                            game:GetService("RunService").Heartbeat:Wait();
                                                            l_l_v2874_0_0.PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, -250, 0, 0);
                                                            for _, v2952 in pairs(l_l_v2874_0_0:GetChildren()) do
                                                                if v2952:IsA("BasePart") then
                                                                    v2952.AssemblyLinearVelocity = Vector3.new(0, -250, 0, 0);
                                                                end;
                                                            end;
                                                        end);
                                                        shared.sfx({
                                                            SoundId = "rbxassetid://14700241589", 
                                                            CFrame = CFrame.new(v2945), 
                                                            Volume = 5
                                                        }):Play();
                                                        shared.sfx({
                                                            SoundId = "rbxassetid://14392660963", 
                                                            CFrame = CFrame.new(v2945), 
                                                            Volume = 7
                                                        }):Play();
                                                        game.ReplicatedStorage.Replication:FireAllClients({
                                                            Effect = "Ground Crater", 
                                                            Seed = math.random(1, 2000000000), 
                                                            start = v2945 + Vector3.new(0, 0.10000000149011612, 0, 0), 
                                                            ["end"] = Vector3.new(0, -24, 0, 0), 
                                                            amount = 6, 
                                                            nosound = true, 
                                                            size = 0.3
                                                        });
                                                        game.ReplicatedStorage.Replication:FireAllClients({
                                                            Effect = "Ground Crater", 
                                                            Seed = math.random(1, 2000000000), 
                                                            start = v2945 + Vector3.new(0, 0.10000000149011612, 0, 0), 
                                                            ["end"] = Vector3.new(0, -14, 0, 0), 
                                                            amount = 6, 
                                                            nosound = true, 
                                                            sizemult = 1.35, 
                                                            size = 2
                                                        });
                                                        game.ReplicatedStorage.Replication:FireAllClients({
                                                            Effect = "Ground Crater", 
                                                            Seed = math.random(1, 2000000000), 
                                                            start = v2945 + Vector3.new(0, 0.10000000149011612, 0, 0), 
                                                            ["end"] = Vector3.new(0, -14, 0, 0), 
                                                            amount = 9, 
                                                            nosound = true, 
                                                            sizemult = 1.75, 
                                                            size = 3
                                                        });
                                                        return;
                                                    end;
                                                end, 
                                                caller = v101
                                            });
                                        end
                                    }
                                }, 
                                ["Fly High"] = {
                                    VictimAnim = 136857536023148, 
                                    GrabOffset = CFrame.new(0, 0, 0), 
                                    EndOffset = CFrame.new(0, 0, 0), 
                                    DontRestoreVictimCollisions = true, 
                                    Startup = function(v2953) --[[ Line: 19396 ]] --[[ Name: Startup ]]
                                        -- upvalues: v75 (ref)
                                        v75({
                                            SoundId = "rbxassetid://93273930314761", 
                                            Parent = v2953.Torso, 
                                            Volume = 2
                                        }):Play();
                                    end, 
                                    Markers = {
                                        throw = function() --[[ Line: 19405 ]]
                                            -- upvalues: l_v2874_0 (ref)
                                            for _, v2955 in pairs(l_v2874_0:GetDescendants()) do
                                                if v2955:IsA("Decal") or v2955:IsA("BillboardGui") then
                                                    v2955:Destroy();
                                                end;
                                                if v2955:IsA("Part") or v2955:IsA("MeshPart") or v2955:IsA("UnionOperation") then
                                                    v2955.Transparency = 1;
                                                    v2955.CollisionGroup = "untouchable";
                                                end;
                                            end;
                                            local l_ForceField_10 = Instance.new("ForceField");
                                            l_ForceField_10.Visible = false;
                                            l_ForceField_10.Name = "AbsoluteImmortal";
                                            l_ForceField_10.Parent = l_v2874_0;
                                            shared.ragdoll({
                                                hit = l_v2874_0, 
                                                time = 30
                                            });
                                        end
                                    }
                                }, 
                                Telekinesis = {
                                    VictimAnim = 132014753376350, 
                                    GrabOffset = CFrame.new(0, 0, -3), 
                                    DontCFrame = true, 
                                    DontRagdoll = true, 
                                    Markers = {
                                        crack = function() --[[ Line: 19437 ]]
                                            -- upvalues: v17 (ref), v101 (copy), l_v2874_0 (ref)
                                            v17({
                                                v101, 
                                                l_v2874_0
                                            }, 3);
                                        end, 
                                        send = function() --[[ Line: 19441 ]]
                                            -- upvalues: v17 (ref), v101 (copy), l_v2874_0 (ref), l_v2878_0 (ref), l_v2885_0 (copy), v82 (ref)
                                            v17({
                                                v101, 
                                                l_v2874_0
                                            }, 6);
                                            local v2957 = v101.PrimaryPart.CFrame * CFrame.new(0, 3, -11) * CFrame.Angles(0, 3.141592653589793, 0);
                                            l_v2878_0:Stop(0);
                                            l_v2885_0();
                                            l_v2874_0:PivotTo(v2957);
                                            task.delay(0.065, function() --[[ Line: 19450 ]]
                                                -- upvalues: l_v2874_0 (ref)
                                                shared.ragdoll({
                                                    hit = l_v2874_0, 
                                                    time = 20
                                                });
                                            end);
                                            local l_BodyVelocity_9 = Instance.new("BodyVelocity");
                                            l_BodyVelocity_9.MaxForce = Vector3.new(40000, 40000, 40000, 0);
                                            l_BodyVelocity_9.Velocity = -v101.PrimaryPart.CFrame.RightVector * 150 + Vector3.new(0, 60, 0, 0);
                                            l_BodyVelocity_9.Parent = l_v2874_0.PrimaryPart;
                                            game.Debris:AddItem(l_BodyVelocity_9, 0.15);
                                            local l_BodyAngularVelocity_1 = Instance.new("BodyAngularVelocity");
                                            l_BodyAngularVelocity_1.Name = "BAV";
                                            l_BodyAngularVelocity_1.AngularVelocity = Vector3.new(math.random(5, 10), math.random(1, 5), math.random(2, 6));
                                            l_BodyAngularVelocity_1.MaxTorque = Vector3.new(40000, 40000, 40000, 0);
                                            l_BodyAngularVelocity_1.Parent = l_v2874_0.PrimaryPart;
                                            game:service("Debris"):AddItem(l_BodyAngularVelocity_1, 0.15);
                                            local l_l_v2874_0_1 = l_v2874_0;
                                            require(game.ReplicatedStorage.Hitbox):CheckCollision({
                                                hit = l_l_v2874_0_1, 
                                                dmg = 0, 
                                                time = 3, 
                                                NoCrater = true, 
                                                nosound = true, 
                                                AccurateCheck = true, 
                                                IgnoreRankedWalls = true, 
                                                CraterTime = 3, 
                                                callback = function(_, v2962) --[[ Line: 19483 ]] --[[ Name: callback ]]
                                                    -- upvalues: v82 (ref), l_l_v2874_0_1 (copy), v101 (ref)
                                                    local v2963, v2964 = v82({
                                                        orig = l_l_v2874_0_1.PrimaryPart.Position, 
                                                        dir = Vector3.new(0, -37.5, 0, 0)
                                                    });
                                                    if not v2963 or v2962 or not l_l_v2874_0_1.Parent or not l_l_v2874_0_1.PrimaryPart or not l_l_v2874_0_1.PrimaryPart.Parent then
                                                        return;
                                                    else
                                                        for _, v2966 in pairs({
                                                            l_l_v2874_0_1, 
                                                            v101
                                                        }) do
                                                            local l_PlayerFromCharacter_4 = game.Players:GetPlayerFromCharacter(v2966);
                                                            if l_PlayerFromCharacter_4 then
                                                                game.ReplicatedStorage.Replication:FireClient(l_PlayerFromCharacter_4, {
                                                                    Effect = "Camshake", 
                                                                    Intensity = 8, 
                                                                    Last = 0.75
                                                                });
                                                            end;
                                                        end;
                                                        task.spawn(function() --[[ Line: 19504 ]]
                                                            -- upvalues: l_l_v2874_0_1 (ref)
                                                            l_l_v2874_0_1.PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, -250, 0, 0);
                                                            for _, v2969 in pairs(l_l_v2874_0_1:GetChildren()) do
                                                                if v2969:IsA("BasePart") then
                                                                    v2969.AssemblyLinearVelocity = Vector3.new(0, -250, 0, 0);
                                                                end;
                                                            end;
                                                            game:GetService("RunService").Heartbeat:Wait();
                                                            l_l_v2874_0_1.PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, -250, 0, 0);
                                                            for _, v2971 in pairs(l_l_v2874_0_1:GetChildren()) do
                                                                if v2971:IsA("BasePart") then
                                                                    v2971.AssemblyLinearVelocity = Vector3.new(0, -250, 0, 0);
                                                                end;
                                                            end;
                                                        end);
                                                        shared.sfx({
                                                            SoundId = "rbxassetid://14700241589", 
                                                            CFrame = CFrame.new(v2964), 
                                                            Volume = 5
                                                        }):Play();
                                                        shared.sfx({
                                                            SoundId = "rbxassetid://14392660963", 
                                                            CFrame = CFrame.new(v2964), 
                                                            Volume = 7
                                                        }):Play();
                                                        game.ReplicatedStorage.Replication:FireAllClients({
                                                            Effect = "Ground Crater", 
                                                            Seed = math.random(1, 2000000000), 
                                                            start = v2964 + Vector3.new(0, 0.10000000149011612, 0, 0), 
                                                            ["end"] = Vector3.new(0, -24, 0, 0), 
                                                            amount = 6, 
                                                            nosound = true, 
                                                            size = 0.3
                                                        });
                                                        game.ReplicatedStorage.Replication:FireAllClients({
                                                            Effect = "Ground Crater", 
                                                            Seed = math.random(1, 2000000000), 
                                                            start = v2964 + Vector3.new(0, 0.10000000149011612, 0, 0), 
                                                            ["end"] = Vector3.new(0, -14, 0, 0), 
                                                            amount = 6, 
                                                            nosound = true, 
                                                            sizemult = 1.35, 
                                                            size = 2
                                                        });
                                                        game.ReplicatedStorage.Replication:FireAllClients({
                                                            Effect = "Ground Crater", 
                                                            Seed = math.random(1, 2000000000), 
                                                            start = v2964 + Vector3.new(0, 0.10000000149011612, 0, 0), 
                                                            ["end"] = Vector3.new(0, -14, 0, 0), 
                                                            amount = 9, 
                                                            nosound = true, 
                                                            sizemult = 1.75, 
                                                            size = 3
                                                        });
                                                        return;
                                                    end;
                                                end, 
                                                caller = v101
                                            });
                                        end
                                    }
                                }, 
                                ["no name ideas"] = {
                                    VictimAnim = 88023704984538, 
                                    GrabOffset = CFrame.new(0, 0, 0), 
                                    DontCFrame = true, 
                                    DontRagdoll = true, 
                                    Startup = function() --[[ Line: 19574 ]] --[[ Name: Startup ]]
                                        -- upvalues: l_v2874_0 (ref), v101 (copy), v2856 (copy), v99 (ref), v2849 (copy), v2876 (copy), v75 (ref)
                                        for _, v2973 in pairs({
                                            l_v2874_0, 
                                            v101
                                        }) do
                                            local l_Humanoid_1 = v2973:FindFirstChildOfClass("Humanoid");
                                            task.delay(0.15, function() --[[ Line: 19578 ]]
                                                -- upvalues: l_Humanoid_1 (copy), v2856 (ref)
                                                for _, v2976 in pairs(l_Humanoid_1:GetPlayingAnimationTracks()) do
                                                    if v2856.interrupted then
                                                        return;
                                                    else
                                                        v2976:AdjustSpeed(1.35);
                                                    end;
                                                end;
                                            end);
                                        end;
                                        local _ = v99("Left", v2849, l_v2874_0);
                                        local v2978 = v99("Right", v2849, l_v2874_0);
                                        v2978.Name = "handsonvictim";
                                        table.insert(v2876, v2978);
                                        local v2979 = nil;
                                        v2979 = v75({
                                            SoundId = "rbxassetid://117301839591469", 
                                            Parent = l_v2874_0.Torso, 
                                            Volume = 6, 
                                            PlaybackSpeed = 1.345
                                        });
                                        v2979:Play();
                                        table.insert(v2849, v2979);
                                    end, 
                                    Markers = {
                                        impale = function() --[[ Line: 19606 ]]
                                            -- upvalues: l_v2874_0 (ref), v101 (copy), v2856 (copy), l_v2878_0 (ref), l_v2885_0 (copy)
                                            for _, v2981 in pairs({
                                                l_v2874_0, 
                                                v101
                                            }) do
                                                local l_Humanoid_2 = v2981:FindFirstChildOfClass("Humanoid");
                                                task.delay(0.15, function() --[[ Line: 19610 ]]
                                                    -- upvalues: l_Humanoid_2 (copy)
                                                    for _, v2984 in pairs(l_Humanoid_2:GetPlayingAnimationTracks()) do
                                                        v2984:AdjustSpeed(1.15);
                                                    end;
                                                end);
                                            end;
                                            task.wait(1);
                                            if v2856.interrupted then
                                                return;
                                            else
                                                local v2985 = v101.PrimaryPart.CFrame * CFrame.new(0, 0.1, -11) * CFrame.Angles(0, 3.141592653589793, 0);
                                                l_v2878_0:Stop(0);
                                                l_v2885_0();
                                                l_v2874_0:PivotTo(v2985);
                                                task.delay(0.015, function() --[[ Line: 19629 ]]
                                                    -- upvalues: l_v2874_0 (ref)
                                                    shared.ragdoll({
                                                        hit = l_v2874_0, 
                                                        time = 20
                                                    });
                                                end);
                                                return;
                                            end;
                                        end
                                    }
                                }, 
                                Wipe = {
                                    VictimAnim = 77697087877839, 
                                    GrabOffset = CFrame.new(0, 0, -6) * CFrame.Angles(0, 3.141592653589793, 0), 
                                    EndOffset = CFrame.new(0, -1.5, -6) * CFrame.Angles(1.5707963267948966, 3.141592653589793, 0), 
                                    Markers = {
                                        laser = function() --[[ Line: 19646 ]]
                                            -- upvalues: l_v2874_0 (ref), l_v2878_0 (ref), l_v2885_0 (copy)
                                            if l_v2874_0 and shared.p(l_v2874_0) then
                                                game.ReplicatedStorage.Replication:FireClient(shared.p(l_v2874_0), {
                                                    Type = "FlashTemp"
                                                });
                                            end;
                                            l_v2878_0:AdjustSpeed(0.5);
                                            task.delay(1.35, function() --[[ Line: 19661 ]]
                                                -- upvalues: l_v2885_0 (ref), l_v2874_0 (ref)
                                                l_v2885_0();
                                                shared.cfolder({
                                                    Name = "RootAnchor", 
                                                    Parent = l_v2874_0
                                                }, 0.1);
                                                for _, v2987 in pairs(l_v2874_0:GetChildren()) do
                                                    if v2987:IsA("BasePart") then
                                                        spawn(function() --[[ Line: 19671 ]]
                                                            -- upvalues: v2987 (copy)
                                                            local v2988 = tick();
                                                            while tick() - v2988 <= 0.15 and task.wait() do
                                                                v2987.Velocity = Vector3.new(0, 0, 0, 0);
                                                            end;
                                                        end);
                                                    end;
                                                end;
                                            end);
                                        end
                                    }
                                }
                            };
                            if v2872 and v2872 and not v2872:FindFirstChild("KillEmoteFinished") then
                                local _ = v2872:FindFirstChild("Humanoid");
                                local _ = v2872:FindFirstChild("HumanoidRootPart");
                                local v2992 = v2989[v102];
                                if not v2992 then
                                    return warn("no data");
                                else
                                    local _ = v2872;
                                    local l_v2872_1 = v2872;
                                    local _ = l_PrimaryPart_1.CFrame;
                                    local l_ObjectValue_0 = Instance.new("ObjectValue");
                                    l_ObjectValue_0.Value = v101;
                                    l_ObjectValue_0.Name = "#PLAYERBIND";
                                    l_ObjectValue_0:SetAttribute("Person", (tostring(l_v2872_1)));
                                    l_ObjectValue_0.Parent = game.ReplicatedStorage.Replication;
                                    table.insert(v2849, l_ObjectValue_0);
                                    if tostring(l_v2872_1) == "Weakest Dummy" then
                                        local v2997 = {
                                            "Left Arm", 
                                            "Right Arm", 
                                            "Left Leg", 
                                            "Right Leg", 
                                            "Torso"
                                        };
                                        for _, v2999 in pairs(l_v2872_1:GetDescendants()) do
                                            if v2999:IsA("BasePart") and v2999.Name ~= "HumanoidRootPart" and table.find(v2997, (tostring(v2999))) then
                                                v2999.Transparency = 0;
                                            end;
                                        end;
                                    end;
                                    shared.cfolder({
                                        Name = "RestoreVisibility", 
                                        Parent = l_v2872_1
                                    }, 1);
                                    table.insert(v2849, shared.cfolder({
                                        Name = "KillEmoteInProgress", 
                                        Parent = v101
                                    }, 10));
                                    if not v2992.CanRotate then
                                        table.insert(v2849, shared.cfolder({
                                            Name = "NoRotate", 
                                            Parent = v101
                                        }, 10));
                                    end;
                                    if v2992.VictimSfx then
                                        local v3000 = v75({
                                            SoundId = v2992.VictimSfx, 
                                            Parent = v2872.Torso, 
                                            Volume = v2992.VictimSfxVolume or 2
                                        });
                                        v3000:Play();
                                        table.insert(v2849, v3000);
                                    end;
                                    local l_Head_1 = v2872:FindFirstChild("Head");
                                    if l_Head_1 then
                                        l_Head_1.Anchored = false;
                                    end;
                                    local v3002 = shared.cfolder({
                                        Name = "DelayRespawn", 
                                        Parent = v2872
                                    }, 7);
                                    table.insert(v2849, v3002);
                                    l_v2874_0 = v2872;
                                    l_v2872_1 = l_v2874_0;
                                    table.insert(v2877, v3002);
                                    shared.cfolder({
                                        Name = "KillEmoteFinished", 
                                        Parent = v2872
                                    });
                                    local l_AnimationPlayer_32 = require(v2872.CharacterHandler:WaitForChild("AnimationPlayer"));
                                    local l_l_AnimationPlayer_32_0 = l_AnimationPlayer_32 --[[ copy: 40 -> 54 ]];
                                    local l_v2872_2 = v2872 --[[ copy: 16 -> 55 ]];
                                    local function v3007(v3006) --[[ Line: 19774 ]]
                                        -- upvalues: l_l_AnimationPlayer_32_0 (copy), l_v2872_2 (copy)
                                        return l_l_AnimationPlayer_32_0.playAnimation(l_v2872_2:FindFirstChild("Humanoid"), v3006);
                                    end;
                                    shared.unragdoll({
                                        hit = v2872, 
                                        deadbypass = true
                                    });
                                    if v3[v102] then
                                        game.ReplicatedStorage.Replication:FireAllClients({
                                            Type = "ReplicateEmoteVfx", 
                                            Character = v101, 
                                            Victim = v2872, 
                                            vfxName = v102, 
                                            SpecificModule = nil, 
                                            AnimSent = v108.Animation
                                        });
                                    end;
                                    if v2992.StartTime then
                                        v2848:AdjustSpeed(0);
                                        task.delay(v2992.StartTime, function() --[[ Line: 19797 ]]
                                            -- upvalues: v2848 (copy)
                                            v2848:AdjustSpeed(1);
                                        end);
                                    end;
                                    if v2992.Startup then
                                        v2992.Startup(v2872);
                                    end;
                                    do
                                        local l_l_v2872_1_0 = l_v2872_1;
                                        if v2992.Markers then
                                            for v3009, v3010 in pairs(v2992.Markers) do
                                                local v3011 = nil;
                                                do
                                                    local l_v3011_0 = v3011;
                                                    l_v3011_0 = v2848:GetMarkerReachedSignal(v3009):Connect(function() --[[ Line: 19807 ]]
                                                        -- upvalues: v2856 (copy), l_l_v2872_1_0 (ref), l_v3011_0 (ref), v3010 (copy)
                                                        if v2856.interrupted or not workspace.Live:FindFirstChild((tostring(l_l_v2872_1_0))) then
                                                            return;
                                                        else
                                                            if l_v3011_0 then
                                                                l_v3011_0:Disconnect();
                                                            end;
                                                            return v3010();
                                                        end;
                                                    end);
                                                    table.insert(v2849, l_v3011_0);
                                                    task.delay(11, function() --[[ Line: 19820 ]]
                                                        -- upvalues: l_v3011_0 (ref)
                                                        if l_v3011_0 then
                                                            return l_v3011_0:Disconnect();
                                                        else
                                                            return;
                                                        end;
                                                    end);
                                                end;
                                            end;
                                        end;
                                        if v2992.Tasks then
                                            for v3013, v3014 in pairs(v2992.Tasks) do
                                                local v3015 = nil;
                                                do
                                                    local l_v3015_0 = v3015;
                                                    l_v3015_0 = task.delay(v3013, function() --[[ Line: 19830 ]]
                                                        -- upvalues: v2856 (copy), l_l_v2872_1_0 (ref), v2849 (copy), l_v3015_0 (ref), v3014 (copy)
                                                        if v2856.interrupted or not workspace.Live:FindFirstChild((tostring(l_l_v2872_1_0))) then
                                                            return;
                                                        else
                                                            if table.find(v2849, l_v3015_0) then
                                                                table.remove(v2849, table.find(v2849, l_v3015_0));
                                                            end;
                                                            v3014();
                                                            return;
                                                        end;
                                                    end);
                                                    table.insert(v2849, l_v3015_0);
                                                end;
                                            end;
                                        end;
                                        l_AnimationPlayer_32 = v3007(v2992.VictimAnim);
                                        l_AnimationPlayer_32:Play();
                                        l_v2878_0 = l_AnimationPlayer_32;
                                        local l_v2992_0 = v2992 --[[ copy: 32 -> 56 ]];
                                        local l_l_AnimationPlayer_32_1 = l_AnimationPlayer_32 --[[ copy: 40 -> 57 ]];
                                        task.delay(0.15, function() --[[ Line: 19851 ]]
                                            -- upvalues: l_v2992_0 (copy), l_l_AnimationPlayer_32_1 (copy), v2848 (copy)
                                            if not l_v2992_0.StartTime then
                                                l_l_AnimationPlayer_32_1.TimePosition = 0.15;
                                                v2848.TimePosition = 0.15;
                                                wait(0.1);
                                                l_l_AnimationPlayer_32_1.TimePosition = 0.25;
                                                v2848.TimePosition = 0.25;
                                            end;
                                        end);
                                        if v2992.ForceStopAnim then
                                            table.insert(v2877, l_AnimationPlayer_32);
                                        end;
                                        local v3019 = shared.cfolder({
                                            Name = "RootAnchor", 
                                            Parent = v2872
                                        });
                                        table.insert(v2877, v3019);
                                        table.insert(v2849, v3019);
                                        if v2992.GrabOffset then
                                            v2880({
                                                offset = v2992.GrabOffset, 
                                                hit = v2872, 
                                                anchor = v3019
                                            });
                                            l_v2875_0 = v2992.GrabOffset;
                                        end;
                                        local l_v2872_3 = v2872 --[[ copy: 16 -> 58 ]];
                                        local l_v3019_0 = v3019 --[[ copy: 41 -> 59 ]];
                                        local l_v2992_1 = v2992 --[[ copy: 32 -> 60 ]];
                                        local l_l_AnimationPlayer_32_2 = l_AnimationPlayer_32 --[[ copy: 40 -> 61 ]];
                                        spawn(function() --[[ Line: 19885 ]]
                                            -- upvalues: l_v2872_3 (copy), v2849 (copy), l_v3019_0 (copy), v101 (copy), v22 (ref), l_v2874_0 (ref), l_v2992_1 (copy), l_v2875_0 (ref), l_l_AnimationPlayer_32_2 (copy), v2856 (copy)
                                            local v3024 = {};
                                            local v3025 = {};
                                            for _, v3027 in pairs({
                                                l_v2872_3
                                            }) do
                                                local v3028 = nil;
                                                v3028 = v3027.DescendantAdded:connect(function(v3029) --[[ Line: 19890 ]]
                                                    -- upvalues: v3025 (copy)
                                                    if v3029:IsA("BasePart") then
                                                        v3029.CollisionGroup = "nocol";
                                                        table.insert(v3025, v3029);
                                                    end;
                                                end);
                                                do
                                                    local l_v3028_0 = v3028;
                                                    task.delay(5, function() --[[ Line: 19897 ]]
                                                        -- upvalues: l_v3028_0 (ref)
                                                        if l_v3028_0 then
                                                            return l_v3028_0:Disconnect();
                                                        else
                                                            return;
                                                        end;
                                                    end);
                                                    table.insert(v3024, l_v3028_0);
                                                    table.insert(v2849, l_v3028_0);
                                                    for _, v3032 in pairs(v3027:GetDescendants()) do
                                                        if v3032:IsA("BasePart") then
                                                            v3032.CollisionGroup = "nocol";
                                                            table.insert(v3025, v3032);
                                                        end;
                                                    end;
                                                end;
                                            end;
                                            l_v3019_0:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 19910 ]]
                                                -- upvalues: l_v3019_0 (ref), v101 (ref), v22 (ref), l_v2874_0 (ref), l_v2992_1 (ref), l_v2875_0 (ref), l_l_AnimationPlayer_32_2 (ref), v2856 (ref), v3025 (copy), v3024 (copy)
                                                if not l_v3019_0.Parent then
                                                    if workspace.Live:FindFirstChild((tostring(v101))) then
                                                        v22(v101);
                                                    end;
                                                    if not workspace.Live:FindFirstChild((tostring(l_v2874_0))) then
                                                        return;
                                                    else
                                                        if l_v2992_1.EndOffset then
                                                            l_v2875_0 = l_v2992_1.EndOffset;
                                                        end;
                                                        if not l_v2992_1.DontCFrame and l_v2874_0.PrimaryPart then
                                                            l_v2874_0:SetPrimaryPartCFrame(v101.PrimaryPart.CFrame * l_v2875_0);
                                                        end;
                                                        if l_l_AnimationPlayer_32_2 and not l_v2992_1.DontStopVicAnimationOnAnchorDeletion then
                                                            l_l_AnimationPlayer_32_2:Stop(0);
                                                        end;
                                                        if v2856.interrupted then
                                                            l_l_AnimationPlayer_32_2:Stop(0);
                                                        end;
                                                        if not l_v2992_1.DontRagdoll or l_v2992_1.DontRagdoll and v2856.interrupted then
                                                            shared.ragdoll({
                                                                hit = l_v2874_0, 
                                                                time = 15
                                                            });
                                                        end;
                                                        if not l_v2992_1.DontRestoreVictimCollisions then
                                                            for _, v3034 in pairs(v3025) do
                                                                v3034.CollisionGroup = "playercol";
                                                            end;
                                                        end;
                                                        table.clear(v3025);
                                                        for _, v3036 in pairs(v3024) do
                                                            v3036:Disconnect();
                                                        end;
                                                    end;
                                                end;
                                            end);
                                        end);
                                    end;
                                end;
                            end;
                        end;
                    end;
                    if v108.Startup and not v2856.interrupted then
                        v108.Startup(v2849, v2848, v2871, v108, v2856);
                        if v108.Key and v102 ~= "The Hunt" then
                            local v3037 = {
                                [1] = "First", 
                                [2] = "Second", 
                                [3] = "Third", 
                                [4] = "Fourth", 
                                [5] = "Fifth", 
                                [6] = "Sixth", 
                                [7] = "Seventh", 
                                [8] = "Eighth", 
                                [9] = "Ninth", 
                                [10] = "Tenth"
                            };
                            if not gameinfo then
                                gameinfo = require(game.ReplicatedStorage.Info);
                            end;
                            local v3038 = table.find(v3037, string.gsub(v102, " Key", ""));
                            v3038 = gameinfo.KeyOffsets[v3038];
                            local l_Attachment_18 = Instance.new("Attachment");
                            l_Attachment_18:SetAttribute("EmoteProperty", true);
                            table.insert(v2849, l_Attachment_18);
                            l_Attachment_18.Parent = v101.PrimaryPart;
                            l_Attachment_18.CFrame = v3038;
                            local v3040 = game.ReplicatedStorage.Emotes.ImpactGlow2:Clone();
                            v3040.Parent = l_Attachment_18;
                            v3040:Emit(5);
                            shared.sfx({
                                SoundId = "rbxassetid://16748459318", 
                                Parent = l_Attachment_18, 
                                Volume = 0.85
                            }):Play();
                        end;
                        if v108.Dual then
                            if v108.Dual.Freeze == nil then
                                v2848:AdjustSpeed(0);
                                v2848.TimePosition = 0;
                            end;
                            local v3041 = false;
                            local l_l_CollectionService_1_Tagged_1 = l_CollectionService_1:GetTagged(v108.Tag);
                            if v104 then
                                table.insert(l_l_CollectionService_1_Tagged_1, v104:FindFirstChild("DoingEmote"));
                            end;
                            local v3043 = false;
                            if not v108.Dual.Dead then

                            end;
                            for _, v3045 in pairs(workspace.Live:GetChildren()) do
                                local l_Humanoid_4 = v3045:FindFirstChildOfClass("Humanoid");
                                local l_PrimaryPart_2 = v3045.PrimaryPart;
                                if l_Humanoid_4 and v3045 ~= v101 and l_Humanoid_4.Health == 0 and v3045:FindFirstChild("Ragdoll") and l_PrimaryPart_2 and (l_PrimaryPart_2.Position - v101.PrimaryPart.Position).magnitude <= 16 and not table.find(l_l_CollectionService_1_Tagged_1, v3045.PrimaryPart) then
                                    l_l_CollectionService_1_Tagged_1 = {
                                        v3045.PrimaryPart
                                    };
                                    v3043 = true;
                                    shared.unragdoll({
                                        hit = v3045, 
                                        deadbypass = true
                                    });
                                    v0:Play(v3045, v102, nil, v101);
                                    return;
                                end;
                            end;
                            for _, v3049 in pairs(l_l_CollectionService_1_Tagged_1) do
                                local l_Parent_0 = v3049.Parent;
                                if l_Parent_0 ~= v101 and l_Parent_0 then
                                    local l_CFrame_2 = v101.PrimaryPart.CFrame;
                                    local l_Position_2 = l_Parent_0.PrimaryPart.Position;
                                    local l_unit_1 = (Vector3.new(l_Position_2.X, l_CFrame_2.p.Y, l_Position_2.Z) - l_CFrame_2.p).unit;
                                    if (math.deg((math.acos((l_CFrame_2.LookVector:Dot(l_unit_1))))) <= 90 and (l_Parent_0.PrimaryPart.Position - v101.PrimaryPart.Position).magnitude <= 8 or l_Parent_0 == v104 or v3043) and (not v101:FindFirstChild("Ragdoll") or v108.Dual.Dead) and (l_Parent_0 == v104 or not v104) then
                                        if v108.Dual.Dead then

                                        end;
                                        for _, v3055 in pairs(l_CollectionService_1:GetTagged(v108.Tag)) do
                                            local l_Parent_1 = v3055.Parent;
                                            if l_Parent_1 == v101 or l_Parent_1 == l_Parent_0 then
                                                l_CollectionService_1:RemoveTag(v3055, v108.Tag);
                                            end;
                                        end;
                                        local v3057 = {};
                                        l_CFrame_2 = nil;
                                        for _, v3059 in pairs({
                                            l_Parent_0, 
                                            v101
                                        }) do
                                            for _, v3061 in pairs(l_CollectionService_1:GetTagged(v3059.Name .. "syncui")) do
                                                game:GetService("Debris"):AddItem(v3061, 0);
                                            end;
                                            local v3062 = shared.cfolder({
                                                Name = "NoRotate", 
                                                Parent = v3059
                                            });
                                            l_CFrame_2 = v3062;
                                            l_CollectionService_1:AddTag(v3062, "RemoveOnLeave" .. l_Parent_0.Name);
                                            l_CollectionService_1:AddTag(v3062, "RemoveOnLeave" .. v101.Name);
                                            if v108.Dual.CanRotate == true then
                                                v3062.Name = "a";
                                                shared.cfolder({
                                                    Name = "", 
                                                    Parent = v3059
                                                }, 0.1);
                                            elseif (not v108.Looped or v102 == "Cart Ride" or v108.Dual.CanRotate) and v108.Dual.NoRotate ~= 1e999 then
                                                game:GetService("Debris"):AddItem(v3062, v108.Dual.CanRotate or v108.Dual.NoRotate or 3);
                                            end;
                                            v3062:SetAttribute("EmoteProperty", true);
                                            table.insert(v2849, v3062);
                                            if v3059 == v101 and not v108.Dual.RotateCheck then
                                                local v3063 = nil;
                                                do
                                                    local l_v3063_0 = v3063;
                                                    l_v3063_0 = v3062:GetPropertyChangedSignal("Parent"):Once(function() --[[ Line: 20079 ]]
                                                        -- upvalues: v3062 (copy), v3057 (copy), v2849 (copy), l_v3063_0 (ref)
                                                        if not v3062.Parent then
                                                            for _, v3066 in pairs(v3057) do
                                                                v3066:Disconnect();
                                                            end;
                                                            for _, v3068 in pairs(v2849) do
                                                                if typeof(v3068) == "Instance" and v3068.Name == "NoRotate" and v3068.Parent then
                                                                    v3068:Destroy();
                                                                end;
                                                            end;
                                                            return l_v3063_0:Disconnect();
                                                        else
                                                            return;
                                                        end;
                                                    end);
                                                    table.insert(v2849, l_v3063_0);
                                                end;
                                            end;
                                            local v3069 = nil;
                                            v3069 = v3059:GetPropertyChangedSignal("Parent"):Once(function() --[[ Line: 20095 ]]
                                                -- upvalues: v3059 (copy), l_Parent_0 (copy), v101 (copy), v3069 (ref)
                                                if not v3059.Parent then
                                                    for _, v3071 in pairs({
                                                        l_Parent_0, 
                                                        v101
                                                    }) do
                                                        shared.cfolder({
                                                            Name = "CancelEmote", 
                                                            Parent = v3071
                                                        }, 0.1);
                                                    end;
                                                    return v3069:Disconnect();
                                                else
                                                    return;
                                                end;
                                            end);
                                            table.insert(v2849, v3069);
                                            local v3072 = nil;
                                            for _, v3074 in pairs(v3059.Humanoid:GetPlayingAnimationTracks()) do
                                                local l_Animation_4 = v108.Animation;
                                                l_Animation_4 = if typeof(l_Animation_4) == "Instance" then game:GetService("KeyframeSequenceProvider"):RegisterKeyframeSequence(l_Animation_4) else "rbxassetid://" .. l_Animation_4;
                                                local l_AnimationTwo_0 = v108.AnimationTwo;
                                                if l_AnimationTwo_0 then
                                                    if typeof(l_AnimationTwo_0) == "Instance" then
                                                        l_AnimationTwo_0 = game:GetService("KeyframeSequenceProvider"):RegisterKeyframeSequence(l_Animation_4);
                                                        l_AnimationTwo_0 = l_Animation_4;
                                                    else
                                                        l_AnimationTwo_0 = "rbxassetid://" .. l_AnimationTwo_0;
                                                    end;
                                                end;
                                                if v3074.Animation.AnimationId == l_Animation_4 or l_AnimationTwo_0 and v3074.Animation.AnimationId == l_AnimationTwo_0 then
                                                    v3072 = v3074;
                                                end;
                                            end;
                                            if not v3072 then
                                                for _, v3078 in pairs({
                                                    l_Parent_0, 
                                                    v101
                                                }) do
                                                    shared.cfolder({
                                                        Name = "CancelEmote", 
                                                        Parent = v3078
                                                    }, 0.1);
                                                end;
                                                --[[ close >= 33 ]]
                                                break;
                                            else
                                                if v3062.Parent then
                                                    local v3079 = nil;
                                                    do
                                                        local l_v3079_0 = v3079;
                                                        l_v3079_0 = v3072.Stopped:Once(function() --[[ Line: 20146 ]]
                                                            -- upvalues: l_Parent_0 (copy), v101 (copy), l_v3079_0 (ref)
                                                            for _, v3082 in pairs({
                                                                l_Parent_0, 
                                                                v101
                                                            }) do
                                                                shared.cfolder({
                                                                    Name = "CancelEmote", 
                                                                    Parent = v3082
                                                                }, 0.1);
                                                            end;
                                                            return l_v3079_0:Disconnect();
                                                        end);
                                                        table.insert(v3057, l_v3079_0);
                                                        table.insert(v2849, l_v3079_0);
                                                    end;
                                                end;
                                                v3072:AdjustSpeed(1);
                                                if not v108.Dual.CallOnAccept then
                                                    v3072.TimePosition = 0;
                                                end;
                                                if (v3059 == v101 or v108.Dual.DoBoth) and v108.Dual.Callback then
                                                    if v108.Dual.CallOnAccept then
                                                        task.spawn(function() --[[ Line: 20167 ]]
                                                            -- upvalues: v101 (copy), l_Parent_0 (copy), v2849 (copy), l_CollectionService_1 (ref), v3062 (copy), v104 (copy), v108 (ref), v2871 (copy), v2856 (copy)
                                                            for _, v3084 in pairs({
                                                                v101, 
                                                                l_Parent_0
                                                            }) do
                                                                local l_Animation_5 = Instance.new("Animation");
                                                                l_Animation_5.AnimationId = "rbxassetid://17465544429";
                                                                local v3086 = v3084.Humanoid:LoadAnimation(l_Animation_5);
                                                                v3086:Play();
                                                                table.insert(v2849, v3086);
                                                            end;
                                                            if game.PlaceId == 12360882630 or workspace:GetAttribute("RankedOnes") and game.PlaceId ~= 13635175275 then
                                                                return;
                                                            else
                                                                local v3087 = game.ReplicatedStorage.Emotes.inv:Clone();
                                                                v3087:SetAttribute("EmoteProperty", true);
                                                                table.insert(v2849, v3087);
                                                                local l_PlayerFromCharacter_5 = game.Players:GetPlayerFromCharacter(v101);
                                                                local l_PlayerFromCharacter_6 = game.Players:GetPlayerFromCharacter(l_Parent_0);
                                                                local l_inv_0 = l_PlayerFromCharacter_5.PlayerGui:FindFirstChild("inv");
                                                                if l_inv_0 then
                                                                    l_inv_0:Destroy();
                                                                end;
                                                                local v3091 = l_PlayerFromCharacter_6 and l_PlayerFromCharacter_6.DisplayName or "?";
                                                                l_CollectionService_1:AddTag(v3087, "RemoveOnLeave" .. (l_PlayerFromCharacter_5 and l_PlayerFromCharacter_5.Name or "?"));
                                                                local v3092 = shared.cfolder({
                                                                    Name = "RootAnchor"
                                                                });
                                                                shared.bindDeletion(v3092, v3062);
                                                                v3092.Parent = v101;
                                                                table.insert(v2849, v3092);
                                                                l_CollectionService_1:AddTag(v3092, "RemoveOnLeave" .. (v104 or l_PlayerFromCharacter_6 or v101).Name);
                                                                local v3093 = {};
                                                                local v3094 = {};
                                                                for _, v3096 in pairs({
                                                                    v101, 
                                                                    l_Parent_0
                                                                }) do
                                                                    table.insert(v3094, v3096.DescendantAdded:connect(function(v3097) --[[ Line: 20201 ]]
                                                                        -- upvalues: v3093 (copy)
                                                                        if v3097:IsA("BasePart") then
                                                                            v3097.CollisionGroup = "nocol";
                                                                            table.insert(v3093, v3097);
                                                                        end;
                                                                    end));
                                                                    for _, v3099 in pairs(v3096:GetDescendants()) do
                                                                        if v3099:IsA("BasePart") then
                                                                            v3099.CollisionGroup = "nocol";
                                                                            table.insert(v3093, v3099);
                                                                        end;
                                                                    end;
                                                                end;
                                                                local l_v3092_0 = v3092 --[[ copy: 5 -> 18 ]];
                                                                local l_v3093_0 = v3093 --[[ copy: 6 -> 19 ]];
                                                                v3092:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 20216 ]]
                                                                    -- upvalues: l_v3092_0 (copy), v3094 (copy), l_v3093_0 (copy)
                                                                    if not l_v3092_0.Parent then
                                                                        for _, v3103 in pairs(v3094) do
                                                                            v3103:Disconnect();
                                                                        end;
                                                                        for _, v3105 in pairs(l_v3093_0) do
                                                                            v3105.CollisionGroup = "playercol";
                                                                        end;
                                                                    end;
                                                                end);
                                                                l_CollectionService_1:AddTag(v3092, l_Parent_0.Name .. "carry");
                                                                game.ReplicatedStorage.Replication:FireAllClients({
                                                                    Effect = "Smooth Grab", 
                                                                    Hit = v101, 
                                                                    StartOffset = v101.PrimaryPart.CFrame, 
                                                                    From = l_Parent_0.PrimaryPart, 
                                                                    CanBypass = true, 
                                                                    Offset = CFrame.new(0, 0, -4.5), 
                                                                    Anchor = v3092
                                                                });
                                                                v3087.Parent = l_PlayerFromCharacter_5.PlayerGui;
                                                                v3092 = v3087.Frame.Frame;
                                                                v3092.Name = "Invitation" .. v3091;
                                                                v3092.TextLabel.TextLabel.Text = v3091;
                                                                v3092.LayoutOrder = 1;
                                                                v3093 = v3092.TextLabel;
                                                                v3093.Deny.MouseButton1Click:Connect(function() --[[ Line: 20247 ]]
                                                                    -- upvalues: l_PlayerFromCharacter_5 (copy), v3092 (copy), v101 (ref)
                                                                    shared.sfx({
                                                                        SoundId = "rbxassetid://6895079853", 
                                                                        Parent = l_PlayerFromCharacter_5.PlayerGui, 
                                                                        Volume = 1.5
                                                                    }):Resume();
                                                                    v3092:Destroy();
                                                                    shared.cfolder({
                                                                        Name = "Freeze", 
                                                                        Parent = v101
                                                                    }, 0);
                                                                end);
                                                                v3093.Accept.MouseButton1Click:Connect(function() --[[ Line: 20260 ]]
                                                                    -- upvalues: l_PlayerFromCharacter_5 (copy), l_PlayerFromCharacter_6 (copy), v3092 (copy)
                                                                    shared.sfx({
                                                                        SoundId = "rbxassetid://6895079853", 
                                                                        Parent = l_PlayerFromCharacter_5.PlayerGui, 
                                                                        Volume = 1.5
                                                                    }):Resume();
                                                                    if not l_PlayerFromCharacter_5.Character or not l_PlayerFromCharacter_6.Character then
                                                                        v3092:Destroy();
                                                                        return;
                                                                    elseif l_PlayerFromCharacter_5.Character:GetAttribute("donealr") or l_PlayerFromCharacter_6.Character:GetAttribute("donealr") then
                                                                        v3092:Destroy();
                                                                        return;
                                                                    else
                                                                        local _ = {
                                                                            {
                                                                                l_PlayerFromCharacter_5.UserId, 
                                                                                l_PlayerFromCharacter_6.UserId, 
                                                                                false, 
                                                                                false
                                                                            }
                                                                        };
                                                                        for _, v3108 in pairs({
                                                                            l_PlayerFromCharacter_5, 
                                                                            l_PlayerFromCharacter_6
                                                                        }) do
                                                                            if v3108.Character then
                                                                                v3108.Character:SetAttribute("donealr", true);
                                                                            end;
                                                                        end;
                                                                        local l_l_PlayerFromCharacter_5_0 = l_PlayerFromCharacter_5;
                                                                        local l_l_PlayerFromCharacter_6_0 = l_PlayerFromCharacter_6;
                                                                        local v3111 = {
                                                                            "Ones", 
                                                                            l_PlayerFromCharacter_5.UserId, 
                                                                            l_l_PlayerFromCharacter_6_0.UserId, 
                                                                            0, 
                                                                            false, 
                                                                            0, 
                                                                            true
                                                                        };
                                                                        for _, v3113 in pairs({
                                                                            l_l_PlayerFromCharacter_5_0, 
                                                                            l_l_PlayerFromCharacter_6_0
                                                                        }) do
                                                                            local l_Sound_0 = Instance.new("Sound");
                                                                            l_Sound_0.SoundId = "rbxassetid://5153734236";
                                                                            l_Sound_0.Volume = 2;
                                                                            l_Sound_0.Parent = v3113.PlayerGui;
                                                                            l_Sound_0:Play();
                                                                            v3113:SetAttribute("Enemy", v3113 == l_l_PlayerFromCharacter_5_0 and l_l_PlayerFromCharacter_6_0.Name or l_l_PlayerFromCharacter_5_0.Name);
                                                                            if v3113.Character then
                                                                                v3113.Character:SetAttribute("donealr", true);
                                                                            end;
                                                                        end;
                                                                        task.spawn(function() --[[ Line: 20307 ]]
                                                                            -- upvalues: l_PlayerFromCharacter_5 (ref), l_PlayerFromCharacter_6 (ref), v3111 (copy)
                                                                            local v3115 = game:GetService("TeleportService"):ReserveServer(game.PlaceId);
                                                                            local v3116 = {
                                                                                l_PlayerFromCharacter_5, 
                                                                                l_PlayerFromCharacter_6
                                                                            };
                                                                            task.wait(1.75);
                                                                            game:GetService("TeleportService"):TeleportToPrivateServer(game.PlaceId, v3115, v3116, nil, v3111);
                                                                        end);
                                                                        v3092:Destroy();
                                                                        return;
                                                                    end;
                                                                end);
                                                                shared.sfx({
                                                                    SoundId = "rbxassetid://7116606826", 
                                                                    Parent = l_PlayerFromCharacter_5.PlayerGui, 
                                                                    Volume = 0.75
                                                                }):Play();
                                                                repeat
                                                                    task.wait();
                                                                until v101:GetAttribute("donealr") or not v3087.Parent;
                                                                if not v3087.Parent and not v101:GetAttribute("donealr") then
                                                                    return;
                                                                else
                                                                    v108.Dual.Callback(v101, l_Parent_0, v2849, v108.Dual.Dist, v2871, v2856);
                                                                    return;
                                                                end;
                                                            end;
                                                        end);
                                                    else
                                                        v108.Dual.Callback(v101, l_Parent_0, v2849, v108.Dual.Dist, v2871, v2856);
                                                    end;
                                                end;
                                                --[[ close >= 33 ]]
                                            end;
                                        end;
                                        if v108.Dual.Dist then
                                            l_Position_2 = shared.cfolder({
                                                Name = "RootAnchor"
                                            });
                                            if l_CFrame_2 then
                                                shared.bindDeletion(l_Position_2, l_CFrame_2);
                                            end;
                                            l_Position_2.Parent = v101;
                                            table.insert(v2849, l_Position_2);
                                            l_CollectionService_1:AddTag(l_Position_2, "RemoveOnLeave" .. l_Parent_0.Name);
                                            l_CollectionService_1:AddTag(l_Position_2, "RemoveOnLeave" .. v101.Name);
                                            l_unit_1 = {};
                                            local v3117 = {};
                                            for _, v3119 in pairs({
                                                v101
                                            }) do
                                                table.insert(v3117, v3119.DescendantAdded:connect(function(v3120) --[[ Line: 20358 ]]
                                                    -- upvalues: l_unit_1 (copy)
                                                    if v3120:IsA("BasePart") then
                                                        v3120.CollisionGroup = "nocol";
                                                        table.insert(l_unit_1, v3120);
                                                    end;
                                                end));
                                                for _, v3122 in pairs(v3119:GetDescendants()) do
                                                    if v3122:IsA("BasePart") then
                                                        v3122.CollisionGroup = "nocol";
                                                        table.insert(l_unit_1, v3122);
                                                    end;
                                                end;
                                            end;
                                            l_Position_2:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 20373 ]]
                                                -- upvalues: l_Position_2 (copy), v3117 (copy), l_unit_1 (copy)
                                                if not l_Position_2.Parent then
                                                    for _, v3124 in pairs(v3117) do
                                                        v3124:Disconnect();
                                                    end;
                                                    for _, v3126 in pairs(l_unit_1) do
                                                        v3126.CollisionGroup = "playercol";
                                                    end;
                                                end;
                                            end);
                                            game.ReplicatedStorage.Replication:FireAllClients({
                                                Effect = "Smooth Grab", 
                                                CanBypass = true, 
                                                Hit = v101, 
                                                StartOffset = v101.PrimaryPart.CFrame, 
                                                From = l_Parent_0.PrimaryPart, 
                                                NoLook = v108.Dual.NoLook, 
                                                Offset = typeof(v108.Dual.Dist) == "CFrame" and v108.Dual.Dist or CFrame.new(0, 0, -v108.Dual.Dist), 
                                                Anchor = l_Position_2
                                            });
                                        end;
                                        v3041 = true;
                                    end;
                                end;
                            end;
                            if not v3041 then
                                task.spawn(function() --[[ Line: 20404 ]]
                                    -- upvalues: v108 (ref), v2848 (copy), v2856 (copy), l_CollectionService_1 (ref), l_PlayerFromCharacter_0 (copy), v101 (copy), v2849 (copy), v102 (copy), v2 (ref), v0 (ref)
                                    local v3127 = tick();
                                    local v3128 = 0.1;
                                    if v108.Dual.Freeze == false then
                                        v3128 = 2;
                                    end;
                                    if v3128 < v2848.Speed or not v2848.IsPlaying or v2856.interrupted then
                                        return;
                                    else
                                        repeat
                                            task.wait();
                                        until tick() - v3127 > 1 or not v2848.IsPlaying or v3128 < v2848.Speed or v2856.interrupted;
                                        if v3128 < v2848.Speed or not v2848.IsPlaying or v2856.interrupted then
                                            return;
                                        else
                                            local v3129 = {};
                                            local v3130 = false;
                                            for _, v3132 in pairs(game.Players:GetPlayers()) do
                                                if v3132.Character then
                                                    local v3133 = game.ReplicatedStorage.Emotes.Sync:Clone();
                                                    l_CollectionService_1:AddTag(v3133, (l_PlayerFromCharacter_0 or v101).Name .. "syncui");
                                                    table.insert(v2849, v3133);
                                                    if v102 == "Duel Request" then
                                                        v3133.Frame.TextButton.Text = "FRIENDLY DUEL";
                                                    end;
                                                    v3133.PlayerToHideFrom = l_PlayerFromCharacter_0;
                                                    l_CollectionService_1:AddTag(v3133, "EmoteSync");
                                                    v3133:SetAttribute("EmoteProperty", true);
                                                    v3133.Adornee = v101["Left Arm"];
                                                    v3133.Parent = v3132.PlayerGui;
                                                    local v3134 = nil;
                                                    do
                                                        local l_v3134_0 = v3134;
                                                        l_v3134_0 = v3133.Frame.Button.MouseButton1Click:Connect(function() --[[ Line: 20433 ]]
                                                            -- upvalues: v3132 (copy), v3130 (ref), l_v3134_0 (ref), v2 (ref), v101 (ref), v3129 (copy), v0 (ref), v102 (ref)
                                                            local l_Character_0 = v3132.Character;
                                                            if v3130 then
                                                                return l_v3134_0:Disconnect();
                                                            else
                                                                local v3137 = tick() - (l_Character_0:GetAttribute("LastDamage") or 0);
                                                                if not l_Character_0:FindFirstChild("DoingEmote") and not v2:Check(l_Character_0, {
                                                                    "Emote"
                                                                }) then
                                                                    return;
                                                                elseif v3137 < 1 then
                                                                    return;
                                                                elseif (l_Character_0.PrimaryPart.Position - v101.PrimaryPart.Position).magnitude > 25 then
                                                                    return;
                                                                else
                                                                    l_v3134_0:Disconnect();
                                                                    v3130 = true;
                                                                    for _, v3139 in pairs(v3129) do
                                                                        v3139:Destroy();
                                                                    end;
                                                                    v0:Play(l_Character_0, v102, nil, v101);
                                                                    return;
                                                                end;
                                                            end;
                                                        end);
                                                        table.insert(v3129, v3133);
                                                    end;
                                                end;
                                            end;
                                            return;
                                        end;
                                    end;
                                end);
                            end;
                        end;
                    end;
                    local v3140 = nil;
                    local v3141 = nil;
                    v3141 = v2848.Stopped:Connect(function() --[[ Line: 20469 ]]
                        -- upvalues: v2856 (copy), v108 (ref), v107 (ref), v2849 (copy), v3140 (ref), v75 (ref), v101 (copy), l_CollectionService_1 (ref), v104 (copy), l_PlayerFromCharacter_0 (copy), l_TweenService_0 (ref), v102 (copy), v3141 (ref)
                        if not v2856.interrupted then
                            if v108.Idle then
                                local v3142 = v107(v108.Idle);
                                table.insert(v2849, v3142);
                                v3142:Play();
                                if v108.IdleKeyframes and v3140 then
                                    v3140(v3142);
                                end;
                                if v108.IdleSound then
                                    local v3143 = v75(v108.IdleSound);
                                    v3143.Parent = v101.Torso;
                                    v3143:Play();
                                    table.insert(v2849, v3143);
                                end;
                                local v3144 = nil;
                                v3144 = v3142.Stopped:Once(function() --[[ Line: 20487 ]]
                                    -- upvalues: v2856 (ref), v108 (ref), v101 (ref), v107 (ref), l_CollectionService_1 (ref), v104 (ref), l_PlayerFromCharacter_0 (ref), l_TweenService_0 (ref), v75 (ref), v102 (ref), v3144 (ref)
                                    if (not v2856.interrupted or v2856.interrupted == "CancelEmote") and v108.End then
                                        local v3145 = shared.cfolder({
                                            Name = "Freeze", 
                                            Parent = v101
                                        }, v108.End[2] or 3.7);
                                        local v3146 = nil;
                                        task.delay(0.25, function() --[[ Line: 20496 ]]
                                            -- upvalues: v3145 (copy), v101 (ref)
                                            if v3145.Parent then
                                                shared.bindDeletion(shared.cfolder({
                                                    Name = "DoingEmote", 
                                                    Parent = v101
                                                }), v3145);
                                                local v3147 = shared.cfolder({
                                                    Name = "DoingEmote1", 
                                                    Parent = v101
                                                });
                                                v3147:GetPropertyChangedSignal("Name"):Once(function() --[[ Line: 20508 ]]
                                                    -- upvalues: v3147 (copy), v3145 (ref)
                                                    if v3147.Name == "Done" then
                                                        v3145:Destroy();
                                                    end;
                                                end);
                                                shared.bindDeletion(v3147, v3145);
                                            end;
                                        end);
                                        v3145:GetPropertyChangedSignal("Name"):Once(function() --[[ Line: 20517 ]]
                                            -- upvalues: v3145 (copy), v107 (ref), v108 (ref)
                                            if v3145.Name == "Done" then
                                                v107(v108.End[1]):Stop();
                                            end;
                                        end);
                                        do
                                            local l_v3146_0 = v3146;
                                            v3145:GetPropertyChangedSignal("Parent"):Once(function() --[[ Line: 20523 ]]
                                                -- upvalues: l_CollectionService_1 (ref), v104 (ref), l_PlayerFromCharacter_0 (ref), v101 (ref), l_v3146_0 (ref), l_TweenService_0 (ref)
                                                local l_pairs_1 = pairs;
                                                local l_l_CollectionService_1_1 = l_CollectionService_1;
                                                local v3151 = "emoteendstuff";
                                                local v3152 = v104 or l_PlayerFromCharacter_0 or v101;
                                                for _, v3154 in l_pairs_1(l_l_CollectionService_1_1:GetTagged(v3151 .. v3152.Name)) do
                                                    v3154:Destroy();
                                                end;
                                                if l_v3146_0 then
                                                    l_TweenService_0:Create(l_v3146_0, TweenInfo.new(0.85, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                                        Volume = 0
                                                    }):Play();
                                                end;
                                            end);
                                            if v108.End[3] then
                                                l_v3146_0 = v75(v108.End[3]);
                                                l_v3146_0.Parent = v101.Torso;
                                                l_v3146_0:Play();
                                            end;
                                            v3145:SetAttribute("EmoteEnding", true);
                                            v107(v108.End[1]):Play();
                                            if v102 == "Am Dead" then
                                                local l_l_CollectionService_1_Tagged_2 = l_CollectionService_1:GetTagged("emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                                                task.delay(1.55, function() --[[ Line: 20545 ]]
                                                    -- upvalues: l_l_CollectionService_1_Tagged_2 (copy)
                                                    for _, v3157 in pairs(l_l_CollectionService_1_Tagged_2) do
                                                        v3157:Destroy();
                                                    end;
                                                end);
                                            elseif v102 == "Paddleball" then
                                                local l_l_CollectionService_1_Tagged_3 = l_CollectionService_1:GetTagged("emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                                                task.delay(1.183, function() --[[ Line: 20552 ]]
                                                    -- upvalues: l_l_CollectionService_1_Tagged_3 (copy)
                                                    for _, v3160 in pairs(l_l_CollectionService_1_Tagged_3) do
                                                        v3160:Destroy();
                                                    end;
                                                end);
                                            elseif v102 == "Chosen" then
                                                local l_l_CollectionService_1_Tagged_4 = l_CollectionService_1:GetTagged("emoteendstuff" .. (v104 or l_PlayerFromCharacter_0 or v101).Name);
                                                for _, v3163 in pairs(l_l_CollectionService_1_Tagged_4) do
                                                    if typeof(v3163) == "Instance" and v3163.Name == "chosenparticles" then
                                                        for _, v3165 in pairs(v3163:GetDescendants()) do
                                                            if v3165:IsA("Beam") then
                                                                l_TweenService_0:Create(v3165, TweenInfo.new(1 + math.random(), Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                                                                    Width1 = 0, 
                                                                    Width0 = 0
                                                                }):Play();
                                                            end;
                                                        end;
                                                    end;
                                                end;
                                            end;
                                        end;
                                    else
                                        local l_pairs_2 = pairs;
                                        local l_l_CollectionService_1_2 = l_CollectionService_1;
                                        local v3168 = "emoteendstuff";
                                        local v3169 = v104 or l_PlayerFromCharacter_0 or v101;
                                        for _, v3171 in l_pairs_2(l_l_CollectionService_1_2:GetTagged(v3168 .. v3169.Name)) do
                                            v3171:Destroy();
                                        end;
                                    end;
                                    v3144:Disconnect();
                                    v2856(true);
                                end);
                                table.insert(v2849, v3144);
                                return;
                            end;
                        else
                            local l_pairs_3 = pairs;
                            local l_l_CollectionService_1_3 = l_CollectionService_1;
                            local v3174 = "emoteendstuff";
                            local v3175 = v104 or l_PlayerFromCharacter_0 or v101;
                            for _, v3177 in l_pairs_3(l_l_CollectionService_1_3:GetTagged(v3174 .. v3175.Name)) do
                                v3177:Destroy();
                            end;
                        end;
                        v3141:Disconnect();
                        v2856(true);
                    end);
                    table.insert(v2849, v3141);
                    if v108.Keyframes then
                        v3140 = function(v3178) --[[ Line: 20598 ]]
                            -- upvalues: v108 (ref), v102 (copy), v2871 (copy), v2849 (copy), v2856 (copy)
                            for v3179, v3180 in pairs(v108.Keyframes) do
                                local v3181 = tick();
                                local v3182 = 15;
                                if v108.Infinite then
                                    v3182 = 1e999;
                                end;
                                local v3183 = nil;
                                do
                                    local l_v3182_0, l_v3183_0 = v3182, v3183;
                                    l_v3183_0 = v3178:GetMarkerReachedSignal(v3179):Connect(function() --[[ Line: 20606 ]]
                                        -- upvalues: v3181 (copy), l_v3182_0 (ref), l_v3183_0 (ref), v3179 (copy), v102 (ref), v108 (ref), v3180 (copy), v2871 (ref), v2849 (ref), v3178 (copy), v2856 (ref)
                                        if tick() - v3181 > l_v3182_0 then
                                            return l_v3183_0:Disconnect();
                                        else
                                            if v3179 ~= "snap" and v3179 ~= "clap" and v3179 ~= "claploop" and v102 ~= "Boppin" and not v108.DontDisconnectMarkers then
                                                l_v3183_0:Disconnect();
                                            end;
                                            v3180(v2871, v2849, v3178, v2856);
                                            return;
                                        end;
                                    end);
                                    table.insert(v2849, l_v3183_0);
                                end;
                            end;
                        end;
                        v3140(v2848);
                    end;
                    if v108.Sounds and not v2856.interrupted then
                        for v3186, v3187 in pairs(v108.Sounds) do
                            if not v2856.interrupted then
                                task.delay(v3186, function() --[[ Line: 20627 ]]
                                    -- upvalues: v101 (copy), v1 (ref), v3187 (copy), v2856 (copy), v75 (ref), v2849 (copy), l_TweenService_0 (ref)
                                    local v3188 = {
                                        Name = "EmoteSFX", 
                                        Parent = v101.PrimaryPart, 
                                        RollOffMaxDistance = v1
                                    };
                                    local v3189 = nil;
                                    if v3187.ParentTorso then
                                        v3188.Parent = v101.Torso;
                                        v3187.ParentTorso = nil;
                                    end;
                                    if v3187.Smooth then
                                        v3189 = v3187.Volume or 0.5;
                                        v3187.Volume = 0;
                                        v3187.Smooth = nil;
                                    end;
                                    for v3190, v3191 in pairs(v3187) do
                                        v3188[v3190] = v3191;
                                    end;
                                    if v2856.interrupted then
                                        return;
                                    else
                                        local v3192 = v75(v3188);
                                        v3192:SetAttribute("EmoteProperty", true);
                                        table.insert(v2849, v3192);
                                        if v3189 then
                                            v3192.Volume = 0;
                                        end;
                                        if v2856.interrupted then
                                            return v3192;
                                        else
                                            v3192:Resume();
                                            if v3189 then
                                                l_TweenService_0:Create(v3192, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                                    Volume = v3189
                                                }):Play();
                                            end;
                                            return;
                                        end;
                                    end;
                                end);
                            else
                                break;
                            end;
                        end;
                    end;
                    return;
                end;
            end;
        end;
    end;
end;
v0.Get = function(_) --[[ Line: 20676 ]] --[[ Name: Get ]]
    return require(game.ReplicatedStorage.Emotes:FindFirstChild("EmoteData") or game.ReplicatedStorage.Emotes:WaitForChild("EmoteData", 15));
end;
v0.GetTable = function(_, v3195) --[[ Line: 20680 ]] --[[ Name: GetTable ]]
    -- upvalues: v0 (copy)
    return v0:Play(nil, nil, true, nil, v3195);
end;
v0.IsLimited = function(_, v3197) --[[ Line: 20684 ]] --[[ Name: IsLimited ]]
    -- upvalues: v0 (copy)
    return v0:GetTable(true)[v3197].Limited;
end;
return v0;
