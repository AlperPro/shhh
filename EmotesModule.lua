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
        if game.Players:GetPlayerFromCharacter(v16) then
           
        end;
    end;
end;
local function v22(v18) --[[ Line: 44 ]]
    local v19 = {
        [2] = v18.Torso.Neck
    };
    local l_C0_0 = v19[2].C0;
    task.spawn(function() --[[ Line: 47 ]]
        for _ = 1, 10 do
            v19[2].C0 = l_C0_0 * CFrame.new(1.0E-8, 0, 0);
            wait();
            v19[2].C0 = l_C0_0;
            task.wait(0.05);
        end;
    end);
end;
local l_CollectionService_0 = game:GetService("CollectionService");
local function v40(v24) --[[ Line: 59 ]]
    local l_FirstChild_0 = game.ReplicatedStorage.Emotes.NewAssets:FindFirstChild(v24.name);
    local l_char_0 = v24.char;
    local l_cleanup_0 = v24.cleanup;
    if l_FirstChild_0 then
        local v28 = {};
        local l_Parts_0 = l_FirstChild_0.Parts;
        local l_Welds_0 = l_FirstChild_0.Welds;
        local v31 = {};
        for _, v33 in pairs(l_Parts_0:GetChildren()) do
            local v34 = nil;
            if v33:IsA("Model") then
                v34 = v33:Clone();
                v34.Parent = l_char_0;
            elseif v33:IsA("Part") or v33:IsA("MeshPart") or v33:IsA("UnionOperation") then
                v34 = v33:Clone();
                v34.Parent = l_char_0;
                v34.Anchored = false;
                v34.Massless = true;
            end;
            table.insert(v28, v34);
            table.insert(v31, v34);
            v34:SetAttribute("EmoteProperty", true);
            table.insert(l_cleanup_0, v34);
            l_CollectionService_0:AddTag(v34, "emoteendstuff" .. l_char_0.Name);
        end;
        for _, v36 in pairs(l_Welds_0:GetChildren()) do
            local v37 = v36:Clone();
            v37:SetAttribute("EmoteProperty", true);
            table.insert(l_cleanup_0, v37);
            l_CollectionService_0:AddTag(v37, "emoteendstuff" .. l_char_0.Name);
            spawn(function() --[[ Line: 103 ]]
                for _, v39 in pairs(l_char_0:GetDescendants()) do
                    if tostring(v39) == v37:GetAttribute("Parent") then
                        v37.Parent = v39;
                    end;
                    if tostring(v39) == v37:GetAttribute("Part0") and not v39:IsA("Model") and (v39:IsA("Part") or v39:IsA("MeshPart") or v39:IsA("UnionOperation")) then
                        v37.Part0 = v39;
                    end;
                    if tostring(v39) == v37:GetAttribute("Part1") and not v39:IsA("Model") and (v39:IsA("Part") or v39:IsA("MeshPart") or v39:IsA("UnionOperation")) then
                        v37.Part1 = v39;
                    end;
                end;
            end);
            table.insert(v28, v37);
        end;
        return v28;
    else
        return;
    end;
end;
local function v50(v41) --[[ Line: 131 ]]
    local l_cleanup_1 = v41.cleanup;
    local l_object_0 = v41.object;
    local l_char_1 = v41.char;
    local l_mind_0 = v41.mind;
    local l_part1_0 = v41.part1;
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
        for _, v49 in pairs(l_object_0:GetChildren()) do
            if (v49:IsA("Part") or v49:IsA("MeshPart")) and tostring(v49) == l_part1_0 then
                l_part1_0 = v49;
                break;
            end;
        end;
    end;
    l_Motor6D_0.Part0 = v41.part0;
    l_Motor6D_0.Part1 = l_part1_0;
    l_Motor6D_0.Parent = v41.Parent or l_char_1.PrimaryPart;
    l_object_0.Parent = l_char_1;
end;
local v51 = {
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
local function v56(v52) --[[ Line: 341 ]]
    local v53 = 0;
    for _, v55 in pairs(v52.Torso:GetChildren()) do
        if v55:IsA("Motor6D") then
            v53 = v53 + 1;
        end;
    end;
    if v53 == 5 then
        return true;
    else
        return false;
    end;
end;
local function v62(v57) --[[ Line: 355 ]]
    for _, v59 in pairs(workspace.Live:GetChildren()) do
        if tostring(v59) ~= tostring(v57) and v59:FindFirstChild("Humanoid") and v59:FindFirstChild("HumanoidRootPart") and v57 and v57.PrimaryPart then
            local l_Humanoid_0 = v59:FindFirstChild("Humanoid");
            local l_HumanoidRootPart_0 = v59:FindFirstChild("HumanoidRootPart");
            if l_Humanoid_0.Health <= 0 and (l_HumanoidRootPart_0.Position - v57.PrimaryPart.Position).Magnitude <= 12.5 and not v59:FindFirstChild("KillEmoteFinished") and v56(v59) and not v59:FindFirstChild("DoingEmote") then
                return v59;
            end;
        end;
    end;
end;
local l_CollectionService_1 = game:GetService("CollectionService");
local l_TweenService_0 = game:GetService("TweenService");
local function v70(v65) --[[ Line: 369 ]]
    v65.Name = "EmoteSFX";
    v65.RollOffMaxDistance = v1;
    local v66, v67, v68 = shared.sfx(v65);
    local v69 = string.gsub(v66.SoundId, "rbxassetid://", "");
    if v69 and table.find(v51, (tonumber(v69))) then
        l_CollectionService_1:AddTag(v66, "EmoteMusic");
    end;
    v66:SetAttribute("EmoteProperty", true);
    return v66, v67, v68;
end;
local function v77(v71) --[[ Line: 383 ]]
    local l_orig_0 = v71.orig;
    local l_dir_0 = v71.dir;
    local v74 = RaycastParams.new();
    v74.FilterDescendantsInstances = v71.Whitelist or v71.Ignore or {
        workspace.Thrown, 
        workspace.Live
    };
    if v71.Whitelist then
        v74.FilterType = Enum.RaycastFilterType.Include;
    else
        v74.FilterType = Enum.RaycastFilterType.Exclude;
    end;
    if v71.Blockcast then
        local v75 = workspace:Blockcast(l_orig_0, v71.Blockcast, l_dir_0, v74);
        if v75 then
            return v75.Instance, v75.Position, v75.Material, v75.Normal;
        else
            return;
        end;
    else
        local v76 = workspace:Raycast(l_orig_0, l_dir_0, v74);
        if v76 then
            return v76.Instance, v76.Position, v76.Material, v76.Normal;
        else
            return;
        end;
    end;
end;
local function _(v78, v79) --[[ Line: 410 ]]
    local l_unit_0 = (Vector3.new(v79.X, v78.p.Y, v79.Z) - v78.p).unit;
    return (math.deg((math.acos((v78.LookVector:Dot(l_unit_0))))));
end;
local v82 = Random.new();
local function v86(v83, v84, v85) --[[ Line: 419 ]]
    if not v84 and v83 then
        v84 = v83;
        v83 = 1;
    end;
    if not v84 and not v83 then
        v83 = 0;
        v84 = 1;
    end;
    if not v85 then
        return v82:NextNumber(v83, v84);
    else
        return v82:NextInteger(v83, v84);
    end;
end;
local function v94(v87, v88, v89) --[[ Line: 436 ]]
    local v90 = game.ReplicatedStorage.Emotes[v87 .. "Handle"]:Clone();
    v90:SetAttribute("EmoteProperty", true);
    table.insert(v88, v90);
    local l_m6d_0 = v90.m6d;
    l_m6d_0:SetAttribute("EmoteProperty", true);
    table.insert(v88, l_m6d_0);
    l_m6d_0.Part1 = v90[v87 .. "HandleMain"];
    l_m6d_0.Part0 = v89[v87 .. " Arm"];
    l_m6d_0.Parent = l_m6d_0.Part1;
    for _, v93 in pairs(v90:GetDescendants()) do
        if v93:IsA("BasePart") then
            v93.Color = l_m6d_0.Part0.Color;
            if v89:FindFirstChild("Left ArmL") then
                v93.Color = Color3.fromRGB(49, 48, 51);
                v93.Reflectance = 0.1;
            elseif v89:FindFirstChild("Red Gloves") then
                v93.Color = Color3.fromRGB(145, 65, 65);
            end;
        end;
    end;
    v90.Parent = v89;
    return v90;
end;
v0.Play = function(_, v96, v97, v98, v99, v100) --[[ Line: 458 ]] --[[ Name: Play ]]
    local l_PlayerFromCharacter_0 = game.Players:GetPlayerFromCharacter(v96);
    local v102 = nil;
    local v103 = nil;
    v103 = {
        Blink = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://118341941379862", 
                    Volume = 2
                }
            }, 
            Animation = 99643081415160, 
            Idle = 99643081415160, 
            HideWeapon = true, 
            Stun = "Slowed", 
            Looped = true, 
            StunAttribute = 0.65, 
            Startup = function(v104, _, _) --[[ Line: 479 ]] --[[ Name: Startup ]]
                local l_PlayerFromCharacter_1 = game.Players:GetPlayerFromCharacter(v96);
                if l_PlayerFromCharacter_1 then
                    for _, v109 in pairs(l_PlayerFromCharacter_1.PlayerGui:GetChildren()) do
                        if tostring(v109) == "blinkemotestuff" then
                            v109:Destroy();
                        end;
                    end;
                    local l_BlinkAssets_0 = game.ReplicatedStorage.Emotes.BlinkAssets;
                    local v111 = l_BlinkAssets_0.LocalScript:Clone();
                    local l_GuiAnim_0 = v111.GuiAnim;
                    l_GuiAnim_0:SetAttribute("EmoteProperty", true);
                    table.insert(v104, l_GuiAnim_0);
                    l_CollectionService_1:AddTag(l_GuiAnim_0, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    table.insert(v104, l_GuiAnim_0);
                    l_GuiAnim_0.Parent = l_PlayerFromCharacter_1.PlayerGui;
                    l_GuiAnim_0.Name = "blinkemotestuff";
                    local l_Folder_0 = Instance.new("Folder");
                    l_Folder_0.Name = l_PlayerFromCharacter_1.Name .. "sand";
                    l_Folder_0.Parent = game.ReplicatedStorage;
                    v111.CloneFolder.Value = l_Folder_0;
                    for _, v115 in pairs({
                        v111, 
                        l_Folder_0
                    }) do
                        v115:SetAttribute("EmoteProperty", true);
                        table.insert(v104, v115);
                        l_CollectionService_1:AddTag(v115, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    end;
                    local v116 = l_BlinkAssets_0.Copy:Clone();
                    local l_AppliedDescription_0 = v96.Humanoid:GetAppliedDescription();
                    v116.Parent = l_Folder_0;
                    v116.Humanoid:ApplyDescription(l_AppliedDescription_0);
                    v96:SetAttribute("BlinkEmote", true);
                    task.wait();
                    v111.Parent = l_PlayerFromCharacter_1.PlayerGui;
                    v111.Enabled = true;
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
                start = function(v118, _, _, _, _) --[[ Line: 547 ]]
                    v17({
                        v96
                    }, 1);
                    v70({
                        SoundId = "rbxassetid://91565431637142", 
                        Parent = v96.Torso, 
                        Looped = true, 
                        Volume = 0.5
                    }):Play();
                    local v123 = v96["Right Arm"];
                    for _ = 1, 2 do
                        local v125 = game.ReplicatedStorage.Emotes.cursedEnergy2:Clone();
                        v125.Parent = v96;
                        v125:SetAttribute("EmoteProperty", true);
                        table.insert(v118, v125);
                        l_CollectionService_1:AddTag(v125, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                        local l_Weld_0 = Instance.new("Weld");
                        l_Weld_0.Part0 = v123;
                        l_Weld_0.Part1 = v125;
                        l_Weld_0.Parent = v125;
                        l_Weld_0.C0 = CFrame.new(0, -1, 0);
                        v123 = v96["Left Arm"];
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
                start = function(v127, _, _, _, _) --[[ Line: 598 ]]
                    v17({
                        v96
                    }, 1);
                    v70({
                        SoundId = "rbxassetid://91565431637142", 
                        Parent = v96.Torso, 
                        Looped = true, 
                        Volume = 0.5
                    }):Play();
                    local v132 = v96["Right Arm"];
                    for _ = 1, 2 do
                        local v134 = game.ReplicatedStorage.Emotes.cursedEnergy:Clone();
                        v134.Parent = v96;
                        v134:SetAttribute("EmoteProperty", true);
                        table.insert(v127, v134);
                        l_CollectionService_1:AddTag(v134, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                        local l_Weld_1 = Instance.new("Weld");
                        l_Weld_1.Part0 = v132;
                        l_Weld_1.Part1 = v134;
                        l_Weld_1.Parent = v134;
                        l_Weld_1.C0 = CFrame.new(0, -1, 0);
                        v132 = v96["Left Arm"];
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
                first = function(v136, _, _, _, _) --[[ Line: 651 ]]
                    local l_AmplifyVfx_0 = game.ReplicatedStorage.Emotes.AmplifyVfx;
                    local v142 = {};
                    local v143 = {};
                    local function v150(v144, v145) --[[ Line: 658 ]]
                        local v146 = l_AmplifyVfx_0[v144]:Clone();
                        v146.Parent = v145;
                        game.Debris:AddItem(v146, 5);
                        v146:SetAttribute("EmoteProperty", true);
                        table.insert(v136, v146);
                        l_CollectionService_1:AddTag(v146, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                        local l_Motor6D_1 = v146:FindFirstChildOfClass("Motor6D");
                        if l_Motor6D_1 then
                            v146.CanCollide = false;
                            v146.Massless = true;
                            v146.Anchored = false;
                            l_Motor6D_1.Part0 = v145;
                            l_Motor6D_1.Part1 = v146;
                        else
                            v146.CFrame = v96.PrimaryPart.CFrame * CFrame.new(0, 0, -2);
                        end;
                        for _, v149 in pairs(v146:GetDescendants()) do
                            if v149:IsA("ParticleEmitter") then
                                v149:Emit(v149:GetAttribute("EmitCount"));
                                if l_Motor6D_1 then
                                    v149.Enabled = true;
                                    table.insert(v143, v149);
                                end;
                                if tostring(v144) == "head" then
                                    table.insert(v142, v149);
                                end;
                            end;
                        end;
                    end;
                    v17({
                        v96
                    }, 1);
                    v150("arm", v96["Right Arm"]);
                    v150("head", v96.Head);
                    wait(1.1);
                    for _, v152 in pairs(v142) do
                        v152.Enabled = false;
                    end;
                    for _, v154 in pairs(v143) do
                        v154.Enabled = false;
                        game.Debris:AddItem(v154, 1);
                    end;
                end, 
                sec = function(v155, _, _, _, _) --[[ Line: 705 ]]
                    local l_AmplifyVfx_1 = game.ReplicatedStorage.Emotes.AmplifyVfx;
                    local function v167(v161, v162) --[[ Line: 708 ]]
                        local v163 = l_AmplifyVfx_1[v161]:Clone();
                        v163.Parent = v162;
                        game.Debris:AddItem(v163, 5);
                        v163:SetAttribute("EmoteProperty", true);
                        table.insert(v155, v163);
                        l_CollectionService_1:AddTag(v163, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                        local l_Motor6D_2 = v163:FindFirstChildOfClass("Motor6D");
                        if l_Motor6D_2 then
                            v163.CanCollide = false;
                            v163.Massless = true;
                            v163.Anchored = false;
                            l_Motor6D_2.Part0 = v162;
                            l_Motor6D_2.Part1 = v163;
                        else
                            v163.CFrame = v96.PrimaryPart.CFrame * CFrame.new(0, 0, -2);
                        end;
                        for _, v166 in pairs(v163:GetDescendants()) do
                            if v166:IsA("ParticleEmitter") then
                                v166:Emit(v166:GetAttribute("EmitCount"));
                                if l_Motor6D_2 then
                                    v166.Enabled = true;
                                end;
                            end;
                        end;
                    end;
                    v17({
                        v96
                    }, 3);
                    v167("arm2", v96["Left Arm"]);
                    v167("auraoff", v96["Left Arm"]);
                    shared.MeleeEffects({
                        Char = v96, 
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
            Startup = function(v168, _, v170) --[[ Line: 778 ]] --[[ Name: Startup ]]
                local v171 = game.ReplicatedStorage.Emotes.Present:Clone();
                v171:SetAttribute("EmoteProperty", true);
                table.insert(v168, v171);
                v170.Handle = v171;
                local l_MasterM_0 = v171.MasterM;
                l_MasterM_0:SetAttribute("EmoteProperty", true);
                table.insert(v168, l_MasterM_0);
                v170.md = l_MasterM_0;
                l_MasterM_0.Part0 = v96.PrimaryPart;
                l_MasterM_0.Name = "Master";
                l_MasterM_0.Part1 = v171.Master;
                l_MasterM_0.Parent = v96.PrimaryPart;
                v171.Parent = v96.PrimaryPart;
                v70({
                    SoundId = "rbxassetid://113981806904179", 
                    Parent = v171.Master.Top, 
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
            Startup = function(v173, _, _) --[[ Line: 882 ]] --[[ Name: Startup ]]
                local function _(v176) --[[ Line: 883 ]]
                    v176:SetAttribute("EmoteProperty", true);
                    table.insert(v173, v176);
                    l_CollectionService_1:AddTag(v176, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                end;
                local l_Part_0 = game.ReplicatedStorage.Emotes.Ruthless.Part;
                local v179 = v96["Right Arm"];
                for _ = 1, 2 do
                    local v181 = nil;
                    local v182 = {};
                    for _, v184 in pairs(l_Part_0:GetChildren()) do
                        local v185 = v184:Clone();
                        v185:SetAttribute("EmoteProperty", true);
                        table.insert(v173, v185);
                        l_CollectionService_1:AddTag(v185, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                        v185.Parent = v179;
                        if v185:FindFirstChildOfClass("Trail") then
                            v181 = v185;
                        end;
                        v182[tostring(v185):find("1") and 1 or 2] = v185;
                    end;
                    for _, v187 in pairs(v181:GetChildren()) do
                        v187.Attachment0 = v182[1];
                        v187.Attachment1 = v182[2];
                    end;
                    v179 = v96["Left Arm"];
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
            Startup = function(v188, _, _) --[[ Line: 960 ]] --[[ Name: Startup ]]
                local _ = v94("Right", v188, v96);
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
            Startup = function(v192, _, v194) --[[ Line: 997 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v192, v96);
                local _ = v94("Right", v192, v96);
                local v197 = game.ReplicatedStorage.Emotes.bookHeart:Clone();
                v197:SetAttribute("EmoteProperty", true);
                table.insert(v192, v197);
                local v198 = v197["Book BinderM"];
                v198:SetAttribute("EmoteProperty", true);
                table.insert(v192, v198);
                v194.md = v198;
                v198.Part0 = v96["Left Arm"];
                v198.Part1 = v197["Book Binder"];
                v198.Parent = v96["Left Arm"];
                v197.Parent = v96;
                v198.Name = "Book Binder";
            end
        }, 
        Wipe = {
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://120656055302454", 
                    Volume = 2
                }
            }, 
            Startup = function(v199, _, _) --[[ Line: 1023 ]] --[[ Name: Startup ]]
                local l_Wipe_0 = game.ReplicatedStorage.Emotes.Wipe;
                local v203 = l_Wipe_0.Glasses:Clone();
                v203.Parent = v96.Head;
                local l_Motor6D_3 = v203:FindFirstChildOfClass("Motor6D");
                l_Motor6D_3.Part0 = v96.Head;
                l_Motor6D_3.Part1 = v203;
                l_Motor6D_3.Parent = v96.Head;
                local v205 = l_Wipe_0["forget device"]:Clone();
                v205.Parent = v96;
                local l_Mm_0 = v205.Mm;
                l_Mm_0.Part0 = v96["Right Arm"];
                l_Mm_0.Part1 = v205["memory stick"];
                l_Mm_0.Parent = v96["Right Arm"];
                l_Mm_0.Name = "memory stick";
                for _, v208 in pairs({
                    v203, 
                    l_Motor6D_3, 
                    l_Mm_0, 
                    v205
                }) do
                    v208:SetAttribute("EmoteProperty", true);
                    table.insert(v199, v208);
                    l_CollectionService_1:AddTag(v208, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
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
            Startup = function(_, _, _) --[[ Line: 1062 ]] --[[ Name: Startup ]]

            end, 
            Animation = 109608173870373, 
            HideWeapon = true, 
            Stun = "Freeze", 
            KillEmote = true
        }, 
        ["Fly High"] = {
            Sounds = {}, 
            Startup = function(v212, _, _) --[[ Line: 1079 ]] --[[ Name: Startup ]]
                v70({
                    SoundId = "rbxassetid://78462595468736", 
                    Parent = v96.Torso, 
                    Volume = 2
                }):Play();
                local v215 = v70({
                    SoundId = "rbxassetid://93204259658665", 
                    CFrame = v96.PrimaryPart.CFrame * CFrame.new(-0.591, 1, 8.396), 
                    Volume = 2
                });
                v215:Play();
                table.insert(v212, v215);
            end, 
            Animation = 80293430011221, 
            HideWeapon = true, 
            Stun = "Freeze", 
            KillEmote = true
        }, 
        ["Sure Hit"] = {
            Sounds = {}, 
            Startup = function(v216, _, _) --[[ Line: 1107 ]] --[[ Name: Startup ]]
                local v219 = nil;
                v219 = v70({
                    SoundId = "rbxassetid://133870782945226", 
                    Volume = 2, 
                    Parent = v96["Right Arm"]
                });
                v219:Play();
                table.insert(v216, v219);
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
            Startup = function(v220, _, _) --[[ Line: 1134 ]] --[[ Name: Startup ]]
                local v223 = game.ReplicatedStorage.Emotes.BanHammer:Clone();
                v223:SetAttribute("EmoteProperty", true);
                table.insert(v220, v223);
                l_CollectionService_1:AddTag(v223, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_Motor6D_4 = v223:FindFirstChildOfClass("Motor6D");
                l_Motor6D_4:SetAttribute("EmoteProperty", true);
                table.insert(v220, l_Motor6D_4);
                l_CollectionService_1:AddTag(l_Motor6D_4, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local v225 = v96["Right Arm"];
                l_Motor6D_4.Part0 = v225;
                l_Motor6D_4.Part1 = v223;
                l_Motor6D_4.Parent = v225;
                v223.Parent = v96["Right Arm"];
                l_Motor6D_4.Parent = v96["Right Arm"];
                v223.Name = "Handle";
            end, 
            Animation = 71063727733290, 
            HideWeapon = true, 
            Stun = "Freeze", 
            KillEmote = true
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
                floorhit = function() --[[ Line: 1172 ]]
                    local v226 = RaycastParams.new();
                    v226.FilterType = Enum.RaycastFilterType.Exclude;
                    v226.FilterDescendantsInstances = {
                        workspace.Thrown, 
                        workspace.Live
                    };
                    local function v231(v227) --[[ Line: 1180 ]]
                        for _, v229 in pairs(v227:GetDescendants()) do
                            if v229:IsA("ParticleEmitter") then
                                if tostring(v229) == "smoke" then
                                    local v230 = workspace:Raycast(v96.PrimaryPart.Position, v96.PrimaryPart.Position, v226);
                                    if v230 then
                                        v229.Color = ColorSequence.new(v230.Instance.Color);
                                    end;
                                end;
                                v229:Emit(v229:GetAttribute("EmitCount"));
                            end;
                        end;
                    end;
                    for _, v233 in pairs(v96:GetDescendants()) do
                        if (tostring(v233) == "JadeL" or tostring(v233) == "JadeR") and v233:IsA("Model") then
                            v231(v233);
                        end;
                    end;
                end, 
                touchfloor = function() --[[ Line: 1204 ]]
                    local l_ClashVFX_0 = v96.PrimaryPart:FindFirstChild("ClashVFX");
                    if l_ClashVFX_0 then
                        v7(l_ClashVFX_0);
                    end;
                end
            }, 
            Startup = function(v235, _, _) --[[ Line: 1213 ]] --[[ Name: Startup ]]
                local function _(v238) --[[ Line: 1214 ]]
                    v238:SetAttribute("EmoteProperty", true);
                    table.insert(v235, v238);
                    l_CollectionService_1:AddTag(v238, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                end;
                local l_BladesOfJade_0 = game.ReplicatedStorage.Emotes.BladesOfJade;
                for _, v242 in pairs(l_BladesOfJade_0.Attach:GetChildren()) do
                    local v243 = v242:Clone();
                    v243.Parent = v96.Head;
                    v243:SetAttribute("EmoteProperty", true);
                    table.insert(v235, v243);
                    l_CollectionService_1:AddTag(v243, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                end;
                for _, v245 in pairs({
                    l_BladesOfJade_0.JadeL, 
                    l_BladesOfJade_0.JadeR
                }) do
                    local v246 = v245:Clone();
                    v246:SetAttribute("EmoteProperty", true);
                    table.insert(v235, v246);
                    l_CollectionService_1:AddTag(v246, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    local l_Motor6D_5 = v246:FindFirstChildOfClass("Motor6D");
                    l_Motor6D_5:SetAttribute("EmoteProperty", true);
                    table.insert(v235, l_Motor6D_5);
                    l_CollectionService_1:AddTag(l_Motor6D_5, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    local v248 = v96["Right Arm"];
                    if v245.Name == "JadeL" then
                        v248 = v96["Left Arm"];
                    end;
                    l_Motor6D_5.Part0 = v248;
                    l_Motor6D_5.Part1 = v246.ChainPart1;
                    l_Motor6D_5.Parent = v248;
                    v246.Parent = v96;
                    l_Motor6D_5.Name = "ChainPart1";
                end;
                local v249 = l_BladesOfJade_0.Part.ClashVFX:Clone();
                v249.Parent = v96.PrimaryPart;
                v249:SetAttribute("EmoteProperty", true);
                table.insert(v235, v249);
                l_CollectionService_1:AddTag(v249, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
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
            Startup = function(v250, _, _) --[[ Line: 1271 ]] --[[ Name: Startup ]]
                for _, v254 in pairs({
                    game.ReplicatedStorage.Emotes.Circle1, 
                    game.ReplicatedStorage.Emotes.Circle2
                }) do
                    local v255 = v254:Clone();
                    v255:SetAttribute("EmoteProperty", true);
                    table.insert(v250, v255);
                    l_CollectionService_1:AddTag(v255, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    local l_Motor6D_6 = v255:FindFirstChildOfClass("Motor6D");
                    l_Motor6D_6:SetAttribute("EmoteProperty", true);
                    table.insert(v250, l_Motor6D_6);
                    l_CollectionService_1:AddTag(l_Motor6D_6, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    local v257 = v96["Right Arm"];
                    if v254.Name == "Circle2" then
                        v257 = v96["Left Arm"];
                    end;
                    l_Motor6D_6.Part0 = v257;
                    l_Motor6D_6.Part1 = v255;
                    l_Motor6D_6.Parent = v257;
                    v255.Parent = v96;
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
            Startup = function(v258, _, _) --[[ Line: 1308 ]] --[[ Name: Startup ]]
                for _, v262 in pairs({
                    game.ReplicatedStorage.Emotes.Circle1, 
                    game.ReplicatedStorage.Emotes.Circle2
                }) do
                    local v263 = v262:Clone();
                    v263:SetAttribute("EmoteProperty", true);
                    table.insert(v258, v263);
                    l_CollectionService_1:AddTag(v263, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    local l_Motor6D_7 = v263:FindFirstChildOfClass("Motor6D");
                    l_Motor6D_7:SetAttribute("EmoteProperty", true);
                    table.insert(v258, l_Motor6D_7);
                    l_CollectionService_1:AddTag(l_Motor6D_7, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    local v265 = v96["Right Arm"];
                    if v262.Name == "Circle2" then
                        v265 = v96["Left Arm"];
                    end;
                    l_Motor6D_7.Part0 = v265;
                    l_Motor6D_7.Part1 = v263;
                    l_Motor6D_7.Parent = v265;
                    v263.Parent = v96;
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
            Startup = function(v266, _, _) --[[ Line: 1344 ]] --[[ Name: Startup ]]
                local v269 = game.ReplicatedStorage.Emotes.WalkieTalkie:Clone();
                v269:SetAttribute("EmoteProperty", true);
                table.insert(v266, v269);
                l_CollectionService_1:AddTag(v269, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_Motor6D_8 = v269.Motor6D;
                l_Motor6D_8:SetAttribute("EmoteProperty", true);
                table.insert(v266, l_Motor6D_8);
                l_CollectionService_1:AddTag(l_Motor6D_8, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                v269.Name = "Handle";
                l_Motor6D_8.Part0 = v96["Left Arm"];
                l_Motor6D_8.Part1 = v269;
                l_Motor6D_8.Parent = v96.PrimaryPart;
                v269.Parent = v96.PrimaryPart;
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
            Startup = function(v271, _, _) --[[ Line: 1375 ]] --[[ Name: Startup ]]
                local v274 = game.ReplicatedStorage.Emotes.chalice:Clone();
                v274:SetAttribute("EmoteProperty", true);
                table.insert(v271, v274);
                l_CollectionService_1:AddTag(v274, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_Motor_0 = v274.Motor;
                l_Motor_0:SetAttribute("EmoteProperty", true);
                table.insert(v271, l_Motor_0);
                l_CollectionService_1:AddTag(l_Motor_0, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_Motor_0.Part0 = v96["Left Arm"];
                l_Motor_0.Part1 = v274.Handle;
                l_Motor_0.Parent = v96["Left Arm"];
                l_Motor_0.Name = "Handle";
                v274.Parent = v96;
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
            Startup = function(v276, _, _) --[[ Line: 1406 ]] --[[ Name: Startup ]]
                local v279 = game.ReplicatedStorage.Emotes.Maniac.MeshPart:Clone();
                v279:SetAttribute("EmoteProperty", true);
                table.insert(v276, v279);
                l_CollectionService_1:AddTag(v279, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_Motor_1 = v279.Motor;
                l_Motor_1:SetAttribute("EmoteProperty", true);
                table.insert(v276, l_Motor_1);
                l_CollectionService_1:AddTag(l_Motor_1, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_Motor_1.Part0 = v96["Right Arm"];
                l_Motor_1.Part1 = v279.Handle;
                l_Motor_1.Parent = v96["Right Arm"];
                l_Motor_1.Name = "Handle";
                v279.Parent = v96;
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
            Startup = function(v281, _, _) --[[ Line: 1473 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v281, v96);
                local _ = v94("Right", v281, v96);
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
            Startup = function(v286, _, _) --[[ Line: 1496 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v286, v96);
                local _ = v94("Right", v286, v96);
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
            Startup = function(v291, _, _) --[[ Line: 1539 ]] --[[ Name: Startup ]]
                local v294 = game.ReplicatedStorage.Emotes.PhoneBeQuiet:Clone();
                v294:SetAttribute("EmoteProperty", true);
                table.insert(v291, v294);
                l_CollectionService_1:AddTag(v294, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_PlaneMotor_0 = v294.PlaneMotor;
                l_PlaneMotor_0:SetAttribute("EmoteProperty", true);
                table.insert(v291, l_PlaneMotor_0);
                l_CollectionService_1:AddTag(l_PlaneMotor_0, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_PlaneMotor_0.Part0 = v96["Right Arm"];
                l_PlaneMotor_0.Part1 = v294.Plane;
                l_PlaneMotor_0.Parent = v96["Right Arm"];
                l_PlaneMotor_0.Name = "Plane";
                v294.Parent = v96;
                local _ = v94("Left", v291, v96);
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
            Startup = function(v297, _, _) --[[ Line: 1575 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v297, v96);
                local _ = v94("Right", v297, v96);
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
            Startup = function(v302, _, _) --[[ Line: 1594 ]] --[[ Name: Startup ]]
                local v305 = game.ReplicatedStorage.Emotes.Torch:Clone();
                v305:SetAttribute("EmoteProperty", true);
                table.insert(v302, v305);
                l_CollectionService_1:AddTag(v305, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_Handle_0 = v305.Handle;
                l_Handle_0:SetAttribute("EmoteProperty", true);
                table.insert(v302, l_Handle_0);
                l_CollectionService_1:AddTag(l_Handle_0, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_Handle_0.Part0 = v96["Right Arm"];
                l_Handle_0.Part1 = v305;
                l_Handle_0.Parent = v96["Right Arm"];
                v305.Parent = v96;
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
            Startup = function(v307, _, _) --[[ Line: 1624 ]] --[[ Name: Startup ]]
                local v310 = game.ReplicatedStorage.Emotes.pitchfork:Clone();
                v310:SetAttribute("EmoteProperty", true);
                table.insert(v307, v310);
                l_CollectionService_1:AddTag(v310, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_pitchfork_0 = v310.pitchfork;
                l_pitchfork_0:SetAttribute("EmoteProperty", true);
                table.insert(v307, l_pitchfork_0);
                l_CollectionService_1:AddTag(l_pitchfork_0, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_pitchfork_0.Part0 = v96["Left Arm"];
                l_pitchfork_0.Part1 = v310;
                l_pitchfork_0.Parent = v96["Left Arm"];
                v310.Parent = v96;
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
            Startup = function(v312, _, _) --[[ Line: 1655 ]] --[[ Name: Startup ]]
                v40({
                    name = "Witch Flight", 
                    char = v96, 
                    cleanup = v312
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
            Startup = function(v315, _, _) --[[ Line: 1679 ]] --[[ Name: Startup ]]
                local v318 = game.ReplicatedStorage.Emotes.signkj:Clone();
                v318:SetAttribute("EmoteProperty", true);
                table.insert(v315, v318);
                l_CollectionService_1:AddTag(v318, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_sign_0 = v318.sign;
                l_sign_0:SetAttribute("EmoteProperty", true);
                table.insert(v315, l_sign_0);
                l_CollectionService_1:AddTag(l_sign_0, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                v318.Name = "sign";
                l_sign_0.Part0 = v96["Right Arm"];
                l_sign_0.Part1 = v318;
                l_sign_0.Parent = v96["Right Arm"];
                v318.Parent = v96;
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
            Startup = function(v320, _, _) --[[ Line: 1710 ]] --[[ Name: Startup ]]
                local v323 = game.ReplicatedStorage.Emotes.Lamp:Clone();
                v323:SetAttribute("EmoteProperty", true);
                table.insert(v320, v323);
                l_CollectionService_1:AddTag(v323, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_lampheadm_0 = v323.lampheadm;
                l_lampheadm_0:SetAttribute("EmoteProperty", true);
                table.insert(v320, l_lampheadm_0);
                l_CollectionService_1:AddTag(l_lampheadm_0, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                v323.Name = "sign";
                l_lampheadm_0.Part0 = v96.Head;
                l_lampheadm_0.Part1 = v323.lamphead;
                l_lampheadm_0.Parent = v96.Head;
                l_lampheadm_0.Name = "lamphead";
                v323.Parent = v96;
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
            Startup = function(v325, _, _, _, v329) --[[ Line: 1758 ]] --[[ Name: Startup ]]
                local v330 = game.ReplicatedStorage.Emotes.Sleigh:Clone();
                v330:SetAttribute("EmoteProperty", true);
                table.insert(v325, v330);
                l_CollectionService_1:AddTag(v330, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_Motor6D_9 = v330:FindFirstChildOfClass("Motor6D");
                l_Motor6D_9:SetAttribute("EmoteProperty", true);
                table.insert(v325, l_Motor6D_9);
                l_CollectionService_1:AddTag(l_Motor6D_9, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_Motor6D_9.Part0 = v96.PrimaryPart;
                l_Motor6D_9.Part1 = v330.Main;
                l_Motor6D_9.Parent = v96.PrimaryPart;
                v330.Parent = v96;
                task.delay(0.65, function() --[[ Line: 1771 ]]
                    if v329.interrupted then
                        return;
                    else
                        local v332 = nil;
                        v332 = v70({
                            SoundId = "rbxassetid://103153234346526", 
                            Volume = 2, 
                            Looped = true, 
                            Parent = v96.PrimaryPart
                        });
                        v332:Play();
                        v332:SetAttribute("EmoteProperty", true);
                        table.insert(v325, v332);
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
            Startup = function(v333, _, _) --[[ Line: 1802 ]] --[[ Name: Startup ]]
                local v336 = game.ReplicatedStorage.Emotes.RockBig:Clone();
                v336.Parent = v96;
                v336.Anchored = true;
                v336:SetAttribute("EmoteProperty", true);
                table.insert(v333, v336);
                l_CollectionService_1:AddTag(v336, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                spawn(function() --[[ Line: 1809 ]]
                    local v337 = tick();
                    while true do
                        if task.wait() and tick() - v337 < 0.5 and v336 then
                            if not v336.Parent then
                                return;
                            else
                                v336.CFrame = v96.PrimaryPart.CFrame * CFrame.new(0, -1.5, 4);
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
            Startup = function(v338, _, _) --[[ Line: 1839 ]] --[[ Name: Startup ]]
                local v341 = game.ReplicatedStorage.Emotes.Borgir:Clone();
                v341:SetAttribute("EmoteProperty", true);
                table.insert(v338, v341);
                l_CollectionService_1:AddTag(v341, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_Motor_2 = v341.Motor;
                l_Motor_2:SetAttribute("EmoteProperty", true);
                table.insert(v338, l_Motor_2);
                l_CollectionService_1:AddTag(l_Motor_2, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_Motor_2.Part0 = v96["Right Arm"];
                l_Motor_2.Part1 = v341;
                l_Motor_2.Parent = v96["Right Arm"];
                l_Motor_2.Name = "Borgir";
                v341.Parent = v96;
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
            Startup = function(v343, _, _) --[[ Line: 1868 ]] --[[ Name: Startup ]]
                local v346 = game.ReplicatedStorage.Emotes.PlacaSoPraAnimar:Clone();
                v346:SetAttribute("EmoteProperty", true);
                table.insert(v343, v346);
                l_CollectionService_1:AddTag(v346, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_PlacaSoPraAnimar_0 = v346.PlacaSoPraAnimar;
                l_PlacaSoPraAnimar_0:SetAttribute("EmoteProperty", true);
                table.insert(v343, l_PlacaSoPraAnimar_0);
                l_CollectionService_1:AddTag(l_PlacaSoPraAnimar_0, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_PlacaSoPraAnimar_0.Part0 = v96["Right Arm"];
                l_PlacaSoPraAnimar_0.Part1 = v346;
                l_PlacaSoPraAnimar_0.Parent = v96["Right Arm"];
                v346.Parent = v96;
            end, 
            Keyframes = {
                freeze = function(_, _, v350) --[[ Line: 1883 ]]
                    v350:AdjustSpeed(0);
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
            Startup = function(v351, _, _) --[[ Line: 1902 ]] --[[ Name: Startup ]]
                local v354 = game.ReplicatedStorage.Emotes.Maniac.MeshPart:Clone();
                v354:SetAttribute("EmoteProperty", true);
                table.insert(v351, v354);
                l_CollectionService_1:AddTag(v354, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_Motor_3 = v354.Motor;
                l_Motor_3:SetAttribute("EmoteProperty", true);
                table.insert(v351, l_Motor_3);
                l_CollectionService_1:AddTag(l_Motor_3, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_Motor_3.Part0 = v96["Right Arm"];
                l_Motor_3.Part1 = v354.Handle;
                l_Motor_3.Parent = v96["Right Arm"];
                l_Motor_3.Name = "Handle";
                v354.Parent = v96;
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
            Startup = function(v356, _, _) --[[ Line: 1932 ]] --[[ Name: Startup ]]
                local v359 = game.ReplicatedStorage.Emotes.Maniac.MeshPart:Clone();
                v359:SetAttribute("EmoteProperty", true);
                table.insert(v356, v359);
                l_CollectionService_1:AddTag(v359, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_Motor_4 = v359.Motor;
                l_Motor_4:SetAttribute("EmoteProperty", true);
                table.insert(v356, l_Motor_4);
                l_CollectionService_1:AddTag(l_Motor_4, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_Motor_4.Part0 = v96["Right Arm"];
                l_Motor_4.Part1 = v359.Handle;
                l_Motor_4.Parent = v96["Right Arm"];
                l_Motor_4.Name = "Handle";
                v359.Parent = v96;
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
            Startup = function(v361, _, _) --[[ Line: 1969 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v361, v96);
                local _ = v94("Right", v361, v96);
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
            Startup = function(v366, _, _) --[[ Line: 1987 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v366, v96);
                local _ = v94("Right", v366, v96);
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
            Startup = function(v371, _, _) --[[ Line: 2007 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v371, v96);
                local _ = v94("Right", v371, v96);
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
            Startup = function(v376, _, _) --[[ Line: 2025 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v376, v96);
                local _ = v94("Right", v376, v96);
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
            Startup = function(v381, _, _) --[[ Line: 2044 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v381, v96);
                local _ = v94("Right", v381, v96);
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
                vfx = function(v386, _, _) --[[ Line: 2151 ]]
                    local function _(v389) --[[ Line: 2153 ]]
                        v389:SetAttribute("EmoteProperty", true);
                        table.insert(v386, v389);
                        l_CollectionService_1:AddTag(v389, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    end;
                    local v391 = game.ReplicatedStorage.Emotes.BackgroundCrashoutVfx:Clone();
                    v391.Parent = v96;
                    v391.Anchored = true;
                    v391:SetAttribute("EmoteProperty", true);
                    table.insert(v386, v391);
                    l_CollectionService_1:AddTag(v391, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    v391.CFrame = v96.PrimaryPart.CFrame * CFrame.new(0, -0.5, 0);
                    task.delay(0.1, function() --[[ Line: 2163 ]]
                        if v391 and v391.Parent then
                            v70({
                                SoundId = "rbxassetid://94069267034673", 
                                Volume = 2, 
                                Looped = true, 
                                Parent = v96.PrimaryPart
                            }):Play();
                            v70({
                                SoundId = "rbxassetid://85346361575494", 
                                Volume = 2, 
                                Looped = true, 
                                Parent = v96.PrimaryPart
                            }):Play();
                        end;
                    end);
                    local l_ColorCorrectionEffect_0 = Instance.new("ColorCorrectionEffect");
                    l_ColorCorrectionEffect_0.Enabled = true;
                    l_ColorCorrectionEffect_0.Parent = game.Lighting;
                    l_ColorCorrectionEffect_0:SetAttribute("EmoteProperty", true);
                    table.insert(v386, l_ColorCorrectionEffect_0);
                    l_CollectionService_1:AddTag(l_ColorCorrectionEffect_0, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    if game.Players:GetPlayerFromCharacter(v96) then
                        shared.repfire({
                            Type = "RageCcEmote", 
                            Cc = l_ColorCorrectionEffect_0
                        });
                    end;
                    for _, v394 in pairs({
                        v391.Eye, 
                        v391.Shade
                    }) do
                        v394.Parent = v96.Head;
                        v394:SetAttribute("EmoteProperty", true);
                        table.insert(v386, v394);
                        l_CollectionService_1:AddTag(v394, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    end;
                    local _ = tick();
                    local function v398(v396) --[[ Line: 2199 ]]
                        local l_PlayerFromCharacter_2 = game.Players:GetPlayerFromCharacter(v96);
                        if l_PlayerFromCharacter_2 then
                           shared.repfire({
                                Effect = "Camshake", 
                                Intensity = v396
                            });
                        end;
                    end;
                    v398(3);
                    wait(0.1);
                    while true do
                        if v391 then
                            if not v391.Parent then
                                return;
                            else
                                v398(1);
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
            Startup = function() --[[ Line: 2541 ]] --[[ Name: Startup ]]
                v70({
                    SoundId = "rbxassetid://1836270048", 
                    Volume = 1, 
                    TimePosition = 0.25, 
                    Looped = true, 
                    Parent = v96.Head
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
            Startup = function() --[[ Line: 2566 ]] --[[ Name: Startup ]]
                v70({
                    SoundId = "rbxassetid://1842247841", 
                    Volume = 1, 
                    TimePosition = 5, 
                    Parent = v96.Head
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
            Startup = function() --[[ Line: 2590 ]] --[[ Name: Startup ]]
                v70({
                    SoundId = "rbxassetid://18827980294", 
                    Volume = 1, 
                    TimePosition = 0.1, 
                    Parent = v96.Head
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
                clap = function() --[[ Line: 2615 ]]
                    v70({
                        SoundId = "rbxassetid://2704706975", 
                        Volume = 1, 
                        Parent = v96.Head
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
                clap = function() --[[ Line: 2762 ]]
                    v70({
                        SoundId = "rbxassetid://18835607404", 
                        Parent = v96.Torso, 
                        Volume = 1, 
                        PlaybackSpeed = 1
                    }):Play();
                end
            }, 
            Sounds = {}, 
            Startup = function(v399, _, v401) --[[ Line: 2777 ]] --[[ Name: Startup ]]
                local v402 = game.ReplicatedStorage.Emotes.Sunflower:Clone();
                v402:SetAttribute("EmoteProperty", true);
                table.insert(v399, v402);
                v401.Handle = v402;
                local l_Sunflower_0 = v402.Sunflower;
                l_Sunflower_0:SetAttribute("EmoteProperty", true);
                table.insert(v399, l_Sunflower_0);
                v401.md = l_Sunflower_0;
                l_Sunflower_0.Part0 = v96.PrimaryPart;
                l_Sunflower_0.Part1 = v402;
                l_Sunflower_0.Parent = v96.PrimaryPart;
                if math.random(1, 2) == 1 then
                    v402.Handle:Destroy();
                else
                    v402.Handle2:Destroy();
                end;
                v402.Parent = v96;
            end, 
            Infinite = true, 
            HideWeapon = true, 
            Animation = 18897695481, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Run = {
            Keyframes = {
                clap = function(v404) --[[ Line: 2800 ]]
                    if not v404.x then
                        v404.x = 1;
                    end;
                    v70({
                        SoundId = ({
                            "rbxassetid://18844121515", 
                            "rbxassetid://18844121774", 
                            "rbxassetid://18844122004", 
                            "rbxassetid://18844122195"
                        })[math.random(1, 4)], 
                        Parent = v404.x % 2 == 0 and v96["Left Leg"] or v96["Right Leg"], 
                        Volume = 0.3, 
                        PlaybackSpeed = 1
                    }):Play();
                    v404.x = v404.x + 1;
                end
            }, 
            Sounds = {}, 
            Startup = function(_, _, _) --[[ Line: 2818 ]] --[[ Name: Startup ]]

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
            Startup = function(v408, _, v410) --[[ Line: 2842 ]] --[[ Name: Startup ]]
                local v411 = game.ReplicatedStorage.Emotes.clock:Clone();
                v411:SetAttribute("EmoteProperty", true);
                table.insert(v408, v411);
                v410.Handle = v411;
                local v412 = v411["Rig.006"];
                v412:SetAttribute("EmoteProperty", true);
                table.insert(v408, v412);
                v410.md = v412;
                v412.Part0 = v96["Left Arm"];
                v412.Part1 = v411;
                v412.Parent = v96["Left Arm"];
                v411.Name = "Rig.006";
                v411.Parent = v96;
            end, 
            Animation = 18897733312, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        DJ = {
            Keyframes = {}, 
            Sounds = {}, 
            Startup = function(v413, _, v415) --[[ Line: 2866 ]] --[[ Name: Startup ]]
                local v416 = game.ReplicatedStorage.Emotes.dj_Pad:Clone();
                v416:SetAttribute("EmoteProperty", true);
                table.insert(v413, v416);
                v415.Handle = v416;
                local l_Base_0 = v416.Base.Base;
                l_Base_0:SetAttribute("EmoteProperty", true);
                table.insert(v413, l_Base_0);
                v415.md = l_Base_0;
                l_Base_0.Part0 = v96.PrimaryPart;
                l_Base_0.Part1 = v416.Base;
                l_Base_0.Parent = v96.PrimaryPart;
                v416.Parent = v96;
                v70({
                    SoundId = "rbxassetid://18844058756", 
                    Parent = v416.Base, 
                    Volume = 1
                }):Play();
                task.delay(1.2, function() --[[ Line: 2880 ]]
                    if not v416.Parent then
                        return;
                    else
                        v70({
                            SoundId = "rbxassetid://1836681160", 
                            Parent = v416.Base, 
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
            Startup = function(v418, _, v420) --[[ Line: 2910 ]] --[[ Name: Startup ]]
                local v421 = game.ReplicatedStorage.Emotes.horn:Clone();
                v421:SetAttribute("EmoteProperty", true);
                table.insert(v418, v421);
                v420.Handle = v421;
                local l_horn_0 = v421.horn;
                l_horn_0:SetAttribute("EmoteProperty", true);
                table.insert(v418, l_horn_0);
                v420.md = l_horn_0;
                l_horn_0.Part0 = v96["Right Arm"];
                l_horn_0.Part1 = v421;
                l_horn_0.Parent = v96["Right Arm"];
                v421.Parent = v96;
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
            Startup = function(v423, _, v425) --[[ Line: 2939 ]] --[[ Name: Startup ]]
                local v426 = game.ReplicatedStorage.Emotes["big shoe lol"]:Clone();
                v426:SetAttribute("EmoteProperty", true);
                table.insert(v423, v426);
                v425.Handle = v426;
                local v427 = v426["big shoe lol"];
                v427:SetAttribute("EmoteProperty", true);
                table.insert(v423, v427);
                v425.md = v427;
                v427.Part0 = v96["Right Leg"];
                v427.Part1 = v426;
                v427.Parent = v96["Right Leg"];
                v426.Parent = v96["Right Leg"];
                v70({
                    SoundId = "rbxassetid://18843835286", 
                    Parent = v426, 
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
            Startup = function(v428, _, v430) --[[ Line: 2974 ]] --[[ Name: Startup ]]
                local v431 = game.ReplicatedStorage.Emotes.Plane:Clone();
                v431:SetAttribute("EmoteProperty", true);
                table.insert(v428, v431);
                v430.Handle = v431;
                local l_Plane_0 = v431.Plane;
                l_Plane_0:SetAttribute("EmoteProperty", true);
                table.insert(v428, l_Plane_0);
                v430.md = l_Plane_0;
                l_Plane_0.Part0 = v96["Right Arm"];
                l_Plane_0.Part1 = v431;
                l_Plane_0.Parent = v96["Right Arm"];
                v431.Parent = v96;
            end, 
            HideWeapon = true, 
            Looped = true, 
            Animation = 18897499721, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        Lollipop = {
            Keyframes = {}, 
            Sounds = {}, 
            Startup = function(v433, _, v435) --[[ Line: 2999 ]] --[[ Name: Startup ]]
                local v436 = game.ReplicatedStorage.Emotes.LeftHandlecand:Clone();
                v436:SetAttribute("EmoteProperty", true);
                table.insert(v433, v436);
                v435.Handle = v436;
                v436.Name = "LeftHandle";
                local l_LeftHandle_0 = v436.LeftHandle;
                l_LeftHandle_0:SetAttribute("EmoteProperty", true);
                table.insert(v433, l_LeftHandle_0);
                v435.md = l_LeftHandle_0;
                l_LeftHandle_0.Part0 = v96["Left Arm"];
                l_LeftHandle_0.Part1 = v436;
                l_LeftHandle_0.Parent = v96["Left Arm"];
                v436.Parent = v96;
                v70({
                    SoundId = "rbxassetid://18844183460", 
                    Parent = v436, 
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
                clap = function(v438) --[[ Line: 3024 ]]
                    if not v438.x then
                        v438.x = 1;
                    end;
                    shared.sfx({
                        SoundId = ({
                            "rbxassetid://18844324520", 
                            "rbxassetid://18844324837", 
                            "rbxassetid://18844325082"
                        })[math.random(1, 3)], 
                        Parent = v438.x % 2 == 0 and v96["Left Leg"] or v96["Right Leg"], 
                        Volume = 0.85, 
                        RollOffMaxDistance = v1, 
                        PlaybackSpeed = 1
                    }):Play();
                    v438.x = v438.x + 1;
                end
            }, 
            Sounds = {}, 
            Startup = function(v439, _, v441) --[[ Line: 3043 ]] --[[ Name: Startup ]]
                local v442 = game.ReplicatedStorage.Emotes.Treadmill:Clone();
                v442:SetAttribute("EmoteProperty", true);
                table.insert(v439, v442);
                v441.Handle = v442;
                local l_Treadmill_0 = v442.Treadmill;
                l_Treadmill_0:SetAttribute("EmoteProperty", true);
                table.insert(v439, l_Treadmill_0);
                v441.md = l_Treadmill_0;
                l_Treadmill_0.Part0 = v96.PrimaryPart;
                l_Treadmill_0.Part1 = v442;
                l_Treadmill_0.Parent = v96.PrimaryPart;
                v442.Parent = v96;
                v70({
                    SoundId = "rbxassetid://18844323927", 
                    Parent = v442, 
                    Volume = 1
                }):Play();
                v70({
                    SoundId = "rbxassetid://18844324232", 
                    Parent = v442, 
                    Volume = 1, 
                    Looped = true
                }):Play();
                task.spawn(function() --[[ Line: 3064 ]]
                    local v444 = v102(18897724289);
                    local v445 = 1;
                    repeat
                        task.wait();
                        if v444.IsPlaying then
                            v445 = v445 + 1.0E-6;
                            v444:AdjustSpeed((math.clamp(v445, 0, 10)));
                        end;
                    until not v442.Parent;
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
                clap = function(v446) --[[ Line: 3086 ]]
                    if not v446.x then
                        v446.x = 1;
                    end;
                    v70({
                        SoundId = ({
                            "rbxassetid://18846632392", 
                            "rbxassetid://18846632707", 
                            "rbxassetid://18846633000", 
                            "rbxassetid://18846633359"
                        })[math.random(1, 4)], 
                        Parent = v446.x % 2 == 0 and v446.b["BRight Leg"] or v446.b["BLeft Leg"], 
                        Volume = 0.3, 
                        PlaybackSpeed = 1
                    }):Play();
                    v446.x = v446.x + 1;
                    if v446.x % 5 == 0 then
                        v70({
                            SoundId = ({
                                "rbxassetid://18846691304", 
                                "rbxassetid://18846691736", 
                                "rbxassetid://18846692037"
                            })[math.random(1, 3)], 
                            Parent = v446.b.Head, 
                            Volume = 1, 
                            PlaybackSpeed = 1
                        }):Play();
                    end;
                end
            }, 
            Sounds = {}, 
            Startup = function(v447, _, v449) --[[ Line: 3112 ]] --[[ Name: Startup ]]
                local v450 = game.ReplicatedStorage.Emotes.Bear:Clone();
                v450:SetAttribute("EmoteProperty", true);
                table.insert(v447, v450);
                v449.Handle = v450;
                local l_Body_0 = v450.Body.Body;
                l_Body_0:SetAttribute("EmoteProperty", true);
                table.insert(v447, l_Body_0);
                v449.md = l_Body_0;
                l_Body_0.Part0 = v96.PrimaryPart;
                l_Body_0.Part1 = v450.Body;
                l_Body_0.Parent = v96.PrimaryPart;
                v450.Parent = v96;
                v449.b = v450;
                v70({
                    SoundId = ({
                        "rbxassetid://18846691304", 
                        "rbxassetid://18846691736", 
                        "rbxassetid://18846692037"
                    })[math.random(1, 3)], 
                    Parent = v449.b.Head, 
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
            Startup = function(v452, _, v454) --[[ Line: 3146 ]] --[[ Name: Startup ]]
                local v455 = game.ReplicatedStorage.Emotes.PanTwo:Clone();
                v455:SetAttribute("EmoteProperty", true);
                table.insert(v452, v455);
                v454.Handle = v455;
                local l_Pan_0 = v455.Pan;
                l_Pan_0:SetAttribute("EmoteProperty", true);
                table.insert(v452, l_Pan_0);
                v454.md = l_Pan_0;
                l_Pan_0.Part0 = v96["Right Arm"];
                l_Pan_0.Part1 = v455;
                l_Pan_0.Parent = v96["Right Arm"];
                v455.Name = "Pan";
                v455.Parent = v96;
                v70({
                    SoundId = "rbxassetid://18829100753", 
                    Parent = v455, 
                    Volume = 1, 
                    Looped = true
                }):Play();
                local v457 = game.ReplicatedStorage.Emotes.Pancake:Clone();
                v457:SetAttribute("EmoteProperty", true);
                table.insert(v452, v457);
                v454.Handle = v457;
                local v458 = v455["Meshes/Pancake"];
                v458:SetAttribute("EmoteProperty", true);
                table.insert(v452, v458);
                v454.md = v458;
                v458.Part0 = v455;
                v458.Part1 = v457;
                v458.Parent = v455;
                v457.Parent = v96;
            end, 
            HideWeapon = true, 
            Animation = 18897548874, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["English or Spanish"] = {
            Keyframes = {}, 
            Sounds = {}, 
            Startup = function(v459, _, v461) --[[ Line: 3185 ]] --[[ Name: Startup ]]
                for _, v463 in pairs({
                    "English", 
                    "Spanish", 
                    "TextHandle"
                }) do
                    local v464 = game.ReplicatedStorage.Emotes[v463]:Clone();
                    v464:SetAttribute("EmoteProperty", true);
                    table.insert(v459, v464);
                    v461.Handle = v464;
                    local v465 = v464[v463];
                    v465:SetAttribute("EmoteProperty", true);
                    table.insert(v459, v465);
                    v461.md = v465;
                    v465.Part0 = v96.PrimaryPart;
                    v465.Part1 = v464;
                    v465.Parent = v96.PrimaryPart;
                    v464.Parent = v96;
                end;
                v70({
                    SoundId = "rbxassetid://18835721216", 
                    Parent = v96.PrimaryPart, 
                    Volume = 1
                }):Play();
                v70({
                    SoundId = "rbxassetid://9045031823", 
                    Parent = v96.PrimaryPart, 
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
            Startup = function(v466, _, v468) --[[ Line: 3224 ]] --[[ Name: Startup ]]
                local v469 = game.ReplicatedStorage.Emotes.boombox:Clone();
                v469:SetAttribute("EmoteProperty", true);
                table.insert(v466, v469);
                v468.Handle = v469;
                local l_m6d_1 = v469.m6d;
                l_m6d_1:SetAttribute("EmoteProperty", true);
                table.insert(v466, l_m6d_1);
                v468.md = l_m6d_1;
                l_m6d_1.Part0 = v96.PrimaryPart;
                l_m6d_1.Part1 = v469;
                l_m6d_1.Parent = v96.PrimaryPart;
                l_m6d_1.Name = "Motor6D";
                v469.Name = "Part";
                v469.Parent = v96.PrimaryPart;
                v70({
                    SoundId = "rbxassetid://1846329169", 
                    Parent = v469, 
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
            Startup = function(_, _, _) --[[ Line: 3257 ]] --[[ Name: Startup ]]
                local v474 = game.ReplicatedStorage.Emotes.BoomBox:Clone();
                v474:SetAttribute("EmoteProperty", true);
                local l_BoomBox_0 = v474.BoomBox;
                l_BoomBox_0:SetAttribute("EmoteProperty", true);
                l_BoomBox_0.Part0 = v96.PrimaryPart;
                l_BoomBox_0.Part1 = v474;
                l_BoomBox_0.Parent = v96.PrimaryPart;
                v474.Parent = v96;
                l_CollectionService_1:AddTag(v474, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                task.delay(0.25, function() --[[ Line: 3266 ]]
                    if v474.Parent then
                        v70({
                            SoundId = "rbxassetid://18843532846", 
                            Parent = v474, 
                            Volume = 1
                        }):Play();
                    end;
                end);
                task.spawn(function() --[[ Line: 3276 ]]
                    local v476 = v102(18897676267);
                    repeat
                        task.wait();
                    until v476.IsPlaying or not v474.Parent;
                    if v476.IsPlaying then
                        task.wait(2.51);
                        if not v474.Parent then
                            return;
                        else
                            v70({
                                SoundId = "rbxassetid://18843484198", 
                                CFrame = v474.CFrame, 
                                TimePosition = 2.51, 
                                Volume = 1
                            }):Resume();
                        end;
                    end;
                end);
                v70({
                    SoundId = "rbxassetid://1843676441", 
                    Parent = v474, 
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
                clap = function() --[[ Line: 3318 ]]
                    v70({
                        SoundId = "rbxassetid://17849634815", 
                        Parent = v96.HumanoidRootPart, 
                        Volume = 1, 
                        PlaybackSpeed = 1
                    }):Play();
                end, 
                claploop = function() --[[ Line: 3330 ]]
                    v70({
                        SoundId = "rbxassetid://17849634537", 
                        Parent = v96.HumanoidRootPart, 
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
            Startup = function(v477, _, v479) --[[ Line: 3350 ]] --[[ Name: Startup ]]
                local v480 = game.ReplicatedStorage.Emotes.Stick:Clone();
                v480:SetAttribute("EmoteProperty", true);
                table.insert(v477, v480);
                v479.Handle = v480;
                local l_Stick_0 = v480.Stick;
                l_Stick_0:SetAttribute("EmoteProperty", true);
                table.insert(v477, l_Stick_0);
                v479.md = l_Stick_0;
                l_Stick_0.Part0 = v96["Right Arm"];
                l_Stick_0.Part1 = v480;
                l_Stick_0.Parent = v96["Right Arm"];
                v480.Parent = v96;
                local v482 = game.ReplicatedStorage.Emotes.Bag:Clone();
                v482:SetAttribute("EmoteProperty", true);
                table.insert(v477, v482);
                v479.Handle = v482;
                local l_Bag_0 = v480.Bag;
                l_Bag_0:SetAttribute("EmoteProperty", true);
                table.insert(v477, l_Bag_0);
                v479.md = l_Bag_0;
                l_Bag_0.Part0 = v480;
                l_Bag_0.Part1 = v482;
                l_Bag_0.Parent = v480;
                v482.Parent = v96["Right Arm"];
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
            Startup = function(v484, _, v486) --[[ Line: 3387 ]] --[[ Name: Startup ]]
                local v487 = game.ReplicatedStorage.Emotes.DemonParticles.RootAttachment:Clone();
                v487:SetAttribute("EmoteProperty", true);
                table.insert(v484, v487);
                table.insert(v486, v487);
                v487.Parent = v96.HumanoidRootPart;
                game:GetService("Debris"):AddItem(v487, 2);
                for _, v489 in pairs(v487:GetChildren()) do
                    v489:Emit(1);
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
            Startup = function(v490, _, _) --[[ Line: 3423 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v490, v96);
                local _ = v94("Right", v490, v96);
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
            Startup = function(v495, _, v497) --[[ Line: 3445 ]] --[[ Name: Startup ]]
                local v498 = game.ReplicatedStorage.Emotes.Frisbee:Clone();
                v498:SetAttribute("EmoteProperty", true);
                table.insert(v495, v498);
                v497.Frisbee = v498;
                local l_Frisbee_0 = v498.Frisbee;
                l_Frisbee_0:SetAttribute("EmoteProperty", true);
                table.insert(v495, l_Frisbee_0);
                v497.md = l_Frisbee_0;
                l_Frisbee_0.Part0 = v96["Right Arm"];
                l_Frisbee_0.Part1 = v498;
                l_Frisbee_0.Parent = v96["Right Arm"];
                v498.Parent = v96;
            end, 
            Keyframes = {
                Toss = function(v500) --[[ Line: 3457 ]]
                    v500.Frisbee.Transparency = 1;
                    local v501 = game.ReplicatedStorage.Emotes.Frisbee:Clone();
                    l_CollectionService_1:AddTag(v501, "emotestuff" .. v96.Name);
                    game:GetService("Debris"):AddItem(v501, 5);
                    v501.CanCollide = true;
                    v501.CanTouch = true;
                    v501.CanQuery = false;
                    v501.Massless = false;
                    v501.CollisionGroup = "nocol";
                    v501.CFrame = v96:GetPivot() * CFrame.new(0, 0, -2.5);
                    v501.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1);
                    v501.Parent = workspace.Thrown;
                    v501:SetNetworkOwner(l_PlayerFromCharacter_0);
                    local v502 = 0;
                    v501.AssemblyAngularVelocity = Vector3.new(0, 480, 0, 0);
                    v501.AssemblyLinearVelocity = v96:GetPivot().LookVector * 120 + v96:GetPivot().UpVector * 40;
                    local v503 = nil;
                    v503 = v501.Touched:Connect(function(v504) --[[ Line: 3484 ]]
                        if v504:IsDescendantOf(workspace.Live) or tick() - v502 < 0.075 then
                            return;
                        elseif math.abs(v501.Velocity.Y) < 4 then
                            return;
                        else
                            v502 = tick();
                            v70({
                                SoundId = "rbxassetid://9114538213", 
                                Parent = v501, 
                                Volume = 1, 
                                PlaybackSpeed = Random.new():NextNumber(0.99, 2)
                            }):Play();
                            return;
                        end;
                    end);
                    task.delay(5, function() --[[ Line: 3500 ]]
                        v503:Disconnect();
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
            Startup = function(v505, _, v507) --[[ Line: 3522 ]] --[[ Name: Startup ]]
                local v508 = game.ReplicatedStorage.Emotes.Controller:Clone();
                v508:SetAttribute("EmoteProperty", true);
                table.insert(v505, v508);
                v507.Handle = v508;
                v508.Name = "Retopo_Cube.001";
                local v509 = v508["Retopo_Cube.001"];
                v509:SetAttribute("EmoteProperty", true);
                table.insert(v505, v509);
                v507.md = v509;
                v509.Part0 = v96.HumanoidRootPart;
                v509.Part1 = v508;
                v509.Parent = v96.HumanoidRootPart;
                v508.Parent = v96;
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
            Startup = function(v510, _, v512) --[[ Line: 3551 ]] --[[ Name: Startup ]]
                local v513 = game.ReplicatedStorage.Emotes.SpareChangeCup:Clone();
                v513:SetAttribute("EmoteProperty", true);
                table.insert(v510, v513);
                v512.Handle = v513;
                v513.Name = "Handle";
                local l_Handle_1 = v513.Handle;
                l_Handle_1:SetAttribute("EmoteProperty", true);
                table.insert(v510, l_Handle_1);
                v512.md = l_Handle_1;
                l_Handle_1.Part0 = v96["Right Arm"];
                l_Handle_1.Part1 = v513;
                l_Handle_1.Parent = v96["Right Arm"];
                v513.Parent = v96;
                local v515 = game.ReplicatedStorage.Emotes.Box:Clone();
                v515:SetAttribute("EmoteProperty", true);
                table.insert(v510, v515);
                v512.Handle = v515;
                v515.Name = "RBX";
                local v516 = v515["Cube.002"]["Cube.002"];
                v516:SetAttribute("EmoteProperty", true);
                table.insert(v510, v516);
                v512.md = v516;
                v516.Part0 = v96.HumanoidRootPart;
                v516.Part1 = v515["Cube.002"];
                v516.Parent = v96.HumanoidRootPart;
                v515.Parent = v96;
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
            Startup = function(v517, _, v519) --[[ Line: 3587 ]] --[[ Name: Startup ]]
                local v520 = game.ReplicatedStorage.Emotes.TSB_tomato:Clone();
                v520:SetAttribute("EmoteProperty", true);
                table.insert(v517, v520);
                v519.TSB_tomato = v520;
                v520.Transparency = 1;
                local l_TSB_tomato_0 = v520.TSB_tomato;
                l_TSB_tomato_0:SetAttribute("EmoteProperty", true);
                table.insert(v517, l_TSB_tomato_0);
                v519.md = l_TSB_tomato_0;
                l_TSB_tomato_0.Part0 = v96.HumanoidRootPart;
                l_TSB_tomato_0.Part1 = v520;
                l_TSB_tomato_0.Parent = v96.HumanoidRootPart;
                v520.Parent = v96;
            end, 
            Keyframes = {
                TomatoAppear = function(v522) --[[ Line: 3600 ]]
                    v522.TSB_tomato.Transparency = 0;
                end, 
                Tomato = function(v523) --[[ Line: 3604 ]]
                    v523.TSB_tomato.Transparency = 1;
                    local v524 = game.ReplicatedStorage.Emotes.TSB_tomato:Clone();
                    l_CollectionService_1:AddTag(v524, "emotestuff" .. v96.Name);
                    game:GetService("Debris"):AddItem(v524, 5);
                    v524.CanCollide = true;
                    v524.CanTouch = true;
                    v524.CanQuery = false;
                    v524.Massless = false;
                    v524.CollisionGroup = "nocol";
                    v524.CFrame = v523.TSB_tomato.CFrame;
                    v524.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1);
                    v524.Parent = workspace.Thrown;
                    v524:SetNetworkOwner(l_PlayerFromCharacter_0);
                    local v525 = v96.PrimaryPart.CFrame + v96.PrimaryPart.CFrame.lookVector * 40;
                    local v526 = Vector3.new(0, -workspace.Gravity + 70, 0);
                    local v527 = v96.PrimaryPart.CFrame * CFrame.new(0, 0, -2);
                    local v528 = (v525.Position - v527.Position - 0.5 * v526 * 1 * 1) / 1;
                    local v529 = 0;
                    v524.Velocity = v528;
                    local v530 = nil;
                    v530 = v524.Touched:Connect(function(v531) --[[ Line: 3626 ]]
                        if v531:IsDescendantOf(workspace.Live) or tick() - v529 < 0.075 then
                            return;
                        elseif math.abs(v524.Velocity.Y) < 4 then
                            return;
                        else
                            v529 = tick();
                            v70({
                                SoundId = "rbxassetid://9120112840", 
                                Parent = v524, 
                                Volume = 3, 
                                PlaybackSpeed = Random.new():NextNumber(1.5, 2)
                            }):Play();
                            return;
                        end;
                    end);
                    task.delay(5, function() --[[ Line: 3643 ]]
                        if v530 then
                            v530:Disconnect();
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
            Startup = function(v532, _, v534) --[[ Line: 3667 ]] --[[ Name: Startup ]]
                local v535 = game.ReplicatedStorage.Emotes.TSB_waterbottle:Clone();
                v535:SetAttribute("EmoteProperty", true);
                table.insert(v532, v535);
                v534.WaterBottle = v535;
                local l_TSB_waterbottle_0 = v535.TSB_waterbottle;
                l_TSB_waterbottle_0:SetAttribute("EmoteProperty", true);
                table.insert(v532, l_TSB_waterbottle_0);
                v534.md = l_TSB_waterbottle_0;
                l_TSB_waterbottle_0.Part0 = v96.HumanoidRootPart;
                l_TSB_waterbottle_0.Part1 = v535;
                l_TSB_waterbottle_0.Parent = v96.HumanoidRootPart;
                v535.Parent = v96;
            end, 
            Keyframes = {
                Flip = function(v537) --[[ Line: 3679 ]]
                    v537.WaterBottle.Transparency = 1;
                    local v538 = game.ReplicatedStorage.Emotes.TSB_waterbottle:Clone();
                    l_CollectionService_1:AddTag(v538, "emotestuff" .. v96.Name);
                    game:GetService("Debris"):AddItem(v538, 5);
                    v538.CanCollide = true;
                    v538.CanTouch = true;
                    v538.CanQuery = false;
                    v538.Massless = false;
                    v538.CollisionGroup = "nocol";
                    v538.CFrame = v537.WaterBottle.CFrame;
                    v538.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1);
                    v538.Parent = workspace.Thrown;
                    v538:SetNetworkOwner(l_PlayerFromCharacter_0);
                    local v539 = v96.PrimaryPart.CFrame + v96.PrimaryPart.CFrame.lookVector * 20;
                    local v540 = Vector3.new(0, -workspace.Gravity, 0);
                    local v541 = v96.PrimaryPart.CFrame * Vector3.new(0, 0, -2, 0);
                    local v542 = (v539.Position - v541 - 0.5 * v540 * 1 * 1) / 1;
                    local v543 = 0;
                    v538.Velocity = v542;
                    v538.AssemblyAngularVelocity = Vector3.new(15, 0, 0, 0);
                    local v544 = nil;
                    v544 = v538.Touched:Connect(function(v545) --[[ Line: 3702 ]]
                        if v545:IsDescendantOf(workspace.Live) or tick() - v543 < 0.075 then
                            return;
                        elseif math.abs(v538.Velocity.Y) < 4 then
                            return;
                        else
                            v543 = tick();
                            v70({
                                SoundId = "rbxassetid://9125743366", 
                                Parent = v538, 
                                Volume = 3, 
                                PlaybackSpeed = Random.new():NextNumber(1.5, 2)
                            }):Play();
                            return;
                        end;
                    end);
                    task.delay(5, function() --[[ Line: 3718 ]]
                        v544:Disconnect();
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
            Startup = function(v546, _, v548) --[[ Line: 3739 ]] --[[ Name: Startup ]]
                local v549 = game.ReplicatedStorage.Emotes.golfball:Clone();
                v549:SetAttribute("EmoteProperty", true);
                table.insert(v546, v549);
                v548.GolfBall = v549;
                local l_golfball_0 = v549.golfball;
                l_golfball_0:SetAttribute("EmoteProperty", true);
                table.insert(v546, l_golfball_0);
                v548.md = l_golfball_0;
                l_golfball_0.Part0 = v96.HumanoidRootPart;
                l_golfball_0.Part1 = v549;
                l_golfball_0.Parent = v96.HumanoidRootPart;
                v549.Parent = v96;
                local v551 = game.ReplicatedStorage.Emotes.golfclub:Clone();
                v551:SetAttribute("EmoteProperty", true);
                table.insert(v546, v551);
                v548.Handle = v551;
                local l_golfclub_0 = v551.golfclub;
                l_golfclub_0:SetAttribute("EmoteProperty", true);
                table.insert(v546, l_golfclub_0);
                v548.md = l_golfclub_0;
                l_golfclub_0.Part0 = v96["Right Arm"];
                l_golfclub_0.Part1 = v551;
                l_golfclub_0.Parent = v96["Right Arm"];
                v551.Parent = v96;
            end, 
            Keyframes = {
                GolfBall = function(v553) --[[ Line: 3758 ]]
                    v553.GolfBall.Transparency = 1;
                    local v554 = game.ReplicatedStorage.Emotes.golfball:Clone();
                    l_CollectionService_1:AddTag(v554, "emotestuff" .. v96.Name);
                    game:GetService("Debris"):AddItem(v554, 5);
                    v554.CanCollide = true;
                    v554.CanTouch = true;
                    v554.CanQuery = false;
                    v554.Massless = false;
                    v554.CollisionGroup = "nocol";
                    v554.CFrame = v553.GolfBall.CFrame;
                    v554.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1);
                    v554.Parent = workspace.Thrown;
                    v554:SetNetworkOwner(l_PlayerFromCharacter_0);
                    local v555 = v96.PrimaryPart.CFrame + v96.PrimaryPart.CFrame.lookVector * 50;
                    local v556 = Vector3.new(0, -workspace.Gravity, 0);
                    local v557 = v96.PrimaryPart.CFrame * Vector3.new(0, 0, -2, 0);
                    local v558 = (v555.Position - v557 - 0.5 * v556 * 1 * 1) / 1;
                    local v559 = 0;
                    v554.Velocity = v558;
                    local v560 = nil;
                    v560 = v554.Touched:Connect(function(v561) --[[ Line: 3780 ]]
                        if v561:IsDescendantOf(workspace.Live) or tick() - v559 < 0.075 then
                            return;
                        elseif math.abs(v554.Velocity.Y) < 4 then
                            return;
                        else
                            v559 = tick();
                            v70({
                                SoundId = "rbxassetid://9114625926", 
                                Parent = v554, 
                                Volume = 3, 
                                PlaybackSpeed = Random.new():NextNumber(0.9, 1.1)
                            }):Play();
                            return;
                        end;
                    end);
                    task.delay(5, function() --[[ Line: 3796 ]]
                        v560:Disconnect();
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
            Startup = function(v562, _, v564) --[[ Line: 3858 ]] --[[ Name: Startup ]]
                local v565 = game.ReplicatedStorage.Emotes.KickChair:Clone();
                v565.Name = "Chair";
                v565:SetAttribute("EmoteProperty", true);
                table.insert(v562, v565);
                v564.Handle = v565;
                local l_Chair_0 = v565.Chair;
                l_Chair_0:SetAttribute("EmoteProperty", true);
                table.insert(v562, l_Chair_0);
                v564.md = l_Chair_0;
                l_Chair_0.Part0 = v96.HumanoidRootPart;
                l_Chair_0.Part1 = v565;
                l_Chair_0.Parent = v96.HumanoidRootPart;
                v565.Parent = v96;
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
            Startup = function(v567, _, v569) --[[ Line: 3962 ]] --[[ Name: Startup ]]
                local v570 = game.ReplicatedStorage.Emotes.LeftEyebrow:Clone();
                v570:SetAttribute("EmoteProperty", true);
                table.insert(v567, v570);
                v569.Handle = v570;
                local l_LeftEyebrow_0 = v570.LeftEyebrow;
                l_LeftEyebrow_0:SetAttribute("EmoteProperty", true);
                table.insert(v567, l_LeftEyebrow_0);
                v569.md = l_LeftEyebrow_0;
                l_LeftEyebrow_0.Part0 = v96.Head;
                l_LeftEyebrow_0.Part1 = v570;
                l_LeftEyebrow_0.Parent = v96.Head;
                v570.Parent = v96.Head;
                local v572 = game.ReplicatedStorage.Emotes.RightEyebrow:Clone();
                v572:SetAttribute("EmoteProperty", true);
                table.insert(v567, v572);
                v569.Handle = v572;
                local l_RightEyebrow_0 = v572.RightEyebrow;
                l_RightEyebrow_0:SetAttribute("EmoteProperty", true);
                table.insert(v567, l_RightEyebrow_0);
                v569.md = l_RightEyebrow_0;
                l_RightEyebrow_0.Part0 = v96.Head;
                l_RightEyebrow_0.Part1 = v572;
                l_RightEyebrow_0.Parent = v96.Head;
                v572.Parent = v96.Head;
                local v574 = game.ReplicatedStorage.Emotes.shades:Clone();
                v574:SetAttribute("EmoteProperty", true);
                table.insert(v567, v574);
                v569.Handle = v574;
                local l_shades_0 = v574.shades;
                l_shades_0:SetAttribute("EmoteProperty", true);
                table.insert(v567, l_shades_0);
                v569.md = l_shades_0;
                l_shades_0.Part0 = v96.Head;
                l_shades_0.Part1 = v574;
                l_shades_0.Parent = v96.Head;
                v574.Parent = v96;
                local v576 = game.ReplicatedStorage.Emotes.mic:Clone();
                v576:SetAttribute("EmoteProperty", true);
                table.insert(v567, v576);
                v569.Handle = v576;
                local l_mic_0 = v576.mic;
                l_mic_0:SetAttribute("EmoteProperty", true);
                table.insert(v567, l_mic_0);
                v569.md = l_mic_0;
                l_mic_0.Part0 = v96["Left Arm"];
                l_mic_0.Part1 = v576;
                l_mic_0.Parent = v96["Left Arm"];
                v576.Parent = v96;
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
            Startup = function(v578, _, v580) --[[ Line: 4010 ]] --[[ Name: Startup ]]
                local v581 = false;
                if v96.Head:FindFirstChild("afro") then
                    v581 = true;
                end;
                local v582 = game.ReplicatedStorage.Emotes.afro:Clone();
                if v581 then
                    v582:SetAttribute("EmoteProperty", true);
                    table.insert(v578, v582);
                    v580.Handle = v582;
                end;
                local l_afro_0 = v582.afro;
                if v581 then
                    l_afro_0:SetAttribute("EmoteProperty", true);
                    table.insert(v578, l_afro_0);
                    v580.md = l_afro_0;
                end;
                l_afro_0.Part0 = v96.Head;
                l_afro_0.Part1 = v582;
                l_afro_0.Parent = v96.Head;
                v582.Parent = v96.Head;
                local v584 = game.ReplicatedStorage.Emotes.HairDryer:Clone();
                v584:SetAttribute("EmoteProperty", true);
                table.insert(v578, v584);
                v580.Handle = v584;
                local l_HairDryer_0 = v584.HairDryer;
                l_HairDryer_0:SetAttribute("EmoteProperty", true);
                table.insert(v578, l_HairDryer_0);
                v580.md = l_HairDryer_0;
                l_HairDryer_0.Part0 = v96["Left Arm"];
                l_HairDryer_0.Part1 = v584;
                l_HairDryer_0.Parent = v96["Left Arm"];
                v584.Parent = v96;
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
            Startup = function(v586, _, _) --[[ Line: 4139 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v586, v96);
                local _ = v94("Right", v586, v96);
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
            Startup = function(v591, _, _) --[[ Line: 4164 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v591, v96);
                local _ = v94("Right", v591, v96);
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
            Startup = function(v596, _, _) --[[ Line: 4189 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v596, v96);
                local _ = v94("Right", v596, v96);
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
            Startup = function(v601, _, _) --[[ Line: 4208 ]] --[[ Name: Startup ]]
                local _ = v94("Right", v601, v96);
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
            Startup = function(v605, _, _) --[[ Line: 4234 ]] --[[ Name: Startup ]]
                local _ = v94("Right", v605, v96);
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
            Startup = function(v609, _, _) --[[ Line: 4253 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v609, v96);
                local _ = v94("Right", v609, v96);
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
            Startup = function(v614, _, _) --[[ Line: 4271 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v614, v96);
                local _ = v94("Right", v614, v96);
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
            Startup = function(v619, _, _) --[[ Line: 4289 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v619, v96);
                local _ = v94("Right", v619, v96);
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
            Startup = function(v624, _, _) --[[ Line: 4308 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v624, v96);
                local _ = v94("Right", v624, v96);
                for v629 = 1, 3 do
                    local v630 = game.ReplicatedStorage.Emotes.HmmDot:Clone();
                    v630.Name = v629;
                    v630.Parent = v96;
                    local l_Motor6D_10 = Instance.new("Motor6D");
                    l_Motor6D_10.C0 = CFrame.new(-1.493, 1.17, -0.086) * CFrame.Angles(0, 3.141592653589793, 0);
                    l_Motor6D_10.Name = v629;
                    l_Motor6D_10.Part0 = v96.Torso;
                    l_Motor6D_10.Part1 = v630;
                    l_Motor6D_10.Parent = v96.Torso;
                    v630:SetAttribute("EmoteProperty", true);
                    l_Motor6D_10:SetAttribute("EmoteProperty", true);
                    table.insert(v624, v630);
                    table.insert(v624, l_Motor6D_10);
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
            Startup = function(v632, _, v634) --[[ Line: 4352 ]] --[[ Name: Startup ]]
                local v635 = game.ReplicatedStorage.Emotes.yoyorig:Clone();
                v635:SetAttribute("EmoteProperty", true);
                table.insert(v632, v635);
                v634.Handle = v635;
                local l_m6d_2 = v635.m6d;
                l_m6d_2:SetAttribute("EmoteProperty", true);
                table.insert(v632, l_m6d_2);
                v634.md = l_m6d_2;
                l_m6d_2.Part0 = v96.HumanoidRootPart;
                l_m6d_2.Part1 = v635.main;
                l_m6d_2.Name = "main";
                l_m6d_2.Parent = v96.HumanoidRootPart;
                local l_m6d2_0 = v635.m6d2;
                l_m6d2_0:SetAttribute("EmoteProperty", true);
                table.insert(v632, l_m6d2_0);
                v634.md = l_m6d2_0;
                l_m6d2_0.Part0 = v96.HumanoidRootPart;
                l_m6d2_0.Part1 = v635.yoyostring;
                l_m6d2_0.Name = "yoyostring";
                l_m6d2_0.Parent = v96.HumanoidRootPart;
                v635.Parent = v96;
            end, 
            Animation = 18459518606, 
            Stun = "Slowed", 
            HideWeapon = true, 
            Looped = true
        }, 
        Guided = {
            Sounds = {}, 
            Startup = function(v638, _, v640) --[[ Line: 4378 ]] --[[ Name: Startup ]]
                local v641 = game.ReplicatedStorage.Emotes.BlindGlasses:Clone();
                v641:SetAttribute("EmoteProperty", true);
                table.insert(v638, v641);
                v640.Handle = v641;
                local l_BlindGlasses_0 = v641.BlindGlasses;
                l_BlindGlasses_0.Part0 = v96.Head;
                l_BlindGlasses_0.Part1 = v641;
                v641.Parent = v96;
                local v643 = game.ReplicatedStorage.Emotes.BlindWalkerThing:Clone();
                v643:SetAttribute("EmoteProperty", true);
                table.insert(v638, v643);
                v640.Handle = v643;
                local l_BlindWalkerThing_0 = v643.BlindWalkerThing;
                l_BlindWalkerThing_0:SetAttribute("EmoteProperty", true);
                table.insert(v638, l_BlindWalkerThing_0);
                v640.md = l_BlindWalkerThing_0;
                l_BlindWalkerThing_0.Part0 = v96["Right Arm"];
                l_BlindWalkerThing_0.Part1 = v643;
                l_BlindWalkerThing_0.Parent = v96["Right Arm"];
                v643.Parent = v96;
                v70({
                    SoundId = "rbxassetid://18459664775", 
                    Volume = 1, 
                    Looped = true, 
                    Parent = v643
                }):Play();
            end, 
            Keyframes = {
                clap = function(_, _, _) --[[ Line: 4401 ]]
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v96["Left Leg"], 
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
            Startup = function(v648, _, v650) --[[ Line: 4428 ]] --[[ Name: Startup ]]
                local v651 = game.ReplicatedStorage.Emotes.catjello:Clone();
                v651:SetAttribute("EmoteProperty", true);
                table.insert(v648, v651);
                v650.Handle = v651;
                local l_m6d_3 = v651.m6d;
                l_m6d_3:SetAttribute("EmoteProperty", true);
                table.insert(v648, l_m6d_3);
                v650.md = l_m6d_3;
                l_m6d_3.Part0 = v96.HumanoidRootPart;
                l_m6d_3.Part1 = v651.main;
                l_m6d_3.Parent = v96.HumanoidRootPart;
                v651.Parent = v96;
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
            Startup = function(v653, _, v655) --[[ Line: 4452 ]] --[[ Name: Startup ]]
                local v656 = game.ReplicatedStorage.Emotes.Knife:Clone();
                v656:SetAttribute("EmoteProperty", true);
                table.insert(v653, v656);
                v655.Handle = v656;
                local l_Knife_0 = v656.Knife;
                l_Knife_0:SetAttribute("EmoteProperty", true);
                table.insert(v653, l_Knife_0);
                v655.md = l_Knife_0;
                l_Knife_0.Part0 = v96.HumanoidRootPart;
                l_Knife_0.Part1 = v656;
                l_Knife_0.Parent = v96.HumanoidRootPart;
                v656.Parent = v96;
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
            Startup = function(v658, _, v660) --[[ Line: 4477 ]] --[[ Name: Startup ]]
                local v661 = game.ReplicatedStorage.Emotes.Cube:Clone();
                v661:SetAttribute("EmoteProperty", true);
                table.insert(v658, v661);
                v660.Handle = v661;
                local l_Cube_0 = v661.Cube;
                l_Cube_0:SetAttribute("EmoteProperty", true);
                table.insert(v658, l_Cube_0);
                v660.md = l_Cube_0;
                v661.Name = "Cube";
                l_Cube_0.Part0 = v96["Right Arm"];
                l_Cube_0.Part1 = v661;
                l_Cube_0.Parent = v96["Right Arm"];
                v661.Parent = v96;
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
            Startup = function(v663, _, v665) --[[ Line: 4503 ]] --[[ Name: Startup ]]
                local v666 = game.ReplicatedStorage.Emotes.Brick:Clone();
                v666:SetAttribute("EmoteProperty", true);
                table.insert(v663, v666);
                v665.Handle = v666;
                local l_Handle_2 = v666.Handle;
                l_Handle_2:SetAttribute("EmoteProperty", true);
                table.insert(v663, l_Handle_2);
                v665.md = l_Handle_2;
                v666.Name = "Brick";
                l_Handle_2.Part0 = v96["Right Arm"];
                l_Handle_2.Part1 = v666;
                l_Handle_2.Parent = v96["Right Arm"];
                v666.Parent = v96;
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
            Startup = function(v668, _, v670) --[[ Line: 4530 ]] --[[ Name: Startup ]]
                local v671 = game.ReplicatedStorage.Emotes.Lightbulb:Clone();
                v671:SetAttribute("EmoteProperty", true);
                table.insert(v668, v671);
                v670.Handle = v671;
                local l_Handle_3 = v671.Handle;
                l_Handle_3:SetAttribute("EmoteProperty", true);
                table.insert(v668, l_Handle_3);
                v670.md = l_Handle_3;
                v671.Name = "Lightbulb";
                l_Handle_3.Part0 = v96.HumanoidRootPart;
                l_Handle_3.Part1 = v671;
                l_Handle_3.Parent = v96.HumanoidRootPart;
                v671.Parent = v96;
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
            Startup = function(v673, _, v675) --[[ Line: 4561 ]] --[[ Name: Startup ]]
                local v676 = game.ReplicatedStorage.Emotes.Car:Clone();
                v676:SetAttribute("EmoteProperty", true);
                table.insert(v673, v676);
                v675.Handle = v676;
                local l_Handle_4 = v676.Handle;
                l_Handle_4:SetAttribute("EmoteProperty", true);
                table.insert(v673, l_Handle_4);
                v675.md = l_Handle_4;
                v676.Name = "Car";
                l_Handle_4.Part0 = v96.HumanoidRootPart;
                l_Handle_4.Part1 = v676;
                v676.Parent = v96;
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
            Startup = function(v678, _, v680) --[[ Line: 4605 ]] --[[ Name: Startup ]]
                local v681 = game.ReplicatedStorage.Emotes.WatermelonSpin:Clone();
                v681.Name = "WaterMelon";
                v681:SetAttribute("EmoteProperty", true);
                table.insert(v678, v681);
                v680.Handle = v681;
                local l_Handle_5 = v681.Handle;
                l_Handle_5:SetAttribute("EmoteProperty", true);
                table.insert(v678, l_Handle_5);
                v680.md = l_Handle_5;
                v681.Name = "Watermelon";
                l_Handle_5.Part0 = v96["Right Arm"];
                l_Handle_5.Part1 = v681;
                l_Handle_5.Parent = v96["Right Arm"];
                v681.Parent = v96;
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
            Startup = function(v683, _, _) --[[ Line: 4654 ]] --[[ Name: Startup ]]
                local v686 = game.ReplicatedStorage.Emotes.Purse:Clone();
                v686:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(v686, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_Motor6D_11 = Instance.new("Motor6D");
                l_Motor6D_11:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(l_Motor6D_11, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_Motor6D_11.C0 = CFrame.new(0.011, -0.531, 0);
                l_Motor6D_11.Part0 = v96["Left Arm"];
                l_Motor6D_11.Part1 = v686.PrimaryPart;
                l_Motor6D_11.Parent = v96["Left Arm"];
                v686.Parent = v96;
                table.insert(v683, v686);
                table.insert(v683, l_Motor6D_11);
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
            Startup = function(v688, _, _) --[[ Line: 4685 ]] --[[ Name: Startup ]]
                local v691 = game.ReplicatedStorage.Emotes.Rbx:Clone();
                v691:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(v691, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                v691.Parent = v96;
                local l_Motor6D_12 = Instance.new("Motor6D");
                l_Motor6D_12:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(l_Motor6D_12, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_Motor6D_12.C0 = CFrame.new(-0.325, -0.891, -0.064);
                l_Motor6D_12.C1 = CFrame.new(0, 0, 0.604);
                l_Motor6D_12.Part0 = v96["Right Arm"];
                l_Motor6D_12.Part1 = v691.PrimaryPart;
                l_Motor6D_12.Parent = v96["Right Arm"];
                table.insert(v688, v691);
                table.insert(v688, l_Motor6D_12);
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
            Startup = function(v693, _, _) --[[ Line: 4787 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v693, v96);
                local _ = v94("Right", v693, v96);
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
                clap = function(_) --[[ Line: 4868 ]]
                    v70({
                        SoundId = "rbxassetid://16526736324", 
                        Volume = 0.8, 
                        Parent = v96.Torso
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
                clap = function(v699) --[[ Line: 4895 ]]
                    v70({
                        SoundId = "rbxassetid://2704706975", 
                        Volume = not v699.first and 1 or 0.65, 
                        Parent = v96.Head
                    }):Play();
                    if not v699.first then
                        v699.first = true;
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
            Startup = function(_, _, _) --[[ Line: 4923 ]] --[[ Name: Startup ]]
                local v703 = game.ReplicatedStorage.Emotes.untitled:Clone();
                v703:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(v703, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_m6d_4 = v703.m6d;
                l_m6d_4:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(l_m6d_4, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_m6d_4.Name = "Cube.007";
                l_m6d_4.Part1 = v703["Cube.007"];
                l_m6d_4.Part0 = v96.Torso;
                l_m6d_4.Parent = v96.Torso;
                v703.Parent = v96;
            end, 
            Keyframes = {
                clap = function() --[[ Line: 4934 ]]
                    v70({
                        SoundId = ({
                            "rbxassetid://137024005187459", 
                            "rbxassetid://76278400824030", 
                            "rbxassetid://94509235587766"
                        })[math.random(1, 3)], 
                        Volume = 0.4, 
                        PlaybackSpeed = 1.15, 
                        Parent = v96.Torso
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
            Startup = function(_, _, _) --[[ Line: 4961 ]] --[[ Name: Startup ]]
                local v708 = game.ReplicatedStorage.Emotes.soccer:Clone();
                v708:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(v708, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_Ball_0 = v708.Handle.Ball;
                l_Ball_0:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(l_Ball_0, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_Ball_0.Name = "Ball";
                l_Ball_0.Part0 = v708.Handle;
                l_Ball_0.Part1 = v708.Ball;
                local l_m6d_5 = v708.m6d;
                l_m6d_5:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(l_m6d_5, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_m6d_5.Name = "Handle";
                l_m6d_5.Part0 = v96.Torso;
                l_m6d_5.Part1 = v708.Handle;
                l_m6d_5.Parent = v96.Torso;
                v708.Parent = v96;
                shared.sfx({
                    SoundId = "rbxassetid://16592084595", 
                    Parent = v708.Ball, 
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
            Startup = function(_, _, v713) --[[ Line: 4999 ]] --[[ Name: Startup ]]
                local v714 = game.ReplicatedStorage.Emotes.whistlecard:Clone();
                v714:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(v714, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_m6d_6 = v714.m6d;
                l_m6d_6:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(l_m6d_6, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_m6d_6.Name = "Handle";
                l_m6d_6.Part0 = v96["Left Arm"];
                l_m6d_6.Part1 = v714.Handle;
                l_m6d_6.Parent = v96["Left Arm"];
                v714.Parent = v96["Left Arm"];
                v713.whistle = v714.whistle;
                v713.card = v714.redcard;
            end, 
            Keyframes = {
                whistle = function(v716, _, _) --[[ Line: 5012 ]]
                    l_TweenService_0:Create(v716.whistle, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Size = Vector3.new()
                    }):Play();
                end, 
                card = function(v719, _, _) --[[ Line: 5018 ]]
                    l_TweenService_0:Create(v719.card, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
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
            Startup = function(v722, _, _) --[[ Line: 5040 ]] --[[ Name: Startup ]]
                local v725 = game.ReplicatedStorage.Emotes.Dig.Handle:Clone();
                v725:SetAttribute("EmoteProperty", true);
                table.insert(v722, v725);
                l_CollectionService_1:AddTag(v725, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_m6d_7 = v725.m6d;
                l_m6d_7:SetAttribute("EmoteProperty", true);
                table.insert(v722, l_m6d_7);
                l_CollectionService_1:AddTag(l_m6d_7, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_m6d_7.Name = "Handle";
                l_m6d_7.Part0 = v96["Right Arm"];
                l_m6d_7.Part1 = v725;
                l_m6d_7.Parent = v96["Right Arm"];
                v725.Parent = v96;
                local v727 = game.ReplicatedStorage.Emotes.Dig.Grave:Clone();
                v727:SetAttribute("EmoteProperty", true);
                table.insert(v722, v727);
                local l_Weld_2 = Instance.new("Weld");
                l_Weld_2:SetAttribute("EmoteProperty", true);
                table.insert(v722, l_Weld_2);
                l_Weld_2.Part0 = v96.PrimaryPart;
                l_Weld_2.Part1 = v727.Headstone;
                l_Weld_2.Parent = v727;
                l_Weld_2.C0 = CFrame.new(1.59004211, -1.53838396, -5.02381897, -0.999934554, -0.0114461109, 0, -0.0114019588, 0.996077538, -0.0877478421, 0.00100437133, -0.0877420902, -0.996142864);
                v727.Parent = v96;
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
            Startup = function(v729, _, v731) --[[ Line: 5074 ]] --[[ Name: Startup ]]
                local v732 = game.ReplicatedStorage.Emotes.slingshot:Clone();
                v732:SetAttribute("EmoteProperty", true);
                v732:SetAttribute("EmoteProperty", true);
                table.insert(v729, v732);
                l_CollectionService_1:AddTag(v732, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_m6d_8 = v732.m6d;
                l_m6d_8:SetAttribute("EmoteProperty", true);
                l_m6d_8:SetAttribute("EmoteProperty", true);
                table.insert(v729, l_m6d_8);
                l_CollectionService_1:AddTag(l_m6d_8, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_m6d_8.Name = "Handle";
                l_m6d_8.Part0 = v96["Right Arm"];
                l_m6d_8.Part1 = v732.Handle;
                l_m6d_8.Parent = v96["Right Arm"];
                v732.Parent = v96["Right Arm"];
                v731.rock = v732.rock;
                v731.rock.Trail.Enabled = false;
            end, 
            Keyframes = {
                go = function(v734, _, _) --[[ Line: 5087 ]]
                    local v737 = v734.rock:Clone();
                    l_CollectionService_1:AddTag(v737, "emotestuff" .. v96.Name);
                    game:GetService("Debris"):AddItem(v737, 5);
                    v737.CanCollide = false;
                    v737.CanTouch = true;
                    v737.CanQuery = false;
                    v737.Massless = false;
                    v737.CollisionGroup = "nocol";
                    v737.CFrame = v734.rock.CFrame;
                    v737.Trail.Enabled = true;
                    v734.rock:Destroy();
                    v737.Parent = workspace.Thrown;
                    shared.sfx({
                        SoundId = "rbxassetid://9120435415", 
                        Parent = v737, 
                        Volume = 2
                    }):Play();
                    local v738 = Instance.new("Attachment", v737);
                    v738.Position = Vector3.new(0, 0, 0, 0);
                    local v739 = Instance.new("LinearVelocity", v738);
                    v739.MaxForce = 40000;
                    v739.VectorVelocity = v96.PrimaryPart.CFrame.lookVector * 200 + Vector3.new(0, 20, 0, 0);
                    v739.Attachment0 = v738;
                    game:GetService("Debris"):AddItem(v739, 0.15);
                    v737:SetNetworkOwner(l_PlayerFromCharacter_0);
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
            Startup = function(_, _, _) --[[ Line: 5138 ]] --[[ Name: Startup ]]
                local v743 = game.ReplicatedStorage.Emotes.paddle:Clone();
                v743:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(v743, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_m6d_9 = v743.m6d;
                l_m6d_9:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(l_m6d_9, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_m6d_9.Name = "Wood";
                l_m6d_9.Part0 = v96["Right Arm"];
                l_m6d_9.Part1 = v743.Wood;
                l_m6d_9.Parent = v96["Right Arm"];
                v743.Parent = v96["Right Arm"];
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
            Startup = function(v745, _, _) --[[ Line: 5235 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v745, v96);
                local _ = v94("Right", v745, v96);
            end, 
            Keyframes = {
                slow = function(_, _, v752) --[[ Line: 5241 ]]
                    v752:AdjustSpeed(0.135);
                end, 
                back = function(_, _, v755) --[[ Line: 5245 ]]
                    v755:AdjustSpeed(1);
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
            Startup = function(v756, _, _) --[[ Line: 5266 ]] --[[ Name: Startup ]]
                v94("Left", v756, v96);
                v94("Right", v756, v96);
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
            Startup = function(v759, _, _) --[[ Line: 5287 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v759, v96);
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
            Startup = function(v763, _, v765) --[[ Line: 5306 ]] --[[ Name: Startup ]]
                local v766 = game.ReplicatedStorage.Emotes.dialogue:Clone();
                table.insert(v763, v766);
                v766:SetAttribute("EmoteProperty", true);
                v765.rock = v766;
                v766.Name = "Handle";
                table.insert(v763, v766);
                local l_m6d_10 = v766.m6d;
                table.insert(v763, l_m6d_10);
                l_m6d_10:SetAttribute("EmoteProperty", true);
                l_m6d_10.Name = "Handle";
                l_m6d_10.Part0 = v96.HumanoidRootPart;
                l_m6d_10.Part1 = v766;
                l_m6d_10.Parent = v96.HumanoidRootPart;
                for _, v769 in pairs(v766:GetDescendants()) do
                    if v769:IsA("BasePart") then
                        v769.Transparency = 1;
                    end;
                end;
                v766.Parent = v96;
            end, 
            Keyframes = {
                visible = function(v770, _, _) --[[ Line: 5324 ]]
                    if v770.rock then
                        for _, v774 in pairs(v770.rock:GetDescendants()) do
                            if v774:IsA("BasePart") then
                                v774.Transparency = 0;
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
            Startup = function(v775, _, _) --[[ Line: 5349 ]] --[[ Name: Startup ]]
                local _ = v94("Right", v775, v96);
                local _ = v94("Left", v775, v96);
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
            Startup = function(v780, _, _) --[[ Line: 5369 ]] --[[ Name: Startup ]]
                local _ = v94("Right", v780, v96);
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
            Startup = function(v784, _, _) --[[ Line: 5388 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v784, v96);
                local _ = v94("Right", v784, v96);
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
            Startup = function(v789, _, _) --[[ Line: 5407 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v789, v96);
                local _ = v94("Right", v789, v96);
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
            Startup = function(v794, _, v796) --[[ Line: 5428 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v794, v96);
                local l_FirstChild_1 = v94("Right", v794, v96):FindFirstChild("RThumb2", true);
                if l_FirstChild_1 then
                    local v799 = game.ReplicatedStorage.Emotes.QuickStar:Clone();
                    v799.Parent = l_FirstChild_1;
                    v796.p = v799;
                end;
            end, 
            Keyframes = {
                star = function(v800, _, _) --[[ Line: 5441 ]]
                    if v800.p then
                        v800.p:Emit(1);
                        v70({
                            SoundId = "rbxassetid://16039062716", 
                            Parent = v800.p.Parent, 
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
            Startup = function(_, _, _) --[[ Line: 5469 ]] --[[ Name: Startup ]]
                local v806 = game.ReplicatedStorage.Emotes.Coffin:Clone();
                l_CollectionService_1:AddTag(v806, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_Coffin_0 = v806.Coffin;
                l_CollectionService_1:AddTag(l_Coffin_0, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_Coffin_0.Part0 = v96.PrimaryPart;
                l_Coffin_0.Part1 = v806;
                l_Coffin_0.Parent = v96.PrimaryPart;
                v806.Parent = v96;
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
            Startup = function(v808, _, _) --[[ Line: 5508 ]] --[[ Name: Startup ]]
                local v811 = game.ReplicatedStorage.Emotes.hat:Clone();
                table.insert(v808, v811);
                v811:SetAttribute("EmoteProperty", true);
                v811.Name = "Handle";
                l_CollectionService_1:AddTag(v811, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_Handle_6 = v811.Handle;
                table.insert(v808, l_Handle_6);
                l_Handle_6:SetAttribute("EmoteProperty", true);
                l_Handle_6.Part0 = v96["Left Arm"];
                l_Handle_6.Part1 = v811;
                l_Handle_6.Parent = v96["Left Arm"];
                v811.Parent = v96;
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
            Startup = function(_, _, _) --[[ Line: 5535 ]] --[[ Name: Startup ]]
                local v816 = game.ReplicatedStorage.Emotes.RockMesh:Clone();
                l_CollectionService_1:AddTag(v816, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                v816.Rock.Part0 = v96.PrimaryPart;
                v816.Rock.Part1 = v816;
                v816.Parent = v96;
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
            Startup = function(v817) --[[ Line: 5613 ]] --[[ Name: Startup ]]
                local v818 = shared.cfolder({
                    Name = "Freeze"
                }, 2.067);
                table.insert(v817, v818);
                v818:SetAttribute("DontInterrupt", true);
                v818:SetAttribute("NoStop", true);
                v818:SetAttribute("EmoteProperty", true);
                task.delay(0, function() --[[ Line: 5621 ]]
                    v818.Parent = v96;
                end);
                local v819 = game.ReplicatedStorage.Emotes.chosenparticles:Clone();
                v819:SetAttribute("EmoteProperty", true);
                local v820 = {};
                l_CollectionService_1:AddTag(v819, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                for _, v822 in pairs(v819:GetChildren()) do
                    if v822:IsA("Beam") and v822.Enabled then
                        table.insert(v820, {
                            v822, 
                            v822.Width1
                        });
                        v822.Enabled = false;
                        v822.Width1 = 0;
                    end;
                end;
                local l_Weld_3 = Instance.new("Weld");
                l_Weld_3.Part0 = v96.PrimaryPart;
                l_Weld_3.Part1 = v819;
                l_Weld_3.C0 = CFrame.new(-1.32054138, 4.14816093, 1.88685989, 1, 0, 0, 0, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872);
                l_Weld_3.Parent = v819;
                v819.Parent = v96;
                task.delay(2, function() --[[ Line: 5644 ]]
                    for _, v825 in pairs(v820) do
                        local v826 = v825[1];
                        v826.Enabled = true;
                        l_TweenService_0:Create(v826, TweenInfo.new(1 + math.random(), Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                            Width1 = v825[2]
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
            Startup = function(_) --[[ Line: 5677 ]] --[[ Name: Startup ]]

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
            Startup = function(v828) --[[ Line: 5711 ]] --[[ Name: Startup ]]
                local v829 = shared.cfolder({
                    Name = "Freeze"
                }, 3.922);
                table.insert(v828, v829);
                v829:SetAttribute("DontInterrupt", true);
                v829:SetAttribute("NoStop", true);
                v829:SetAttribute("EmoteProperty", true);
                task.delay(0, function() --[[ Line: 5719 ]]
                    v829.Parent = v96;
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
            Startup = function(v830) --[[ Line: 5747 ]] --[[ Name: Startup ]]
                local v831 = shared.cfolder({
                    Name = "Freeze"
                }, 1.856);
                table.insert(v830, v831);
                v831:SetAttribute("DontInterrupt", true);
                v831:SetAttribute("NoStop", true);
                v831:SetAttribute("EmoteProperty", true);
                task.delay(0, function() --[[ Line: 5755 ]]
                    v831.Parent = v96;
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
                clap = function(_, _, _) --[[ Line: 5788 ]]
                    v70({
                        SoundId = "rbxassetid://16002741222", 
                        Parent = v96.Torso, 
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
                start = function(_, v836, _) --[[ Line: 5815 ]]
                    local l_Attachment_0 = Instance.new("Attachment");
                    l_Attachment_0:SetAttribute("EmoteProperty", true);
                    table.insert(v836, l_Attachment_0);
                    l_Attachment_0.Parent = v96.PrimaryPart;
                    l_Attachment_0.Position = Vector3.new(0.5540000200271606, 3.069000005722046, -0.7440000176429749, 0);
                    local v839 = game.ReplicatedStorage.Emotes.Iq:Clone();
                    v839.Parent = l_Attachment_0;
                    v839:Emit(1);
                    v70({
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
                question = function(_, v841, _) --[[ Line: 5849 ]]
                    local l_Attachment_1 = Instance.new("Attachment");
                    l_Attachment_1:SetAttribute("EmoteProperty", true);
                    table.insert(v841, l_Attachment_1);
                    l_Attachment_1.Parent = v96.PrimaryPart;
                    l_Attachment_1.CFrame = CFrame.new(0.635131836, 1.59469604, -1.50006104, 0.873728812, 0.4864133, -0, -0.4864133, 0.873728812, 0, 0, 0, 0.99999994);
                    local v844 = game.ReplicatedStorage.Emotes.Question:Clone();
                    v844.Parent = l_Attachment_1;
                    v844:Emit(1);
                    v70({
                        SoundId = "rbxassetid://16524026100", 
                        Volume = 0.75, 
                        Parent = l_Attachment_1, 
                        Looped = false
                    }):Play();
                end
            }, 
            Startup = function(v845, _, v847) --[[ Line: 5866 ]] --[[ Name: Startup ]]
                local v848 = game.ReplicatedStorage.Emotes.teacup:Clone();
                v848:SetAttribute("EmoteProperty", true);
                table.insert(v845, v848);
                v847.Handle = v848;
                local v849 = v848.LeftHandle:Clone();
                v849:SetAttribute("EmoteProperty", true);
                table.insert(v845, v849);
                v849["Meshes/teacup_Circle"].Part0 = v849;
                v849["Meshes/teacup_Circle"].Part1 = v848["Meshes/teacup_Circle"];
                v849.Parent = v96;
                local l_m6d_11 = v848.m6d;
                l_m6d_11:SetAttribute("EmoteProperty", true);
                table.insert(v845, l_m6d_11);
                v847.md = l_m6d_11;
                l_m6d_11.Part0 = v96["Left Arm"];
                l_m6d_11.Name = "LeftHandle";
                l_m6d_11.Part1 = v849;
                l_m6d_11.Parent = v96["Left Arm"];
                v848.Parent = v96;
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
                shoot = function(_, v852, _) --[[ Line: 5900 ]]
                    local l_Attachment_2 = Instance.new("Attachment");
                    l_Attachment_2:SetAttribute("EmoteProperty", true);
                    table.insert(v852, l_Attachment_2);
                    l_Attachment_2.Parent = v96.PrimaryPart;
                    l_Attachment_2.Position = Vector3.new(1.75, 0.25, -3.75, 0);
                    local v855 = game.ReplicatedStorage.Emotes.Shoot:Clone();
                    v855.Parent = l_Attachment_2;
                    v855:Emit(1);
                    v70({
                        SoundId = "rbxassetid://15684595588", 
                        Volume = 1.85, 
                        Parent = v96["Right Arm"], 
                        Looped = false
                    }):Play();
                end, 
                heart = function(_, v857, _) --[[ Line: 5916 ]]
                    local l_Attachment_3 = Instance.new("Attachment");
                    l_Attachment_3:SetAttribute("EmoteProperty", true);
                    table.insert(v857, l_Attachment_3);
                    l_Attachment_3.Parent = v96.PrimaryPart;
                    l_Attachment_3.Position = Vector3.new(1.75, 0, -1.75, 0);
                    local v860 = game.ReplicatedStorage.Emotes.Heart:Clone();
                    v860.Parent = l_Attachment_3;
                    v860:Emit(1);
                    v70({
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
            Startup = function(v861) --[[ Line: 5954 ]] --[[ Name: Startup ]]
                local v862 = shared.cfolder({
                    Name = "Freeze"
                }, 3.5);
                table.insert(v861, v862);
                v862:SetAttribute("DontInterrupt", true);
                v862:SetAttribute("NoStop", true);
                v862:SetAttribute("EmoteProperty", true);
                task.delay(0, function() --[[ Line: 5962 ]]
                    v862.Parent = v96;
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
                clap = function(v863) --[[ Line: 5979 ]]
                    if not v863.turn then
                        v863.turn = 0;
                    end;
                    v863.turn = v863.turn + 1;
                    v70({
                        SoundId = ({
                            "rbxassetid://15962454798", 
                            "rbxassetid://15962454626", 
                            "rbxassetid://15962454516"
                        })[math.random(1, 3)], 
                        Parent = v863.turn % 2 == 0 and v96["Left Leg"] or v96["Right Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.5, 
                        RollOffMaxDistance = v1
                    }):Play();
                   shared.repfire({
                        Effect = "Ninja Sprint Step", 
                        Emote = true, 
                        Type = v863.turn % 2 == 0 and "Left" or "Right", 
                        Char = v96, 
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
                clap = function(v864) --[[ Line: 6015 ]]
                    if not v864.turn then
                        v864.turn = 0;
                    end;
                    v864.turn = v864.turn + 1;
                    v70({
                        SoundId = ({
                            "rbxassetid://15962163599", 
                            "rbxassetid://15962163752", 
                            "rbxassetid://15962163891", 
                            "rbxassetid://15962164060"
                        })[math.random(1, 4)], 
                        Parent = v864.turn % 2 == 0 and v96["Left Leg"] or v96["Right Leg"], 
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
            Startup = function(v865) --[[ Line: 6269 ]] --[[ Name: Startup ]]
                local v866 = game.ReplicatedStorage.Emotes.Microphone:Clone();
                local l_Microphone_0 = v866.Microphone;
                l_Microphone_0:SetAttribute("EmoteProperty", true);
                v866:SetAttribute("EmoteProperty", true);
                table.insert(v865, v866);
                table.insert(v865, l_Microphone_0);
                l_Microphone_0.Part0 = v96["Left Arm"];
                l_Microphone_0.Part1 = v866;
                l_Microphone_0.Parent = v96["Left Arm"];
                v866.Parent = v96;
            end, 
            Keyframes = {
                clap = function(v868) --[[ Line: 6284 ]]
                    if not v868.turn then
                        v868.turn = 0;
                    end;
                    v868.turn = v868.turn + 1;
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v868.turn % 2 == 0 and v96["Left Leg"] or v96["Right Leg"], 
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
                clap = function() --[[ Line: 6341 ]]
                    v70({
                        SoundId = "rbxassetid://17097894260", 
                        Volume = 1.2, 
                        Parent = v96.Torso
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
            Startup = function() --[[ Line: 6545 ]] --[[ Name: Startup ]]
                v70({
                    SoundId = "rbxassetid://15290124285", 
                    Volume = 0.7, 
                    Parent = v96["Right Arm"], 
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
                clap = function() --[[ Line: 6927 ]]

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
                clap = function() --[[ Line: 7010 ]]
                    v70({
                        SoundId = "rbxassetid://2704706975", 
                        Volume = 0.5, 
                        Parent = v96.Head
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
                clap = function() --[[ Line: 7245 ]]
                    v70({
                        SoundId = "rbxassetid://2704706975", 
                        Volume = 1, 
                        Parent = v96.Head
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
            Startup = function(v869, _, _) --[[ Line: 7290 ]] --[[ Name: Startup ]]
                local v872 = game.ReplicatedStorage.Emotes.Throne:Clone();
                v872:SetAttribute("EmoteProperty", true);
                table.insert(v869, v872);
                local l_m6d_12 = v872.m6d;
                l_m6d_12:SetAttribute("EmoteProperty", true);
                table.insert(v869, l_m6d_12);
                l_m6d_12.Name = "Throne";
                l_m6d_12.Part0 = v96.HumanoidRootPart;
                l_m6d_12.Part1 = v872;
                l_m6d_12.Parent = v96.HumanoidRootPart;
                v872.Parent = v96;
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
            Startup = function(v874, _, _) --[[ Line: 7320 ]] --[[ Name: Startup ]]
                local v877 = game.ReplicatedStorage.Emotes["bad to the bone"]:Clone();
                v877:SetAttribute("EmoteProperty", true);
                table.insert(v874, v877);
                local l_m6d_13 = v877.m6d;
                l_m6d_13:SetAttribute("EmoteProperty", true);
                table.insert(v874, l_m6d_13);
                l_m6d_13.Name = "Top";
                l_m6d_13.Part0 = v96.HumanoidRootPart;
                l_m6d_13.Part1 = v877.Top;
                l_m6d_13.Parent = v96.HumanoidRootPart;
                v877.Parent = v96;
            end, 
            Keyframes = {
                freeze = function(_, _, v881) --[[ Line: 7331 ]]
                    v881:AdjustSpeed(0);
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
            Startup = function(v882, _, _) --[[ Line: 7349 ]] --[[ Name: Startup ]]
                local v885 = game.ReplicatedStorage.Emotes.Sword:Clone();
                v885:SetAttribute("EmoteProperty", true);
                table.insert(v882, v885);
                local l_m6d_14 = v885.m6d;
                l_m6d_14:SetAttribute("EmoteProperty", true);
                table.insert(v882, l_m6d_14);
                l_m6d_14.Name = "Handle";
                l_m6d_14.Part0 = v96["Right Arm"];
                l_m6d_14.Part1 = v885.Handle;
                l_m6d_14.Parent = v96["Right Arm"];
                v885.Parent = v96;
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
            Startup = function(v887, _, _) --[[ Line: 7372 ]] --[[ Name: Startup ]]
                local v890 = game.ReplicatedStorage.Emotes.Sword:Clone();
                v890:SetAttribute("EmoteProperty", true);
                table.insert(v887, v890);
                local l_m6d_15 = v890.m6d;
                l_m6d_15:SetAttribute("EmoteProperty", true);
                table.insert(v887, l_m6d_15);
                l_m6d_15.Name = "Handle";
                l_m6d_15.Part0 = v96["Right Arm"];
                l_m6d_15.Part1 = v890.Handle;
                l_m6d_15.Parent = v96["Right Arm"];
                v890.Parent = v96;
            end, 
            Keyframes = {
                freeze = function(_, _, v894) --[[ Line: 7383 ]]
                    v894:AdjustSpeed(0);
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
                freeze = function(_, _, v897) --[[ Line: 7403 ]]
                    v897:AdjustSpeed(0);
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
                freeze = function(_, _, v900) --[[ Line: 7424 ]]
                    v900:AdjustSpeed(0);
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
                start = function(v901, v902, _) --[[ Line: 7443 ]]
                    local v904 = game.ReplicatedStorage.Emotes.powerupaura.Attachment:Clone();
                    v904:SetAttribute("EmoteProperty", true);
                    table.insert(v902, v904);
                    v901.att = v904;
                    if l_PlayerFromCharacter_0 then
                        math.randomseed(#l_PlayerFromCharacter_0.Name);
                    end;
                    local v905 = Color3.new(math.random(), math.random(), math.random());
                    if v96.Name == "Weakest Dummy" then
                        v905 = ({
                            BrickColor.new("Bright red").Color, 
                            BrickColor.new("Bright yellow").Color, 
                            BrickColor.new("Electric blue").Color, 
                            BrickColor.new("White").Color
                        })[math.random(1, 4)];
                    end;
                    math.randomseed(tick());
                    for _, v907 in pairs(v904:GetChildren()) do
                        v907.Color = ColorSequence.new(v905);
                    end;
                    v904.Parent = v96.PrimaryPart;
                    v904.big:Emit(5);
                    v904.ParticleEmitter.Enabled = true;
                end, 
                ["end"] = function(v908, _, _) --[[ Line: 7466 ]]
                    v908.att.ParticleEmitter.Enabled = false;
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
                freeze = function(_, _, v913) --[[ Line: 7485 ]]
                    v913:AdjustSpeed(0);
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
                freeze = function(_, _, v916) --[[ Line: 7534 ]]
                    v916:AdjustSpeed(0);
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
                freeze = function(_, _, v919) --[[ Line: 7553 ]]
                    v919:AdjustSpeed(0);
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
            Startup = function(v920, _, v922) --[[ Line: 7582 ]] --[[ Name: Startup ]]
                local v923 = game.ReplicatedStorage.Emotes.Pie:Clone();
                v923:SetAttribute("EmoteProperty", true);
                table.insert(v920, v923);
                v922.Handle = v923;
                local l_Pie_0 = v923.Pie;
                l_Pie_0:SetAttribute("EmoteProperty", true);
                table.insert(v920, l_Pie_0);
                v922.md = l_Pie_0;
                l_Pie_0.Part0 = v96.PrimaryPart;
                l_Pie_0.Part1 = v923;
                l_Pie_0.Parent = l_Pie_0.Part0;
                v923.Parent = v96;
                v70({
                    SoundId = "rbxassetid://102809211589234", 
                    Parent = v923, 
                    Volume = 2
                }):Play();
            end, 
            Keyframes = {
                show = function(v925, _, _) --[[ Line: 7597 ]]
                    local l_Handle_7 = v925.Handle;
                    for _, v930 in pairs({
                        l_Handle_7, 
                        l_Handle_7["Meshes/pie_Circle"]
                    }) do
                        v930.Transparency = 0;
                    end;
                end, 
                ["end"] = function(v931, _, _) --[[ Line: 7604 ]]
                    v931.Handle:Destroy();
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
            Startup = function(_, _, _) --[[ Line: 7623 ]] --[[ Name: Startup ]]

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
            Startup = function(v937, _, v939) --[[ Line: 7645 ]] --[[ Name: Startup ]]
                local v940 = game.ReplicatedStorage.Emotes["Hard Boiled Roadster"]:Clone();
                v940:SetAttribute("EmoteProperty", true);
                table.insert(v937, v940);
                v939.Handle = v940;
                for _, v942 in pairs({
                    "1Wheel", 
                    "2Wheel", 
                    "3Wheel", 
                    "4Wheel", 
                    "Base"
                }) do
                    local l_FirstChild_2 = v940:FindFirstChild(v942):FindFirstChild(v942);
                    if l_FirstChild_2 then
                        l_FirstChild_2:SetAttribute("EmoteProperty", true);
                        table.insert(v937, l_FirstChild_2);
                        v939.md = l_FirstChild_2;
                        l_FirstChild_2.Parent = v96.PrimaryPart;
                        l_FirstChild_2.Part0 = v96.PrimaryPart;
                        l_FirstChild_2.Part1 = v940:FindFirstChild(v942);
                    end;
                end;
                v940.Parent = v96;
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
            Startup = function(v944, _, v946) --[[ Line: 7679 ]] --[[ Name: Startup ]]
                local v947 = game.ReplicatedStorage.Emotes.Telescope:Clone();
                v947:SetAttribute("EmoteProperty", true);
                table.insert(v944, v947);
                v946.Handle = v947;
                local l_Telescope_0 = v947.Telescope;
                l_Telescope_0:SetAttribute("EmoteProperty", true);
                table.insert(v944, l_Telescope_0);
                v946.md = l_Telescope_0;
                l_Telescope_0.Part0 = v96["Left Arm"];
                l_Telescope_0.Part1 = v947;
                l_Telescope_0.Parent = l_Telescope_0.Part0;
                v947.Parent = v96;
                local v949 = game.ReplicatedStorage.Emotes.RockModel:Clone();
                v949:SetAttribute("EmoteProperty", true);
                table.insert(v944, v949);
                v946.Handle = v949;
                local l_Motor6D_13 = Instance.new("Motor6D");
                l_Motor6D_13:SetAttribute("EmoteProperty", true);
                table.insert(v944, l_Motor6D_13);
                v946.md = l_Motor6D_13;
                l_Motor6D_13.Part0 = v96.PrimaryPart;
                l_Motor6D_13.Part1 = v949.Rock;
                l_Motor6D_13.C0 = CFrame.new(0.518783569, -2.77656937, -1.6493988, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                l_Motor6D_13.Parent = l_Motor6D_13.Part0;
                v949.Parent = v96;
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
            Startup = function(v951, _, v953) --[[ Line: 7710 ]] --[[ Name: Startup ]]
                local l_Part_1 = Instance.new("Part");
                l_Part_1:SetAttribute("EmoteProperty", true);
                table.insert(v951, l_Part_1);
                v953.Handle = l_Part_1;
                l_Part_1.Color = Color3.fromRGB(165, 91, 91);
                l_Part_1.Material = Enum.Material.Brick;
                l_Part_1.CanCollide = false;
                l_Part_1.CanTouch = false;
                l_Part_1.CanQuery = false;
                l_Part_1.Massless = true;
                l_Part_1.Size = Vector3.new(14, 10, 2, 0);
                local l_Weld_4 = Instance.new("Weld");
                l_Weld_4.Part0 = v96.PrimaryPart;
                l_Weld_4.Part1 = l_Part_1;
                l_Weld_4.C0 = CFrame.new(-1.52587891E-5, 1.99996948, -5.00027466, 1.00000024, -5.55111512E-17, 1.16825104E-5, -5.55111645E-17, 1, -6.485096E-22, -1.16825104E-5, 0, 1.00000024);
                l_Weld_4.Parent = l_Part_1;
                l_Part_1.Parent = v96;
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
            Startup = function(v956, _, v958) --[[ Line: 7754 ]] --[[ Name: Startup ]]
                local v959 = game.ReplicatedStorage.Emotes.poet.Book:Clone();
                v959:SetAttribute("EmoteProperty", true);
                table.insert(v956, v959);
                v958.Handle = v959;
                local l_Handle_8 = v959.Handle.Handle;
                l_Handle_8:SetAttribute("EmoteProperty", true);
                table.insert(v956, l_Handle_8);
                v958.md = l_Handle_8;
                l_Handle_8.Part0 = v96["Left Arm"];
                l_Handle_8.Part1 = v959.Handle;
                l_Handle_8.Parent = l_Handle_8.Part0;
                v959.Parent = v96;
                local v961 = game.ReplicatedStorage.Emotes.poet.feather:Clone();
                v961:SetAttribute("EmoteProperty", true);
                table.insert(v956, v961);
                v958.Handle = v961;
                local l_Handle_9 = v961.Handle.Handle;
                l_Handle_9:SetAttribute("EmoteProperty", true);
                table.insert(v956, l_Handle_9);
                v958.md = l_Handle_9;
                l_Handle_9.Part0 = v96["Right Arm"];
                l_Handle_9.Part1 = v961.Handle;
                l_Handle_9.Parent = l_Handle_9.Part0;
                v961.Parent = v96;
                local v963 = game.ReplicatedStorage.Emotes.poet["studious chair"]:Clone();
                v963:SetAttribute("EmoteProperty", true);
                table.insert(v956, v963);
                v958.Handle = v963;
                local l_Motor6D_14 = Instance.new("Motor6D");
                l_Motor6D_14:SetAttribute("EmoteProperty", true);
                table.insert(v956, l_Motor6D_14);
                v958.md = l_Motor6D_14;
                l_Motor6D_14.Part0 = v96.PrimaryPart;
                l_Motor6D_14.Part1 = v963.mainpiece;
                l_Motor6D_14.C0 = CFrame.new(-1.39691925, 1.01877403, 1.46870232, 0.707105875, 0, -0.707105875, 0, 1, 0, 0.707105875, 0, 0.707105875);
                l_Motor6D_14.Parent = l_Motor6D_14.Part0;
                v963.Parent = v96;
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
            Startup = function(v965, _, v967) --[[ Line: 7792 ]] --[[ Name: Startup ]]
                local v968 = game.ReplicatedStorage.Emotes.vr:Clone();
                v968:SetAttribute("EmoteProperty", true);
                table.insert(v965, v968);
                v967.Handle = v968;
                local l_Handle_10 = v968.Handle;
                l_Handle_10:SetAttribute("EmoteProperty", true);
                table.insert(v965, l_Handle_10);
                v967.md = l_Handle_10;
                l_Handle_10.Part0 = v96.Head;
                l_Handle_10.Part1 = v968;
                l_Handle_10.Parent = v96.Head;
                v968.Name = "Handle";
                v968.Parent = v96.Head;
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
            Startup = function(v970, _, v972) --[[ Line: 7816 ]] --[[ Name: Startup ]]
                local v973 = game.ReplicatedStorage.Emotes.Lollipop:Clone();
                v973:SetAttribute("EmoteProperty", true);
                table.insert(v970, v973);
                v972.Handle = v973;
                local l_Lollipop_0 = v973.Lollipop;
                l_Lollipop_0:SetAttribute("EmoteProperty", true);
                table.insert(v970, l_Lollipop_0);
                v972.md = l_Lollipop_0;
                l_Lollipop_0.Part0 = v96["Left Arm"];
                l_Lollipop_0.Part1 = v973;
                l_Lollipop_0.Parent = v96["Left Arm"];
                v973.Parent = v96;
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
            Startup = function(v975, _, v977) --[[ Line: 7846 ]] --[[ Name: Startup ]]
                local v978 = game.ReplicatedStorage.Emotes.Laptop:Clone();
                v978:SetAttribute("EmoteProperty", true);
                table.insert(v975, v978);
                v977.Handle = v978;
                local l_m6d_16 = v978.m6d;
                l_m6d_16:SetAttribute("EmoteProperty", true);
                table.insert(v975, l_m6d_16);
                v977.md = l_m6d_16;
                l_m6d_16.Part0 = v96.PrimaryPart;
                l_m6d_16.Name = "MainLaptop";
                l_m6d_16.Part1 = v978.MainLaptop;
                l_m6d_16.Parent = v96.PrimaryPart;
                v978.Parent = v96;
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
            Startup = function(v980, _, v982) --[[ Line: 7887 ]] --[[ Name: Startup ]]
                local v983 = game.ReplicatedStorage.Emotes.Watch:Clone();
                v983:SetAttribute("EmoteProperty", true);
                table.insert(v980, v983);
                v982.Handle = v983;
                local l_Watch_0 = v983.Watch;
                l_Watch_0:SetAttribute("EmoteProperty", true);
                table.insert(v980, l_Watch_0);
                v982.md = l_Watch_0;
                l_Watch_0.Part0 = v96["Left Arm"];
                l_Watch_0.Part1 = v983;
                l_Watch_0.Parent = v96["Left Arm"];
                v983.Parent = v96;
            end, 
            Keyframes = {
                disguise = function(_, _, _) --[[ Line: 7897 ]]
                    local v988 = game.ReplicatedStorage.Emotes.CloneGlow:Clone();
                    v988.Parent = v96.PrimaryPart;
                    v988:Emit(10);
                    shared.cfolder({
                        Name = "randomdisguise#", 
                        Parent = v96
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
            Startup = function(v989, _, v991) --[[ Line: 7919 ]] --[[ Name: Startup ]]
                local v992 = game.ReplicatedStorage.Emotes["hypnotize coin"]:Clone();
                v992:SetAttribute("EmoteProperty", true);
                table.insert(v989, v992);
                v991.Handle = v992;
                local l_rotate_0 = v992.rotate;
                l_rotate_0:SetAttribute("EmoteProperty", true);
                table.insert(v989, l_rotate_0);
                local l_rotate_1 = l_rotate_0.rotate;
                l_rotate_1:SetAttribute("EmoteProperty", true);
                table.insert(v989, l_rotate_1);
                v991.md = l_rotate_1;
                l_rotate_1.Part0 = v96["Right Arm"];
                l_rotate_1.Part1 = l_rotate_0;
                l_rotate_1.Parent = v96["Right Arm"];
                l_rotate_0.Parent = v96["Right Arm"];
                l_rotate_0["hypnotize coin"].Part0 = l_rotate_0;
                l_rotate_0["hypnotize coin"].Part1 = v992;
                v992.Beam.Attachment0 = l_rotate_0.a;
                v992.Beam.Attachment1 = v992.b;
                v992.Parent = v96;
                v70({
                    SoundId = "rbxassetid://128826289918429", 
                    Parent = v992, 
                    Volume = 1
                }):Play();
                v70({
                    SoundId = "rbxassetid://96767567204088", 
                    Parent = v992, 
                    Looped = true, 
                    Volume = 0.5
                }):Play();
                v70({
                    SoundId = "rbxassetid://84603081336467", 
                    Parent = v992, 
                    Looped = true, 
                    Volume = 1
                }):Play();
            end, 
            Animation = 83122498060756, 
            Looped = true, 
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
            Startup = function(v995, _, v997) --[[ Line: 7968 ]] --[[ Name: Startup ]]
                local v998 = game.ReplicatedStorage.Emotes.TongueThree:Clone();
                v998:SetAttribute("EmoteProperty", true);
                table.insert(v995, v998);
                v997.Handle = v998;
                v998.Name = "Tongue";
                local l_Tongue_0 = v998.Tongue;
                l_Tongue_0:SetAttribute("EmoteProperty", true);
                table.insert(v995, l_Tongue_0);
                v997.md = l_Tongue_0;
                l_Tongue_0.Part0 = v96.Head;
                l_Tongue_0.Part1 = v998;
                l_Tongue_0.Parent = v96.Head;
                v998.Parent = v96;
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
            Startup = function(v1000, _, v1002) --[[ Line: 7997 ]] --[[ Name: Startup ]]
                local v1003 = game.ReplicatedStorage.Emotes.Tongue:Clone();
                v1003:SetAttribute("EmoteProperty", true);
                table.insert(v1000, v1003);
                v1002.Handle = v1003;
                local l_Tongue_1 = v1003.Tongue;
                l_Tongue_1:SetAttribute("EmoteProperty", true);
                table.insert(v1000, l_Tongue_1);
                v1002.md = l_Tongue_1;
                l_Tongue_1.Part0 = v96.Head;
                l_Tongue_1.Part1 = v1003;
                l_Tongue_1.Parent = v96.Head;
                v1003.Parent = v96;
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
            Startup = function(v1005, _, _) --[[ Line: 8028 ]] --[[ Name: Startup ]]
                local v1008 = shared.cfolder({
                    Name = "Freeze"
                }, 0.6);
                table.insert(v1005, v1008);
                v1008:SetAttribute("DontInterrupt", true);
                v1008:SetAttribute("NoStop", true);
                v1008:SetAttribute("EmoteProperty", true);
                task.delay(0, function() --[[ Line: 8036 ]]
                    v1008.Parent = v96;
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
            Startup = function(v1009, _, v1011) --[[ Line: 8072 ]] --[[ Name: Startup ]]
                local v1012 = game.ReplicatedStorage.Emotes.Snowball:Clone();
                v1012:SetAttribute("EmoteProperty", true);
                table.insert(v1009, v1012);
                v1011.Handle = v1012;
                local l_Snowball_0 = v1012.Snowball;
                l_Snowball_0:SetAttribute("EmoteProperty", true);
                table.insert(v1009, l_Snowball_0);
                v1011.md = l_Snowball_0;
                l_Snowball_0.Part0 = v96.PrimaryPart;
                l_Snowball_0.Part1 = v1012;
                l_Snowball_0.Parent = v96.PrimaryPart;
                v1012.Parent = v96;
                v70({
                    SoundId = "rbxassetid://127749554517948", 
                    Parent = v1012, 
                    Volume = 2
                }):Play();
                v70({
                    SoundId = "rbxassetid://84849690170635", 
                    Parent = v1012, 
                    Looped = true, 
                    Volume = 0.65
                }):Play();
                local v1014 = shared.cfolder({
                    Name = "Freeze"
                }, 0.567);
                table.insert(v1009, v1014);
                v1014:SetAttribute("DontInterrupt", true);
                v1014:SetAttribute("NoStop", true);
                v1014:SetAttribute("EmoteProperty", true);
                task.delay(0, function() --[[ Line: 8100 ]]
                    v1014.Parent = v96;
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
            Startup = function(v1015, _, v1017) --[[ Line: 8121 ]] --[[ Name: Startup ]]
                local v1018 = game.ReplicatedStorage.Emotes.bar:Clone();
                v1018:SetAttribute("EmoteProperty", true);
                table.insert(v1015, v1018);
                v1017.Handle = v1018;
                local l_bar_0 = v1018.bar;
                l_bar_0:SetAttribute("EmoteProperty", true);
                table.insert(v1015, l_bar_0);
                v1017.md = l_bar_0;
                l_bar_0.Part0 = v96.PrimaryPart;
                l_bar_0.Part1 = v1018;
                l_bar_0.Parent = v96.PrimaryPart;
                v1018.Parent = v96;
            end, 
            Keyframes = {
                clap = function(_, _, _) --[[ Line: 8131 ]]
                    shared.sfx({
                        SoundId = "rbxassetid://77085840183045", 
                        Parent = v96.Torso, 
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
            Startup = function(v1023, _, _) --[[ Line: 8156 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v1023, v96);
                local _ = v94("Right", v1023, v96);
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
            Startup = function(v1028, _, _) --[[ Line: 8175 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v1028, v96);
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
            Startup = function(v1032, _, _) --[[ Line: 8193 ]] --[[ Name: Startup ]]
                local _ = v94("Left", v1032, v96);
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
            Startup = function(v1036, _, v1038) --[[ Line: 8260 ]] --[[ Name: Startup ]]
                local v1039 = game.ReplicatedStorage.Emotes.mag:Clone();
                v1039:SetAttribute("EmoteProperty", true);
                table.insert(v1036, v1039);
                v1038.Handle = v1039;
                local l_Motor6D_15 = v1039["Meshes/magnifying glass_Magnifying glass"].Motor6D;
                l_Motor6D_15:SetAttribute("EmoteProperty", true);
                table.insert(v1036, l_Motor6D_15);
                v1038.md = l_Motor6D_15;
                l_Motor6D_15.Part0 = v96["Right Arm"];
                l_Motor6D_15.Part1 = v1039["Meshes/magnifying glass_Magnifying glass"];
                l_Motor6D_15.Parent = v96["Right Arm"];
                v1039.Parent = v96;
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
            Startup = function(v1041, _, v1043) --[[ Line: 8281 ]] --[[ Name: Startup ]]
                local v1044 = game.ReplicatedStorage.Emotes.burger:Clone();
                v1044:SetAttribute("EmoteProperty", true);
                table.insert(v1041, v1044);
                v1043.Handle = v1044;
                local l_burger_0 = v1044.burger;
                l_burger_0:SetAttribute("EmoteProperty", true);
                table.insert(v1041, l_burger_0);
                v1043.md = l_burger_0;
                l_burger_0.Part0 = v96["Right Arm"];
                l_burger_0.Part1 = v1044;
                l_burger_0.Parent = v96["Right Arm"];
                v1044.Parent = v96;
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
            Startup = function(v1046, _, v1048) --[[ Line: 8311 ]] --[[ Name: Startup ]]
                local v1049 = shared.cfolder({
                    Name = "Freeze"
                }, 1.25);
                table.insert(v1046, v1049);
                v1049:SetAttribute("DontInterrupt", true);
                v1049:SetAttribute("NoStop", true);
                v1049:SetAttribute("EmoteProperty", true);
                task.delay(0, function() --[[ Line: 8319 ]]
                    v1049.Parent = v96;
                end);
                local v1050 = game.ReplicatedStorage.Emotes["Left Arm2"]:Clone();
                v1050:SetAttribute("EmoteProperty", true);
                table.insert(v1046, v1050);
                v1048.Handle = v1050;
                local l_Motor6D_16 = v1050:FindFirstChildOfClass("Motor6D");
                l_Motor6D_16:SetAttribute("EmoteProperty", true);
                table.insert(v1046, l_Motor6D_16);
                v1048.md = l_Motor6D_16;
                l_Motor6D_16.Part0 = v96.Torso;
                l_Motor6D_16.Part1 = v1050;
                l_Motor6D_16.Parent = v96.Torso;
                v1050.Parent = v96;
                local v1052 = game.ReplicatedStorage.Emotes["Right Arm2"]:Clone();
                v1052:SetAttribute("EmoteProperty", true);
                table.insert(v1046, v1052);
                v1048.Handle = v1052;
                local l_Motor6D_17 = v1052:FindFirstChildOfClass("Motor6D");
                l_Motor6D_17:SetAttribute("EmoteProperty", true);
                table.insert(v1046, l_Motor6D_17);
                v1048.md = l_Motor6D_17;
                l_Motor6D_17.Part0 = v96.Torso;
                l_Motor6D_17.Part1 = v1052;
                l_Motor6D_17.Parent = v96.Torso;
                v1052.Parent = v96;
                for _, v1055 in pairs({
                    v1050, 
                    v1052
                }) do
                    local l_Model_0 = Instance.new("Model");
                    l_Model_0:SetAttribute("EmoteProperty", true);
                    table.insert(v1046, l_Model_0);
                    Instance.new("Humanoid").Parent = l_Model_0;
                    local l_v96_FirstChild_0 = v96:FindFirstChild((string.sub(v1055.Name, 0, #v1055.Name - 1)));
                    if l_v96_FirstChild_0 then
                        l_v96_FirstChild_0 = l_v96_FirstChild_0:Clone();
                        l_v96_FirstChild_0:ClearAllChildren();
                        l_v96_FirstChild_0.Parent = l_Model_0;
                        local l_Weld_5 = Instance.new("Weld");
                        l_Weld_5.Part0 = v1055;
                        l_Weld_5.Part1 = l_v96_FirstChild_0;
                        l_Weld_5.Parent = l_v96_FirstChild_0;
                    end;
                    for _, v1060 in pairs(v96:GetChildren()) do
                        if v1060:IsA("BodyColors") or v1060:IsA("Shirt") or v1060:IsA("CharacterMesh") then
                            v1060:Clone().Parent = l_Model_0;
                        end;
                    end;
                    v1055.Transparency = 1;
                    l_Model_0.Parent = v96;
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
            Startup = function(v1061, _, v1063) --[[ Line: 8383 ]] --[[ Name: Startup ]]
                local v1064 = game.ReplicatedStorage.Emotes.gun1:Clone();
                v1064:SetAttribute("EmoteProperty", true);
                table.insert(v1061, v1064);
                v1063.Handle = v1064;
                local l_Motor6D_18 = v1064.Motor6D;
                l_Motor6D_18:SetAttribute("EmoteProperty", true);
                table.insert(v1061, l_Motor6D_18);
                v1063.md = l_Motor6D_18;
                l_Motor6D_18.Part0 = v96["Right Arm"];
                l_Motor6D_18.Part1 = v1064;
                l_Motor6D_18.Parent = v96["Right Arm"];
                v1064.Parent = v96;
                local v1066 = game.ReplicatedStorage.Emotes.gun2:Clone();
                v1066:SetAttribute("EmoteProperty", true);
                table.insert(v1061, v1066);
                v1063.Handle = v1066;
                local l_Motor6D_19 = v1066.Motor6D;
                l_Motor6D_19:SetAttribute("EmoteProperty", true);
                table.insert(v1061, l_Motor6D_19);
                v1063.md = l_Motor6D_19;
                l_Motor6D_19.Part0 = v96.PrimaryPart;
                l_Motor6D_19.Part1 = v1066;
                l_Motor6D_19.Parent = v96.PrimaryPart;
                v1066.Parent = v96;
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
            Startup = function(v1068, _, v1070) --[[ Line: 8412 ]] --[[ Name: Startup ]]
                local v1071 = game.ReplicatedStorage.Emotes.Flag:Clone();
                v1071:SetAttribute("EmoteProperty", true);
                table.insert(v1068, v1071);
                v1070.Handle = v1071;
                local l_Flag_0 = v1071.Flag.Flag;
                l_Flag_0:SetAttribute("EmoteProperty", true);
                l_CollectionService_1:AddTag(l_Flag_0, "emotestuff" .. v96.Name);
                game:GetService("Debris"):AddItem(l_Flag_0, 7.5);
                v1070.md = l_Flag_0;
                l_Flag_0.Part0 = v96.PrimaryPart;
                l_Flag_0.Part1 = v1071.Flag;
                l_Flag_0.Parent = v96.PrimaryPart;
                v1071.Parent = v96;
            end, 
            Keyframes = {
                show = function(v1073, _, _) --[[ Line: 8422 ]]
                    local l_Handle_11 = v1073.Handle;
                    for _, v1078 in pairs(l_Handle_11:GetChildren()) do
                        v1078.Transparency = 0;
                    end;
                end, 
                place = function(v1079, v1080, _) --[[ Line: 8429 ]]
                    table.remove(v1080, table.find(v1080, v1079.Handle));
                    local l_Handle_12 = v1079.Handle;
                    l_CollectionService_1:AddTag(l_Handle_12, "emotestuff" .. v96.Name);
                    game:GetService("Debris"):AddItem(l_Handle_12, 10);
                    v1079.md:Destroy();
                    for _, v1084 in pairs(l_Handle_12:GetChildren()) do
                        v1084.Anchored = true;
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
            Startup = function(v1085, _, v1087) --[[ Line: 8455 ]] --[[ Name: Startup ]]
                local v1088 = game.ReplicatedStorage.Emotes.Brush:Clone();
                v1088:SetAttribute("EmoteProperty", true);
                table.insert(v1085, v1088);
                v1087.Handle = v1088;
                local l_Brush_0 = v1088.Brush;
                l_Brush_0:SetAttribute("EmoteProperty", true);
                table.insert(v1085, l_Brush_0);
                v1087.md = l_Brush_0;
                l_Brush_0.Part0 = v96["Right Arm"];
                l_Brush_0.Part1 = v1088;
                l_Brush_0.Parent = v96["Right Arm"];
                v1088.Parent = v96;
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
            Startup = function(v1090, _, v1092) --[[ Line: 8478 ]] --[[ Name: Startup ]]
                local v1093 = game.ReplicatedStorage.Emotes.Chest:Clone();
                v1093:SetAttribute("EmoteProperty", true);
                table.insert(v1090, v1093);
                v1092.Handle = v1093;
                local l_Motor6D_20 = v1093.Motor6D;
                l_Motor6D_20:SetAttribute("EmoteProperty", true);
                table.insert(v1090, l_Motor6D_20);
                v1092.md = l_Motor6D_20;
                l_Motor6D_20.Part0 = v96.PrimaryPart;
                l_Motor6D_20.Part1 = v1093;
                l_Motor6D_20.Parent = v96.PrimaryPart;
                v1093.Parent = v96;
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
            Startup = function(v1095, _, v1097) --[[ Line: 8502 ]] --[[ Name: Startup ]]
                local v1098 = game.ReplicatedStorage.Emotes.Map:Clone();
                v1098:SetAttribute("EmoteProperty", true);
                table.insert(v1095, v1098);
                v1097.Handle = v1098;
                local l_Map_0 = v1098.Map;
                l_Map_0:SetAttribute("EmoteProperty", true);
                table.insert(v1095, l_Map_0);
                v1097.md = l_Map_0;
                l_Map_0.Part0 = v96["Left Arm"];
                l_Map_0.Part1 = v1098;
                l_Map_0.Parent = v96["Left Arm"];
                v1098.Parent = v96;
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
            Startup = function(v1100, _, v1102) --[[ Line: 8524 ]] --[[ Name: Startup ]]
                local v1103 = game.ReplicatedStorage.Emotes.compass:Clone();
                v1103:SetAttribute("EmoteProperty", true);
                table.insert(v1100, v1103);
                v1102.Handle = v1103;
                local l_compass_0 = v1103.compass;
                l_compass_0:SetAttribute("EmoteProperty", true);
                table.insert(v1100, l_compass_0);
                v1102.md = l_compass_0;
                l_compass_0.Name = "compass";
                l_compass_0.Part0 = v96["Left Arm"];
                l_compass_0.Part1 = v1103;
                l_compass_0.Parent = v96["Left Arm"];
                v1103.Parent = v96;
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
            Startup = function(v1105, _, v1107) --[[ Line: 8547 ]] --[[ Name: Startup ]]
                local v1108 = game.ReplicatedStorage.Emotes.gameboi:Clone();
                v1108:SetAttribute("EmoteProperty", true);
                table.insert(v1105, v1108);
                v1107.Handle = v1108;
                local l_gameboi_0 = v1108.gameboi;
                l_gameboi_0:SetAttribute("EmoteProperty", true);
                table.insert(v1105, l_gameboi_0);
                v1107.md = l_gameboi_0;
                l_gameboi_0.Part0 = v96["Left Arm"];
                l_gameboi_0.Part1 = v1108;
                l_gameboi_0.Parent = v96["Left Arm"];
                v1108.Parent = v96;
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
                freeze = function(_, _, v1112) --[[ Line: 8592 ]]
                    v1112:AdjustSpeed(0);
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
                freeze = function(_, _, v1115) --[[ Line: 8615 ]]
                    v1115:AdjustSpeed(0);
                end
            }, 
            FixRotation = true, 
            Animation = 15090101157, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["WHY?"] = {
            Sounds = {}, 
            Startup = function() --[[ Line: 8631 ]] --[[ Name: Startup ]]
                v70({
                    SoundId = "rbxassetid://15285526846", 
                    Volume = 0.65, 
                    Parent = v96["Right Arm"], 
                    Looped = false
                }):Play();
                v70({
                    SoundId = "rbxassetid://1840489462", 
                    Volume = 0.4, 
                    Parent = v96.Torso, 
                    TimePosition = 0.5, 
                    Looped = true
                }):Resume();
            end, 
            Keyframes = {
                freeze = function(_, _, v1118) --[[ Line: 8649 ]]
                    v1118:AdjustSpeed(0);
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
                freeze = function(_, _, v1121) --[[ Line: 8671 ]]
                    v1121:AdjustSpeed(0);
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
                freeze = function(_, _, v1124) --[[ Line: 8692 ]]
                    v1124:AdjustSpeed(0);
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
                start = function() --[[ Line: 8727 ]]
                    v70({
                        SoundId = "rbxassetid://1846628770", 
                        Volume = 0.65, 
                        TimePosition = 25.55, 
                        Looped = false, 
                        Parent = v96.PrimaryPart
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
            Startup = function(v1125, _, _) --[[ Line: 8752 ]] --[[ Name: Startup ]]
                local _ = {};
                for _, v1130 in pairs(game.ReplicatedStorage.Emotes.Hologram:GetChildren()) do
                    if v1130:IsA("Model") then
                        local v1131 = v1130:Clone();
                        table.insert(v1125, v1131);
                        l_CollectionService_1:AddTag(v1131, "emotestuff" .. v96.Name);
                        for _, v1133 in pairs(v1131:GetChildren()) do
                            v1133:SetAttribute("EmoteProperty", true);
                            table.insert(v1125, v1133);
                            l_CollectionService_1:AddTag(v1133, "emotestuff" .. v96.Name);
                            local l_FirstChild_3 = game.ReplicatedStorage.Emotes.Hologram:FindFirstChild(v1133.Name);
                            v1133.Material = Enum.Material.Glass;
                            v1133:SetAttribute("Exempt", true);
                            v1133.Transparency = 0.25;
                            v1133.Size = Vector3.new(1.2000000476837158, 1.149999976158142, 0, 0);
                            v1133.Parent = workspace.Thrown;
                            if l_FirstChild_3 then
                                l_FirstChild_3 = l_FirstChild_3:Clone();
                                table.insert(v1125, l_FirstChild_3);
                                l_FirstChild_3:SetAttribute("EmoteProperty", true);
                                l_FirstChild_3.Part0 = v96.PrimaryPart;
                                l_FirstChild_3.Part1 = v1133;
                                l_FirstChild_3.Parent = v96.PrimaryPart;
                                local v1135 = {
                                    15090670461, 
                                    15090671388, 
                                    15090674168, 
                                    15090675904, 
                                    15090677327, 
                                    15090678837, 
                                    15090680066, 
                                    15090681663
                                };
                                v1135 = v1135[math.random(#v1135)];
                                for v1136 = 1, 2 do
                                    local l_Decal_0 = Instance.new("Decal");
                                    l_Decal_0.Color3 = Color3.fromRGB(450, 450, 450);
                                    l_Decal_0.Transparency = 0.35;
                                    l_Decal_0.Texture = "https://www.roblox.com/asset-thumbnail/image?assetId=" .. v1135 .. "&width=420&height=420&format=png";
                                    l_Decal_0.Face = v1136 == 1 and Enum.NormalId.Front or Enum.NormalId.Back;
                                    l_Decal_0.Parent = v1133;
                                end;
                            end;
                        end;
                        v1131:SetAttribute("EmoteProperty", true);
                        v1131.Parent = v96;
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
                clap = function(v1138, _, v1140) --[[ Line: 8824 ]]
                    task.delay(0.2, function() --[[ Line: 8825 ]]
                        if not v1140.IsPlaying then
                            return;
                        else
                            for _, v1142 in pairs({
                                v1138.stickRight, 
                                v1138.stickLeft
                            }) do
                                if v1142:GetAttribute("OG4") then
                                    v1142.Attachment1.Position = v1142:GetAttribute("OG");
                                    v1142.Attachment0.Position = v1142:GetAttribute("OG4");
                                end;
                            end;
                            v1138.stickRight.Enabled = true;
                            v1138.stickLeft.Enabled = true;
                            return;
                        end;
                    end);
                    task.delay(1.15, function() --[[ Line: 8840 ]]
                        if not v1140.IsPlaying then
                            return;
                        else
                            for _, v1144 in pairs({
                                v1138.stickRight, 
                                v1138.stickLeft
                            }) do
                                if not v1144:GetAttribute("OG") then
                                    v1144:SetAttribute("OG", v1144.Attachment1.Position);
                                end;
                                if not v1144:GetAttribute("OG4") then
                                    v1144:SetAttribute("OG4", v1144.Attachment0.Position);
                                end;
                                v1144.Attachment1.Position = v1144:GetAttribute("OG");
                                v1144.Attachment0.Position = v1144:GetAttribute("OG4");
                                v1144.Enabled = true;
                                l_TweenService_0:Create(v1144.Attachment1, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    WorldPosition = v1144.Attachment0.WorldPosition
                                }):Play();
                                if not v1144:GetAttribute("OG2") then
                                    v1144:SetAttribute("OG2", v1144.Width1);
                                end;
                                if not v1144:GetAttribute("OG3") then
                                    v1144:SetAttribute("OG3", v1144.Width0);
                                end;
                                l_TweenService_0:Create(v1144, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    Width1 = 0, 
                                    Width0 = 0
                                }):Play();
                            end;
                            return;
                        end;
                    end);
                    v70({
                        SoundId = "rbxassetid://15503358374", 
                        Parent = v96.PrimaryPart, 
                        Volume = 2
                    }):Play();
                end, 
                claploop = function(v1145, _, v1147) --[[ Line: 8880 ]]
                    task.delay(0.4, function() --[[ Line: 8881 ]]
                        if not v1147.IsPlaying then
                            return;
                        else
                            for _, v1149 in pairs({
                                v1145.stickRight, 
                                v1145.stickLeft
                            }) do
                                l_TweenService_0:Create(v1149.Attachment1, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    Position = v1149:GetAttribute("OG")
                                }):Play();
                                l_TweenService_0:Create(v1149, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    Width1 = v1149:GetAttribute("OG2"), 
                                    Width0 = v1149:GetAttribute("OG3")
                                }):Play();
                            end;
                            task.delay(2.89, function() --[[ Line: 8897 ]]
                                if not v1147.IsPlaying then
                                    return;
                                else
                                    for _, v1151 in pairs({
                                        v1145.stickRight, 
                                        v1145.stickLeft
                                    }) do
                                        l_TweenService_0:Create(v1151.Attachment0, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                            WorldPosition = v1151.Attachment1.WorldPosition
                                        }):Play();
                                        v70({
                                            SoundId = "rbxassetid://344167846", 
                                            Parent = v1145.Handle, 
                                            Volume = 0.08
                                        }):Play();
                                        task.delay(0.5, function() --[[ Line: 8913 ]]
                                            if not v1147.IsPlaying then
                                                return;
                                            else
                                                v1151.Enabled = false;
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
                    v1145.stickRight.Enabled = true;
                    v1145.stickLeft.Enabled = true;
                    v70({
                        SoundId = "rbxassetid://15503358531", 
                        Parent = v96.PrimaryPart, 
                        Volume = 2
                    }):Play();
                end
            }, 
            Startup = function(v1152, _, v1154) --[[ Line: 8935 ]] --[[ Name: Startup ]]
                local v1155 = game.ReplicatedStorage.Emotes.Ramen.Handle:Clone();
                v1155:SetAttribute("EmoteProperty", true);
                table.insert(v1152, v1155);
                v1154.Handle = v1155;
                local l_Handle_13 = v1155.Handle;
                l_Handle_13:SetAttribute("EmoteProperty", true);
                table.insert(v1152, l_Handle_13);
                v1154.md = l_Handle_13;
                l_Handle_13.Part0 = v96["Left Arm"];
                l_Handle_13.Part1 = v1155;
                l_Handle_13.Parent = v96["Left Arm"];
                v1155.Parent = v96;
                for _, v1158 in pairs({
                    "stickLeft", 
                    "stickRight"
                }) do
                    local v1159 = game.ReplicatedStorage.Emotes.Ramen[v1158]:Clone();
                    v1159:SetAttribute("EmoteProperty", true);
                    table.insert(v1152, v1159);
                    v1159.Parent = v96["Right Arm"];
                    local v1160 = v1159[v1158];
                    v1160:SetAttribute("EmoteProperty", true);
                    table.insert(v1152, v1160);
                    v1160.Part0 = v96["Right Arm"];
                    v1160.Part1 = v1159;
                    v1160.Parent = v96["Right Arm"];
                    v1159.Beam.Attachment0 = v1159.Attachment;
                    v1159.Beam.Attachment1 = v1155.Bowl.Noodles[string.gsub(v1159.Name, "stick", "")];
                    v1159.Beam.Enabled = false;
                    v1154[v1158] = v1159.Beam;
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
            Startup = function(v1161, _, v1163) --[[ Line: 8977 ]] --[[ Name: Startup ]]
                local v1164 = game.ReplicatedStorage.Emotes.wollet:Clone();
                v1164:SetAttribute("EmoteProperty", true);
                table.insert(v1161, v1164);
                v1163.Handle = v1164;
                local v1165 = v1164.LeftHandle:Clone();
                v1165:SetAttribute("EmoteProperty", true);
                table.insert(v1161, v1165);
                v1165.Cube.Part0 = v1165;
                v1165.Cube.Part1 = v1164.Cube;
                local l_m6d_17 = v1164.m6d;
                l_m6d_17:SetAttribute("EmoteProperty", true);
                table.insert(v1161, l_m6d_17);
                v1163.md = l_m6d_17;
                l_m6d_17.Part0 = v96["Left Arm"];
                l_m6d_17.Part1 = v1165;
                l_m6d_17.Name = "LeftHandle";
                v1165.Parent = v96;
                v1164.Parent = v96;
                l_m6d_17.Parent = v96["Left Arm"];
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
            Startup = function(v1167, _, v1169) --[[ Line: 9007 ]] --[[ Name: Startup ]]
                local v1170 = game.ReplicatedStorage.Emotes.Clipboard.LeftHandle:Clone();
                v1170:SetAttribute("EmoteProperty", true);
                table.insert(v1167, v1170);
                v1169.Handle = v1170;
                local l_LeftHandle_1 = v1170.LeftHandle;
                l_LeftHandle_1:SetAttribute("EmoteProperty", true);
                table.insert(v1167, l_LeftHandle_1);
                v1169.md = l_LeftHandle_1;
                l_LeftHandle_1.Part0 = v96["Left Arm"];
                l_LeftHandle_1.Part1 = v1170;
                l_LeftHandle_1.Parent = v96["Left Arm"];
                v1170:FindFirstChild("Decal", true).Texture = "rbxassetid://" .. ({
                    15114667107, 
                    15124465439, 
                    15143528856, 
                    15114672498, 
                    15143529209, 
                    15143528539, 
                    16136325038
                })[math.random(1, 7)];
                v1170.Parent = v96;
                local v1172 = game.ReplicatedStorage.Emotes.Clipboard.RightHandle:Clone();
                v1172:SetAttribute("EmoteProperty", true);
                table.insert(v1167, v1172);
                v1169.Handle = v1172;
                local l_RightHandle_0 = v1172.RightHandle;
                l_RightHandle_0:SetAttribute("EmoteProperty", true);
                table.insert(v1167, l_RightHandle_0);
                v1169.md = l_RightHandle_0;
                l_RightHandle_0.Part0 = v96["Right Arm"];
                l_RightHandle_0.Part1 = v1172;
                l_RightHandle_0.Parent = v96["Right Arm"];
                v1172.Parent = v96;
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
            Startup = function(v1174, _, v1176) --[[ Line: 9041 ]] --[[ Name: Startup ]]
                local v1177 = game.ReplicatedStorage.Emotes.blower:Clone();
                v1177:SetAttribute("EmoteProperty", true);
                table.insert(v1174, v1177);
                v1176.Handle = v1177;
                local l_Cylinder_0 = v1177.Cylinder.Cylinder;
                l_Cylinder_0:SetAttribute("EmoteProperty", true);
                table.insert(v1174, l_Cylinder_0);
                v1176.md = l_Cylinder_0;
                l_Cylinder_0.Part0 = v96.Head;
                l_Cylinder_0.Part1 = v1177.Cylinder;
                l_Cylinder_0.Name = "Cylinder";
                l_Cylinder_0.Parent = v96.Head;
                v1177.Parent = v96;
            end, 
            Keyframes = {
                clap = function() --[[ Line: 9052 ]]
                    v70({
                        SoundId = "rbxassetid://16599449151", 
                        Parent = v96.Head, 
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
            Startup = function(v1179, _, v1181) --[[ Line: 9080 ]] --[[ Name: Startup ]]
                local v1182 = game.ReplicatedStorage.Emotes.Leye1:Clone();
                v1182:SetAttribute("EmoteProperty", true);
                table.insert(v1179, v1182);
                v1181.Handle = v1182;
                local l_m6d_18 = v1182.m6d;
                l_m6d_18:SetAttribute("EmoteProperty", true);
                table.insert(v1179, l_m6d_18);
                v1181.md = l_m6d_18;
                l_m6d_18.Part0 = v96.Head;
                l_m6d_18.Part1 = v1182;
                l_m6d_18.Name = "Leye1";
                l_m6d_18.Parent = v96.Head;
                v1182.Parent = v96;
                local v1184 = game.ReplicatedStorage.Emotes.Reye1:Clone();
                v1184:SetAttribute("EmoteProperty", true);
                table.insert(v1179, v1184);
                v1181.Handle = v1184;
                local l_m6d_19 = v1184.m6d;
                l_m6d_19:SetAttribute("EmoteProperty", true);
                table.insert(v1179, l_m6d_19);
                v1181.md = l_m6d_19;
                l_m6d_19.Part0 = v96.Head;
                l_m6d_19.Part1 = v1184;
                l_m6d_19.Name = "Reye1";
                l_m6d_19.Parent = v96.Head;
                v1184.Parent = v96;
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
            Startup = function(v1186, _, v1188) --[[ Line: 9113 ]] --[[ Name: Startup ]]
                local v1189 = game.ReplicatedStorage.Emotes.Broom:Clone();
                v1189:SetAttribute("EmoteProperty", true);
                table.insert(v1186, v1189);
                v1188.Handle = v1189;
                local l_m6d_20 = v1189.m6d;
                l_m6d_20:SetAttribute("EmoteProperty", true);
                table.insert(v1186, l_m6d_20);
                v1188.md = l_m6d_20;
                v1189.Name = "Part";
                l_m6d_20.Part0 = v96["Left Arm"];
                l_m6d_20.Part1 = v1189;
                l_m6d_20.Name = "Part";
                l_m6d_20.Parent = v96["Left Arm"];
                v1189.Parent = v96;
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
            Startup = function(v1191, _, v1193) --[[ Line: 9140 ]] --[[ Name: Startup ]]
                local v1194 = game.ReplicatedStorage.Emotes.Maxwell:Clone();
                v1194:SetAttribute("EmoteProperty", true);
                table.insert(v1191, v1194);
                v1193.Handle = v1194;
                local l_m6d_21 = v1194.m6d;
                l_m6d_21:SetAttribute("EmoteProperty", true);
                table.insert(v1191, l_m6d_21);
                v1193.md = l_m6d_21;
                l_m6d_21.Part0 = v96["Left Arm"];
                l_m6d_21.Part1 = v1194.maxwell;
                l_m6d_21.Name = "maxwell";
                l_m6d_21.Parent = v96["Left Arm"];
                v1194.Parent = v96;
            end, 
            Keyframes = {
                clap = function() --[[ Line: 9151 ]] --[[ Name: clap ]]
                    if math.random(1, 3) == 1 then
                        v70({
                            SoundId = ({
                                "rbxassetid://15099947619", 
                                "rbxassetid://15099947876", 
                                "rbxassetid://15099948214"
                            })[math.random(1, 3)], 
                            Parent = v96.PrimaryPart, 
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
            Startup = function(v1196, _, v1198) --[[ Line: 9178 ]] --[[ Name: Startup ]]
                local v1199 = game.ReplicatedStorage.Emotes.Guitar:Clone();
                v1199:SetAttribute("EmoteProperty", true);
                table.insert(v1196, v1199);
                v1198.Handle = v1199;
                local l_Handle_14 = v1199.Handle;
                l_Handle_14:SetAttribute("EmoteProperty", true);
                table.insert(v1196, l_Handle_14);
                v1198.md = l_Handle_14;
                v1199.Name = "Handle";
                l_Handle_14.Part0 = v96["Left Arm"];
                l_Handle_14.Part1 = v1199;
                l_Handle_14.Parent = v96["Left Arm"];
                v1199.Parent = v96;
            end, 
            Keyframes = {
                ["end"] = function(v1201) --[[ Line: 9189 ]]
                    v1201.Handle:Destroy();
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
            Startup = function(v1202, _, v1204) --[[ Line: 9209 ]] --[[ Name: Startup ]]
                local v1205 = game.ReplicatedStorage.Emotes.Popper:Clone();
                v1205:SetAttribute("EmoteProperty", true);
                table.insert(v1202, v1205);
                v1204.Handle = v1205;
                local l_Handle_15 = v1205.Handle;
                l_Handle_15:SetAttribute("EmoteProperty", true);
                table.insert(v1202, l_Handle_15);
                v1204.md = l_Handle_15;
                v1205.Name = "Handle";
                l_Handle_15.Part0 = v96["Left Arm"];
                l_Handle_15.Part1 = v1205;
                l_Handle_15.Parent = v96["Left Arm"];
                v1205.Parent = v96;
            end, 
            Keyframes = {
                pop = function(v1207, v1208, _) --[[ Line: 9220 ]]
                    local l_Attachment_4 = v1207.Handle.Attachment;
                    l_Attachment_4:SetAttribute("EmoteProperty", true);
                    l_Attachment_4.Parent = v96.PrimaryPart;
                    table.insert(v1208, l_Attachment_4);
                    for _, v1212 in pairs(l_Attachment_4:GetChildren()) do
                        shared.resizeparticle(v1212, 1.25);
                        v1212:Emit(25 / #l_Attachment_4:GetChildren());
                    end;
                end, 
                ["end"] = function(v1213) --[[ Line: 9231 ]]
                    v1213.Handle:Destroy();
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
            Startup = function(v1214, _, v1216) --[[ Line: 9250 ]] --[[ Name: Startup ]]
                local v1217 = game.ReplicatedStorage.Emotes.Skull:Clone();
                v1217:SetAttribute("EmoteProperty", true);
                table.insert(v1214, v1217);
                v1216.Handle = v1217;
                local l_Handle_16 = v1217.Handle;
                l_Handle_16:SetAttribute("EmoteProperty", true);
                table.insert(v1214, l_Handle_16);
                v1216.md = l_Handle_16;
                v1217.Name = "Handle";
                l_Handle_16.Part0 = v96["Left Arm"];
                l_Handle_16.Part1 = v1217;
                l_Handle_16.Parent = v96["Left Arm"];
                v1217.Parent = v96;
            end, 
            Keyframes = {
                ["end"] = function(v1219) --[[ Line: 9261 ]]
                    v1219.Handle:Destroy();
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
            Startup = function(v1220, _, _) --[[ Line: 9452 ]] --[[ Name: Startup ]]
                local v1223 = shared.cfolder({
                    Name = "SBind", 
                    Parent = v96
                });
                v1223:SetAttribute("EmoteProperty", true);
                table.insert(v1220, v1223);
                local v1224, v1225 = v70({
                    SoundId = "rbxassetid://83080858871410", 
                    Volume = 1, 
                    Parent = v96.Torso, 
                    Looped = false
                });
                v1224:Play();
                if l_PlayerFromCharacter_0 then
                    local _ = tick();
                    local l_FriendsAsync_0 = game:GetService("Players"):GetFriendsAsync(l_PlayerFromCharacter_0.UserId);
                    local v1228 = {};
                    local _ = function(v1229) --[[ Line: 9474 ]] --[[ Name: iterPageItems ]]
                        return coroutine.wrap(function() --[[ Line: 9475 ]]
                            local v1230 = 1;
                            while true do
                                for _, v1232 in ipairs(v1229:GetCurrentPage()) do
                                    coroutine.yield(v1232, v1230);
                                end;
                                if not v1229.IsFinished then
                                    v1229:AdvanceToNextPageAsync();
                                    v1230 = v1230 + 1;
                                else
                                    break;
                                end;
                            end;
                        end);
                    end;
                    for v1237, _ in coroutine.wrap(function() --[[ Line: 9475 ]]
                        local v1234 = 1;
                        while true do
                            for _, v1236 in ipairs(l_FriendsAsync_0:GetCurrentPage()) do
                                coroutine.yield(v1236, v1234);
                            end;
                            if not l_FriendsAsync_0.IsFinished then
                                l_FriendsAsync_0:AdvanceToNextPageAsync();
                                v1234 = v1234 + 1;
                            else
                                break;
                            end;
                        end;
                    end) do
                        table.insert(v1228, v1237.Id);
                    end;
                    local v1239 = {};
                    for _ = 1, 4 do
                        if #v1228 > 0 then
                            local v1241 = math.random(#v1228);
                            table.insert(v1239, v1228[v1241]);
                            table.remove(v1228, v1241);
                        end;
                    end;
                   shared.repfire({
                        Effect = "GANG", 
                        Character = v96, 
                        Friends = v1239, 
                        Bind = v1223, 
                        Music = v1225
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
            Startup = function(v1242, _, _) --[[ Line: 9527 ]] --[[ Name: Startup ]]
                local v1245 = shared.cfolder({
                    Name = "SBind", 
                    Parent = v96
                });
                v1245:SetAttribute("EmoteProperty", true);
                table.insert(v1242, v1245);
                local v1246, _ = v70({
                    SoundId = "rbxassetid://83119347007476", 
                    Volume = 0.5, 
                    Parent = v96.PrimaryPart, 
                    Looped = true
                });
                local l_Attachment_5 = Instance.new("Attachment");
                l_Attachment_5.Parent = v96.PrimaryPart;
                l_Attachment_5.Position = Vector3.new(-2.443000078201294, 0, 0, 0);
                v1246.Parent = l_Attachment_5;
                table.insert(v1242, v1246);
                v1246:Play();
                if l_PlayerFromCharacter_0 then
                    local l_FriendsAsync_1 = game:GetService("Players"):GetFriendsAsync(l_PlayerFromCharacter_0.UserId);
                    local v1250 = {};
                    local _ = function(v1251) --[[ Line: 9553 ]] --[[ Name: iterPageItems ]]
                        return coroutine.wrap(function() --[[ Line: 9554 ]]
                            local v1252 = 1;
                            while true do
                                for _, v1254 in ipairs(v1251:GetCurrentPage()) do
                                    coroutine.yield(v1254, v1252);
                                end;
                                if not v1251.IsFinished then
                                    v1251:AdvanceToNextPageAsync();
                                    v1252 = v1252 + 1;
                                else
                                    break;
                                end;
                            end;
                        end);
                    end;
                    for v1259, _ in coroutine.wrap(function() --[[ Line: 9554 ]]
                        local v1256 = 1;
                        while true do
                            for _, v1258 in ipairs(l_FriendsAsync_1:GetCurrentPage()) do
                                coroutine.yield(v1258, v1256);
                            end;
                            if not l_FriendsAsync_1.IsFinished then
                                l_FriendsAsync_1:AdvanceToNextPageAsync();
                                v1256 = v1256 + 1;
                            else
                                break;
                            end;
                        end;
                    end) do
                        table.insert(v1250, v1259.Id);
                    end;
                    local v1261 = {};
                    for _ = 1, 3 do
                        if #v1250 > 0 then
                            local v1263 = math.random(#v1250);
                            table.insert(v1261, v1250[v1263]);
                            table.remove(v1250, v1263);
                        end;
                    end;
                   shared.repfire({
                        Effect = "BFFS", 
                        Character = v96, 
                        Friends = v1261, 
                        Bind = v1245, 
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
            Startup = function(v1264, _, v1266) --[[ Line: 9609 ]] --[[ Name: Startup ]]
                local v1267 = shared.cfolder({
                    Name = "SBind", 
                    Parent = v96
                });
                v1267:SetAttribute("EmoteProperty", true);
                table.insert(v1264, v1267);
                local v1268, _ = v70({
                    SoundId = "rbxassetid://1837904676", 
                    Volume = 0.25, 
                    Parent = root, 
                    Looped = true
                });
                local l_Attachment_6 = Instance.new("Attachment");
                l_Attachment_6.Parent = v96.PrimaryPart;
                v1268.Parent = l_Attachment_6;
                table.insert(v1264, v1268);
                v1268:Play();
                local v1271 = game.ReplicatedStorage.Emotes.ColaFight:Clone();
                v1271:SetAttribute("EmoteProperty", true);
                table.insert(v1264, v1271);
                v1266.Handle = v1271;
                local l_Handle_17 = v1271.Handle;
                l_Handle_17:SetAttribute("EmoteProperty", true);
                table.insert(v1264, l_Handle_17);
                v1266.md = l_Handle_17;
                v1271.Name = "Handle";
                l_Handle_17.Part0 = v96["Right Arm"];
                l_Handle_17.Part1 = v1271;
                l_Handle_17.Parent = v96["Right Arm"];
                v1271.Parent = v96;
                if l_PlayerFromCharacter_0 then
                   shared.repfire({
                        Effect = "FightC", 
                        Character = v96, 
                        Bind = v1267, 
                        Music = l_Attachment_6
                    });
                end;
            end, 
            Keyframes = {
                claploop = function() --[[ Line: 9649 ]]
                    v70({
                        SoundId = "rbxassetid://15503520430", 
                        Parent = v96.PrimaryPart, 
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
            Startup = function(v1273, _, v1275) --[[ Line: 9682 ]] --[[ Name: Startup ]]
                local v1276 = v70({
                    SoundId = "rbxassetid://1842188426", 
                    Volume = 0.4, 
                    Parent = v96.PrimaryPart
                });
                v1276:Play();
                v1275.ok = v1276;
                for _, v1278 in pairs(game.ReplicatedStorage.Emotes.Revolvers:GetChildren()) do
                    if v1278.Name == "Handle" then
                        local v1279 = v1278:Clone();
                        v1279:SetAttribute("EmoteProperty", true);
                        table.insert(v1273, v1279);
                        v1275[v1279.Name] = v1279;
                        local l_Handle_18 = v1279.Handle;
                        l_Handle_18:SetAttribute("EmoteProperty", true);
                        table.insert(v1273, l_Handle_18);
                        v1275.md = l_Handle_18;
                        v1279.Name = "Handle";
                        l_Handle_18.Part0 = v96["Left Arm"];
                        l_Handle_18.Part1 = v1279;
                        l_Handle_18.Parent = v96["Left Arm"];
                        v1279.Parent = v96;
                    end;
                end;
            end, 
            Keyframes = {
                shoot = function(v1281) --[[ Line: 9706 ]]
                    if l_PlayerFromCharacter_0 then
                       
                    end;
                    l_TweenService_0:Create(v1281.ok, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Volume = 0
                    }):Play();
                    v1281.Handle.Gun.Attachment.ParticleEmitter:Emit(2);
                end, 
                ["end"] = function(v1282) --[[ Line: 9721 ]]
                    v1282.Handle:Destroy();
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
            Startup = function(v1283, _, v1285) --[[ Line: 9757 ]] --[[ Name: Startup ]]
                local v1286 = game.ReplicatedStorage.Emotes.Revolver:Clone();
                v1286:SetAttribute("EmoteProperty", true);
                table.insert(v1283, v1286);
                v1285[v1286.Name] = v1286;
                local l_Handle_19 = v1286.Handle;
                l_Handle_19:SetAttribute("EmoteProperty", true);
                table.insert(v1283, l_Handle_19);
                v1285.md = l_Handle_19;
                v1286.Name = "Handle";
                l_Handle_19.Part0 = v96["Right Arm"];
                l_Handle_19.Part1 = v1286;
                l_Handle_19.Parent = v96["Right Arm"];
                v1286.Parent = v96;
            end, 
            Keyframes = {
                shoot = function(v1288) --[[ Line: 9769 ]]
                    if l_PlayerFromCharacter_0 then
                       
                    end;
                    v70({
                        SoundId = "rbxassetid://15310981185", 
                        Parent = v96.PrimaryPart, 
                        TimePosition = 0.11, 
                        Volume = 2.5
                    }):Resume();
                    for _, v1290 in pairs(v1288.Revolver.Shoot:GetChildren()) do
                        v1290.Enabled = true;
                    end;
                    task.delay(0.05, function() --[[ Line: 9787 ]]
                        v1288.Revolver.Shoot:Destroy();
                    end);
                    if not hitbox then
                        hitbox = nil
                    end;
                    if not force then
                        force = nil
                    end;
                    local l_hitbox_Hit_0 = hitbox:GetHit(l_PlayerFromCharacter_0 or true, 7, {
                        side = 5
                    }, false, -3);
                    local v1292 = 2000000000;
                    local v1293 = nil;
                    for _, v1295 in pairs(l_hitbox_Hit_0) do
                        local l_magnitude_0 = (v1295.PrimaryPart.Position - v96.PrimaryPart.Position).magnitude;
                        if l_magnitude_0 < v1292 and v1295.Humanoid.Health <= 0 then
                            v1292 = l_magnitude_0;
                            v1293 = v1295;
                        end;
                    end;
                    l_hitbox_Hit_0 = {
                        v1293
                    };
                    task.delay(0.045, function() --[[ Line: 9810 ]]
                        for _, v1298 in pairs(l_hitbox_Hit_0) do
                            force:CreateForce({
                                char = v96, 
                                hit = v1298, 
                                pushback = 0, 
                                up = Vector3.new(0, 1.75, 0, 0)
                            });
                            shared.sfx({
                                SoundId = "rbxassetid://15311018533", 
                                Parent = v1298.PrimaryPart, 
                                Volume = 3
                            }):Play();
                        end;
                    end);
                end, 
                ["end"] = function(v1299) --[[ Line: 9828 ]]
                    v1299.Revolver:Destroy();
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
            Startup = function(v1300, _, v1302) --[[ Line: 9860 ]] --[[ Name: Startup ]]
                for _, v1304 in pairs(game.ReplicatedStorage.Emotes.Revolvers:GetChildren()) do
                    if v1304.Name == "Handle2" then
                        local v1305 = v1304:Clone();
                        v1305:SetAttribute("EmoteProperty", true);
                        table.insert(v1300, v1305);
                        v1302[v1305.Name] = v1305;
                        local l_Handle_20 = v1305.Handle;
                        l_Handle_20:SetAttribute("EmoteProperty", true);
                        table.insert(v1300, l_Handle_20);
                        v1302.md = l_Handle_20;
                        l_Handle_20.C0 = CFrame.new(-0.0250015259, -0.999999762, 0.00322246552, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                        l_Handle_20.C1 = CFrame.new(-0.0500030518, -0.0202150345, 0.0032453537, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                        v1305.Name = "Handle";
                        l_Handle_20.Part0 = v96["Right Arm"];
                        l_Handle_20.Part1 = v1305;
                        l_Handle_20.Parent = v96["Right Arm"];
                        v1305.Parent = v96;
                    end;
                end;
            end, 
            Keyframes = {
                ["end"] = function(v1307) --[[ Line: 9878 ]]
                    v1307.Handle2:Destroy();
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
            Startup = function(v1308, _, v1310) --[[ Line: 9904 ]] --[[ Name: Startup ]]
                for _, v1312 in pairs(game.ReplicatedStorage.Emotes.Revolvers:GetChildren()) do
                    local v1313 = "Left Arm";
                    if v1312.Name == "Handle2" then
                        v1313 = "Right Arm";
                    end;
                    local v1314 = v1312:Clone();
                    v1314:SetAttribute("EmoteProperty", true);
                    table.insert(v1308, v1314);
                    v1310[v1314.Name] = v1314;
                    local l_Handle_21 = v1314.Handle;
                    l_Handle_21:SetAttribute("EmoteProperty", true);
                    table.insert(v1308, l_Handle_21);
                    v1310.md = l_Handle_21;
                    v1314.Name = "Handle";
                    l_Handle_21.Part0 = v96[v1313];
                    l_Handle_21.Part1 = v1314;
                    l_Handle_21.Parent = v96[v1313];
                    v1314.Parent = v96;
                end;
            end, 
            Keyframes = {
                ["end"] = function(v1316) --[[ Line: 9921 ]]
                    v1316.Handle:Destroy();
                    v1316.Handle2:Destroy();
                end, 
                slow = function(_, _, v1319) --[[ Line: 9926 ]]
                    v1319:AdjustSpeed(0.4);
                end, 
                away = function(_, _, v1322) --[[ Line: 9930 ]]
                    v1322:AdjustSpeed(1);
                    v70({
                        SoundId = "rbxassetid://15271610473", 
                        Volume = 1.85, 
                        Looped = false, 
                        Parent = v96.PrimaryPart
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
            Startup = function(v1323, _, v1325) --[[ Line: 9952 ]] --[[ Name: Startup ]]
                local v1326 = game.ReplicatedStorage.Emotes.CHAIR:Clone();
                v1326:SetAttribute("EmoteProperty", true);
                table.insert(v1323, v1326);
                v1325.Handle = v1326;
                local l_Handle_22 = v1326.Handle;
                l_Handle_22:SetAttribute("EmoteProperty", true);
                table.insert(v1323, l_Handle_22);
                v1325.md = l_Handle_22;
                v1326.Name = "CHAIR";
                l_Handle_22.Part0 = v96.Torso;
                l_Handle_22.Part1 = v1326;
                l_Handle_22.Parent = v96.Torso;
                v1326.Parent = v96;
                v70({
                    SoundId = "rbxassetid://17106914725", 
                    Parent = v96.Torso, 
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
            Startup = function(v1328, _, v1330) --[[ Line: 9984 ]] --[[ Name: Startup ]]
                local v1331 = game.ReplicatedStorage.Emotes.TACO1:Clone();
                v1331:SetAttribute("EmoteProperty", true);
                table.insert(v1328, v1331);
                v1330.Handle = v1331;
                local l_TACO1_0 = v1331.TACO1;
                l_TACO1_0:SetAttribute("EmoteProperty", true);
                table.insert(v1328, l_TACO1_0);
                v1330.md = l_TACO1_0;
                l_TACO1_0.Part0 = v96["Right Arm"];
                l_TACO1_0.Part1 = v1331;
                l_TACO1_0.Parent = v96["Right Arm"];
                v1331.Parent = v96;
                local v1333 = game.ReplicatedStorage.Emotes.TACO2:Clone();
                v1333:SetAttribute("EmoteProperty", true);
                table.insert(v1328, v1333);
                v1330.Handle = v1333;
                local l_TACO2_0 = v1333.TACO2;
                l_TACO2_0:SetAttribute("EmoteProperty", true);
                table.insert(v1328, l_TACO2_0);
                v1330.md = l_TACO2_0;
                l_TACO2_0.Part0 = v96["Left Arm"];
                l_TACO2_0.Part1 = v1333;
                l_TACO2_0.Parent = v96["Left Arm"];
                v1333.Parent = v96;
            end, 
            Looped = true, 
            HideWeapon = true, 
            Animation = 17107076756, 
            Stun = "Freeze"
        }, 
        Card = {
            Sounds = {}, 
            Startup = function(v1335, _, v1337) --[[ Line: 10011 ]] --[[ Name: Startup ]]
                local v1338 = game.ReplicatedStorage.Emotes["Meshes/cARD"]:Clone();
                v1338:SetAttribute("EmoteProperty", true);
                table.insert(v1335, v1338);
                v1337.Handle = v1338;
                local v1339 = v1338["Meshes/cARD"];
                v1339:SetAttribute("EmoteProperty", true);
                table.insert(v1335, v1339);
                v1337.md = v1339;
                v1339.Part0 = v96["Right Arm"];
                v1339.Part1 = v1338;
                v1339.Parent = v96["Right Arm"];
                v1338.Parent = v96;
                v70({
                    SoundId = "rbxassetid://17120974824", 
                    Parent = v1338, 
                    Volume = 1
                }):Play();
            end, 
            HideWeapon = true, 
            Animation = 17120966975, 
            Stun = "Freeze"
        }, 
        Plank = {
            Sounds = {}, 
            Startup = function(v1340, _, v1342) --[[ Line: 10036 ]] --[[ Name: Startup ]]
                local v1343 = game.ReplicatedStorage.Emotes.Plank:Clone();
                v1343:SetAttribute("EmoteProperty", true);
                table.insert(v1340, v1343);
                v1342.Handle = v1343;
                v1343.Name = "Handle";
                local l_Handle_23 = v1343.Handle;
                l_Handle_23:SetAttribute("EmoteProperty", true);
                table.insert(v1340, l_Handle_23);
                v1342.md = l_Handle_23;
                v1343.Name = "Handle";
                l_Handle_23.Part0 = v96["Right Arm"];
                l_Handle_23.Part1 = v1343;
                l_Handle_23.Parent = v96["Right Arm"];
                v1343.Parent = v96;
                v70({
                    SoundId = "rbxassetid://17107178506", 
                    Parent = v1343, 
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
            Startup = function(v1345, _, v1347) --[[ Line: 10070 ]] --[[ Name: Startup ]]
                local v1348 = game.ReplicatedStorage.Emotes.ColaTwo:Clone();
                v1348:SetAttribute("EmoteProperty", true);
                table.insert(v1345, v1348);
                v1347.Handle = v1348;
                local l_Handle_24 = v1348.Handle;
                l_Handle_24:SetAttribute("EmoteProperty", true);
                table.insert(v1345, l_Handle_24);
                v1347.md = l_Handle_24;
                v1348.Name = "Handle";
                l_Handle_24.Part0 = v96["Right Arm"];
                l_Handle_24.Part1 = v1348;
                l_Handle_24.Parent = v96["Right Arm"];
                v1348.Parent = v96;
                v1347.mesh = v1348.Mesh;
                v70({
                    SoundId = "rbxassetid://17120785426", 
                    Parent = v1348, 
                    Volume = 1
                }):Play();
            end, 
            Keyframes = {
                ["end"] = function(v1350, _) --[[ Line: 10088 ]]
                    l_TweenService_0:Create(v1350.mesh, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
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
            Startup = function(v1352, _, v1354) --[[ Line: 10105 ]] --[[ Name: Startup ]]
                v1354.breads = {};
                local v1355 = {
                    Bread1 = CFrame.new(-0.9290413856506348, -0.3216838836669922, -0.9804582595825195, -1, 0, 0, 0, 1, 0, 0, 0, -1), 
                    Bread2 = CFrame.new(-0.9290413856506348, -0.41446352005004883, -0.9804582595825195, -1, 0, 0, 0, 1, 0, 0, 0, -1), 
                    Bread3 = CFrame.new(-0.9290413856506348, -0.5068368911743164, -0.9804582595825195, -1, 0, 0, 0, 1, 0, 0, 0, -1), 
                    Bread4 = CFrame.new(-0.9290413856506348, -0.599616527557373, -0.9804582595825195, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                };
                for v1356, v1357 in pairs(v1355) do
                    local v1358 = game.ReplicatedStorage.Emotes.Bread1:Clone();
                    v1358:SetAttribute("EmoteProperty", true);
                    table.insert(v1352, v1358);
                    v1354.Handle = v1358;
                    v1358.Name = v1356;
                    local l_Motor6D_21 = Instance.new("Motor6D");
                    l_Motor6D_21:SetAttribute("EmoteProperty", true);
                    table.insert(v1352, l_Motor6D_21);
                    v1354.md = l_Motor6D_21;
                    v1358.Name = v1356;
                    l_Motor6D_21.Part0 = v96.Torso;
                    l_Motor6D_21.Part1 = v1358;
                    l_Motor6D_21.Parent = v96.Torso;
                    l_Motor6D_21.C0 = v1357;
                    v1358.Parent = v96;
                    table.insert(v1354.breads, v1358);
                end;
                v70({
                    SoundId = "rbxassetid://17121814784", 
                    Parent = v96["Right Arm"], 
                    Volume = 1
                }):Play();
            end, 
            Keyframes = {
                ["end"] = function(v1360, _) --[[ Line: 10133 ]]
                    for _, v1363 in pairs(v1360.breads) do
                        for _, v1365 in pairs({
                            v1363, 
                            v1363.Crust
                        }) do
                            l_TweenService_0:Create(v1365, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
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
            Startup = function(_, _, v1368) --[[ Line: 10154 ]] --[[ Name: Startup ]]
                local v1369 = game.ReplicatedStorage.Emotes.Flashlight:Clone();
                l_CollectionService_1:AddTag(v1369, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_Handle_25 = v1369.Handle;
                l_CollectionService_1:AddTag(l_Handle_25, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                v1369.Name = "Handle";
                l_Handle_25.Part0 = v96["Right Arm"];
                l_Handle_25.Part1 = v1369;
                l_Handle_25.Parent = v96["Right Arm"];
                v1369.Parent = v96;
                v1368.mesh = v1369.SurfaceLight;
                v70({
                    SoundId = "rbxassetid://17120880738", 
                    Parent = v1369, 
                    Volume = 1
                }):Play();
            end, 
            Keyframes = {
                start = function(v1371, _) --[[ Line: 10172 ]]
                    v1371.mesh.Enabled = true;
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
            Startup = function(v1373, _, v1375) --[[ Line: 10193 ]] --[[ Name: Startup ]]
                local v1376 = game.ReplicatedStorage.Emotes.Cloud:Clone();
                v1376:SetAttribute("EmoteProperty", true);
                table.insert(v1373, v1376);
                v1375.Handle = v1376;
                local l_Weld_6 = Instance.new("Weld");
                l_Weld_6.Part0 = v96.PrimaryPart;
                l_Weld_6.Part1 = v1376;
                l_Weld_6.C0 = CFrame.new(0, 6.6855607, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                l_Weld_6.Parent = v1376;
                v1376.Parent = v96;
                v70({
                    SoundId = "rbxassetid://17121715447", 
                    Parent = v1376, 
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
            Startup = function(v1378, _, v1380, _, v1382) --[[ Line: 10221 ]] --[[ Name: Startup ]]
                local v1383 = game.ReplicatedStorage.Emotes.Carboard:Clone();
                v1383:SetAttribute("EmoteProperty", true);
                table.insert(v1378, v1383);
                v1380.Handle = v1383;
                local l_Handle_26 = v1383.Handle;
                l_Handle_26:SetAttribute("EmoteProperty", true);
                table.insert(v1378, l_Handle_26);
                v1380.md = l_Handle_26;
                v1383.Name = "Base";
                l_Handle_26.Part0 = v96.PrimaryPart;
                l_Handle_26.Part1 = v1383.Base;
                l_Handle_26.Parent = v96.PrimaryPart;
                v1383.Parent = v96;
                v70({
                    SoundId = "rbxassetid://17122337086", 
                    Parent = v1383.Base, 
                    Volume = 1, 
                    TimePosition = 0.25
                }):Resume();
                task.spawn(function() --[[ Line: 10237 ]]
                    local v1385 = v102(17122265672);
                    v1385:AdjustWeight(35);
                    table.insert(v1378, v1385);
                    local v1386 = v70({
                        SoundId = "rbxassetid://17122337244", 
                        Parent = v1383.Base, 
                        Volume = 0.15, 
                        Looped = true
                    });
                    while task.wait() and not v1382.interrupted do
                        if v1382.interrupted or not v96.Parent then
                            v1385:Stop();
                            break;
                        elseif v96.Humanoid.MoveDirection ~= Vector3.new() then
                            v1386:Resume();
                            if not v1385.IsPlaying then
                                v1385:Play(0.3);
                            end;
                        else
                            if v1385.IsPlaying then
                                v1385:Stop(0.3);
                            end;
                            v1386:Stop();
                        end;
                    end;
                    v1385:AdjustWeight(0.01);
                    v1385:Stop();
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
            Startup = function(v1387, _, v1389) --[[ Line: 10288 ]] --[[ Name: Startup ]]
                local v1390 = game.ReplicatedStorage.Emotes.Airhorn:Clone();
                v1390:SetAttribute("EmoteProperty", true);
                table.insert(v1387, v1390);
                v1389.Handle = v1390;
                local l_handle_0 = v1390.handle;
                l_handle_0:SetAttribute("EmoteProperty", true);
                table.insert(v1387, l_handle_0);
                v1389.md = l_handle_0;
                l_handle_0.Name = "Airhorn";
                l_handle_0.Part0 = v96["Right Arm"];
                l_handle_0.Part1 = v1390.Airhorn;
                l_handle_0.Parent = v96["Right Arm"];
                v1390.Parent = v96;
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
            Startup = function(v1392, _, v1394) --[[ Line: 10322 ]] --[[ Name: Startup ]]
                local v1395 = game.ReplicatedStorage.Emotes.MIC:Clone();
                v1395:SetAttribute("EmoteProperty", true);
                table.insert(v1392, v1395);
                v1394.Handle = v1395;
                local l_Handle_27 = v1395.Handle;
                l_Handle_27:SetAttribute("EmoteProperty", true);
                table.insert(v1392, l_Handle_27);
                v1394.md = l_Handle_27;
                v1395.Name = "MIC";
                l_Handle_27.Part0 = v96.PrimaryPart;
                l_Handle_27.Part1 = v1395;
                l_Handle_27.Parent = v96.PrimaryPart;
                v1395.Parent = v96;
                v70({
                    SoundId = "rbxassetid://17106346778", 
                    Parent = v1395, 
                    Volume = 1
                }):Play();
            end, 
            HideWeapon = true, 
            Animation = 17106365733, 
            Stun = "Freeze"
        }, 
        ["Luv This Game"] = {
            Sounds = {}, 
            Startup = function(v1397, _, v1399) --[[ Line: 10348 ]] --[[ Name: Startup ]]
                local v1400 = game.ReplicatedStorage.Emotes.HeartTSB:Clone();
                v1400:SetAttribute("EmoteProperty", true);
                table.insert(v1397, v1400);
                v1399.Handle = v1400;
                local l_Main2_0 = v1400.Main2;
                l_Main2_0:SetAttribute("EmoteProperty", true);
                table.insert(v1397, l_Main2_0);
                v1399.md = l_Main2_0;
                l_Main2_0.Name = "Main";
                l_Main2_0.Part0 = v96.PrimaryPart;
                l_Main2_0.Part1 = v1400.Main;
                l_Main2_0.Parent = v96.PrimaryPart;
                v1400.Parent = v96;
                v70({
                    SoundId = "rbxassetid://17269138016", 
                    Parent = v96.PrimaryPart, 
                    Volume = 1
                }):Play();
            end, 
            HideWeapon = true, 
            Animation = 17269134625, 
            Stun = "Slowed"
        }, 
        Mango = {
            Sounds = {}, 
            Startup = function(v1402, _, v1404) --[[ Line: 10374 ]] --[[ Name: Startup ]]
                local v1405 = game.ReplicatedStorage.Emotes.MangoFork:Clone();
                v1405:SetAttribute("EmoteProperty", true);
                table.insert(v1402, v1405);
                v1404.Handle = v1405;
                local l_Fork2_0 = v1405.Fork2;
                l_Fork2_0:SetAttribute("EmoteProperty", true);
                table.insert(v1402, l_Fork2_0);
                v1404.md = l_Fork2_0;
                l_Fork2_0.Name = "Fork";
                l_Fork2_0.Part0 = v96["Right Arm"];
                l_Fork2_0.Part1 = v1405.Fork;
                l_Fork2_0.Parent = v96["Right Arm"];
                v1405.Parent = v96;
                v70({
                    SoundId = "rbxassetid://17269071380", 
                    Parent = v1405.Fork, 
                    Volume = 1
                }):Play();
            end, 
            Keyframes = {
                dead = function(v1407, _, _) --[[ Line: 10391 ]]
                    v1407.Handle.Mango:Destroy();
                    v1407.Handle.mangopart:Destroy();
                end
            }, 
            HideWeapon = true, 
            Animation = 17269079177, 
            Stun = "Slowed"
        }, 
        Action = {
            Sounds = {}, 
            Startup = function(v1410, _, v1412) --[[ Line: 10407 ]] --[[ Name: Startup ]]
                local v1413 = game.ReplicatedStorage.Emotes.Clapboard:Clone();
                v1413:SetAttribute("EmoteProperty", true);
                table.insert(v1410, v1413);
                v1412.Handle = v1413;
                local l_Handle_28 = v1413.Handle;
                l_Handle_28:SetAttribute("EmoteProperty", true);
                table.insert(v1410, l_Handle_28);
                v1412.md = l_Handle_28;
                l_Handle_28.Name = "Bottom";
                l_Handle_28.Part0 = v96["Left Arm"];
                l_Handle_28.Part1 = v1413.Bottom;
                l_Handle_28.Parent = v96["Left Arm"];
                v1413.Parent = v96;
                v70({
                    SoundId = "rbxassetid://17268545081", 
                    Parent = v1413.Bottom, 
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
            Startup = function(v1415, _, v1417) --[[ Line: 10437 ]] --[[ Name: Startup ]]
                local v1418 = game.ReplicatedStorage.Emotes.Phone2:Clone();
                v1418:SetAttribute("EmoteProperty", true);
                table.insert(v1415, v1418);
                v1417.Handle = v1418;
                local l_Phone2_0 = v1418.Phone2;
                l_Phone2_0:SetAttribute("EmoteProperty", true);
                table.insert(v1415, l_Phone2_0);
                v1417.md = l_Phone2_0;
                l_Phone2_0.Name = "Phone";
                v1418.Name = "Phone";
                l_Phone2_0.Part0 = v96["Right Arm"];
                l_Phone2_0.Part1 = v1418.Phone;
                l_Phone2_0.Parent = v96["Right Arm"];
                v1418.Parent = v96;
                v70({
                    SoundId = "rbxassetid://17268986804", 
                    Parent = v1418.Phone, 
                    Volume = 1
                }):Play();
            end, 
            Keyframes = {
                clap = function() --[[ Line: 10455 ]]
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v96["Left Leg"], 
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
            Startup = function(v1420, _, v1422) --[[ Line: 10478 ]] --[[ Name: Startup ]]
                local v1423 = game.ReplicatedStorage.Emotes.Bookk:Clone();
                v1423:SetAttribute("EmoteProperty", true);
                table.insert(v1420, v1423);
                v1422.Handle = v1423;
                local l_Bookk_0 = v1423.Bookk;
                l_Bookk_0:SetAttribute("EmoteProperty", true);
                table.insert(v1420, l_Bookk_0);
                v1422.md = l_Bookk_0;
                v1423.Name = "Book";
                l_Bookk_0.Name = "Base";
                l_Bookk_0.Part0 = v96.PrimaryPart;
                l_Bookk_0.Part1 = v1423.Base;
                l_Bookk_0.Parent = v96.PrimaryPart;
                v1423.Parent = v96;
                v1422.handle = v1423;
                v70({
                    SoundId = "rbxassetid://17268616635", 
                    Parent = v1423.Base, 
                    Volume = 1
                }):Play();
                shared.s = v70({
                    SoundId = "rbxassetid://9043379206", 
                    Parent = v96.Torso, 
                    Volume = 1
                });
                shared.s:Play();
            end, 
            Keyframes = {
                stop = function(_, _, _) --[[ Line: 10504 ]]
                    shared.s:Stop();
                end, 
                freeze = function(_, _, v1430) --[[ Line: 10508 ]]
                    v1430:AdjustSpeed(0);
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
            Startup = function(v1431, _, v1433) --[[ Line: 10530 ]] --[[ Name: Startup ]]
                local v1434 = game.ReplicatedStorage.Emotes.UFO:Clone();
                v1434:SetAttribute("EmoteProperty", true);
                table.insert(v1431, v1434);
                v1433.Handle = v1434;
                local l_UFO_0 = v1434.UFO;
                l_UFO_0:SetAttribute("EmoteProperty", true);
                table.insert(v1431, l_UFO_0);
                v1433.md = l_UFO_0;
                l_UFO_0.Part0 = v96.PrimaryPart;
                l_UFO_0.Part1 = v1434;
                l_UFO_0.Parent = v96.PrimaryPart;
                v1434.Parent = v96;
                v1433.handle = v1434;
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
            Startup = function(v1436, _, v1438) --[[ Line: 10557 ]] --[[ Name: Startup ]]
                local v1439 = game.ReplicatedStorage.Emotes.Pizza:Clone();
                v1439:SetAttribute("EmoteProperty", true);
                table.insert(v1436, v1439);
                v1438.Handle = v1439;
                local l_Pizza_0 = v1439.Pizza;
                l_Pizza_0:SetAttribute("EmoteProperty", true);
                table.insert(v1436, l_Pizza_0);
                v1438.md = l_Pizza_0;
                l_Pizza_0.Part0 = v96.PrimaryPart;
                l_Pizza_0.Name = "Base";
                l_Pizza_0.Part1 = v1439.Base;
                l_Pizza_0.Parent = v96.PrimaryPart;
                v1439.Parent = v96;
                v1438.handle = v1439;
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
            Startup = function(v1441, _, v1443) --[[ Line: 10585 ]] --[[ Name: Startup ]]
                local v1444 = game.ReplicatedStorage.Emotes.Guitar2:Clone();
                v1444:SetAttribute("EmoteProperty", true);
                table.insert(v1441, v1444);
                v1443.Handle = v1444;
                local l_Guitar_0 = v1444.Guitar;
                l_Guitar_0:SetAttribute("EmoteProperty", true);
                table.insert(v1441, l_Guitar_0);
                v1443.md = l_Guitar_0;
                l_Guitar_0.Part0 = v96["Right Arm"];
                l_Guitar_0.Part1 = v1444;
                v1444.Name = "Guitar";
                l_Guitar_0.Parent = v96["Right Arm"];
                v1444.Parent = v96;
                v1443.handle = v1444;
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
            Startup = function(v1446, _, v1448) --[[ Line: 10612 ]] --[[ Name: Startup ]]
                local v1449 = game.ReplicatedStorage.Emotes.flute:Clone();
                v1449:SetAttribute("EmoteProperty", true);
                table.insert(v1446, v1449);
                v1448.Handle = v1449;
                local l_Handle_29 = v1449.Handle;
                l_Handle_29:SetAttribute("EmoteProperty", true);
                table.insert(v1446, l_Handle_29);
                v1448.md = l_Handle_29;
                l_Handle_29.Part0 = v96["Right Arm"];
                l_Handle_29.Part1 = v1449;
                v1449.Name = "Handle";
                l_Handle_29.Parent = v96["Right Arm"];
                v1449.Parent = v96;
                v1448.handle = v1449;
            end, 
            Keyframes = {
                clap = function() --[[ Line: 10624 ]]
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v96["Left Leg"], 
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
            Startup = function(v1451, _, v1453) --[[ Line: 10652 ]] --[[ Name: Startup ]]
                local v1454 = game.ReplicatedStorage.Emotes.carpet:Clone();
                v1454:SetAttribute("EmoteProperty", true);
                table.insert(v1451, v1454);
                v1453.Handle = v1454;
                local l_carpet_0 = v1454.carpet;
                l_carpet_0:SetAttribute("EmoteProperty", true);
                table.insert(v1451, l_carpet_0);
                v1453.md = l_carpet_0;
                l_carpet_0.Part0 = v96.PrimaryPart;
                l_carpet_0.Part1 = v1454;
                l_carpet_0.Parent = v96.PrimaryPart;
                v1454.Parent = v96;
                v1453.handle = v1454;
            end, 
            HideWeapon = true, 
            Looped = true, 
            Animation = 17268716692, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        Dribble = {
            Sounds = {}, 
            Startup = function(v1456, _, v1458) --[[ Line: 10674 ]] --[[ Name: Startup ]]
                local v1459 = game.ReplicatedStorage.Emotes.basklektball:Clone();
                v1459:SetAttribute("EmoteProperty", true);
                table.insert(v1456, v1459);
                v1458.Handle = v1459;
                local l_basklektball_0 = v1459.basklektball;
                l_basklektball_0:SetAttribute("EmoteProperty", true);
                table.insert(v1456, l_basklektball_0);
                v1458.md = l_basklektball_0;
                l_basklektball_0.Part0 = v96.PrimaryPart;
                l_basklektball_0.Part1 = v1459;
                l_basklektball_0.Parent = v96.PrimaryPart;
                v1459.Parent = v96;
                v1458.handle = v1459;
            end, 
            Keyframes = {
                clap = function(v1461, _, _) --[[ Line: 10685 ]]
                    shared.sfx({
                        SoundId = "rbxassetid://14404844095", 
                        PlaybackSpeed = Random.new():NextNumber(0.9, 1.1), 
                        Parent = v1461.handle, 
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
            Startup = function(v1464, _, v1466) --[[ Line: 10710 ]] --[[ Name: Startup ]]
                v70({
                    SoundId = "rbxassetid://17268447339", 
                    Parent = v96.Head, 
                    Volume = 1, 
                    Looped = true
                }):Play();
                local v1467 = game.ReplicatedStorage.Emotes.watermelon:Clone();
                v1467:SetAttribute("EmoteProperty", true);
                table.insert(v1464, v1467);
                v1466.Handle = v1467;
                local l_Watermelon_0 = v1467.Watermelon;
                l_Watermelon_0:SetAttribute("EmoteProperty", true);
                table.insert(v1464, l_Watermelon_0);
                v1466.md = l_Watermelon_0;
                l_Watermelon_0.Part0 = v96["Right Arm"];
                v1467.Name = "Watermelon";
                l_Watermelon_0.Part1 = v1467;
                l_Watermelon_0.Parent = v96["Right Arm"];
                v1467.Parent = v96;
                v1466.handle = v1467;
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
            Startup = function(v1469, _, v1471) --[[ Line: 10748 ]] --[[ Name: Startup ]]
                local v1472 = game.ReplicatedStorage.Emotes.tang:Clone();
                v1472:SetAttribute("EmoteProperty", true);
                table.insert(v1469, v1472);
                v1471.Handle = v1472;
                local l_Part_2 = v1472.Part;
                l_Part_2:SetAttribute("EmoteProperty", true);
                table.insert(v1469, l_Part_2);
                v1471.md = l_Part_2;
                v1472.Name = "Part";
                l_Part_2.Part0 = v96.Head;
                l_Part_2.Part1 = v1472;
                l_Part_2.Parent = v96.Head;
                v1472.Parent = v96;
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
            Startup = function(v1474, _, v1476) --[[ Line: 10772 ]] --[[ Name: Startup ]]
                local v1477 = game.ReplicatedStorage.Emotes.surrender_Flag:Clone();
                v1477:SetAttribute("EmoteProperty", true);
                table.insert(v1474, v1477);
                v1476.Handle = v1477;
                local l_Handle_30 = v1477.Handle;
                l_Handle_30:SetAttribute("EmoteProperty", true);
                table.insert(v1474, l_Handle_30);
                v1476.md = l_Handle_30;
                l_Handle_30.Name = "Pole";
                l_Handle_30.Part0 = v96["Right Arm"];
                l_Handle_30.Part1 = v1477.Pole;
                l_Handle_30.Parent = v96["Right Arm"];
                v1477.Parent = v96;
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
            Startup = function(v1479, _, v1481) --[[ Line: 10809 ]] --[[ Name: Startup ]]
                local v1482 = game.ReplicatedStorage.Emotes.Watermelon:Clone();
                v1482:SetAttribute("EmoteProperty", true);
                table.insert(v1479, v1482);
                v1481.Handle = v1482;
                local l_Handle_31 = v1482.Handle;
                l_Handle_31:SetAttribute("EmoteProperty", true);
                table.insert(v1479, l_Handle_31);
                v1481.md = l_Handle_31;
                v1482.Name = "Watermelon";
                l_Handle_31.Part0 = v96["Right Arm"];
                l_Handle_31.Part1 = v1482;
                l_Handle_31.Parent = v96["Right Arm"];
                v1482.Parent = v96;
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
            Startup = function(v1484, _, v1486) --[[ Line: 10834 ]] --[[ Name: Startup ]]
                local v1487 = game.ReplicatedStorage.Emotes.Watermelon2:Clone();
                v1487:SetAttribute("EmoteProperty", true);
                table.insert(v1484, v1487);
                v1486.Handle = v1487;
                local l_Handle_32 = v1487.Handle;
                l_Handle_32:SetAttribute("EmoteProperty", true);
                table.insert(v1484, l_Handle_32);
                v1486.md = l_Handle_32;
                v1487.Name = "Watermelon";
                l_Handle_32.Part0 = v96.HumanoidRootPart;
                l_Handle_32.Part1 = v1487;
                l_Handle_32.Parent = v96.HumanoidRootPart;
                v1487.Parent = v96;
            end, 
            Animation = 17137575195, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Log = {
            Sounds = {}, 
            Startup = function(v1489, _, v1491) --[[ Line: 10853 ]] --[[ Name: Startup ]]
                local v1492 = game.ReplicatedStorage.Emotes.Log:Clone();
                v1492:SetAttribute("EmoteProperty", true);
                table.insert(v1489, v1492);
                v1491.Handle = v1492;
                local l_Handle_33 = v1492.Handle;
                l_Handle_33:SetAttribute("EmoteProperty", true);
                table.insert(v1489, l_Handle_33);
                v1491.md = l_Handle_33;
                v1492.Name = "Handle";
                l_Handle_33.Part0 = v96["Right Arm"];
                l_Handle_33.Part1 = v1492;
                l_Handle_33.Parent = v96["Right Arm"];
                v1492.Parent = v96;
                v70({
                    SoundId = "rbxassetid://9120937669", 
                    Parent = v96.PrimaryPart, 
                    Volume = 0.5
                }):Play();
                v70({
                    SoundId = "rbxassetid://9120823421", 
                    Parent = v96.PrimaryPart, 
                    Volume = 0.075, 
                    Looped = true
                }):Play();
            end, 
            Keyframes = {
                clap = function() --[[ Line: 10877 ]] --[[ Name: clap ]]
                    v70({
                        SoundId = "rbxassetid://15090365735", 
                        Parent = v96.PrimaryPart, 
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
            Startup = function(v1494, _, v1496) --[[ Line: 10896 ]] --[[ Name: Startup ]]
                local v1497 = game.ReplicatedStorage.Emotes.Film:Clone();
                v1497:SetAttribute("EmoteProperty", true);
                table.insert(v1494, v1497);
                v1496.Handle = v1497;
                local l_Handle_34 = v1497.Handle;
                l_Handle_34:SetAttribute("EmoteProperty", true);
                table.insert(v1494, l_Handle_34);
                v1496.md = l_Handle_34;
                v1497.Name = "Handle";
                l_Handle_34.Part0 = v96["Right Arm"];
                l_Handle_34.Part1 = v1497;
                l_Handle_34.Parent = v96["Right Arm"];
                v1497.Parent = v96;
                v70({
                    SoundId = "rbxassetid://15310783637", 
                    Parent = v1497, 
                    Volume = 0.5, 
                    Looped = true
                }):Play();
            end, 
            Keyframes = {
                claploop = function() --[[ Line: 10914 ]] --[[ Name: claploop ]]
                    v70({
                        SoundId = "rbxassetid://15310800059", 
                        Parent = v96.PrimaryPart, 
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
            Startup = function(v1499, _, v1501) --[[ Line: 10934 ]] --[[ Name: Startup ]]
                local v1502 = game.ReplicatedStorage.Emotes.Pan:Clone();
                v1502:SetAttribute("EmoteProperty", true);
                table.insert(v1499, v1502);
                v1501.Handle = v1502;
                local l_Handle_35 = v1502.Handle;
                l_Handle_35:SetAttribute("EmoteProperty", true);
                table.insert(v1499, l_Handle_35);
                v1501.md = l_Handle_35;
                v1502.Name = "Handle";
                l_Handle_35.Part0 = v96["Left Arm"];
                l_Handle_35.Part1 = v1502;
                l_Handle_35.Parent = v96["Left Arm"];
                v1502.Parent = v96;
                v70({
                    SoundId = "rbxassetid://15283317649", 
                    Parent = v1502, 
                    Looped = true
                }):Play();
                v70({
                    SoundId = "rbxassetid://160247625", 
                    Parent = v96.PrimaryPart, 
                    Volume = 0.5
                }):Play();
            end, 
            Keyframes = {
                clap = function() --[[ Line: 10957 ]] --[[ Name: clap ]]
                    v70({
                        SoundId = "rbxassetid://15283317709", 
                        Parent = v96.PrimaryPart, 
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
            Startup = function(v1504, _, v1506) --[[ Line: 10976 ]] --[[ Name: Startup ]]
                local v1507 = game.ReplicatedStorage.Emotes.Coffee:Clone();
                v1507:SetAttribute("EmoteProperty", true);
                table.insert(v1504, v1507);
                v1506.Handle = v1507;
                local l_m6d_22 = v1507.m6d;
                l_m6d_22:SetAttribute("EmoteProperty", true);
                table.insert(v1504, l_m6d_22);
                v1506.md = l_m6d_22;
                v1507.Name = "Handle";
                l_m6d_22.Part0 = v96["Left Arm"];
                l_m6d_22.Part1 = v1507;
                l_m6d_22.Parent = v96["Left Arm"];
                v1507.Parent = v96;
            end, 
            Keyframes = {
                claploop = function() --[[ Line: 10987 ]] --[[ Name: claploop ]]
                    v70({
                        SoundId = "rbxassetid://15487197007", 
                        Parent = v96.PrimaryPart, 
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
            Startup = function(v1509, _, v1511) --[[ Line: 11011 ]] --[[ Name: Startup ]]
                local v1512 = game.ReplicatedStorage.Emotes.Scooter:Clone();
                v1512:SetAttribute("EmoteProperty", true);
                table.insert(v1509, v1512);
                v1511.Handle = v1512;
                local l_Motor6D_22 = v1512.Motor6D;
                l_Motor6D_22:SetAttribute("EmoteProperty", true);
                table.insert(v1509, l_Motor6D_22);
                v1511.md = l_Motor6D_22;
                l_Motor6D_22.Part0 = v96.PrimaryPart;
                l_Motor6D_22.Part1 = v1512.Base;
                l_Motor6D_22.Parent = v96.PrimaryPart;
                v1512.Parent = v96;
                local l_ForceField_0 = v96:FindFirstChildOfClass("ForceField");
                local v1515 = false;
                if workspace:GetAttribute("GameStarted") or not workspace:GetAttribute("RankedOnes") then
                    v1515 = true;
                end;
                if l_ForceField_0 and l_ForceField_0:GetAttribute("Emote") then
                    v1515 = false;
                end;
                if v1515 then
                    local l_BodyVelocity_0 = Instance.new("BodyVelocity");
                    l_BodyVelocity_0:SetAttribute("EmoteProperty", true);
                    table.insert(v1509, l_BodyVelocity_0);
                    v1511.BV = l_BodyVelocity_0;
                    l_BodyVelocity_0.Name = "moveme";
                    l_BodyVelocity_0.MaxForce = Vector3.new(1, 0, 1, 0) * 10000;
                    l_BodyVelocity_0:SetAttribute("Speed", 12);
                    l_BodyVelocity_0:SetAttribute("Goto", 12);
                    l_BodyVelocity_0:SetAttribute("RayCheck", true);
                    l_BodyVelocity_0:SetAttribute("End", 1);
                    l_BodyVelocity_0:SetAttribute("Fallout", 0.991);
                    l_BodyVelocity_0.Parent = v96.PrimaryPart;
                end;
            end, 
            Keyframes = {
                clap = function(v1517) --[[ Line: 11042 ]] --[[ Name: clap ]]
                    task.delay(0.417, function() --[[ Line: 11043 ]]
                        if v1517.BV and v1517.BV.Parent then
                            local l_BV_0 = v1517.BV;
                            local v1519 = "Speed";
                            local v1520 = 45;
                            local v1521 = -0.01;
                            local v1522 = 0.01;
                            if not v1522 and v1521 then
                                v1522 = v1521;
                                v1521 = 1;
                            end;
                            if not v1522 and not v1521 then
                                v1521 = 0;
                                v1522 = 1;
                            end;
                            l_BV_0:SetAttribute(v1519, v1520 + v82:NextNumber(v1521, v1522));
                        end;
                    end);
                    v70({
                        SoundId = "rbxassetid://17292932603", 
                        Parent = v96.PrimaryPart, 
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
            Startup = function(v1523, _, v1525) --[[ Line: 11072 ]] --[[ Name: Startup ]]
                local v1526 = game.ReplicatedStorage.Emotes.Skateboard:Clone();
                v1526:SetAttribute("EmoteProperty", true);
                table.insert(v1523, v1526);
                v1525.Handle = v1526;
                local l_m6d_23 = v1526.m6d;
                l_m6d_23:SetAttribute("EmoteProperty", true);
                table.insert(v1523, l_m6d_23);
                v1525.md = l_m6d_23;
                l_m6d_23.Name = "Handle";
                l_m6d_23.Part0 = v96.PrimaryPart;
                l_m6d_23.Part1 = v1526.Handle;
                l_m6d_23.Parent = v96.PrimaryPart;
                v1526.Parent = v96;
                local l_ForceField_1 = v96:FindFirstChildOfClass("ForceField");
                local v1529 = false;
                if workspace:GetAttribute("GameStarted") or not workspace:GetAttribute("RankedOnes") then
                    v1529 = true;
                end;
                if l_ForceField_1 and l_ForceField_1:GetAttribute("Emote") then
                    v1529 = false;
                end;
                if v1529 then
                    local l_BodyVelocity_1 = Instance.new("BodyVelocity");
                    l_BodyVelocity_1:SetAttribute("EmoteProperty", true);
                    table.insert(v1523, l_BodyVelocity_1);
                    v1525.BV = l_BodyVelocity_1;
                    l_BodyVelocity_1.Name = "moveme";
                    l_BodyVelocity_1.MaxForce = Vector3.new(1, 0, 1, 0) * 10000;
                    l_BodyVelocity_1:SetAttribute("Speed", 12);
                    l_BodyVelocity_1:SetAttribute("Goto", 12);
                    l_BodyVelocity_1:SetAttribute("RayCheck", true);
                    l_BodyVelocity_1:SetAttribute("End", 1);
                    l_BodyVelocity_1:SetAttribute("Fallout", 0.991);
                    l_BodyVelocity_1.Parent = v96.PrimaryPart;
                end;
            end, 
            Keyframes = {
                clap = function(v1531) --[[ Line: 11104 ]] --[[ Name: clap ]]
                    task.delay(2.184, function() --[[ Line: 11105 ]]
                        if v1531.BV and v1531.BV.Parent then
                            local l_BV_1 = v1531.BV;
                            local v1533 = "Speed";
                            local v1534 = 45;
                            local v1535 = -0.01;
                            local v1536 = 0.01;
                            if not v1536 and v1535 then
                                v1536 = v1535;
                                v1535 = 1;
                            end;
                            if not v1536 and not v1535 then
                                v1535 = 0;
                                v1536 = 1;
                            end;
                            l_BV_1:SetAttribute(v1533, v1534 + v82:NextNumber(v1535, v1536));
                        end;
                    end);
                    v70({
                        SoundId = "rbxassetid://15090244072", 
                        Parent = v96.PrimaryPart, 
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
            Startup = function(v1537, _, v1539) --[[ Line: 11129 ]] --[[ Name: Startup ]]
                local v1540 = game.ReplicatedStorage.Emotes.Sign:Clone();
                v1540:SetAttribute("EmoteProperty", true);
                table.insert(v1537, v1540);
                v1539.Handle = v1540;
                local l_Handle_36 = v1540.Handle;
                l_Handle_36:SetAttribute("EmoteProperty", true);
                table.insert(v1537, l_Handle_36);
                v1539.md = l_Handle_36;
                v1540.Name = "Handle";
                l_Handle_36.Part0 = v96["Left Arm"];
                l_Handle_36.Part1 = v1540;
                l_Handle_36.Parent = v96["Left Arm"];
                v1540.Parent = v96;
                v70({
                    SoundId = "rbxassetid://9126280354", 
                    Parent = v96.PrimaryPart, 
                    Volume = 0.5
                }):Play();
            end, 
            Keyframes = {
                clap = function() --[[ Line: 11146 ]]
                    v70({
                        SoundId = "rbxassetid://15092688139", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.1
                    }):Play();
                end, 
                claploop = function() --[[ Line: 11154 ]]
                    v70({
                        SoundId = "rbxassetid://15092688069", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.1
                    }):Play();
                end, 
                snap = function() --[[ Line: 11162 ]]
                    v70({
                        SoundId = "rbxassetid://15092714389", 
                        Parent = v96.PrimaryPart, 
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
                freeze = function(_, _, v1544) --[[ Line: 11187 ]]
                    v1544:AdjustSpeed(0);
                end
            }, 
            Startup = function(v1545) --[[ Line: 11192 ]] --[[ Name: Startup ]]
                local v1546 = shared.cfolder({
                    Name = "Freeze"
                }, 1.75);
                table.insert(v1545, v1546);
                v1546:SetAttribute("DontInterrupt", true);
                v1546:SetAttribute("NoStop", true);
                v1546:SetAttribute("EmoteProperty", true);
                task.delay(0, function() --[[ Line: 11200 ]]
                    v1546.Parent = v96;
                end);
            end, 
            HideWeapon = true, 
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
                freeze = function(_, _, v1549) --[[ Line: 11221 ]]
                    v1549:AdjustSpeed(0);
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
            Startup = function(v1550, _, v1552) --[[ Line: 11241 ]] --[[ Name: Startup ]]
                for _, v1554 in pairs(game.ReplicatedStorage.Emotes.Juggling:GetChildren()) do
                    v50({
                        cleanup = v1550, 
                        char = v96, 
                        object = v1554, 
                        part0 = v96.Torso, 
                        part1 = tostring(v1554), 
                        mind = v1552, 
                        parent = v96.Torso
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
                freeze = function(_, _, v1557) --[[ Line: 11278 ]]
                    v1557:AdjustSpeed(0);
                end
            }, 
            Startup = function(v1558, _, v1560) --[[ Line: 11283 ]] --[[ Name: Startup ]]
                v50({
                    cleanup = v1558, 
                    char = v96, 
                    object = game.ReplicatedStorage.Emotes.Rock, 
                    part0 = v96.PrimaryPart, 
                    part1 = tostring(game.ReplicatedStorage.Emotes.Rock), 
                    mind = v1560
                });
            end, 
            Animation = 15089930092, 
            Looped = true, 
            Stun = "Freeze"
        }, 
        ["Look!"] = {
            Sounds = {}, 
            Keyframes = {
                clap = function(_) --[[ Line: 11304 ]]
                    v70({
                        SoundId = "rbxassetid://17086269758", 
                        RollOffMaxDistance = v1, 
                        Parent = v96.Head, 
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
            Startup = function(v1562, _, v1564) --[[ Line: 11329 ]] --[[ Name: Startup ]]
                local v1565 = game.ReplicatedStorage.Emotes.Steak:Clone();
                v1565:SetAttribute("EmoteProperty", true);
                table.insert(v1562, v1565);
                v1564.Handle = v1565;
                local l_Handle_37 = v1565.Handle;
                l_Handle_37:SetAttribute("EmoteProperty", true);
                table.insert(v1562, l_Handle_37);
                v1564.md = l_Handle_37;
                v1565.Name = "Handle";
                l_Handle_37.Name = "Handle";
                l_Handle_37.Part0 = v96["Left Arm"];
                l_Handle_37.Part1 = v1565;
                l_Handle_37.Parent = v96["Left Arm"];
                local l_Attachment_7 = v1565.Attachment;
                l_Attachment_7:SetAttribute("EmoteProperty", true);
                table.insert(v1562, l_Attachment_7);
                v1564.att = l_Attachment_7;
                v1565.Parent = v96;
            end, 
            Keyframes = {
                ["end"] = function(v1568) --[[ Line: 11343 ]]
                    v1568.Handle["Meshes/steak2_Cube"].Transparency = 1;
                    v1568.att.Popcorn.Enabled = false;
                    task.delay(0.3, function() --[[ Line: 11347 ]]
                        v70({
                            SoundId = "rbxassetid://9113414870", 
                            Parent = v96.Head, 
                            Volume = 1
                        }):Play();
                    end);
                end, 
                start = function(v1569) --[[ Line: 11356 ]]
                    v1569.att.Popcorn.Enabled = true;
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
            Startup = function(v1570, _, v1572) --[[ Line: 11381 ]] --[[ Name: Startup ]]
                local l_Attachment_8 = Instance.new("Attachment");
                table.insert(v1570, l_Attachment_8);
                l_Attachment_8:SetAttribute("EmoteProperty", true);
                l_Attachment_8.Parent = v96["Right Arm"];
                l_Attachment_8.Position = Vector3.new(-0.40700000524520874, -0.8999999761581421, 0, 0);
                local v1574 = game.ReplicatedStorage.Emotes.Salt:Clone();
                v1574.Enabled = false;
                v1574.Parent = l_Attachment_8;
                v1572.salt = v1574;
            end, 
            Keyframes = {
                ["end"] = function(v1575) --[[ Line: 11393 ]]
                    v1575.salt.Enabled = false;
                end, 
                start = function(v1576) --[[ Line: 11397 ]]
                    v1576.salt.Enabled = true;
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
            Startup = function(v1577, _, v1579) --[[ Line: 11427 ]] --[[ Name: Startup ]]
                v70({
                    SoundId = "rbxassetid://7244593699", 
                    Parent = v96.PrimaryPart, 
                    Volume = 0.75
                }):Play();
                v70({
                    SoundId = "rbxassetid://13726870246", 
                    Parent = v96.PrimaryPart, 
                    Volume = 0.75
                }):Play();
                local v1580 = game.ReplicatedStorage.Emotes.Camera.Handle:Clone();
                v1580:SetAttribute("EmoteProperty", true);
                table.insert(v1577, v1580);
                v1579.camera = v1580;
                local l_Handle_38 = v1580.Handle;
                l_Handle_38:SetAttribute("EmoteProperty", true);
                table.insert(v1577, l_Handle_38);
                v1579.md = l_Handle_38;
                v1580.Name = "Handle";
                l_Handle_38.Name = "Handle";
                l_Handle_38.Part0 = v96["Left Arm"];
                l_Handle_38.Part1 = v1580;
                l_Handle_38.Parent = v96["Left Arm"];
                v1580.Parent = v96;
                local v1582 = game.ReplicatedStorage.Emotes.Camera.SmallHandle:Clone();
                v1582:SetAttribute("EmoteProperty", true);
                table.insert(v1577, v1582);
                v1579.picture = v1582;
                local l_SmallHandle_0 = v1582.SmallHandle;
                l_SmallHandle_0:SetAttribute("EmoteProperty", true);
                table.insert(v1577, l_SmallHandle_0);
                v1579.md = l_SmallHandle_0;
                l_SmallHandle_0.Part0 = v96["Right Arm"];
                l_SmallHandle_0.Part1 = v1582;
                l_SmallHandle_0.Parent = v96["Right Arm"];
                v1582.Parent = v96;
                for _, v1585 in pairs(v1579.picture.Photo:GetDescendants()) do
                    if v1585:IsA("BasePart") or v1585:IsA("Decal") then
                        v1585.Transparency = 1;
                    end;
                end;
            end, 
            Keyframes = {
                flash = function(v1586) --[[ Line: 11464 ]]
                    local l_Attachment_9 = Instance.new("Attachment");
                    l_CollectionService_1:AddTag(l_Attachment_9, "emotestuff" .. v96.Name);
                    l_Attachment_9.Parent = v1586.camera.Camera["Camera Low"].Lends;
                    game:GetService("Debris"):AddItem(l_Attachment_9, 5);
                    local v1588 = game.ReplicatedStorage.Emotes.ImpactGlow:Clone();
                    v1588.Parent = l_Attachment_9;
                    shared.resizeparticle(v1588, v86(1, 1.2));
                    v1588:Emit(1);
                    local l_createlight_0 = shared.createlight;
                    local v1590 = {
                        Position = l_Attachment_9.WorldPosition, 
                        Color = Color3.new(1, 1, 1)
                    };
                    local v1591 = 7;
                    local v1592 = 10;
                    if not v1592 and v1591 then
                        v1592 = v1591;
                        v1591 = 1;
                    end;
                    if not v1592 and not v1591 then
                        v1591 = 0;
                        v1592 = 1;
                    end;
                    v1590.Brightness = v82:NextNumber(v1591, v1592);
                    v1591 = 0.3;
                    v1592 = 0.5;
                    if not v1592 and v1591 then
                        v1592 = v1591;
                        v1591 = 1;
                    end;
                    if not v1592 and not v1591 then
                        v1591 = 0;
                        v1592 = 1;
                    end;
                    v1590.Fade = v82:NextNumber(v1591, v1592);
                    v1591 = 10;
                    v1592 = 12;
                    if not v1592 and v1591 then
                        v1592 = v1591;
                        v1591 = 1;
                    end;
                    if not v1592 and not v1591 then
                        v1591 = 0;
                        v1592 = 1;
                    end;
                    v1590.Range = v82:NextNumber(v1591, v1592);
                    l_createlight_0(v1590);
                end, 
                visible = function(v1593) --[[ Line: 11483 ]]
                    for _, v1595 in pairs(v1593.picture.Photo:GetDescendants()) do
                        if v1595:IsA("BasePart") or v1595:IsA("Decal") then
                            v1595.Transparency = 0;
                        end;
                    end;
                end, 
                end1 = function(v1596) --[[ Line: 11491 ]]
                    v1596.camera:Destroy();
                end, 
                end2 = function(v1597) --[[ Line: 11495 ]]
                    v1597.picture:Destroy();
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
                freeze = function(_, _, v1600) --[[ Line: 11516 ]]
                    v1600:AdjustSpeed(0);
                end, 
                score = function(v1601, _, _) --[[ Line: 11520 ]]
                    local v1604 = nil;
                    for _, v1606 in pairs(l_CollectionService_1:GetTagged("notepad")) do
                        if v1606 ~= v1601.Handle and (v1606.pages.Position - v1601.Handle.pages.Position).magnitude <= 25 then
                            local l_v1606_FirstChildWhichIsA_0 = v1606:FindFirstChildWhichIsA("TextLabel", true);
                            if l_v1606_FirstChildWhichIsA_0 then
                                v1604 = l_v1606_FirstChildWhichIsA_0.Text;
                            end;
                        end;
                    end;
                    local l_SurfaceGui_0 = v1601.Handle.pages.SurfaceGui;
                    l_SurfaceGui_0.TextLabel.Text = v1604 or math.random(-1, 10);
                    l_SurfaceGui_0.Enabled = true;
                end
            }, 
            Startup = function(v1609, _, v1611) --[[ Line: 11536 ]] --[[ Name: Startup ]]
                local v1612 = game.ReplicatedStorage.Emotes.Notepad.Model:Clone();
                v1612:SetAttribute("EmoteProperty", true);
                table.insert(v1609, v1612);
                v1611.Handle = v1612;
                l_CollectionService_1:AddTag(v1612, "notepad");
                for _, v1614 in pairs(game.ReplicatedStorage.Emotes.Notepad:GetChildren()) do
                    if v1614:IsA("Motor6D") then
                        local v1615 = v1614:Clone();
                        v1615:SetAttribute("EmoteProperty", true);
                        table.insert(v1609, v1615);
                        v1611.md = v1615;
                        v1615.Part0 = v96["Left Arm"];
                        v1615.Part1 = v1612[v1614.Name];
                        v1615.Parent = v96["Left Arm"];
                    end;
                end;
                v1612.Parent = v96;
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
            Startup = function(v1616, _, v1618) --[[ Line: 11567 ]] --[[ Name: Startup ]]
                local v1619 = game.ReplicatedStorage.Emotes.crowbar:Clone();
                v1619:SetAttribute("EmoteProperty", true);
                table.insert(v1616, v1619);
                v1618.Handle = v1619;
                local l_M6D_0 = v1619.M6D;
                l_M6D_0:SetAttribute("EmoteProperty", true);
                table.insert(v1616, l_M6D_0);
                v1618.md = l_M6D_0;
                l_M6D_0.Name = "Handle";
                l_M6D_0.Part0 = v96["Left Arm"];
                l_M6D_0.Part1 = v1619.Handle;
                l_M6D_0.Parent = v96["Left Arm"];
                v1619.Parent = v96;
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
            Startup = function(v1621, _, v1623) --[[ Line: 11593 ]] --[[ Name: Startup ]]
                local v1624 = game.ReplicatedStorage.Emotes.Popcorn:Clone();
                v1624:SetAttribute("EmoteProperty", true);
                table.insert(v1621, v1624);
                v1623.Handle = v1624;
                local l_Handle_39 = v1624.Handle;
                l_Handle_39:SetAttribute("EmoteProperty", true);
                table.insert(v1621, l_Handle_39);
                v1623.md = l_Handle_39;
                v1624.Name = "Handle";
                l_Handle_39.Name = "Handle";
                l_Handle_39.Part0 = v96["Left Arm"];
                l_Handle_39.Part1 = v1624;
                l_Handle_39.Parent = v96["Left Arm"];
                local l_Attachment_10 = v1624.Attachment;
                l_Attachment_10.Popcorn.Enabled = true;
                l_Attachment_10:SetAttribute("EmoteProperty", true);
                table.insert(v1621, l_Attachment_10);
                v1623.att = l_Attachment_10;
                l_Attachment_10.Parent = v96["Right Arm"];
                v1624.Parent = v96;
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
            Startup = function(v1627, _, v1629) --[[ Line: 11624 ]] --[[ Name: Startup ]]
                local v1630 = game.ReplicatedStorage.Emotes.Mop.Handle:Clone();
                v1630:SetAttribute("EmoteProperty", true);
                table.insert(v1627, v1630);
                v1629.Handle = v1630;
                local v1631 = game.ReplicatedStorage.Emotes.Mop.M6D:Clone();
                v1631:SetAttribute("EmoteProperty", true);
                table.insert(v1627, v1631);
                v1629.md = v1631;
                v1631.Name = "Handle";
                v1631.Part0 = v96["Left Arm"];
                v1631.Part1 = v1630;
                v1631.Parent = v96["Left Arm"];
                v1630.Parent = v96;
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
            Startup = function(v1632, _, v1634) --[[ Line: 11649 ]] --[[ Name: Startup ]]
                local v1635 = game.ReplicatedStorage.Emotes.Bounce.Sphere:Clone();
                v1635:SetAttribute("EmoteProperty", true);
                table.insert(v1632, v1635);
                v1634.Handle = v1635;
                v1635.BrickColor = BrickColor.Random();
                local l_Motor6D_23 = v1635:FindFirstChildOfClass("Motor6D");
                l_Motor6D_23:SetAttribute("EmoteProperty", true);
                table.insert(v1632, l_Motor6D_23);
                v1634.md = l_Motor6D_23;
                l_Motor6D_23.Name = "Sphere";
                l_Motor6D_23.Part0 = v96.PrimaryPart;
                l_Motor6D_23.Part1 = v1635;
                l_Motor6D_23.Parent = v96.PrimaryPart;
                v1635.Parent = v96;
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
                start = function(v1637, v1638) --[[ Line: 11709 ]]
                    local v1639 = game.ReplicatedStorage.Emotes.Confused:Clone();
                    local l_Weld_7 = Instance.new("Weld");
                    v1637.crazy = v1639;
                    v1637.particle = v1639.Attachment.Swirl;
                    for _, v1642 in pairs({
                        v1639, 
                        l_Weld_7
                    }) do
                        v1642:SetAttribute("EmoteProperty", true);
                        table.insert(v1638, v1642);
                    end;
                    l_Weld_7.Parent = v1639;
                    l_Weld_7.Part0 = v96.PrimaryPart;
                    l_Weld_7.Part1 = v1639;
                    l_Weld_7.C0 = CFrame.new(0, 2.75, 0);
                    v1639.Transparency = 1;
                    v1639.Parent = workspace.Thrown;
                   shared.repfire({
                        Effect = "Rotate", 
                        Weld = l_Weld_7, 
                        Crazy = v1639
                    });
                end, 
                ["end"] = function(v1643, _) --[[ Line: 11734 ]]
                    local l_crazy_0 = v1643.crazy;
                    local l_particle_0 = v1643.particle;
                    l_crazy_0.Transparency = 0;
                    l_TweenService_0:Create(l_crazy_0, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Transparency = 1
                    }):Play();
                    task.spawn(function() --[[ Line: 11743 ]]
                        for _ = 1, 25 do
                            if l_particle_0.Parent then
                                local v1648 = {};
                                for _, v1650 in pairs(l_particle_0.Transparency.Keypoints) do
                                    table.insert(v1648, NumberSequenceKeypoint.new(v1650.Time, v1650.Value * 1.1, v1650.Envelope));
                                end;
                                l_particle_0.Transparency = NumberSequence.new(v1648);
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
                ready = function(_, v1652) --[[ Line: 11765 ]]
                    local l_v70_0 = v70;
                    local v1654 = {
                        SoundId = "rbxassetid://15502708435"
                    };
                    local v1655 = 1.9;
                    local v1656 = 2.1;
                    if not v1656 and v1655 then
                        v1656 = v1655;
                        v1655 = 1;
                    end;
                    if not v1656 and not v1655 then
                        v1655 = 0;
                        v1656 = 1;
                    end;
                    v1654.Volume = v82:NextNumber(v1655, v1656);
                    v1654.Parent = v96.Torso;
                    l_v70_0(v1654):Play();
                    for _, v1658 in pairs(v1652) do
                        if typeof(v1658) == "Instance" and v1658:IsA("Sound") and v1658.SoundId == "rbxassetid://1843699308" then
                            l_TweenService_0:Create(v1658, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                                Volume = 0
                            }):Play();
                        end;
                    end;
                end, 
                shoot = function(v1659) --[[ Line: 11780 ]]
                    for _, v1661 in pairs(v1659.Revolver.Shoot:GetChildren()) do
                        v1661.Enabled = true;
                    end;
                    task.delay(0.05, function() --[[ Line: 11784 ]]
                        v1659.Revolver.Shoot:Destroy();
                    end);
                end, 
                away = function(v1662) --[[ Line: 11789 ]]
                    l_TweenService_0:Create(v1662.Revolver.Gun.Mesh, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Scale = Vector3.new()
                    }):Play();
                end
            }, 
            Startup = function(v1663, _, v1665) --[[ Line: 11796 ]] --[[ Name: Startup ]]
                local v1666 = game.ReplicatedStorage.Emotes.Revolver:Clone();
                v1666:SetAttribute("EmoteProperty", true);
                table.insert(v1663, v1666);
                v1665[v1666.Name] = v1666;
                local l_Handle_40 = v1666.Handle;
                l_Handle_40:SetAttribute("EmoteProperty", true);
                table.insert(v1663, l_Handle_40);
                v1665.md = l_Handle_40;
                v1666.Name = "Handle";
                l_Handle_40.Part0 = v96["Right Arm"];
                l_Handle_40.Part1 = v1666;
                l_Handle_40.C0 = CFrame.new(0, -1, -0.01);
                l_Handle_40.C1 = CFrame.new(0, 0, 0);
                v1666:FindFirstChildOfClass("Weld").C0 = CFrame.new(-0.245002747, -0.67500329, 0.100135803, 1, 0, -0, 0, 0, 1, 0, -1, 0);
                l_Handle_40.Parent = v96["Right Arm"];
                v1666.Parent = v96;
            end, 
            Dual = {
                DoBoth = false, 
                Dist = 16, 
                NoRotate = 10.3, 
                Callback = function(v1668, v1669, v1670, v1671) --[[ Line: 11814 ]] --[[ Name: Callback ]]
                    local _, _ = v70({
                        SoundId = "rbxassetid://15502708235", 
                        Parent = v1668.Torso, 
                        Volume = 1
                    }):Play();
                    local _, _ = v70({
                        SoundId = "rbxassetid://15502708235", 
                        Parent = v1669.Torso, 
                        Volume = 1
                    }):Play();
                    local v1676, v1677 = v70({
                        SoundId = "rbxassetid://1843699308", 
                        CFrame = CFrame.new(), 
                        Volume = 1
                    });
                    table.insert(v1670, v1676);
                    v1676:Play();
                    v1677.Parent = v1668.PrimaryPart;
                    v1677.WorldPosition = (v1668.PrimaryPart.CFrame * CFrame.new(0, 0, -v1671 / 2)).Position;
                    v70({
                        SoundId = "rbxassetid://1842188393", 
                        Parent = v1677, 
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
                clap = function(v1678, _, v1680) --[[ Line: 11857 ]]
                    if not v1678.speed then
                        v1678.speed = 1;
                    end;
                    v1680:AdjustSpeed((math.clamp(v1678.speed, 1, 10)));
                    v1678.speed = v1678.speed + 0.025;
                    shared.sfx({
                        SoundId = "rbxassetid://9099667351", 
                        Parent = v96.PrimaryPart, 
                        RollOffMaxDistance = v1, 
                        Volume = 0.2
                    }):Play();
                end, 
                claploop = function() --[[ Line: 11873 ]]
                    shared.sfx({
                        SoundId = "rbxassetid://16038515606", 
                        Parent = v96.PrimaryPart, 
                        RollOffMaxDistance = v1, 
                        Volume = 0.2
                    }):Play();
                end, 
                snap = function() --[[ Line: 11882 ]]
                    shared.sfx({
                        SoundId = "rbxassetid://9099667351", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.2, 
                        RollOffMaxDistance = v1
                    }):Play();
                end
            }, 
            Startup = function() --[[ Line: 11892 ]] --[[ Name: Startup ]]

            end, 
            Dual = {
                DoBoth = false, 
                Dist = 3.5, 
                Callback = function(v1681, _, _, v1684) --[[ Line: 11899 ]] --[[ Name: Callback ]]
                    local _, v1686 = v70({
                        SoundId = "rbxassetid://14519690317", 
                        CFrame = CFrame.new(), 
                        Volume = 1.5
                    });
                    v1686.Parent = v1681.PrimaryPart;
                    v1686.WorldPosition = (v1681.PrimaryPart.CFrame * CFrame.new(0, 0, -v1684 / 2)).Position;
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
                show = function(_, v1688) --[[ Line: 11921 ]]
                    local v1689 = game.ReplicatedStorage.Emotes.RPS:Clone();
                    v1689:SetAttribute("EmoteProperty", true);
                    table.insert(v1688, v1689);
                    v1689.ImageLabel.Image = ({
                        "rbxassetid://14519869178", 
                        "rbxassetid://14519869488", 
                        "rbxassetid://14519869787"
                    })[math.random(1, 3)];
                    v1689.Parent = v96["Left Arm"];
                    v1689.Enabled = true;
                    task.delay(1, function() --[[ Line: 11933 ]]
                        l_TweenService_0:Create(v1689.ImageLabel, TweenInfo.new(0.9, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                            Size = UDim2.new(0, 0, 0, 0)
                        }):Play();
                    end);
                end
            }, 
            Startup = function() --[[ Line: 11941 ]] --[[ Name: Startup ]]

            end, 
            Dual = {
                DoBoth = false, 
                Dist = 7.2, 
                Callback = function(v1690, _, _, v1693) --[[ Line: 11948 ]] --[[ Name: Callback ]]
                    local v1694, v1695 = v70({
                        SoundId = "rbxassetid://14519690317", 
                        CFrame = CFrame.new(), 
                        Volume = 1.5
                    });
                    task.delay(0.15, function() --[[ Line: 11955 ]]
                        if v1694.Parent then
                            v1694:Play();
                        end;
                    end);
                    v1695.Parent = v1690.PrimaryPart;
                    v1695.WorldPosition = (v1690.PrimaryPart.CFrame * CFrame.new(0, 0, -v1693 / 2)).Position;
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
                Callback = function(v1696, _, v1698, _) --[[ Line: 11977 ]] --[[ Name: Callback ]]
                    if not v1698.done then
                        v1698.done = true;
                        local l_AnimationPlayer_0 = require(v1696.CharacterHandler:WaitForChild("AnimationPlayer"));
                        l_AnimationPlayer_0 = function(v1701) --[[ Line: 11987 ]]
                            return l_AnimationPlayer_0.playAnimation(v1696:FindFirstChild("Humanoid"), v1701);
                        end;
                        l_AnimationPlayer_0 = l_AnimationPlayer_0(15963617746);
                        l_AnimationPlayer_0.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_0:AdjustWeight(1);
                        l_AnimationPlayer_0:Play();
                        table.insert(v1698, l_AnimationPlayer_0);
                        local v1702, v1703 = v70({
                            SoundId = "rbxassetid://15963599920", 
                            CFrame = CFrame.new(), 
                            Volume = 1
                        });
                        table.insert(v1698, v1702);
                        v1702:Play();
                        v1703.Parent = v1696["Left Arm"];
                        return;
                    else
                        return;
                    end;
                end
            }, 
            Startup = function() --[[ Line: 12010 ]] --[[ Name: Startup ]]

            end, 
            Fix = true, 
            HideWeapon = true, 
            Tag = "steel", 
            Animation = 15963602367, 
            AnimationTwo = 15963617746, 
            Stun = "Freeze"
        }, 
        ["Friendly Hug"] = {
            Startup = function(_, _, _, _) --[[ Line: 12023 ]] --[[ Name: Startup ]]
                if v99 then
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
                Callback = function(v1708, v1709, v1710, _) --[[ Line: 12042 ]] --[[ Name: Callback ]]
                    if not v1710.done then
                        v1710.done = true;
                        local v1712 = shared.cfolder({
                            Name = "RootAnchor"
                        });
                        v1712.Parent = v1708;
                        table.insert(v1710, v1712);
                        l_CollectionService_1:AddTag(v1712, "RemoveOnLeave" .. (v99 or l_PlayerFromCharacter_0 or v1708).Name);
                        local v1713 = {};
                        local v1714 = {};
                        for _, v1716 in pairs({
                            v1708
                        }) do
                            table.insert(v1714, v1716.DescendantAdded:connect(function(v1717) --[[ Line: 12060 ]]
                                if v1717:IsA("BasePart") then
                                    v1717.CollisionGroup = "nocol";
                                    table.insert(v1713, v1717);
                                end;
                            end));
                            for _, v1719 in pairs(v1716:GetDescendants()) do
                                if v1719:IsA("BasePart") then
                                    v1719.CollisionGroup = "nocol";
                                    local v1720 = nil;
                                    v1720 = v1719:GetPropertyChangedSignal("CollisionGroup"):Connect(function() --[[ Line: 12071 ]]
                                        if v1719.CollisionGroup ~= "nocol" then
                                            v1719.CollisionGroup = "nocol";
                                        end;
                                    end);
                                    table.insert(v1714, v1720);
                                    do
                                        local l_v1720_0 = v1720;
                                        task.delay(2, function() --[[ Line: 12078 ]]
                                            if l_v1720_0 then
                                                return l_v1720_0:Disconnect();
                                            else
                                                return;
                                            end;
                                        end);
                                        table.insert(v1713, v1719);
                                    end;
                                end;
                            end;
                        end;
                        v1712:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 12089 ]]
                            if not v1712.Parent then
                                for _, v1723 in pairs(v1714) do
                                    v1723:Disconnect();
                                end;
                                for _, v1725 in pairs(v1713) do
                                    v1725.CollisionGroup = "playercol";
                                end;
                            end;
                        end);
                        l_CollectionService_1:AddTag(v1712, v1709.Name .. "carry");
                        local l_AnimationPlayer_1 = require(v1708.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_1_0 = l_AnimationPlayer_1 --[[ copy: 8 -> 18 ]];
                        local function v1729(v1728) --[[ Line: 12104 ]]
                            return l_l_AnimationPlayer_1_0.playAnimation(v1708:FindFirstChild("Humanoid"), v1728);
                        end;
                        local l_AnimationPlayer_2 = require(v1709.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_2_0 = l_AnimationPlayer_2 --[[ copy: 9 -> 19 ]];
                        l_AnimationPlayer_1 = function(v1732) --[[ Line: 12113 ]]
                            return l_l_AnimationPlayer_2_0.playAnimation(v1709:FindFirstChild("Humanoid"), v1732);
                        end;
                        l_AnimationPlayer_2 = l_AnimationPlayer_1(17097648428);
                        l_AnimationPlayer_2.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_2:AdjustWeight(1);
                        l_AnimationPlayer_2:Play();
                        table.insert(v1710, l_AnimationPlayer_2);
                        l_AnimationPlayer_1(17096821069):AdjustWeight(0.01);
                        table.insert(v1710, l_AnimationPlayer_2.Stopped:Once(function() --[[ Line: 12124 ]]
                            l_AnimationPlayer_1(17097627771):Stop();
                        end));
                        local v1733 = v1729(17097651485);
                        v1733.Priority = Enum.AnimationPriority.Action4;
                        v1733:AdjustWeight(1);
                        v1733:Play();
                        table.insert(v1710, v1733);
                        v70({
                            SoundId = "rbxassetid://17097669243", 
                            Parent = v1709.Torso, 
                            Volume = 1
                        }):Play();
                       shared.repfire({
                            Effect = "Smooth Grab", 
                            CanBypass = true, 
                            Hit = v1708, 
                            StartOffset = v1708.PrimaryPart.CFrame, 
                            From = v1709.PrimaryPart, 
                            Offset = CFrame.new(0, 0, -3), 
                            Anchor = v1712
                        });
                        return;
                    else
                        return;
                    end;
                end
            }, 
            Keyframes = {
                freeze = function(_, _, v1736) --[[ Line: 12153 ]]
                    v1736:AdjustSpeed(0);
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
            Startup = function(v1737, _, v1739, _) --[[ Line: 12168 ]] --[[ Name: Startup ]]
                if v99 then
                    return;
                else
                    v70({
                        SoundId = "rbxassetid://17106578615", 
                        Parent = v96.PrimaryPart, 
                        Volume = 1
                    }):Play();
                    local v1741 = game.ReplicatedStorage.Emotes.CHAIRBASE:Clone();
                    v1741:SetAttribute("EmoteProperty", true);
                    table.insert(v1737, v1741);
                    v1739.Handle = v1741;
                    local l_Handle_41 = v1741.Handle;
                    l_Handle_41:SetAttribute("EmoteProperty", true);
                    table.insert(v1737, l_Handle_41);
                    v1739.md = l_Handle_41;
                    v1741.Name = "CHAIRBASE";
                    l_Handle_41.Part0 = v96.PrimaryPart;
                    l_Handle_41.Part1 = v1741;
                    l_Handle_41.Parent = v96.PrimaryPart;
                    v1741.Parent = v96;
                    local v1743 = game.ReplicatedStorage.Emotes.Clipper:Clone();
                    v1743:SetAttribute("EmoteProperty", true);
                    table.insert(v1737, v1743);
                    v1739.Handle = v1743;
                    local l_Handle_42 = v1743.Handle;
                    l_Handle_42:SetAttribute("EmoteProperty", true);
                    table.insert(v1737, l_Handle_42);
                    v1739.md = l_Handle_42;
                    v1743.Name = "Clipper";
                    l_Handle_42.Part0 = v96["Right Arm"];
                    l_Handle_42.Part1 = v1743;
                    l_Handle_42.Parent = v96["Right Arm"];
                    v1743.Parent = v96;
                    return;
                end;
            end, 
            Dual = {
                DoBoth = false, 
                NoRotate = 0, 
                Freeze = false, 
                Attach = true, 
                RotateCheck = true, 
                Callback = function(v1745, v1746, v1747, _) --[[ Line: 12202 ]] --[[ Name: Callback ]]
                    if not v1747.done then
                        v1747.done = true;
                        local v1749 = shared.cfolder({
                            Name = "RootAnchor"
                        });
                        v1749.Parent = v1745;
                        table.insert(v1747, v1749);
                        l_CollectionService_1:AddTag(v1749, "RemoveOnLeave" .. (v99 or l_PlayerFromCharacter_0 or v1745).Name);
                        local v1750 = {};
                        local v1751 = {};
                        for _, v1753 in pairs({
                            v1745
                        }) do
                            table.insert(v1751, v1753.DescendantAdded:connect(function(v1754) --[[ Line: 12219 ]]
                                if v1754:IsA("BasePart") then
                                    v1754.CollisionGroup = "nocol";
                                    table.insert(v1750, v1754);
                                end;
                            end));
                            for _, v1756 in pairs(v1753:GetDescendants()) do
                                if v1756:IsA("BasePart") then
                                    v1756.CollisionGroup = "nocol";
                                    table.insert(v1750, v1756);
                                end;
                            end;
                        end;
                        v1749:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 12234 ]]
                            if not v1749.Parent then
                                for _, v1758 in pairs(v1751) do
                                    v1758:Disconnect();
                                end;
                                for _, v1760 in pairs(v1750) do
                                    v1760.CollisionGroup = "playercol";
                                end;
                            end;
                        end);
                        l_CollectionService_1:AddTag(v1749, v1746.Name .. "barber");
                        v70({
                            SoundId = "rbxassetid://17106662871", 
                            Parent = v1745.Head, 
                            TimePosition = 0.15, 
                            Volume = 0.5
                        }):Resume();
                        local l_AnimationPlayer_3 = require(v1745.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_3_0 = l_AnimationPlayer_3 --[[ copy: 8 -> 17 ]];
                        local function v1764(v1763) --[[ Line: 12256 ]]
                            return l_l_AnimationPlayer_3_0.playAnimation(v1745:FindFirstChild("Humanoid"), v1763);
                        end;
                        local l_AnimationPlayer_4 = require(v1746.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_4_0 = l_AnimationPlayer_4 --[[ copy: 9 -> 18 ]];
                        l_AnimationPlayer_3 = function(v1767) --[[ Line: 12264 ]]
                            return l_l_AnimationPlayer_4_0.playAnimation(v1746:FindFirstChild("Humanoid"), v1767);
                        end;
                        l_AnimationPlayer_4 = l_AnimationPlayer_3(17106475377);
                        l_AnimationPlayer_4.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_4:AdjustWeight(1);
                        l_AnimationPlayer_4:Play(0);
                        table.insert(v1747, l_AnimationPlayer_4);
                        l_AnimationPlayer_3(17106466215):AdjustWeight(0.001);
                        v1764(17106466215):AdjustWeight(0.001);
                        local v1768 = false;
                        table.insert(v1747, l_AnimationPlayer_4.Stopped:Once(function() --[[ Line: 12278 ]]
                            l_AnimationPlayer_3(17106466215):Stop(0);
                            v1764(17106466215):Stop(0);
                            v1768 = true;
                        end));
                        task.delay(9.3, function() --[[ Line: 12284 ]]
                            if v1768 or not l_AnimationPlayer_4.IsPlaying then
                                return;
                            else
                                for _, v1770 in pairs(v1745:GetDescendants()) do
                                    if v1770:IsA("Accessory") and v1770:FindFirstChild("HairAttachment", true) then
                                        v1770:Destroy();
                                    end;
                                end;
                                local l_Children_0 = game.ReplicatedStorage.Emotes.Hairs:GetChildren();
                                l_Children_0 = l_Children_0[math.random(#l_Children_0)]:Clone();
                                v1745.Humanoid:AddAccessory(l_Children_0);
                                return;
                            end;
                        end);
                        local v1772 = v1764(17106484670);
                        v1772.Priority = Enum.AnimationPriority.Action4;
                        v1772:AdjustWeight(1);
                        v1772:Play(0);
                        table.insert(v1747, v1772);
                       shared.repfire({
                            Effect = "Smooth Grab", 
                            CanBypass = true, 
                            Hit = v1745, 
                            StartOffset = v1745.PrimaryPart.CFrame, 
                            From = v1746.PrimaryPart, 
                            NoLook = true, 
                            Offset = CFrame.new(-3, 0, 0), 
                            Anchor = v1749
                        });
                        return;
                    else
                        return;
                    end;
                end
            }, 
            Keyframes = {
                freeze = function(_, _, v1775) --[[ Line: 12317 ]]
                    v1775:AdjustSpeed(0);
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
            Startup = function(v1776, _, v1778, _) --[[ Line: 12332 ]] --[[ Name: Startup ]]
                local v1780 = game.ReplicatedStorage.Emotes.Racket:Clone();
                v1780:SetAttribute("EmoteProperty", true);
                table.insert(v1776, v1780);
                v1778.Handle = v1780;
                local l_m6d_24 = v1780.m6d;
                l_m6d_24:SetAttribute("EmoteProperty", true);
                table.insert(v1776, l_m6d_24);
                v1778.md = l_m6d_24;
                l_m6d_24.Name = "Handle";
                l_m6d_24.Part0 = v96["Right Arm"];
                l_m6d_24.Part1 = v1780.Handle;
                l_m6d_24.Parent = v96["Right Arm"];
                v1780.Parent = v96;
            end, 
            Dual = {
                DoBoth = false, 
                NoRotate = 0, 
                Attach = true, 
                RotateCheck = true, 
                Callback = function(v1782, v1783, v1784, _, v1786) --[[ Line: 12347 ]] --[[ Name: Callback ]]
                    if not v1784.done then
                        v1784.done = true;
                        local v1787 = shared.cfolder({
                            Name = "RootAnchor"
                        });
                        v1787.Parent = v1782;
                        table.insert(v1784, v1787);
                        l_CollectionService_1:AddTag(v1787, "RemoveOnLeave" .. (v99 or l_PlayerFromCharacter_0 or v1782).Name);
                        local v1788 = game.ReplicatedStorage.Emotes.TablePP:Clone();
                        v1788:SetAttribute("EmoteProperty", true);
                        table.insert(v1784, v1788);
                        v1786.Handle = v1788;
                        v1788.Name = "Table";
                        l_CollectionService_1:AddTag(v1788, "RemoveOnLeave" .. v1783.Name);
                        local l_Table_0 = v1788.Table;
                        l_Table_0:SetAttribute("EmoteProperty", true);
                        table.insert(v1784, l_Table_0);
                        v1786.md = l_Table_0;
                        l_Table_0.Part0 = v1783.PrimaryPart;
                        l_Table_0.Part1 = v1788;
                        l_Table_0.Parent = v1783.PrimaryPart;
                        l_CollectionService_1:AddTag(l_Table_0, "RemoveOnLeave" .. v1783.Name);
                        v1788.Parent = v1783;
                        v70({
                            SoundId = "rbxassetid://1837226630", 
                            Parent = v1788, 
                            Volume = 0.5
                        }):Play();
                        local v1790 = game.ReplicatedStorage.Emotes.Ball:Clone();
                        v1790:SetAttribute("EmoteProperty", true);
                        table.insert(v1784, v1790);
                        v1786.Handle = v1790;
                        l_CollectionService_1:AddTag(v1790, "RemoveOnLeave" .. v1783.Name);
                        local l_Ball_1 = v1790.Ball;
                        l_Ball_1:SetAttribute("EmoteProperty", true);
                        table.insert(v1784, l_Ball_1);
                        v1786.md = l_Ball_1;
                        l_Ball_1.Part0 = v1783.PrimaryPart;
                        l_Ball_1.Part1 = v1790;
                        l_Ball_1.Parent = v1783.PrimaryPart;
                        l_CollectionService_1:AddTag(l_Ball_1, "RemoveOnLeave" .. v1783.Name);
                        v1790.Parent = v1783;
                        local v1792 = {};
                        local v1793 = {};
                        for _, v1795 in pairs({
                            v1782
                        }) do
                            table.insert(v1793, v1795.DescendantAdded:connect(function(v1796) --[[ Line: 12389 ]]
                                if v1796:IsA("BasePart") then
                                    v1796.CollisionGroup = "nocol";
                                    table.insert(v1792, v1796);
                                end;
                            end));
                            for _, v1798 in pairs(v1795:GetDescendants()) do
                                if v1798:IsA("BasePart") then
                                    v1798.CollisionGroup = "nocol";
                                    table.insert(v1792, v1798);
                                end;
                            end;
                        end;
                        v1787:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 12404 ]]
                            if not v1787.Parent then
                                for _, v1800 in pairs(v1793) do
                                    v1800:Disconnect();
                                end;
                                for _, v1802 in pairs(v1792) do
                                    v1802.CollisionGroup = "playercol";
                                end;
                            end;
                        end);
                        l_CollectionService_1:AddTag(v1787, v1783.Name .. "barber");
                        local l_AnimationPlayer_5 = require(v1782.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_5_0 = l_AnimationPlayer_5 --[[ copy: 13 -> 22 ]];
                        local function v1806(v1805) --[[ Line: 12419 ]]
                            return l_l_AnimationPlayer_5_0.playAnimation(v1782:FindFirstChild("Humanoid"), v1805);
                        end;
                        local l_AnimationPlayer_6 = require(v1783.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_6_0 = l_AnimationPlayer_6 --[[ copy: 14 -> 23 ]];
                        l_AnimationPlayer_5 = function(v1809) --[[ Line: 12427 ]]
                            return l_l_AnimationPlayer_6_0.playAnimation(v1783:FindFirstChild("Humanoid"), v1809);
                        end;
                        l_AnimationPlayer_6 = l_AnimationPlayer_5(17108522793);
                        local v1810 = 1;
                        table.insert(v1784, l_AnimationPlayer_6:GetMarkerReachedSignal("clap"):Connect(function() --[[ Line: 12434 ]]
                            shared.sfx({
                                SoundId = ({
                                    "rbxassetid://17108510911", 
                                    "rbxassetid://17108511010", 
                                    "rbxassetid://17108511153"
                                })[math.random(1, 3)], 
                                Volume = 0.75, 
                                Parent = v1790, 
                                RollOffMaxDistance = v1
                            }):Play();
                            v1810 = math.clamp(v1810 + 0.005, 1, 10);
                            l_AnimationPlayer_5(17108522793):AdjustSpeed(v1810);
                            v1806(17108399691):AdjustSpeed(v1810);
                        end));
                        l_AnimationPlayer_6.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_6:AdjustWeight(1);
                        l_AnimationPlayer_6:Play(0);
                        table.insert(v1784, l_AnimationPlayer_6);
                        l_AnimationPlayer_5(17108345170):AdjustWeight(0.001);
                        v1806(17108345170):AdjustWeight(0.001);
                        local v1811 = v1806(17108399691);
                        v1811.Priority = Enum.AnimationPriority.Action4;
                        v1811:AdjustWeight(1);
                        v1811:Play(0);
                        table.insert(v1784, v1811);
                       shared.repfire({
                            Effect = "Smooth Grab", 
                            CanBypass = true, 
                            Hit = v1782, 
                            StartOffset = v1782.PrimaryPart.CFrame, 
                            From = v1783.PrimaryPart, 
                            Offset = CFrame.new(0, 0, -11.304), 
                            Anchor = v1787
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
            Startup = function(_, _, _, _) --[[ Line: 12483 ]] --[[ Name: Startup ]]
                if v99 then
                    return;
                else
                    return;
                end;
            end, 
            Sounds = {
                [0] = {
                    SoundId = v99 and "rbxassetid://17466175687" or "rbxassetid://17466175395", 
                    ParentTorso = true, 
                    Volume = 1.5
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v1818) --[[ Line: 12498 ]]
                    v1818:AdjustSpeed(0);
                end
            }, 
            Dual = {
                DoBoth = false, 
                NoRotate = 0, 
                Freeze = false, 
                Attach = true, 
                CallOnAccept = true, 
                RotateCheck = true, 
                Callback = function(v1819, v1820, v1821, _) --[[ Line: 12510 ]] --[[ Name: Callback ]]
                    if not v1821.done then
                        v1821.done = true;
                        local v1823 = shared.cfolder({
                            Name = "RootAnchor"
                        });
                        v1823.Parent = v1819;
                        table.insert(v1821, v1823);
                        l_CollectionService_1:AddTag(v1823, "RemoveOnLeave" .. (v99 or l_PlayerFromCharacter_0 or v1819).Name);
                        local v1824 = {};
                        local v1825 = {};
                        for _, v1827 in pairs({
                            v1819
                        }) do
                            table.insert(v1825, v1827.DescendantAdded:connect(function(v1828) --[[ Line: 12527 ]]
                                if v1828:IsA("BasePart") then
                                    v1828.CollisionGroup = "nocol";
                                    table.insert(v1824, v1828);
                                end;
                            end));
                            for _, v1830 in pairs(v1827:GetDescendants()) do
                                if v1830:IsA("BasePart") then
                                    v1830.CollisionGroup = "nocol";
                                    table.insert(v1824, v1830);
                                end;
                            end;
                        end;
                        v1823:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 12542 ]]
                            if not v1823.Parent then
                                for _, v1832 in pairs(v1825) do
                                    v1832:Disconnect();
                                end;
                                for _, v1834 in pairs(v1824) do
                                    v1834.CollisionGroup = "playercol";
                                end;
                            end;
                        end);
                        l_CollectionService_1:AddTag(v1823, v1820.Name .. "carry");
                        local l_AnimationPlayer_7 = require(v1819.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local function v1837(v1836) --[[ Line: 12557 ]]
                            return l_AnimationPlayer_7.playAnimation(v1819:FindFirstChild("Humanoid"), v1836);
                        end;
                        local l_AnimationPlayer_8 = require(v1820.CharacterHandler:WaitForChild("AnimationPlayer"));
                        l_AnimationPlayer_8 = function(v1839) --[[ Line: 12565 ]]
                            return l_AnimationPlayer_8.playAnimation(v1820:FindFirstChild("Humanoid"), v1839);
                        end;
                        l_AnimationPlayer_8 = l_AnimationPlayer_8(17465453123);
                        l_AnimationPlayer_8.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_8:AdjustWeight(1);
                        l_AnimationPlayer_8:Play();
                        table.insert(v1821, l_AnimationPlayer_8);
                        task.delay(1.2, function() --[[ Line: 12576 ]]
                            if l_AnimationPlayer_8.IsPlaying then
                                shared.sfx({
                                    SoundId = "rbxassetid://17466175248", 
                                    CFrame = CFrame.new((v1819.PrimaryPart.Position + v1820.PrimaryPart.Position) / 2), 
                                    Volume = 2
                                }):Play();
                            end;
                        end);
                        local v1840 = v1837(17465871318);
                        v1840.Priority = Enum.AnimationPriority.Action4;
                        v1840:AdjustWeight(1);
                        v1840:Play();
                        table.insert(v1821, v1840);
                        task.delay(2.833, function() --[[ Line: 12592 ]]
                            local l_NumberValue_0 = Instance.new("NumberValue");
                            l_NumberValue_0.Value = 1;
                            table.insert(v1821, l_NumberValue_0);
                            table.insert(v1821, l_NumberValue_0:GetPropertyChangedSignal("Value"):Connect(function() --[[ Line: 12596 ]]
                                l_AnimationPlayer_8:AdjustSpeed(l_NumberValue_0.Value);
                                v1840:AdjustSpeed(l_NumberValue_0.Value);
                            end));
                            l_TweenService_0:Create(l_NumberValue_0, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Value = 0
                            }):Play();
                        end);
                       shared.repfire({
                            Effect = "Smooth Grab", 
                            CanBypass = true, 
                            Hit = v1819, 
                            StartOffset = v1819.PrimaryPart.CFrame, 
                            From = v1820.PrimaryPart, 
                            Offset = CFrame.new(0, 0, -4.5), 
                            Anchor = v1823
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
            Startup = function(_, _, _, _) --[[ Line: 12628 ]] --[[ Name: Startup ]]
                if v99 then
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
                Callback = function(v1846, v1847, v1848, _) --[[ Line: 12641 ]] --[[ Name: Callback ]]
                    if not v1848.done then
                        v1848.done = true;
                        l_CollectionService_1:AddTag(anchor, v1847.Name .. "carry");
                        local l_AnimationPlayer_9 = require(v1846.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_9_0 = l_AnimationPlayer_9 --[[ copy: 5 -> 8 ]];
                        local function v1853(v1852) --[[ Line: 12660 ]]
                            return l_l_AnimationPlayer_9_0.playAnimation(v1846:FindFirstChild("Humanoid"), v1852);
                        end;
                        local l_AnimationPlayer_10 = require(v1847.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_10_0 = l_AnimationPlayer_10 --[[ copy: 6 -> 9 ]];
                        l_AnimationPlayer_9 = function(v1856) --[[ Line: 12668 ]]
                            return l_l_AnimationPlayer_10_0.playAnimation(v1847:FindFirstChild("Humanoid"), v1856);
                        end;
                        l_AnimationPlayer_10 = l_AnimationPlayer_9(72439513503134);
                        l_AnimationPlayer_10.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_10:AdjustWeight(1);
                        l_AnimationPlayer_10:Play();
                        table.insert(v1848, l_AnimationPlayer_10);
                        v1853(83001379083977):AdjustWeight(0.01);
                        l_AnimationPlayer_9(83001379083977):AdjustWeight(0.01);
                        table.insert(v1848, l_AnimationPlayer_10.Stopped:Once(function() --[[ Line: 12681 ]]
                            l_AnimationPlayer_9(83001379083977):Stop(0);
                        end));
                        local v1857 = v1853(90129590700134);
                        v1857.Priority = Enum.AnimationPriority.Action4;
                        v1857:AdjustWeight(1);
                        v1857:Play();
                        table.insert(v1848, v1857);
                        v70({
                            SoundId = "rbxassetid://94760577993598", 
                            Parent = v1847.Torso, 
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
            Startup = function(_, _, _, _) --[[ Line: 12709 ]] --[[ Name: Startup ]]
                if v99 then
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
                Callback = function(v1862, v1863, v1864, _, _, v1867) --[[ Line: 12723 ]] --[[ Name: Callback ]]
                    if not v1864.done then
                        v1864.done = true;
                        local l_AnimationPlayer_11 = require(v1862.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_11_0 = l_AnimationPlayer_11 --[[ copy: 7 -> 11 ]];
                        local function v1871(v1870) --[[ Line: 12733 ]]
                            return l_l_AnimationPlayer_11_0.playAnimation(v1862:FindFirstChild("Humanoid"), v1870);
                        end;
                        local l_AnimationPlayer_12 = require(v1863.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_12_0 = l_AnimationPlayer_12 --[[ copy: 8 -> 12 ]];
                        l_AnimationPlayer_11 = function(v1874) --[[ Line: 12741 ]]
                            return l_l_AnimationPlayer_12_0.playAnimation(v1863:FindFirstChild("Humanoid"), v1874);
                        end;
                        l_AnimationPlayer_12 = l_AnimationPlayer_11(114351492594331);
                        l_AnimationPlayer_12.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_12:AdjustWeight(1);
                        l_AnimationPlayer_12:Play();
                        table.insert(v1864, l_AnimationPlayer_12);
                        v1871(109864108341281):AdjustWeight(0.01);
                        l_AnimationPlayer_11(109864108341281):AdjustWeight(0.01);
                        table.insert(v1864, l_AnimationPlayer_12.Stopped:Once(function() --[[ Line: 12753 ]]
                            local v1875 = l_AnimationPlayer_11(114307604981653);
                            table.insert(v1864, v1875);
                            v1875:Play();
                            local v1876 = v1871(119026456567237);
                            table.insert(v1864, v1876);
                            v1876:Play();
                        end));
                        local v1877 = v1871(136739918287439);
                        v1877.Priority = Enum.AnimationPriority.Action4;
                        v1877:AdjustWeight(1);
                        v1877:Play();
                        table.insert(v1864, v1877);
                        task.delay(0.917, function() --[[ Line: 12766 ]]
                            if v1867.interrupted then
                                return;
                            else
                                local l_Attachment_11 = Instance.new("Attachment");
                                l_Attachment_11:SetAttribute("EmoteProperty", true);
                                table.insert(v1864, l_Attachment_11);
                                l_Attachment_11.Parent = v1863["Right Arm"];
                                l_Attachment_11.Position = Vector3.new(0.5, -1, -0, 0);
                                for _, v1880 in pairs(game.ReplicatedStorage.Emotes.FistTouch:GetChildren()) do
                                    v1880:Clone().Parent = l_Attachment_11;
                                end;
                                for _, v1882 in pairs(l_Attachment_11:GetChildren()) do
                                    v1882:Emit(v1882:GetAttribute("EmitCount"));
                                end;
                                return;
                            end;
                        end);
                        task.delay(1.667, function() --[[ Line: 12779 ]]
                            if v1867.interrupted then
                                return;
                            else
                                local v1883 = game.ReplicatedStorage.Emotes.Menacing:Clone();
                                v1883:SetAttribute("EmoteProperty", true);
                                table.insert(v1864, v1883);
                                local l_Weld_8 = Instance.new("Weld");
                                l_Weld_8.Part0 = v1863.PrimaryPart;
                                l_Weld_8.Part1 = v1883;
                                l_Weld_8.C0 = CFrame.new(1.75713348, 0.5, 1.35508728);
                                l_Weld_8.Parent = v1883;
                                v1883.Parent = v1863;
                                for _, v1886 in pairs(v1883:GetDescendants()) do
                                    if v1886:IsA("ParticleEmitter") then
                                        v1886:Emit(v1886:GetAttribute("EmitCount"));
                                    end;
                                end;
                                return;
                            end;
                        end);
                        local l_Attachment_12 = Instance.new("Attachment");
                        l_Attachment_12:SetAttribute("EmoteProperty", true);
                        table.insert(v1864, l_Attachment_12);
                        l_Attachment_12.Parent = v1863.PrimaryPart;
                        l_Attachment_12.Position = Vector3.new(2.325000047683716, 0, 0.20900000631809235, 0);
                        v70({
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
            Startup = function(_, _, _, _) --[[ Line: 12818 ]] --[[ Name: Startup ]]
                if v99 then
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
                Callback = function(v1892, v1893, v1894, _) --[[ Line: 12830 ]] --[[ Name: Callback ]]
                    if not v1894.done then
                        v1894.done = true;
                        local v1896 = shared.cfolder({
                            Name = "RootAnchor"
                        });
                        v1896.Parent = v1892;
                        table.insert(v1894, v1896);
                        l_CollectionService_1:AddTag(v1896, "RemoveOnLeave" .. (v99 or l_PlayerFromCharacter_0 or v1892).Name);
                        local v1897 = {};
                        local v1898 = {};
                        for _, v1900 in pairs({
                            v1892
                        }) do
                            table.insert(v1898, v1900.DescendantAdded:connect(function(v1901) --[[ Line: 12847 ]]
                                if v1901:IsA("BasePart") then
                                    v1901.CollisionGroup = "nocol";
                                    table.insert(v1897, v1901);
                                end;
                            end));
                            for _, v1903 in pairs(v1900:GetDescendants()) do
                                if v1903:IsA("BasePart") then
                                    v1903.CollisionGroup = "nocol";
                                    table.insert(v1897, v1903);
                                end;
                            end;
                        end;
                        v1896:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 12862 ]]
                            if not v1896.Parent then
                                for _, v1905 in pairs(v1898) do
                                    v1905:Disconnect();
                                end;
                                for _, v1907 in pairs(v1897) do
                                    v1907.CollisionGroup = "playercol";
                                end;
                            end;
                        end);
                        l_CollectionService_1:AddTag(v1896, v1893.Name .. "carry");
                        v70({
                            SoundId = "rbxassetid://17096532969", 
                            Parent = v1893.PrimaryPart, 
                            Looped = true, 
                            Volume = 0.5
                        }):Play();
                        local l_AnimationPlayer_13 = require(v1892.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_13_0 = l_AnimationPlayer_13 --[[ copy: 8 -> 17 ]];
                        local function v1911(v1910) --[[ Line: 12884 ]]
                            return l_l_AnimationPlayer_13_0.playAnimation(v1892:FindFirstChild("Humanoid"), v1910);
                        end;
                        local l_AnimationPlayer_14 = require(v1893.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_14_0 = l_AnimationPlayer_14 --[[ copy: 9 -> 18 ]];
                        l_AnimationPlayer_13 = function(v1914) --[[ Line: 12892 ]]
                            return l_l_AnimationPlayer_14_0.playAnimation(v1893:FindFirstChild("Humanoid"), v1914);
                        end;
                        l_AnimationPlayer_14 = l_AnimationPlayer_13(17096828632);
                        l_AnimationPlayer_14.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_14:AdjustWeight(1);
                        l_AnimationPlayer_14:Play();
                        table.insert(v1894, l_AnimationPlayer_14);
                        v1911(17096821069):AdjustWeight(0.01);
                        l_AnimationPlayer_13(17096821069):AdjustWeight(0.01);
                        table.insert(v1894, l_AnimationPlayer_14.Stopped:Once(function() --[[ Line: 12904 ]]
                            l_AnimationPlayer_13(17096821069):Stop(0);
                        end));
                        local v1915 = v1911(17096829509);
                        v1915.Priority = Enum.AnimationPriority.Action4;
                        v1915:AdjustWeight(1);
                        v1915:Play();
                        table.insert(v1894, v1915);
                        v70({
                            SoundId = "rbxassetid://17096893930", 
                            Parent = v1893.Torso, 
                            Volume = 1
                        }):Play();
                       shared.repfire({
                            Effect = "Smooth Grab", 
                            CanBypass = true, 
                            Hit = v1892, 
                            StartOffset = v1892.PrimaryPart.CFrame, 
                            From = v1893.PrimaryPart, 
                            Offset = CFrame.new(0, 0, -3), 
                            Anchor = v1896
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
            Startup = function(v1916, _, v1918, _) --[[ Line: 12942 ]] --[[ Name: Startup ]]
                if v99 then
                    return;
                else
                    local v1920 = shared.cfolder({
                        Name = "Freeze"
                    });
                    if not v1918.stun then
                        v1918.stun = {};
                    end;
                    table.insert(v1918.stun, v1920);
                    table.insert(v1916, v1920);
                    v1920:SetAttribute("DontInterrupt", true);
                    v1920:SetAttribute("NoStop", true);
                    v1920:SetAttribute("EmoteProperty", true);
                    l_CollectionService_1:AddTag(v1920, "Startupstun" .. v96.Name);
                    task.delay(0, function() --[[ Line: 12960 ]]
                        v1920.Parent = v96;
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
                Callback = function(v1921, v1922, v1923, _, _) --[[ Line: 12972 ]] --[[ Name: Callback ]]
                    task.delay(0.03, function() --[[ Line: 12973 ]]
                        for _, v1927 in pairs(l_CollectionService_1:GetTagged("Startupstun" .. v1922.Name)) do
                            game:GetService("Debris"):AddItem(v1927, 0);
                        end;
                    end);
                    if not v1923.done then
                        v1923.done = true;
                        local v1928 = shared.cfolder({
                            Name = "RootAnchor"
                        });
                        v1928.Parent = v1921;
                        table.insert(v1923, v1928);
                        l_CollectionService_1:AddTag(v1928, "RemoveOnLeave" .. (v99 or l_PlayerFromCharacter_0 or v1921).Name);
                        local v1929 = {};
                        local v1930 = {};
                        for _, v1932 in pairs({
                            v1921
                        }) do
                            table.insert(v1930, v1932.DescendantAdded:connect(function(v1933) --[[ Line: 12995 ]]
                                if v1933:IsA("BasePart") then
                                    v1933.CollisionGroup = "nocol";
                                    table.insert(v1929, v1933);
                                end;
                            end));
                            for _, v1935 in pairs(v1932:GetDescendants()) do
                                if v1935:IsA("BasePart") then
                                    v1935.CollisionGroup = "nocol";
                                    table.insert(v1929, v1935);
                                end;
                            end;
                        end;
                        v1928:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 13010 ]]
                            if not v1928.Parent then
                                for _, v1937 in pairs(v1930) do
                                    v1937:Disconnect();
                                end;
                                for _, v1939 in pairs(v1929) do
                                    v1939.CollisionGroup = "playercol";
                                end;
                            end;
                        end);
                        l_CollectionService_1:AddTag(v1928, v1922.Name .. "carry");
                        local v1940 = v70({
                            SoundId = "rbxassetid://17120622268", 
                            Parent = v1921.Torso, 
                            Looped = true, 
                            Volume = 0.2
                        });
                        v1940:Play();
                        l_CollectionService_1:AddTag(v1940, "RemoveOnLeave" .. v1921.Name);
                        l_CollectionService_1:AddTag(v1940, "RemoveOnLeave" .. v1922.Name);
                        local l_AnimationPlayer_15 = require(v1921.CharacterHandler:WaitForChild("AnimationPlayer"));
                        l_AnimationPlayer_15 = function(v1942) --[[ Line: 13034 ]]
                            return l_AnimationPlayer_15.playAnimation(v1921:FindFirstChild("Humanoid"), v1942);
                        end;
                        l_AnimationPlayer_15 = l_AnimationPlayer_15(17120643504);
                        l_AnimationPlayer_15.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_15:AdjustWeight(1);
                        l_AnimationPlayer_15:Play();
                        table.insert(v1923, l_AnimationPlayer_15);
                       shared.repfire({
                            Effect = "Smooth Grab", 
                            CanBypass = true, 
                            Hit = v1921, 
                            NoLook = true, 
                            From = v1922.PrimaryPart, 
                            Offset = CFrame.new(-0.5, 0, -0.025), 
                            Anchor = v1928
                        });
                        return;
                    else
                        return;
                    end;
                end
            }, 
            Keyframes = {
                clap = function() --[[ Line: 13058 ]]
                    if not v99 then
                        return;
                    else
                        v70({
                            SoundId = "rbxassetid://" .. ({
                                7455224144, 
                                7455246815, 
                                7455224490
                            })[math.random(1, 3)], 
                            Parent = v99["Left Leg"], 
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
            Startup = function(v1943, _, v1945, _) --[[ Line: 13084 ]] --[[ Name: Startup ]]
                if v99 then
                    return;
                else
                    local v1947 = shared.cfolder({
                        Name = "Freeze"
                    });
                    if not v1945.stun then
                        v1945.stun = {};
                    end;
                    table.insert(v1945.stun, v1947);
                    table.insert(v1943, v1947);
                    v1947:SetAttribute("DontInterrupt", true);
                    v1947:SetAttribute("NoStop", true);
                    v1947:SetAttribute("EmoteProperty", true);
                    l_CollectionService_1:AddTag(v1947, "Startupstun" .. v96.Name);
                    print(v96);
                    task.delay(0, function() --[[ Line: 13102 ]]
                        v1947.Parent = v96;
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
                Callback = function(v1948, v1949, v1950, _, _) --[[ Line: 13114 ]] --[[ Name: Callback ]]
                    task.delay(0.03, function() --[[ Line: 13115 ]]
                        for _, v1954 in pairs(l_CollectionService_1:GetTagged("Startupstun" .. v1949.Name)) do
                            game:GetService("Debris"):AddItem(v1954, 0);
                        end;
                    end);
                    if not v1950.done then
                        v1950.done = true;
                        local v1955 = shared.cfolder({
                            Name = "RootAnchor"
                        });
                        v1955.Parent = v1948;
                        table.insert(v1950, v1955);
                        l_CollectionService_1:AddTag(v1955, "RemoveOnLeave" .. (v99 or l_PlayerFromCharacter_0 or v1948).Name);
                        local v1956 = {};
                        local v1957 = {};
                        for _, v1959 in pairs({
                            v1948
                        }) do
                            table.insert(v1957, v1959.DescendantAdded:connect(function(v1960) --[[ Line: 13137 ]]
                                if v1960:IsA("BasePart") then
                                    v1960.CollisionGroup = "nocol";
                                    table.insert(v1956, v1960);
                                end;
                            end));
                            for _, v1962 in pairs(v1959:GetDescendants()) do
                                if v1962:IsA("BasePart") then
                                    v1962.CollisionGroup = "nocol";
                                    table.insert(v1956, v1962);
                                end;
                            end;
                        end;
                        v1955:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 13152 ]]
                            if not v1955.Parent then
                                for _, v1964 in pairs(v1957) do
                                    v1964:Disconnect();
                                end;
                                for _, v1966 in pairs(v1956) do
                                    v1966.CollisionGroup = "playercol";
                                end;
                            end;
                        end);
                        l_CollectionService_1:AddTag(v1955, v1949.Name .. "carry");
                        v70({
                            SoundId = "rbxassetid://17096532969", 
                            Parent = v1949.PrimaryPart, 
                            Looped = true, 
                            Volume = 0.5
                        }):Play();
                        local l_AnimationPlayer_16 = require(v1948.CharacterHandler:WaitForChild("AnimationPlayer"));
                        l_AnimationPlayer_16 = function(v1968) --[[ Line: 13174 ]]
                            return l_AnimationPlayer_16.playAnimation(v1948:FindFirstChild("Humanoid"), v1968);
                        end;
                        l_AnimationPlayer_16 = l_AnimationPlayer_16(17096487990);
                        l_AnimationPlayer_16.Priority = Enum.AnimationPriority.Action4;
                        l_AnimationPlayer_16:AdjustWeight(1);
                        l_AnimationPlayer_16:Play();
                        table.insert(v1950, l_AnimationPlayer_16);
                       shared.repfire({
                            Effect = "Smooth Grab", 
                            CanBypass = true, 
                            Hit = v1948, 
                            From = v1949.PrimaryPart, 
                            Offset = CFrame.new(0, 0, -3), 
                            Anchor = v1955
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
            Startup = function(v1969, _, v1971, _) --[[ Line: 13212 ]] --[[ Name: Startup ]]
                if v99 then
                    return;
                else
                    local v1973 = game.ReplicatedStorage.Emotes.cart:Clone();
                    v1973:SetAttribute("EmoteProperty", true);
                    table.insert(v1969, v1973);
                    v1971.Handle = v1973;
                    local l_cart_0 = v1973.cart;
                    l_cart_0:SetAttribute("EmoteProperty", true);
                    table.insert(v1969, l_cart_0);
                    v1971.md = l_cart_0;
                    v1973.Name = "cart";
                    l_cart_0.Part0 = v96.PrimaryPart;
                    l_cart_0.Part1 = v1973;
                    l_cart_0.Parent = v96.PrimaryPart;
                    v1973.Parent = v96;
                    shared.sfx({
                        SoundId = "rbxassetid://15989599068", 
                        Parent = v1973, 
                        Looped = true, 
                        Volume = 0.5, 
                        RollOffMaxDistance = v1
                    }):Play();
                    local l_ForceField_2 = v96:FindFirstChildOfClass("ForceField");
                    local v1976 = false;
                    if workspace:GetAttribute("GameStarted") or not workspace:GetAttribute("RankedOnes") then
                        v1976 = true;
                    end;
                    if l_ForceField_2 and l_ForceField_2:GetAttribute("Emote") then
                        v1976 = false;
                    end;
                    if v1976 then
                        v1971.first = 0;
                        local l_BodyVelocity_2 = Instance.new("BodyVelocity");
                        l_BodyVelocity_2:SetAttribute("EmoteProperty", true);
                        table.insert(v1969, l_BodyVelocity_2);
                        v1971.BV = l_BodyVelocity_2;
                        l_BodyVelocity_2.Name = "moveme";
                        l_BodyVelocity_2.MaxForce = Vector3.new(1, 0, 1, 0) * 40000;
                        l_BodyVelocity_2:SetAttribute("Speed", 6);
                        l_BodyVelocity_2:SetAttribute("Goto", 6);
                        l_BodyVelocity_2:SetAttribute("RayCheck", true);
                        l_BodyVelocity_2:SetAttribute("End", 1);
                        l_BodyVelocity_2:SetAttribute("Fallout", 0.995);
                        l_BodyVelocity_2.Parent = v96.PrimaryPart;
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
                Callback = function(v1978, v1979, v1980, _) --[[ Line: 13261 ]] --[[ Name: Callback ]]
                    if not v1980.done then
                        v1980.done = true;
                        local v1982 = shared.cfolder({
                            Name = "RootAnchor"
                        });
                        v1982.Parent = v1978;
                        table.insert(v1980, v1982);
                        l_CollectionService_1:AddTag(v1982, "RemoveOnLeave" .. (v99 or l_PlayerFromCharacter_0 or v1978).Name);
                        local v1983 = {};
                        local v1984 = {};
                        for _, v1986 in pairs({
                            v1978
                        }) do
                            table.insert(v1984, v1986.DescendantAdded:connect(function(v1987) --[[ Line: 13278 ]]
                                if v1987:IsA("BasePart") then
                                    v1987.CollisionGroup = "nocol";
                                    table.insert(v1983, v1987);
                                end;
                            end));
                            for _, v1989 in pairs(v1986:GetDescendants()) do
                                if v1989:IsA("BasePart") then
                                    v1989.CollisionGroup = "nocol";
                                    table.insert(v1983, v1989);
                                end;
                            end;
                        end;
                        v1982:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 13293 ]]
                            if not v1982.Parent then
                                for _, v1991 in pairs(v1984) do
                                    v1991:Disconnect();
                                end;
                                for _, v1993 in pairs(v1983) do
                                    v1993.CollisionGroup = "playercol";
                                end;
                            end;
                        end);
                        l_CollectionService_1:AddTag(v1982, v1979.Name .. "cartride");
                        local l_AnimationPlayer_17 = require(v1978.CharacterHandler:WaitForChild("AnimationPlayer"));
                        local l_l_AnimationPlayer_17_0 = l_AnimationPlayer_17 --[[ copy: 8 -> 17 ]];
                        local function v1997(v1996) --[[ Line: 13308 ]]
                            return l_l_AnimationPlayer_17_0.playAnimation(v1978:FindFirstChild("Humanoid"), v1996);
                        end;
                        l_AnimationPlayer_17 = v1997(15685170827);
                        l_AnimationPlayer_17.Priority = Enum.AnimationPriority.Core;
                        l_AnimationPlayer_17:AdjustWeight(0.001);
                        table.insert(v1980, l_AnimationPlayer_17);
                        local v1998 = v1997(15685307415);
                        v1998.Priority = Enum.AnimationPriority.Action4;
                        v1998:AdjustWeight(1);
                        v1998:Play();
                        table.insert(v1980, v1998);
                       shared.repfire({
                            Effect = "Smooth Grab", 
                            CanBypass = true, 
                            Hit = v1978, 
                            From = v1979.PrimaryPart, 
                            NoLook = true, 
                            Offset = CFrame.new(0, 0, 0), 
                            Anchor = v1982
                        });
                        return;
                    else
                        return;
                    end;
                end
            }, 
            Keyframes = {
                clap = function(v1999) --[[ Line: 13336 ]]
                    if v99 then
                        return;
                    else
                        v70({
                            SoundId = "rbxassetid://15685183097", 
                            Parent = v96.Torso, 
                            Volume = 1
                        }):Play();
                        if v1999.first == 0 then
                            v1999.first = v1999.first + 1;
                            return;
                        else
                            local l_l_CollectionService_1_Tagged_0 = l_CollectionService_1:GetTagged(v96.Name .. "cartride");
                            if #l_l_CollectionService_1_Tagged_0 > 0 then
                                v70({
                                    SoundId = "rbxassetid://15685183294", 
                                    Parent = l_l_CollectionService_1_Tagged_0[1].Parent.Torso, 
                                    Volume = 1
                                }):Play();
                            end;
                            if v1999.BV and v1999.BV.Parent then
                                local l_BV_2 = v1999.BV;
                                l_BV_2:SetAttribute("Goto", 12);
                                local v2002 = "Speed";
                                local v2003 = 45;
                                local v2004 = -0.01;
                                local v2005 = 0.01;
                                if not v2005 and v2004 then
                                    v2005 = v2004;
                                    v2004 = 1;
                                end;
                                if not v2005 and not v2004 then
                                    v2004 = 0;
                                    v2005 = 1;
                                end;
                                l_BV_2:SetAttribute(v2002, v2003 + v82:NextNumber(v2004, v2005));
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
            Startup = function(v2006, v2007, _, _, v2010) --[[ Line: 13386 ]] --[[ Name: Startup ]]
                local v2011 = {};
                for v2012 = 1, 2 do
                    local v2013 = 1;
                    if v2012 == 2 then
                        v2013 = -1;
                    end;
                    local l_Attachment_13 = Instance.new("Attachment");
                    table.insert(v2006, l_Attachment_13);
                    l_Attachment_13:SetAttribute("EmoteProperty", true);
                    local v2015 = game.ReplicatedStorage.Emotes.eye:Clone();
                    v2015.Parent = l_Attachment_13;
                    l_Attachment_13.Parent = v96.Head;
                    v2015.Enabled = true;
                    l_Attachment_13.Position = Vector3.new(0.23 * v2013, 0.164, -0.75);
                    table.insert(v2011, v2015);
                end;
                task.spawn(function() --[[ Line: 13401 ]]
                    local _ = Random.new();
                    while wait(0.06) and v2007.IsPlaying and not v2010.interrupted do
                        for _, v2018 in pairs(v2011) do
                            if v2018.Parent then
                                local v2019 = -0.01;
                                local v2020 = 0.01;
                                if not v2020 and v2019 then
                                    v2020 = v2019;
                                    v2019 = 1;
                                end;
                                if not v2020 and not v2019 then
                                    v2019 = 0;
                                    v2020 = 1;
                                end;
                                local v2021 = v82:NextNumber(v2019, v2020);
                                v2020 = -0.01;
                                local v2022 = 0.01;
                                if not v2022 and v2020 then
                                    v2022 = v2020;
                                    v2020 = 1;
                                end;
                                if not v2022 and not v2020 then
                                    v2020 = 0;
                                    v2022 = 1;
                                end;
                                v2018.StudsOffset = Vector3.new(v2021, v82:NextNumber(v2020, v2022), v86(-0.01, 0.01)) / 2;
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
            Startup = function() --[[ Line: 13425 ]] --[[ Name: Startup ]]

            end, 
            Dual = {
                DoBoth = false, 
                Dist = 1.85, 
                Attach = true, 
                NoRotate = 1e999, 
                RotateCheck = true, 
                Callback = function(v2023, v2024, v2025, _) --[[ Line: 13435 ]] --[[ Name: Callback ]]
                    local v2027, _ = v70({
                        SoundId = "rbxassetid://18829223347", 
                        Parent = v2023.Head, 
                        Looped = false, 
                        Volume = 1.5
                    });
                    v2027:Play();
                    local l_AnimationPlayer_18 = require(v2023.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local function v2031(v2030) --[[ Line: 13447 ]]
                        return l_AnimationPlayer_18.playAnimation(v2023:FindFirstChild("Humanoid"), v2030);
                    end;
                    local l_AnimationPlayer_19 = require(v2024.CharacterHandler:WaitForChild("AnimationPlayer"));
                    l_AnimationPlayer_19 = function(v2033) --[[ Line: 13455 ]]
                        return l_AnimationPlayer_19.playAnimation(v2024:FindFirstChild("Humanoid"), v2033);
                    end;
                    l_AnimationPlayer_19 = l_AnimationPlayer_19(18897624255);
                    local v2034 = v2031(18897625847);
                    v2034.Priority = Enum.AnimationPriority.Action4;
                    v2034.Looped = true;
                    v2034:AdjustWeight(1);
                    v2034:Play();
                    table.insert(v2025, v2034);
                    task.spawn(function() --[[ Line: 13467 ]]
                        local v2035 = tick();
                        repeat
                            task.wait();
                        until tick() - v2035 > 4.117 or not v2034.IsPlaying;
                        if not v2034.IsPlaying then
                            return;
                        else
                            for _, v2037 in pairs({
                                l_AnimationPlayer_19, 
                                v2034
                            }) do
                                if v2037.IsPlaying then
                                    v2037:AdjustSpeed(0);
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
            Startup = function(v2038, _, v2040, _) --[[ Line: 13489 ]] --[[ Name: Startup ]]
                if v99 then
                    local v2042 = game.ReplicatedStorage.Emotes.Sandwich:Clone();
                    v2042:SetAttribute("EmoteProperty", true);
                    table.insert(v2038, v2042);
                    v2040.Handle = v2042;
                    local l_Sandwich_0 = v2042.Sandwich;
                    l_Sandwich_0:SetAttribute("EmoteProperty", true);
                    table.insert(v2038, l_Sandwich_0);
                    v2040.md = l_Sandwich_0;
                    l_Sandwich_0.Part0 = v96["Right Arm"];
                    l_Sandwich_0.Part1 = v2042;
                    l_Sandwich_0.Parent = v96["Right Arm"];
                    v2042.Parent = v96;
                    return;
                else
                    local v2044 = game.ReplicatedStorage.Emotes.Blanket:Clone();
                    v2044:SetAttribute("EmoteProperty", true);
                    table.insert(v2038, v2044);
                    v2040.Handle = v2044;
                    local l_Blanket_0 = v2044.Blanket;
                    l_Blanket_0:SetAttribute("EmoteProperty", true);
                    table.insert(v2038, l_Blanket_0);
                    v2040.md = l_Blanket_0;
                    l_Blanket_0.Part0 = v96.PrimaryPart;
                    l_Blanket_0.Part1 = v2044;
                    l_Blanket_0.Parent = v96.PrimaryPart;
                    v2044.Parent = v96;
                    v70({
                        SoundId = "rbxassetid://1841681029", 
                        Parent = v2044, 
                        Looped = true, 
                        Volume = 0.5
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://83896975323570", 
                        Parent = v96.Torso, 
                        Looped = false, 
                        Volume = 0.75
                    }):Play();
                    local v2046 = game.ReplicatedStorage.Emotes.Picnick:Clone();
                    v2046:SetAttribute("EmoteProperty", true);
                    table.insert(v2038, v2046);
                    v2040.Handle = v2046;
                    v2046.Name = "Model";
                    local l_Base_1 = v2046.Base;
                    l_Base_1:SetAttribute("EmoteProperty", true);
                    table.insert(v2038, l_Base_1);
                    v2040.md = l_Base_1;
                    l_Base_1.Part0 = v96["Right Arm"];
                    l_Base_1.Part1 = v2046.PicnicBasket.Base;
                    l_Base_1.Parent = v96["Right Arm"];
                    v2046.Parent = v96;
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
                Callback = function(v2048, v2049, v2050, _) --[[ Line: 13537 ]] --[[ Name: Callback ]]
                    local l_AnimationPlayer_20 = require(v2048.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local l_l_AnimationPlayer_20_0 = l_AnimationPlayer_20 --[[ copy: 5 -> 9 ]];
                    local function v2055(v2054) --[[ Line: 13549 ]]
                        return l_l_AnimationPlayer_20_0.playAnimation(v2048:FindFirstChild("Humanoid"), v2054);
                    end;
                    local l_AnimationPlayer_21 = require(v2049.CharacterHandler:WaitForChild("AnimationPlayer"));
                    l_AnimationPlayer_20 = function(v2057) --[[ Line: 13557 ]]
                        return l_AnimationPlayer_21.playAnimation(v2049:FindFirstChild("Humanoid"), v2057);
                    end;
                    l_AnimationPlayer_20(139619595225529):AdjustWeight(0.001);
                    v70({
                        SoundId = "rbxassetid://120033833303346", 
                        Parent = v2049["Right Arm"], 
                        Volume = 1
                    }):Play();
                    local v2058 = l_AnimationPlayer_20(114257381413858);
                    v2058.Priority = Enum.AnimationPriority.Action4;
                    v2058:AdjustWeight(1);
                    v2058:Play();
                    table.insert(v2050, v2058.Stopped:Once(function() --[[ Line: 13575 ]]
                        local v2059 = l_AnimationPlayer_20(114413870666811);
                        table.insert(v2050, v2059);
                        v2059.Priority = Enum.AnimationPriority.Action4;
                        v2059.Looped = true;
                        v2059:AdjustWeight(1);
                        table.insert(v2050, v2059:GetMarkerReachedSignal("clap"):Connect(function() --[[ Line: 13580 ]]
                            v70({
                                SoundId = "rbxassetid://109123564480693", 
                                Parent = v2049["Right Arm"], 
                                Volume = 1
                            }):Play();
                        end));
                        v2059:Play();
                    end));
                    table.insert(v2050, v2058);
                    v70({
                        SoundId = "rbxassetid://111931707991797", 
                        Parent = v2048["Right Arm"], 
                        Volume = 1
                    }):Play();
                    local v2060 = v2055(111355299827059);
                    v2060.Priority = Enum.AnimationPriority.Action4;
                    v2060:AdjustWeight(1);
                    v2060:Play();
                    table.insert(v2050, v2060.Stopped:Once(function() --[[ Line: 13602 ]]
                        local v2061 = v2055(72956068899498);
                        table.insert(v2050, v2061);
                        v2061.Priority = Enum.AnimationPriority.Action4;
                        v2061.Looped = true;
                        table.insert(v2050, v2061:GetMarkerReachedSignal("clap"):Connect(function() --[[ Line: 13606 ]]
                            v70({
                                SoundId = "rbxassetid://101684470526234", 
                                Parent = v2048["Right Arm"], 
                                Volume = 1
                            }):Play();
                        end));
                        v2061:AdjustWeight(1);
                        v2061:Play();
                    end));
                    table.insert(v2050, v2060);
                end
            }, 
            Keyframes = {
                freeze = function(_, _, v2064) --[[ Line: 13622 ]]
                    v2064:AdjustSpeed(0);
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
            Startup = function(v2065, _, v2067, _) --[[ Line: 13637 ]] --[[ Name: Startup ]]
                if v99 then
                    local v2069 = game.ReplicatedStorage.Emotes.Frame:Clone();
                    v2069:SetAttribute("EmoteProperty", true);
                    table.insert(v2065, v2069);
                    v2067.Handle = v2069;
                    local l_m6d_25 = v2069.m6d;
                    l_m6d_25:SetAttribute("EmoteProperty", true);
                    table.insert(v2065, l_m6d_25);
                    v2067.md = l_m6d_25;
                    l_m6d_25.Part0 = v96.PrimaryPart;
                    l_m6d_25.Part1 = v2069;
                    l_m6d_25.Name = "Frame";
                    l_m6d_25.Parent = v96.PrimaryPart;
                    v2069.Parent = v96;
                    return;
                else
                    v70({
                        SoundId = "rbxassetid://1840161104", 
                        Parent = v96.PrimaryPart, 
                        Looped = true, 
                        Volume = 0.4
                    }):Play();
                    local v2071 = game.ReplicatedStorage.Emotes.brush:Clone();
                    v2071:SetAttribute("EmoteProperty", true);
                    table.insert(v2065, v2071);
                    v2067.Handle = v2071;
                    local l_brush_0 = v2071.brush;
                    l_brush_0:SetAttribute("EmoteProperty", true);
                    table.insert(v2065, l_brush_0);
                    v2067.md = l_brush_0;
                    l_brush_0.Part0 = v96.PrimaryPart;
                    l_brush_0.Part1 = v2071;
                    l_brush_0.Parent = v96.PrimaryPart;
                    v2071.Parent = v96;
                    v70({
                        SoundId = "rbxassetid://18835321626", 
                        Parent = v2071, 
                        Volume = 1.5
                    }):Play();
                    local v2073 = game.ReplicatedStorage.Emotes.palette:Clone();
                    v2073:SetAttribute("EmoteProperty", true);
                    table.insert(v2065, v2073);
                    v2067.Handle = v2073;
                    local l_palette_0 = v2073.palette;
                    l_palette_0:SetAttribute("EmoteProperty", true);
                    table.insert(v2065, l_palette_0);
                    v2067.md = l_palette_0;
                    l_palette_0.Part0 = v96.PrimaryPart;
                    l_palette_0.Part1 = v2073;
                    l_palette_0.Parent = v96.PrimaryPart;
                    v2073.Parent = v96;
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
                Callback = function(v2075, v2076, v2077, _) --[[ Line: 13685 ]] --[[ Name: Callback ]]
                    local v2079, _ = v70({
                        SoundId = "rbxassetid://18835337426", 
                        Parent = v2076["Right Arm"], 
                        Looped = true, 
                        Volume = 1.5
                    });
                    v2079:Play();
                    local l_AnimationPlayer_22 = require(v2075.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local function v2083(v2082) --[[ Line: 13697 ]]
                        return l_AnimationPlayer_22.playAnimation(v2075:FindFirstChild("Humanoid"), v2082);
                    end;
                    local l_AnimationPlayer_23 = require(v2076.CharacterHandler:WaitForChild("AnimationPlayer"));
                    l_AnimationPlayer_23 = function(v2085) --[[ Line: 13705 ]]
                        return l_AnimationPlayer_23.playAnimation(v2076:FindFirstChild("Humanoid"), v2085);
                    end;
                    l_AnimationPlayer_23 = l_AnimationPlayer_23(18897682478);
                    l_AnimationPlayer_23.Priority = Enum.AnimationPriority.Action4;
                    l_AnimationPlayer_23.Looped = true;
                    l_AnimationPlayer_23:AdjustWeight(1);
                    l_AnimationPlayer_23:Play();
                    table.insert(v2077, l_AnimationPlayer_23);
                    local v2086 = v2083(18897686619);
                    v2086.Priority = Enum.AnimationPriority.Action4;
                    v2086.Looped = true;
                    v2086:AdjustWeight(1);
                    v2086:Play();
                    table.insert(v2077, v2086);
                end
            }, 
            Keyframes = {
                freeze = function(_, _, v2089) --[[ Line: 13726 ]]
                    v2089:AdjustSpeed(0);
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
            Startup = function(_, _, _) --[[ Line: 13741 ]] --[[ Name: Startup ]]
                if v99 then
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
                Callback = function(v2093, v2094, v2095, _, _) --[[ Line: 13760 ]] --[[ Name: Callback ]]
                    local l_AnimationPlayer_24 = require(v2093.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local l_l_AnimationPlayer_24_0 = l_AnimationPlayer_24 --[[ copy: 6 -> 8 ]];
                    local function v2101(v2100) --[[ Line: 13764 ]]
                        return l_l_AnimationPlayer_24_0.playAnimation(v2093:FindFirstChild("Humanoid"), v2100);
                    end;
                    local l_AnimationPlayer_25 = require(v2094.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local l_l_AnimationPlayer_25_0 = l_AnimationPlayer_25 --[[ copy: 7 -> 9 ]];
                    l_AnimationPlayer_24 = function(v2104) --[[ Line: 13772 ]]
                        return l_l_AnimationPlayer_25_0.playAnimation(v2094:FindFirstChild("Humanoid"), v2104);
                    end;
                    v70({
                        SoundId = "rbxassetid://18836260464", 
                        Parent = v2094.Torso, 
                        Volume = 1
                    }):Play();
                    l_AnimationPlayer_25 = v2101(18897721681);
                    l_AnimationPlayer_25.Priority = Enum.AnimationPriority.Action4;
                    l_AnimationPlayer_25:AdjustWeight(1);
                    l_AnimationPlayer_25:Play();
                    table.insert(v2095, l_AnimationPlayer_25);
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
            Startup = function(v2105, _, v2107) --[[ Line: 13800 ]] --[[ Name: Startup ]]
                if v99 then
                    return;
                else
                    local v2108 = shared.cfolder({
                        Name = "Freeze"
                    }, 3.922);
                    table.insert(v2105, v2108);
                    l_CollectionService_1:AddTag(v2108, "blah" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    v2108:SetAttribute("DontInterrupt", true);
                    v2108:SetAttribute("NoStop", true);
                    v2108:SetAttribute("EmoteProperty", true);
                    task.delay(0, function() --[[ Line: 13813 ]]
                        v2108.Parent = v96;
                    end);
                    v2107.frz = v2108;
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
                Callback = function(v2109, v2110, v2111, _, _) --[[ Line: 13835 ]] --[[ Name: Callback ]]
                    local l_AnimationPlayer_26 = require(v2109.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local l_l_AnimationPlayer_26_0 = l_AnimationPlayer_26 --[[ copy: 6 -> 10 ]];
                    local function v2117(v2116) --[[ Line: 13839 ]]
                        return l_l_AnimationPlayer_26_0.playAnimation(v2109:FindFirstChild("Humanoid"), v2116);
                    end;
                    local l_AnimationPlayer_27 = require(v2110.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local l_l_AnimationPlayer_27_0 = l_AnimationPlayer_27 --[[ copy: 7 -> 11 ]];
                    l_AnimationPlayer_26 = function(v2120) --[[ Line: 13847 ]]
                        return l_l_AnimationPlayer_27_0.playAnimation(v2110:FindFirstChild("Humanoid"), v2120);
                    end;
                    l_AnimationPlayer_27 = v2117(18897899497);
                    l_AnimationPlayer_27.Priority = Enum.AnimationPriority.Action4;
                    l_AnimationPlayer_27:AdjustWeight(1);
                    l_AnimationPlayer_27:Play();
                    local v2121 = v70({
                        SoundId = "rbxassetid://18846119968", 
                        Parent = v2109.Torso, 
                        Volume = 1
                    });
                    v2121:SetAttribute("EmoteProperty", true);
                    v2121:Play();
                    table.insert(v2111, v2121);
                    table.insert(v2111, l_AnimationPlayer_27);
                    table.insert(v2111, l_AnimationPlayer_27.Stopped:Once(function() --[[ Line: 13864 ]]
                        local v2122 = l_AnimationPlayer_26(18897885015);
                        v2122.Priority = Enum.AnimationPriority.Action4;
                        v2122.Looped = true;
                        v2122:AdjustWeight(1);
                        v2122:Play();
                        table.insert(v2111, v2122);
                        local v2123 = v2117(18897893429);
                        v2123.Priority = Enum.AnimationPriority.Action4;
                        v2123.Looped = true;
                        v2123:AdjustWeight(1);
                        v2123:Play();
                        table.insert(v2111, v2123);
                        local l_pairs_0 = pairs;
                        local l_l_CollectionService_1_0 = l_CollectionService_1;
                        local v2126 = "blah";
                        local v2127 = v99 or l_PlayerFromCharacter_0 or v2109;
                        for _, v2129 in l_pairs_0(l_l_CollectionService_1_0:GetTagged(v2126 .. v2127.Name)) do
                            v2129:Destroy();
                        end;
                        l_pairs_0 = v70({
                            SoundId = "rbxassetid://18846302530", 
                            Parent = v2110.Torso, 
                            Looped = true, 
                            Volume = 0.25
                        });
                        l_pairs_0:SetAttribute("EmoteProperty", true);
                        l_pairs_0:Play();
                        table.insert(v2111, l_pairs_0);
                    end));
                    local v2130 = l_AnimationPlayer_26(18897896476);
                    v2130.Priority = Enum.AnimationPriority.Action4;
                    v2130:AdjustWeight(1);
                    v2130:Play();
                    table.insert(v2111, v2130);
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
            Startup = function() --[[ Line: 13909 ]] --[[ Name: Startup ]]
                if v99 then
                    return;
                else
                    v70({
                        SoundId = "rbxassetid://18835998166", 
                        Volume = 1, 
                        Looped = true, 
                        Parent = v96["Left Leg"]
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
                Callback = function(v2131, v2132, v2133, _) --[[ Line: 13937 ]] --[[ Name: Callback ]]
                    local l_AnimationPlayer_28 = require(v2131.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local l_l_AnimationPlayer_28_0 = l_AnimationPlayer_28 --[[ copy: 5 -> 7 ]];
                    local function v2138(v2137) --[[ Line: 13941 ]]
                        return l_l_AnimationPlayer_28_0.playAnimation(v2131:FindFirstChild("Humanoid"), v2137);
                    end;
                    local l_AnimationPlayer_29 = require(v2132.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local l_l_AnimationPlayer_29_0 = l_AnimationPlayer_29 --[[ copy: 6 -> 8 ]];
                    l_AnimationPlayer_28 = function(v2141) --[[ Line: 13949 ]]
                        return l_l_AnimationPlayer_29_0.playAnimation(v2132:FindFirstChild("Humanoid"), v2141);
                    end;
                    l_AnimationPlayer_29 = v2138(18897690248);
                    l_AnimationPlayer_29.Priority = Enum.AnimationPriority.Action4;
                    l_AnimationPlayer_29.Looped = true;
                    l_AnimationPlayer_29:AdjustWeight(1);
                    l_AnimationPlayer_29:Play();
                    table.insert(v2133, l_AnimationPlayer_29);
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
            Startup = function() --[[ Line: 13972 ]] --[[ Name: Startup ]]

            end, 
            Sounds = {
                [0] = {
                    SoundId = "rbxassetid://17097669113", 
                    Volume = 1
                }
            }, 
            Keyframes = {
                freeze = function(_, _, v2144) --[[ Line: 13984 ]]
                    v2144:AdjustSpeed(0);
                end
            }, 
            Dual = {
                DoBoth = false, 
                Dist = 3.8, 
                Freeze = false, 
                Attach = true, 
                NoRotate = 1e999, 
                RotateCheck = true, 
                Callback = function(v2145, v2146, v2147, _) --[[ Line: 13996 ]] --[[ Name: Callback ]]
                    local v2149, _ = v70({
                        SoundId = "rbxassetid://18828726970", 
                        Looped = true, 
                        Volume = 1
                    });
                    v2149.Parent = v2145.PrimaryPart;
                    v2149:Play();
                    local v2151, _ = v70({
                        SoundId = "rbxassetid://9038380332", 
                        Looped = true, 
                        Volume = 0.2
                    });
                    v2151.Parent = v2145.PrimaryPart;
                    v2151:Play();
                    local l_AnimationPlayer_30 = require(v2145.CharacterHandler:WaitForChild("AnimationPlayer"));
                    local function v2155(v2154) --[[ Line: 14021 ]]
                        return l_AnimationPlayer_30.playAnimation(v2145:FindFirstChild("Humanoid"), v2154);
                    end;
                    local l_AnimationPlayer_31 = require(v2146.CharacterHandler:WaitForChild("AnimationPlayer"));
                    l_AnimationPlayer_31 = function(v2157) --[[ Line: 14029 ]]
                        return l_AnimationPlayer_31.playAnimation(v2146:FindFirstChild("Humanoid"), v2157);
                    end;
                    l_AnimationPlayer_31 = l_AnimationPlayer_31(18897652035);
                    l_AnimationPlayer_31.Priority = Enum.AnimationPriority.Action4;
                    l_AnimationPlayer_31.Looped = true;
                    l_AnimationPlayer_31:AdjustWeight(1);
                    l_AnimationPlayer_31:Play();
                    table.insert(v2147, l_AnimationPlayer_31);
                    local v2158 = v2155(18897657904);
                    v2158.Priority = Enum.AnimationPriority.Action4;
                    v2158.Looped = true;
                    v2158:AdjustWeight(1);
                    v2158:Play();
                    table.insert(v2147, v2158);
                    task.spawn(function() --[[ Line: 14048 ]]
                        local v2159 = 1;
                        repeat
                            task.wait(0.5);
                            v2159 = v2159 + 0.0071428571428571435;
                            v2149.PlaybackSpeed = v2159;
                            v2158:AdjustSpeed(v2159);
                            l_AnimationPlayer_31:AdjustSpeed(v2159);
                        until not v2158.IsPlaying or not l_AnimationPlayer_31.IsPlaying;
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
            Startup = function(v2160, _, _) --[[ Line: 14087 ]] --[[ Name: Startup ]]
                local v2163 = game.ReplicatedStorage.Emotes.clonedsword:Clone();
                v2163:SetAttribute("EmoteProperty", true);
                table.insert(v2160, v2163);
                l_CollectionService_1:AddTag(v2163, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local l_HandleM_0 = v2163.HandleM;
                l_HandleM_0:SetAttribute("EmoteProperty", true);
                table.insert(v2160, l_HandleM_0);
                l_CollectionService_1:AddTag(l_HandleM_0, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_HandleM_0.Part0 = v96["Right Arm"];
                l_HandleM_0.Part1 = v2163.Handle;
                l_HandleM_0.Parent = v96["Right Arm"];
                l_HandleM_0.Name = "Handle";
                v2163.Parent = v96;
            end, 
            Keyframes = {
                swap = function() --[[ Line: 14104 ]]
                    local v2165 = nil;
                    for _, v2167 in pairs(v96:GetDescendants()) do
                        if tostring(v2167) == "ice dagger" then
                            v2165 = v2167;
                            break;
                        end;
                    end;
                    game:GetService("TweenService"):Create(v2165, TweenInfo.new(0.35), {
                        Transparency = 0
                    }):Play();
                    if v2165 and v2165.Parent:IsA("MeshPart") then
                        game:GetService("TweenService"):Create(v2165.Parent, TweenInfo.new(0.35), {
                            Transparency = 1
                        }):Play();
                    end;
                end, 
                swapback = function() --[[ Line: 14121 ]]
                    local v2168 = nil;
                    for _, v2170 in pairs(v96:GetDescendants()) do
                        if tostring(v2170) == "ice dagger" then
                            v2168 = v2170;
                            break;
                        end;
                    end;
                    game:GetService("TweenService"):Create(v2168, TweenInfo.new(0.065), {
                        Transparency = 1
                    }):Play();
                    if v2168 and v2168.Parent:IsA("MeshPart") then
                        game:GetService("TweenService"):Create(v2168.Parent, TweenInfo.new(0.065), {
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
            Startup = function() --[[ Line: 14147 ]] --[[ Name: Startup ]]

            end, 
            Keyframes = {}, 
            Dual = {
                DoBoth = false, 
                Dist = 7, 
                NoRotate = 1.45, 
                Callback = function(v2171, _, _, v2174) --[[ Line: 14159 ]] --[[ Name: Callback ]]
                    local v2175, v2176 = v70({
                        SoundId = "rbxassetid://16584014240", 
                        CFrame = CFrame.new(), 
                        Volume = 1
                    });
                    v2176.Parent = v2171.PrimaryPart;
                    v2176.WorldPosition = (v2171.PrimaryPart.CFrame * CFrame.new(0, 0, -v2174 / 2)).Position;
                    v2175:Play();
                end
            }, 
            Tag = "respbow", 
            Animation = 16584194737, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Cheers = {
            Startup = function(v2177, _, v2179, _) --[[ Line: 14179 ]] --[[ Name: Startup ]]
                v70({
                    SoundId = "rbxassetid://3929467449", 
                    Parent = v96.PrimaryPart, 
                    Volume = 0.5, 
                    PlaybackSpeed = 1.5
                }):Play();
                local v2181 = game.ReplicatedStorage.Emotes.Colaa:Clone();
                v2181:SetAttribute("EmoteProperty", true);
                table.insert(v2177, v2181);
                v2179.Handle = v2181;
                local l_Handle_43 = v2181.Handle;
                l_Handle_43:SetAttribute("EmoteProperty", true);
                table.insert(v2177, l_Handle_43);
                v2179.md = l_Handle_43;
                v2181.Name = "Handle";
                l_Handle_43.Part0 = v96["Right Arm"];
                l_Handle_43.Part1 = v2181;
                l_Handle_43.Parent = v96["Right Arm"];
                v2181.Parent = v96;
            end, 
            Dual = {
                DoBoth = false, 
                Dist = 3.5, 
                NoRotate = 3.15, 
                Callback = function(v2183, _, _, v2186) --[[ Line: 14200 ]] --[[ Name: Callback ]]
                    local v2187, v2188 = v70({
                        SoundId = "rbxassetid://15486190633", 
                        CFrame = CFrame.new(), 
                        Volume = 1
                    });
                    v2188.Parent = v2183.PrimaryPart;
                    v2188.WorldPosition = (v2183.PrimaryPart.CFrame * CFrame.new(0, 0, -v2186 / 2)).Position;
                    v2187:Play();
                end
            }, 
            Keyframes = {
                ["end"] = function(v2189) --[[ Line: 14214 ]]
                    l_TweenService_0:Create(v2189.Handle["Bloxy Cola Decoration"].Mesh, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
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
            Startup = function(_, _, _, _) --[[ Line: 14229 ]] --[[ Name: Startup ]]
                v70({
                    SoundId = "rbxassetid://3929467449", 
                    Parent = v96.PrimaryPart, 
                    Volume = 0.5, 
                    PlaybackSpeed = 1.5
                }):Play();
            end, 
            Dual = {
                DoBoth = false, 
                Dist = 3.5, 
                NoRotate = 8.3, 
                Callback = function(v2194, _, _, v2197) --[[ Line: 14242 ]] --[[ Name: Callback ]]
                    local v2198, v2199 = v70({
                        SoundId = "rbxassetid://15018915276", 
                        CFrame = CFrame.new(), 
                        Volume = 1
                    });
                    v2199.Parent = v2194.PrimaryPart;
                    v2199.WorldPosition = (v2194.PrimaryPart.CFrame * CFrame.new(0, 0, -v2197 / 2)).Position;
                    v2198:Play();
                end
            }, 
            Tag = "bizzarehandshake", 
            Animation = 15018853350, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Highfive = {
            Startup = function(_, _, _, _) --[[ Line: 14262 ]] --[[ Name: Startup ]]
                v70({
                    SoundId = "rbxassetid://3929467449", 
                    Parent = v96.PrimaryPart, 
                    Volume = 0.5, 
                    PlaybackSpeed = 1.5
                }):Play();
            end, 
            Dual = {
                DoBoth = false, 
                Dist = 3.5, 
                NoRotate = 3, 
                Callback = function(v2204, _, _, v2207) --[[ Line: 14275 ]] --[[ Name: Callback ]]
                    local v2208, v2209 = v70({
                        SoundId = "rbxassetid://15091001878", 
                        CFrame = CFrame.new(), 
                        TimePosition = 0.15, 
                        Volume = 2
                    });
                    v2209.Parent = v2204.PrimaryPart;
                    v2209.WorldPosition = (v2204.PrimaryPart.CFrame * CFrame.new(0, 0, -v2207 / 2)).Position;
                    v2208:Resume();
                end
            }, 
            Tag = "highfive", 
            Animation = 15223422794, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Fist Bump"] = {
            HideWeapon = true, 
            Startup = function(_, _, _, _) --[[ Line: 14297 ]] --[[ Name: Startup ]]
                v70({
                    SoundId = "rbxassetid://3929467449", 
                    Parent = v96.PrimaryPart, 
                    Volume = 0.5, 
                    PlaybackSpeed = 1.5
                }):Play();
            end, 
            Dual = {
                DoBoth = false, 
                Dist = 4.8, 
                Callback = function(v2214, _, _, v2217) --[[ Line: 14309 ]] --[[ Name: Callback ]]
                    local v2218, v2219 = v70({
                        SoundId = "rbxassetid://15290318024", 
                        CFrame = CFrame.new(), 
                        Volume = 1.5
                    });
                    v2219.Parent = v2214.PrimaryPart;
                    v2219.WorldPosition = (v2214.PrimaryPart.CFrame * CFrame.new(0, 0, -v2217 / 2)).Position;
                    v2218:Play();
                end
            }, 
            Tag = "fistbupm", 
            Animation = 15290322193, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Dap Me Up"] = {
            Startup = function(_, _, _, _) --[[ Line: 14329 ]] --[[ Name: Startup ]]
                v70({
                    SoundId = "rbxassetid://3929467449", 
                    Parent = v96.PrimaryPart, 
                    Volume = 0.5, 
                    PlaybackSpeed = 1.5
                }):Play();
            end, 
            Dual = {
                DoBoth = false, 
                Dist = 3.5, 
                Callback = function(v2224, _, _, v2227) --[[ Line: 14341 ]] --[[ Name: Callback ]]
                    local v2228, v2229 = v70({
                        SoundId = "rbxassetid://14407585440", 
                        CFrame = CFrame.new(), 
                        Volume = 1.5
                    });
                    v2229.Parent = v2224.PrimaryPart;
                    v2229.WorldPosition = (v2224.PrimaryPart.CFrame * CFrame.new(0, 0, -v2227 / 2)).Position;
                    v2228:Play();
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
                claploop = function() --[[ Line: 14371 ]]
                    v70({
                        SoundId = "rbxassetid://2704706975", 
                        Volume = 1, 
                        Parent = v96.Head
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
                clap = function() --[[ Line: 14397 ]]
                    v70({
                        SoundId = "rbxassetid://9114760154", 
                        Volume = 0.25, 
                        Parent = v96.Head
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
            Startup = function(v2230) --[[ Line: 14437 ]] --[[ Name: Startup ]]
                local v2231 = math.random(1, 2);
                local v2232 = v70({
                    SoundId = v2231 == 1 and "rbxassetid://1836736766" or "rbxassetid://9044612350", 
                    Volume = 0.75, 
                    TimePosition = v2231 == 1 and 19 or 1, 
                    Looped = true, 
                    Parent = v96.PrimaryPart
                });
                v2232:SetAttribute("EmoteProperty", true);
                table.insert(v2230, v2232);
                v2232:Play();
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
            Startup = function(v2233, _, v2235) --[[ Line: 14508 ]] --[[ Name: Startup ]]
                local v2236 = game.ReplicatedStorage.Emotes["Salt shaker"]:Clone();
                v2235.bb = v2236;
                table.insert(v2233, v2236);
                v2236:SetAttribute("EmoteProperty", true);
                local l_Motor6D_24 = v2236:FindFirstChildOfClass("Motor6D");
                table.insert(v2233, l_Motor6D_24);
                l_Motor6D_24:SetAttribute("EmoteProperty", true);
                l_Motor6D_24.Part0 = v96["Left Arm"];
                l_Motor6D_24.Name = "Handle";
                l_Motor6D_24.Part1 = v2236.Handle;
                l_Motor6D_24.Parent = v96["Left Arm"];
                v2236.Parent = v96;
            end, 
            Keyframes = {
                claploop = function(v2238) --[[ Line: 14523 ]]
                    v2238.bb.Salt.Attachment.ParticleEmitter:Emit(5);
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
            Startup = function(v2239, _, v2241) --[[ Line: 14544 ]] --[[ Name: Startup ]]
                local v2242 = game.ReplicatedStorage.Emotes.basketball:Clone();
                v2241.bb = v2242;
                table.insert(v2239, v2242);
                v2242:SetAttribute("EmoteProperty", true);
                local l_Motor6D_25 = v2242:FindFirstChildOfClass("Motor6D");
                table.insert(v2239, l_Motor6D_25);
                l_Motor6D_25:SetAttribute("EmoteProperty", true);
                l_Motor6D_25.Part0 = v96["Left Arm"];
                l_Motor6D_25.Parent = v96["Left Arm"];
                l_Motor6D_25.C0 = CFrame.new(-0.035, -1.542, -0.006);
                l_Motor6D_25.Part1 = v2242.Handle;
                v2242.Parent = v96;
                v70({
                    SoundId = "rbxassetid://14612801058", 
                    Parent = v2242.Handle, 
                    Volume = 0.4
                }):Play();
            end, 
            Keyframes = {
                ["end"] = function(v2244) --[[ Line: 14565 ]]
                    v2244.bb:Destroy();
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
            Startup = function(v2245, _, v2247) --[[ Line: 14584 ]] --[[ Name: Startup ]]
                local v2248 = game.ReplicatedStorage.Emotes.sign:Clone();
                v2248:SetAttribute("EmoteProperty", true);
                table.insert(v2245, v2248);
                v2247.Handle = v2248;
                local l_m6d_26 = v2248.m6d;
                l_m6d_26:SetAttribute("EmoteProperty", true);
                table.insert(v2245, l_m6d_26);
                v2247.md = l_m6d_26;
                v2248.Name = "Handle";
                l_m6d_26.Part0 = v96["Left Arm"];
                l_m6d_26.Part1 = v2248.Handle;
                l_m6d_26.Parent = v96["Left Arm"];
                v2248.Parent = v96;
            end, 
            Keyframes = {
                claploop = function(_, _, _, _) --[[ Line: 14595 ]]
                    local l_Attachment_14 = Instance.new("Attachment");
                    l_CollectionService_1:AddTag(l_Attachment_14, "emotestuff" .. v96.Name);
                    l_Attachment_14.Parent = workspace.Terrain;
                    game:GetService("Debris"):AddItem(l_Attachment_14, 5);
                    local l_PrimaryPart_0 = v96.PrimaryPart;
                    l_Attachment_14.WorldPosition = (l_PrimaryPart_0.CFrame + l_PrimaryPart_0.CFrame.lookVector * 10).Position + Vector3.new(0, 2, 0, 0);
                    local v2256 = game.ReplicatedStorage.Emotes.ImpactGlow:Clone();
                    v2256.Parent = l_Attachment_14;
                    shared.resizeparticle(v2256, v86(1, 1.2));
                    v2256:Emit(1);
                    local l_createlight_1 = shared.createlight;
                    local v2258 = {
                        Position = l_Attachment_14.WorldPosition, 
                        Color = Color3.new(1, 1, 1)
                    };
                    local v2259 = 7;
                    local v2260 = 10;
                    if not v2260 and v2259 then
                        v2260 = v2259;
                        v2259 = 1;
                    end;
                    if not v2260 and not v2259 then
                        v2259 = 0;
                        v2260 = 1;
                    end;
                    v2258.Brightness = v82:NextNumber(v2259, v2260);
                    v2259 = 0.3;
                    v2260 = 0.5;
                    if not v2260 and v2259 then
                        v2260 = v2259;
                        v2259 = 1;
                    end;
                    if not v2260 and not v2259 then
                        v2259 = 0;
                        v2260 = 1;
                    end;
                    v2258.Fade = v82:NextNumber(v2259, v2260);
                    v2259 = 10;
                    v2260 = 12;
                    if not v2260 and v2259 then
                        v2260 = v2259;
                        v2259 = 1;
                    end;
                    if not v2260 and not v2259 then
                        v2259 = 0;
                        v2260 = 1;
                    end;
                    v2258.Range = v82:NextNumber(v2259, v2260);
                    l_createlight_1(v2258);
                    v70({
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
                ["end"] = function(v2261, _, _) --[[ Line: 14631 ]]
                    local l_sign_1 = v2261.Handle.sign;
                    game:GetService("Debris"):AddItem(l_sign_1, 5);
                    v2261.Handle.Handle.sign:Destroy();
                    l_sign_1.Parent = workspace.Thrown;
                    l_TweenService_0:Create(l_sign_1, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Size = Vector3.new()
                    }):Play();
                    local l_BodyVelocity_3 = Instance.new("BodyVelocity");
                    l_BodyVelocity_3.MaxForce = Vector3.new(1, 1, 1, 0) * 40000;
                    l_BodyVelocity_3.Velocity = v96.PrimaryPart.CFrame.RightVector * -20;
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
            Startup = function(v2266, _, v2268) --[[ Line: 14663 ]] --[[ Name: Startup ]]
                local v2269 = game.ReplicatedStorage.Emotes.Table:Clone();
                v2269:SetAttribute("EmoteProperty", true);
                table.insert(v2266, v2269);
                v2268.Handle = v2269;
                local l_Handle_44 = v2269.Handle;
                l_Handle_44:SetAttribute("EmoteProperty", true);
                table.insert(v2266, l_Handle_44);
                v2268.md = l_Handle_44;
                v2269.Name = "Handle";
                l_Handle_44.Part0 = v96.HumanoidRootPart;
                l_Handle_44.Part1 = v2269;
                l_Handle_44.Parent = v96.HumanoidRootPart;
                v2269.Parent = v96;
            end, 
            Keyframes = {
                go = function(v2271, _, _, _) --[[ Line: 14674 ]]
                    local v2275 = 0;
                    local v2276 = game.ReplicatedStorage.Emotes.Table:Clone();
                    l_CollectionService_1:AddTag(v2276, "emotestuff" .. v96.Name);
                    game:GetService("Debris"):AddItem(v2276, 5);
                    v2276.CanCollide = true;
                    v2276.CanTouch = true;
                    v2276.CanQuery = false;
                    v2276.Massless = false;
                    v2276.CollisionGroup = "nocol";
                    v2276.CFrame = v2271.Handle.CFrame;
                    v2271.Handle:Destroy();
                    v2276.Parent = workspace.Thrown;
                    local v2277 = Instance.new("Attachment", v2276);
                    v2277.Position = Vector3.new(0, -0.25, 0.25, 0);
                    local v2278 = Instance.new("LinearVelocity", v2277);
                    v2278.MaxForce = 40000;
                    v2278.VectorVelocity = v96.PrimaryPart.CFrame.lookVector * 35 + Vector3.new(0, 60, 0, 0);
                    v2278.Attachment0 = v2277;
                    game:GetService("Debris"):AddItem(v2278, 0.15);
                    v2276:SetNetworkOwner(l_PlayerFromCharacter_0);
                    local v2279 = nil;
                    v2279 = v2276.Touched:Connect(function(v2280) --[[ Line: 14697 ]]
                        if v2280:IsDescendantOf(workspace.Live) or tick() - v2275 < 0.075 then
                            return;
                        elseif math.abs(v2276.Velocity.Y) < 2 then
                            return;
                        else
                            v2275 = 1e999;
                            v70({
                                SoundId = "rbxassetid://15438974803", 
                                Parent = v2276, 
                                Volume = 2
                            }):Play();
                            v70({
                                SoundId = "rbxassetid://9120957636", 
                                Parent = v2276, 
                                Volume = 1
                            }):Play();
                            return;
                        end;
                    end);
                    task.delay(5, function() --[[ Line: 14718 ]]
                        v2279:Disconnect();
                    end);
                end
            }, 
            Animation = 15438946008, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Ls = {
            Sounds = {}, 
            Startup = function(v2281, _, v2283) --[[ Line: 14733 ]] --[[ Name: Startup ]]
                local v2284 = game.ReplicatedStorage.Emotes.Letter:Clone();
                v2284:SetAttribute("EmoteProperty", true);
                table.insert(v2281, v2284);
                v2283.Handle = v2284;
                local l_Handle_45 = v2284.Handle;
                l_Handle_45:SetAttribute("EmoteProperty", true);
                table.insert(v2281, l_Handle_45);
                v2283.md = l_Handle_45;
                v2284.Name = "Handle";
                l_Handle_45.Part0 = v96["Right Arm"];
                l_Handle_45.Part1 = v2284;
                l_Handle_45.Parent = v96["Right Arm"];
                v2284.Parent = v96;
            end, 
            Keyframes = {
                clap = function(v2286) --[[ Line: 14744 ]]
                    l_TweenService_0:Create(v2286.Handle.Part.Mesh, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                        Scale = Vector3.new(0.23999999463558197, 0.23999999463558197, 0.23999999463558197, 0)
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://9117842014", 
                        Parent = v2286.Handle.Part, 
                        Volume = 0.25
                    }):Play();
                end, 
                claploop = function(v2287, _, _, _) --[[ Line: 14756 ]]
                    local v2291 = tick();
                    local v2292 = game.ReplicatedStorage.Emotes.Letter.Part:Clone();
                    l_CollectionService_1:AddTag(v2292, "emotestuff" .. v96.Name);
                    game:GetService("Debris"):AddItem(v2292, 5);
                    v2292.CanCollide = true;
                    v2292.CanTouch = true;
                    v2292.CanQuery = false;
                    v2292.Massless = false;
                    v2292.CollisionGroup = "nocol";
                    v2292.CFrame = v2287.Handle.Part.CFrame;
                    v2287.Handle.Part.Mesh.Scale = Vector3.new();
                    v2292.Parent = workspace.Thrown;
                    local l_v70_1 = v70;
                    local v2294 = {
                        SoundId = "rbxassetid://15453510339", 
                        Parent = v2292, 
                        Volume = 0.75
                    };
                    local v2295 = 0.95;
                    local v2296 = 1.25;
                    if not v2296 and v2295 then
                        v2296 = v2295;
                        v2295 = 1;
                    end;
                    if not v2296 and not v2295 then
                        v2295 = 0;
                        v2296 = 1;
                    end;
                    v2294.PlaybackSpeed = v82:NextNumber(v2295, v2296);
                    v2294.TimePosition = 0.1;
                    l_v70_1(v2294):Resume();
                    l_v70_1 = Instance.new("BodyVelocity");
                    l_v70_1.MaxForce = Vector3.new(1, 1, 1, 0) * 40000;
                    local l_CFrame_0 = v96.PrimaryPart.CFrame;
                    local l_Angles_0 = CFrame.Angles;
                    local v2299 = 0;
                    local v2300 = -15;
                    local v2301 = 15;
                    if not v2301 and v2300 then
                        v2301 = v2300;
                        v2300 = 1;
                    end;
                    if not v2301 and not v2300 then
                        v2300 = 0;
                        v2301 = 1;
                    end;
                    v2295 = (l_CFrame_0 * l_Angles_0(v2299, math.rad((v82:NextNumber(v2300, v2301))), 0)).lookVector;
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
                    local v2302 = v2295 * v82:NextNumber(l_CFrame_0, l_Angles_0);
                    v2296 = 0;
                    l_Angles_0 = 5;
                    v2299 = 7.5;
                    if not v2299 and l_Angles_0 then
                        v2299 = l_Angles_0;
                        l_Angles_0 = 1;
                    end;
                    if not v2299 and not l_Angles_0 then
                        l_Angles_0 = 0;
                        v2299 = 1;
                    end;
                    l_v70_1.Velocity = v2302 + Vector3.new(v2296, v82:NextNumber(l_Angles_0, v2299), 0);
                    l_v70_1.Parent = v2292;
                    game:GetService("Debris"):AddItem(l_v70_1, 0.15);
                    v2292:SetNetworkOwner(l_PlayerFromCharacter_0);
                    v2294 = v2292.Mesh;
                    v2302 = nil;
                    v2302 = v2292.Touched:Connect(function(v2303) --[[ Line: 14787 ]]
                        if v2303:IsDescendantOf(workspace.Live) or tick() - v2291 < 0.075 then
                            return;
                        elseif math.abs(v2292.Velocity.Y) < 2 then
                            return;
                        else
                            v2291 = 1e999;
                            local l_v70_2 = v70;
                            local v2305 = {
                                SoundId = "rbxassetid://9118172318", 
                                Parent = v2292, 
                                Volume = 0.5
                            };
                            local v2306 = 1;
                            local v2307 = 1.5;
                            if not v2307 and v2306 then
                                v2307 = v2306;
                                v2306 = 1;
                            end;
                            if not v2307 and not v2306 then
                                v2306 = 0;
                                v2307 = 1;
                            end;
                            v2305.PlaybackSpeed = v82:NextNumber(v2306, v2307);
                            l_v70_2(v2305):Play();
                            task.delay(0.75, function() --[[ Line: 14803 ]]
                                l_TweenService_0:Create(v2294, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                                    Scale = Vector3.new(0, 0, 0, 0)
                                }):Play();
                                task.delay(0.5, function() --[[ Line: 14807 ]]
                                    v2292:Destroy();
                                end);
                            end);
                            return;
                        end;
                    end);
                    task.delay(1, function() --[[ Line: 14813 ]]
                        v2302:Disconnect();
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
            Startup = function(v2308, _, v2310) --[[ Line: 14835 ]] --[[ Name: Startup ]]
                local v2311 = game.ReplicatedStorage.Emotes.basketball:Clone();
                v2310.bb = v2311;
                table.insert(v2308, v2311);
                v2311:SetAttribute("EmoteProperty", true);
                local l_Motor6D_26 = v2311:FindFirstChildOfClass("Motor6D");
                table.insert(v2308, l_Motor6D_26);
                l_Motor6D_26:SetAttribute("EmoteProperty", true);
                l_Motor6D_26.Part0 = v96.PrimaryPart;
                l_Motor6D_26.Name = "Handle";
                l_Motor6D_26.Parent = v96.PrimaryPart;
                l_Motor6D_26.C0 = CFrame.new(-1.5, -1.375, 0);
                l_Motor6D_26.Part1 = v2311.Handle;
                v2311.Parent = v96;
            end, 
            Keyframes = {
                jump = function(_, _, _, v2316) --[[ Line: 14851 ]]
                    task.spawn(function() --[[ Line: 14852 ]]
                        local v2317 = 1;
                        local v2318 = 3;
                        local v2319 = 4;
                        if not v2319 and v2318 then
                            v2319 = v2318;
                            v2318 = 1;
                        end;
                        if not v2319 and not v2318 then
                            v2318 = 0;
                            v2319 = 1;
                        end;
                        for _ = v2317, v82:NextInteger(v2318, v2319) do
                            if v2316.interrupted then
                                return;
                            else
                                v2318 = Instance.new("Attachment");
                                l_CollectionService_1:AddTag(v2318, "emotestuff" .. v96.Name);
                                v2318.Parent = v96.PrimaryPart;
                                game:GetService("Debris"):AddItem(v2318, 5);
                                v2319 = v96.PrimaryPart;
                                local l_Position_0 = v2319.Position;
                                local v2322 = -10;
                                local v2323 = 10;
                                if not v2323 and v2322 then
                                    v2323 = v2322;
                                    v2322 = 1;
                                end;
                                if not v2323 and not v2322 then
                                    v2322 = 0;
                                    v2323 = 1;
                                end;
                                local v2324 = l_Position_0 + Vector3.new(v82:NextNumber(v2322, v2323), 0, v86(-10, 10));
                                v2318.WorldPosition = v2319.Position + (v2324 - v2319.Position).Unit * 10;
                                l_Position_0 = v2318.WorldPosition;
                                local v2325 = 0;
                                v2323 = 1;
                                local v2326 = 3;
                                if not v2326 and v2323 then
                                    v2326 = v2323;
                                    v2323 = 1;
                                end;
                                if not v2326 and not v2323 then
                                    v2323 = 0;
                                    v2326 = 1;
                                end;
                                v2318.WorldPosition = l_Position_0 + Vector3.new(v2325, v82:NextNumber(v2323, v2326), 0);
                                l_Position_0 = game.ReplicatedStorage.Emotes.ImpactGlow:Clone();
                                l_Position_0.Parent = v2318;
                                shared.resizeparticle(l_Position_0, v86(1, 1.2));
                                l_Position_0:Emit(1);
                                local l_createlight_2 = shared.createlight;
                                v2325 = {
                                    Position = v2318.WorldPosition, 
                                    Color = Color3.new(1, 1, 1)
                                };
                                v2323 = 7;
                                v2326 = 10;
                                if not v2326 and v2323 then
                                    v2326 = v2323;
                                    v2323 = 1;
                                end;
                                if not v2326 and not v2323 then
                                    v2323 = 0;
                                    v2326 = 1;
                                end;
                                v2325.Brightness = v82:NextNumber(v2323, v2326);
                                v2323 = 0.3;
                                v2326 = 0.5;
                                if not v2326 and v2323 then
                                    v2326 = v2323;
                                    v2323 = 1;
                                end;
                                if not v2326 and not v2323 then
                                    v2323 = 0;
                                    v2326 = 1;
                                end;
                                v2325.Fade = v82:NextNumber(v2323, v2326);
                                v2323 = 10;
                                v2326 = 12;
                                if not v2326 and v2323 then
                                    v2326 = v2323;
                                    v2323 = 1;
                                end;
                                if not v2326 and not v2323 then
                                    v2323 = 0;
                                    v2326 = 1;
                                end;
                                v2325.Range = v82:NextNumber(v2323, v2326);
                                l_createlight_2(v2325);
                                v70({
                                    SoundId = ({
                                        "rbxassetid://14616094683", 
                                        "rbxassetid://14616213070", 
                                        "rbxassetid://14616213367", 
                                        "rbxassetid://14616213705", 
                                        "rbxassetid://14616214083"
                                    })[math.random(1, 5)], 
                                    Parent = v2318, 
                                    Volume = 0.5
                                }):Play();
                                task.wait(v86(0, 0.175));
                            end;
                        end;
                    end);
                end, 
                throw = function(v2328, _, _, _) --[[ Line: 14896 ]]
                    v2328.bb["B-Ball"].Transparency = 1;
                    local v2332 = game.ReplicatedStorage.Emotes.basketball["B-Ball"]:Clone();
                    l_CollectionService_1:AddTag(v2332, "emotestuff" .. v96.Name);
                    game:GetService("Debris"):AddItem(v2332, 5);
                    v2332.CanCollide = true;
                    v2332.CanTouch = true;
                    v2332.CanQuery = false;
                    v2332.Massless = false;
                    v2332.CollisionGroup = "nocol";
                    v2332.CFrame = v2328.bb["B-Ball"].CFrame;
                    v2332.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1);
                    v2332.Parent = workspace.Thrown;
                    v2332:SetNetworkOwner(l_PlayerFromCharacter_0);
                    local v2333 = v96.PrimaryPart.CFrame + v96.PrimaryPart.CFrame.lookVector * 50;
                    local v2334 = Vector3.new(0, -workspace.Gravity, 0);
                    local v2335 = v96.PrimaryPart.CFrame * Vector3.new(0, 0, -2, 0);
                    local v2336 = (v2333.Position - v2335 - 0.5 * v2334 * 1 * 1) / 1;
                    local v2337 = 0;
                    v2332.Velocity = v2336;
                    local v2338 = nil;
                    v2338 = v2332.Touched:Connect(function(v2339) --[[ Line: 14918 ]]
                        if v2339:IsDescendantOf(workspace.Live) or tick() - v2337 < 0.075 then
                            return;
                        elseif math.abs(v2332.Velocity.Y) < 4 then
                            return;
                        else
                            v2337 = tick();
                            v70({
                                SoundId = "rbxassetid://14404844095", 
                                Parent = v2332, 
                                Volume = 2, 
                                PlaybackSpeed = Random.new():NextNumber(0.9, 1.1)
                            }):Play();
                            return;
                        end;
                    end);
                    task.delay(5, function() --[[ Line: 14934 ]]
                        v2338:Disconnect();
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
            Startup = function(v2340, _, v2342) --[[ Line: 14956 ]] --[[ Name: Startup ]]
                local v2343 = game.ReplicatedStorage.Emotes.Briefcase:Clone();
                v2342.bb = v2343;
                table.insert(v2340, v2343);
                v2343:SetAttribute("EmoteProperty", true);
                local l_M6D_1 = v2343.M6D;
                table.insert(v2340, l_M6D_1);
                l_M6D_1:SetAttribute("EmoteProperty", true);
                l_M6D_1.Part0 = v96.PrimaryPart;
                l_M6D_1.Name = "Root";
                l_M6D_1.Part1 = v2343.Root;
                l_M6D_1.Parent = v96.PrimaryPart;
                v2343.Parent = v96;
                local v2345 = v70({
                    SoundId = "rbxassetid://9042544497", 
                    Volume = 0, 
                    TimePosition = 1.15, 
                    Looped = false, 
                    Parent = v96.PrimaryPart
                });
                v2345:SetAttribute("EmoteProperty", true);
                v2345:Resume();
                l_TweenService_0:Create(v2345, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Volume = 0.3
                }):Play();
            end, 
            Keyframes = {
                ["end"] = function(v2346) --[[ Line: 14983 ]]
                    v2346.bb:Destroy();
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
                slam = function(v2347) --[[ Line: 15004 ]]
                    local v2348 = game.ReplicatedStorage.Emotes.basketball["B-Ball"]:Clone();
                    l_CollectionService_1:AddTag(v2348, "emotestuff" .. v96.Name);
                    game:GetService("Debris"):AddItem(v2348, 5);
                    v2348.CanCollide = true;
                    v2348.CanTouch = true;
                    v2348.CanQuery = false;
                    v2348.Massless = false;
                    v2348.CollisionGroup = "nocol";
                    v2348.CFrame = v2347.bb["B-Ball"].CFrame;
                    v2348.Velocity = Vector3.new(0, -75, 0, 0);
                    v2348.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1);
                    v2348.Parent = workspace.Thrown;
                    v2348:SetNetworkOwner(l_PlayerFromCharacter_0);
                    local v2349 = 0;
                    local v2350 = nil;
                    v2350 = v2348.Touched:Connect(function(v2351) --[[ Line: 15020 ]]
                        if v2351:IsDescendantOf(workspace.Live) or tick() - v2349 < 0.075 then
                            return;
                        elseif math.abs(v2348.Velocity.Y) < 4 then
                            return;
                        else
                            v2349 = tick();
                            v70({
                                SoundId = "rbxassetid://14404844095", 
                                Parent = v2348, 
                                Volume = 2, 
                                PlaybackSpeed = Random.new():NextNumber(0.9, 1.1)
                            }):Play();
                            return;
                        end;
                    end);
                    task.delay(5, function() --[[ Line: 15036 ]]
                        v2350:Disconnect();
                    end);
                    v2347.bb:Destroy();
                    v70({
                        SoundId = "rbxassetid://14405165735", 
                        Parent = v2347.hoop, 
                        Volume = 1
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://14404816151", 
                        Parent = v96:FindFirstChild("Torso"), 
                        Volume = 2
                    }):Play();
                end
            }, 
            Startup = function(v2352, _, v2354) --[[ Line: 15055 ]] --[[ Name: Startup ]]
                local v2355 = game.ReplicatedStorage.Emotes.basketball:Clone();
                v2354.bb = v2355;
                table.insert(v2352, v2355);
                v2355:SetAttribute("EmoteProperty", true);
                local v2356 = game.ReplicatedStorage.Emotes.hoop:Clone();
                local l_Weld_9 = Instance.new("Weld");
                l_Weld_9.Part0 = v96.PrimaryPart;
                l_Weld_9.Part1 = v2356.Main;
                l_Weld_9.Parent = v2356;
                l_Weld_9.C0 = CFrame.new(0.0489730835, 5.62188959, -4.88491774, -2.98023224E-8, 1.49011612E-8, 0.99999994, 0, 1, 1.49011612E-8, -1, 0, 2.98023224E-8);
                v2356:SetAttribute("EmoteProperty", true);
                table.insert(v2352, v2356);
                v2356.Parent = v96;
                v2354.hoop = v2356.Main;
                local l_Motor6D_27 = v2355:FindFirstChildOfClass("Motor6D");
                table.insert(v2352, l_Motor6D_27);
                l_Motor6D_27:SetAttribute("EmoteProperty", true);
                l_Motor6D_27.Part0 = v96["Left Arm"];
                l_Motor6D_27.Parent = v96["Left Arm"];
                l_Motor6D_27.C0 = CFrame.new(0, -1.375, 0);
                l_Motor6D_27.Part1 = v2355.Handle;
                v2355.Parent = v96;
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
                ["end"] = function(v2359) --[[ Line: 15096 ]]
                    v2359.pipe.Transparency = 1;
                end
            }, 
            Startup = function(v2360, _, v2362) --[[ Line: 15101 ]] --[[ Name: Startup ]]
                local v2363 = game.ReplicatedStorage.Emotes["metal pipe"]:Clone();
                local l_Part_3 = v2363.Part;
                l_Part_3.Part0 = v96["Right Arm"];
                l_Part_3.Part1 = v2363["Metal pipe"].Part;
                v2362.pipe = v2363["Metal pipe"];
                for _, v2366 in pairs({
                    v2363, 
                    l_Part_3
                }) do
                    v2366:SetAttribute("EmoteProperty", true);
                    table.insert(v2360, v2366);
                end;
                l_Part_3.Parent = v96["Right Arm"];
                v2363.Parent = v96;
            end, 
            Animation = 14406991505, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Weight = {
            Keyframes = {
                freeze = function(_, _, v2369) --[[ Line: 15123 ]]
                    v2369:AdjustSpeed(0);
                end
            }, 
            Startup = function(v2370, _, v2372) --[[ Line: 15128 ]] --[[ Name: Startup ]]
                local v2373 = game.ReplicatedStorage.Emotes.Weight:Clone();
                v2373:SetAttribute("EmoteProperty", true);
                table.insert(v2370, v2373);
                v2372.Handle = v2373;
                local l_Motor6D_28 = v2373:FindFirstChildOfClass("Motor6D");
                l_Motor6D_28:SetAttribute("EmoteProperty", true);
                table.insert(v2370, l_Motor6D_28);
                v2372.md = l_Motor6D_28;
                l_Motor6D_28.Name = "Handle";
                l_Motor6D_28.Part0 = v96["Left Arm"];
                l_Motor6D_28.Part1 = v2373.Handle;
                l_Motor6D_28.Parent = v96["Left Arm"];
                v2373.Parent = v96;
                v70({
                    SoundId = "rbxassetid://15674264465", 
                    Parent = v96.Torso, 
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
                coins = function(_, _, _) --[[ Line: 15152 ]]
                   shared.repfire({
                        Effect = "Coins", 
                        root = v96.PrimaryPart
                    });
                end
            }, 
            Startup = function(v2378, _, v2380) --[[ Line: 15160 ]] --[[ Name: Startup ]]
                local v2381 = game.ReplicatedStorage.Emotes.TakeMoney["Meshes/Card_model"]:Clone();
                v2381:SetAttribute("EmoteProperty", true);
                table.insert(v2378, v2381);
                v2380.Handle = v2381;
                local l_Motor6D_29 = v2381:FindFirstChildOfClass("Motor6D");
                l_Motor6D_29:SetAttribute("EmoteProperty", true);
                table.insert(v2378, l_Motor6D_29);
                v2380.md = l_Motor6D_29;
                l_Motor6D_29.Name = "Meshes/Card_model";
                l_Motor6D_29.Part0 = v96["Left Arm"];
                l_Motor6D_29.Part1 = v2381;
                l_Motor6D_29.Parent = v96["Left Arm"];
                v2381.Parent = v96;
                local v2383 = game.ReplicatedStorage.Emotes.TakeMoney.Counter:Clone();
                v2383:SetAttribute("EmoteProperty", true);
                table.insert(v2378, v2383);
                v2383.Name = "asjdaiosdjasjd";
                local l_Weld_10 = Instance.new("Weld");
                l_Weld_10.Part0 = v96.PrimaryPart;
                l_Weld_10.Part1 = v2383.Bottom;
                l_Weld_10.C0 = CFrame.new(0.320178986, -1.92516398, -2.43821144, -2.60999286E-7, 3.78694926E-6, -1.00000024, 4.02372007E-6, 1.00000262, 1.25370036E-6, 1.00000143, -1.38620999E-6, -9.6974091E-8);
                l_Weld_10.Parent = v2383.Bottom;
                v2383.Parent = v96;
                task.delay(0, function() --[[ Line: 15177 ]]
                    for _, v2386 in pairs(v2383:GetChildren()) do
                        v2386.CollisionGroup = "nocol";
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
                freeze = function(_, _, v2389) --[[ Line: 15199 ]]
                    v2389:AdjustSpeed(0);
                end
            }, 
            Startup = function(v2390, _, v2392) --[[ Line: 15204 ]] --[[ Name: Startup ]]
                local v2393 = game.ReplicatedStorage.Emotes.trashbag:Clone();
                v2393:SetAttribute("EmoteProperty", true);
                table.insert(v2390, v2393);
                v2392.Handle = v2393;
                local l_Motor6D_30 = v2393:FindFirstChildOfClass("Motor6D");
                l_Motor6D_30:SetAttribute("EmoteProperty", true);
                table.insert(v2390, l_Motor6D_30);
                v2392.md = l_Motor6D_30;
                l_Motor6D_30.Name = "Sphere";
                l_Motor6D_30.Part0 = v96.PrimaryPart;
                l_Motor6D_30.Part1 = v2393.Sphere;
                l_Motor6D_30.Parent = v96.PrimaryPart;
                v2393.Parent = v96;
                v70({
                    SoundId = "rbxassetid://14498158970", 
                    Parent = v2393.Sphere, 
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
                deaf = function(_, v2396) --[[ Line: 15235 ]]
                    local v2397 = shared.cfolder({
                        Name = "#Deafened", 
                        Parent = v96
                    });
                    v2397:SetAttribute("EmoteProperty", true);
                    table.insert(v2396, v2397);
                end, 
                freeze = function(_, _, v2400) --[[ Line: 15244 ]]
                    v2400:AdjustSpeed(0);
                end
            }, 
            Startup = function(v2401, _, v2403) --[[ Line: 15249 ]] --[[ Name: Startup ]]
                local l_Silence_0 = game.ReplicatedStorage.Emotes.Silence;
                local v2405 = l_Silence_0["Earplug Handle"]:Clone();
                v2405:SetAttribute("EmoteProperty", true);
                table.insert(v2401, v2405);
                v2403.Handle = v2405;
                local v2406 = v2405[v2405.Name];
                v2406:SetAttribute("EmoteProperty", true);
                table.insert(v2401, v2406);
                v2403.md = v2406;
                v2406.Name = "Handle";
                v2406.Part0 = v96["Right Arm"];
                v2406.Part1 = v2405;
                v2406.Parent = v96["Right Arm"];
                v2405.Parent = v96;
                local v2407 = l_Silence_0["Earplug Handle2"]:Clone();
                v2407:SetAttribute("EmoteProperty", true);
                table.insert(v2401, v2407);
                v2403.Handle = v2407;
                local v2408 = v2407[v2407.Name];
                v2408:SetAttribute("EmoteProperty", true);
                table.insert(v2401, v2408);
                v2403.md = v2408;
                v2408.Name = "Handle";
                v2408.Part0 = v96["Left Arm"];
                v2408.Part1 = v2407;
                v2408.Parent = v96["Left Arm"];
                v2407.Parent = v96;
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
                appear = function(v2409) --[[ Line: 15284 ]]
                    for _, v2411 in pairs(v2409.fries:GetChildren()) do
                        if v2411.Name ~= "primary" then
                            v2411.Transparency = 0;
                        end;
                    end;
                end, 
                freeze = function(_, _, v2414) --[[ Line: 15292 ]]
                    v2414:AdjustSpeed(0);
                end, 
                gone = function(v2415) --[[ Line: 15296 ]]
                    v2415.box:Destroy();
                end
            }, 
            Startup = function(v2416, _, v2418) --[[ Line: 15302 ]] --[[ Name: Startup ]]
                local v2419 = game.ReplicatedStorage.Emotes.Fries.Fries:Clone();
                v2419:SetAttribute("EmoteProperty", true);
                table.insert(v2416, v2419);
                v2418.fries = v2419;
                local v2420 = game.ReplicatedStorage.Emotes.Fries.primary:Clone();
                v2420:SetAttribute("EmoteProperty", true);
                table.insert(v2416, v2420);
                v2420.Part0 = v96.PrimaryPart;
                v2420.Part1 = v2419.primary;
                v2420.Parent = v96.PrimaryPart;
                v2419.Parent = v96;
                local v2421 = game.ReplicatedStorage.Emotes.Fries.Model:Clone();
                v2421:SetAttribute("EmoteProperty", true);
                table.insert(v2416, v2421);
                local v2422 = game.ReplicatedStorage.Emotes.Fries["primary part"]:Clone();
                v2422:SetAttribute("EmoteProperty", true);
                table.insert(v2416, v2422);
                v2422.Part0 = v96["Right Arm"];
                v2422.Part1 = v2421["primary part"];
                v2422.Parent = v96["Right Arm"];
                v2421.Parent = v96;
                v2418.box = v2421;
                local v2423 = game.ReplicatedStorage.Emotes.Fries.Chair:Clone();
                v2423:SetAttribute("EmoteProperty", true);
                table.insert(v2416, v2423);
                local l_Weld_11 = Instance.new("Weld");
                l_Weld_11.Part0 = v96.PrimaryPart;
                l_Weld_11.Part1 = v2423;
                l_Weld_11.C0 = CFrame.new(-0.0262451172, -0.944903374, 0.946708679, 1, 4.04431057E-6, -1.05499259E-6, -4.04430102E-6, 1, 8.92530261E-6, 1.05502875E-6, -8.92529806E-6, 1);
                l_Weld_11.Parent = v2423;
                v2423.Parent = v96;
                local v2425 = game.ReplicatedStorage.Emotes.Fries.Table:Clone();
                v2425:SetAttribute("EmoteProperty", true);
                table.insert(v2416, v2425);
                local l_Weld_12 = Instance.new("Weld");
                l_Weld_12.Part0 = v96.PrimaryPart;
                l_Weld_12.Part1 = v2425;
                l_Weld_12.C0 = CFrame.new(-1.52587891E-5, -1.70007861, -2.60010529, 1, 4.04431057E-6, -1.05499259E-6, -4.04430102E-6, 1, 8.92530261E-6, 1.05502875E-6, -8.92529806E-6, 1);
                l_Weld_12.Parent = v2425;
                v2425.Parent = v96;
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
                gone = function(v2427) --[[ Line: 15356 ]]
                    for _, v2429 in pairs(v2427) do
                        v2429:Destroy();
                    end;
                end
            }, 
            Startup = function(v2430, _, v2432) --[[ Line: 15363 ]] --[[ Name: Startup ]]
                local v2433 = v70({
                    SoundId = "rbxassetid://1837644729", 
                    Volume = 0, 
                    TimePosition = 1.1, 
                    Looped = false, 
                    Parent = v96.PrimaryPart
                });
                v2433:SetAttribute("EmoteProperty", true);
                v2433:Resume();
                l_TweenService_0:Create(v2433, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Volume = 0.75
                }):Play();
                local v2434 = game.ReplicatedStorage.Emotes.Money.Handle:Clone();
                v2434:SetAttribute("EmoteProperty", true);
                table.insert(v2430, v2434);
                v2432.Handle = v2434;
                local v2435 = game.ReplicatedStorage.Emotes.Money.M6D:Clone();
                v2435:SetAttribute("EmoteProperty", true);
                table.insert(v2430, v2435);
                v2432.md = v2435;
                v2435.Name = "Handle";
                v2435.Part0 = v96["Left Arm"];
                v2435.Part1 = v2434;
                v2435.Parent = v96["Left Arm"];
                v2434.Parent = v96;
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
            Startup = function(v2436) --[[ Line: 15400 ]] --[[ Name: Startup ]]
                local v2437 = game.ReplicatedStorage.Emotes.Keyboard.Handle:Clone();
                v2437:SetAttribute("EmoteProperty", true);
                table.insert(v2436, v2437);
                local v2438 = game.ReplicatedStorage.Emotes.Keyboard.M6D:Clone();
                v2438:SetAttribute("EmoteProperty", true);
                table.insert(v2436, v2438);
                v2438.Name = "Handle";
                v2438.Part0 = v96.HumanoidRootPart;
                v2438.Part1 = v2437;
                v2438.Parent = v96.HumanoidRootPart;
                v2437.Parent = v96;
            end, 
            Animation = 14357783332, 
            Looped = true, 
            Stun = "Slowed"
        }, 
        Rage = {
            Sounds = {}, 
            Startup = function(v2439, _, v2441) --[[ Line: 15420 ]] --[[ Name: Startup ]]
                local v2442 = game.ReplicatedStorage.Emotes.Keyboard.Handle:Clone();
                v2442:SetAttribute("EmoteProperty", true);
                table.insert(v2439, v2442);
                v2441.kb = v2442.Keyboard;
                local v2443 = game.ReplicatedStorage.Emotes.Keyboard.M6D:Clone();
                v2443:SetAttribute("EmoteProperty", true);
                table.insert(v2439, v2443);
                v2443.Name = "Handle";
                v2443.Part0 = v96.HumanoidRootPart;
                v2443.Part1 = v2442;
                v2443.Parent = v96.HumanoidRootPart;
                v2442.Parent = v96;
                local v2444 = v70({
                    SoundId = "rbxassetid://15290205166", 
                    Parent = v2442, 
                    TimePosition = 0.25, 
                    Volume = 2
                });
                v2444:Resume();
                v2441.s = v2444;
            end, 
            Keyframes = {
                ["end"] = function(v2445, _, _) --[[ Line: 15440 ]]
                    local v2448 = v2445.kb:Clone();
                    l_CollectionService_1:AddTag(v2448, "emotestuff" .. v96.Name);
                    v2445.kb.Transparency = 1;
                    game:GetService("Debris"):AddItem(v2448, 5);
                    v2448.CanCollide = true;
                    v2448.CanTouch = true;
                    v2448.CanQuery = false;
                    v2448.Massless = false;
                    v2448.CollisionGroup = "nocol";
                    v2448.CFrame = v2445.kb.CFrame;
                    v2448.CustomPhysicalProperties = PhysicalProperties.new(nil, nil, 1, nil, 1);
                    v2448.Parent = workspace.Thrown;
                    if v2445.s then
                        v2445.s.Parent = v2448;
                    end;
                    v2448:SetNetworkOwner(l_PlayerFromCharacter_0);
                    v2448.Velocity = Vector3.new(0, -50, 0, 0);
                    v2448.AssemblyAngularVelocity = Vector3.new(math.random(-90, 90), math.random(-90, 90), math.random(-90, 90));
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
            Startup = function(v2449) --[[ Line: 15475 ]] --[[ Name: Startup ]]
                local v2450 = game.ReplicatedStorage.Emotes.Chair.Handle:Clone();
                v2450:SetAttribute("EmoteProperty", true);
                table.insert(v2449, v2450);
                local v2451 = game.ReplicatedStorage.Emotes.Chair.M6D:Clone();
                v2451:SetAttribute("EmoteProperty", true);
                table.insert(v2449, v2451);
                v2451.Name = "Handle";
                v2451.Part0 = v96.HumanoidRootPart;
                v2451.Part1 = v2450;
                v2451.Parent = v96.HumanoidRootPart;
                v2450.Parent = v96;
            end, 
            Keyframes = {
                freeze = function(_, _, v2454) --[[ Line: 15486 ]]
                    v2454:AdjustSpeed(0);
                end
            }, 
            Animation = 14056032417, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        RIP = {
            HideWeapon = true, 
            Startup = function(v2455, _, v2457) --[[ Line: 15498 ]] --[[ Name: Startup ]]
                local v2458 = game.ReplicatedStorage.Emotes.Grave.Grave:Clone();
                v2458:SetAttribute("EmoteProperty", true);
                table.insert(v2455, v2458);
                local v2459 = game.ReplicatedStorage.Emotes.Grave.M6D:Clone();
                v2459:SetAttribute("EmoteProperty", true);
                table.insert(v2455, v2459);
                v2459.Name = "Handle";
                v2459.Part0 = v96.HumanoidRootPart;
                v2459.Part1 = v2458;
                v2459.Parent = v96.HumanoidRootPart;
                v2458.Parent = v96;
                v2457.handle = v2458;
                v70({
                    SoundId = "rbxassetid://14399156027", 
                    Volume = 1, 
                    TimePosition = 0.12, 
                    Parent = v96.PrimaryPart
                }):Resume();
            end, 
            Keyframes = {
                freeze = function(_, _, v2462) --[[ Line: 15517 ]]
                    v2462:AdjustSpeed(0);
                end, 
                smash = function(v2463) --[[ Line: 15521 ]]
                    v2463.handle.Attachment.Dust:Emit(10);
                    v70({
                        SoundId = "rbxassetid://14399155774", 
                        Parent = v2463.handle, 
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
            Startup = function(v2464) --[[ Line: 15548 ]] --[[ Name: Startup ]]
                local v2465 = game.ReplicatedStorage.Emotes.Coin.Handle:Clone();
                v2465:SetAttribute("EmoteProperty", true);
                table.insert(v2464, v2465);
                local v2466 = game.ReplicatedStorage.Emotes.Coin.M6D:Clone();
                v2466:SetAttribute("EmoteProperty", true);
                table.insert(v2464, v2466);
                v2466.Name = "Handle";
                v2466.Part0 = v96["Left Arm"];
                v2466.Part1 = v2465;
                v2466.Parent = v96["Left Arm"];
                v2465.Parent = v96;
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
                claploop = function() --[[ Line: 15573 ]]
                    v70({
                        SoundId = "rbxassetid://9114456730", 
                        Volume = 0.85, 
                        Parent = v96.Head
                    }):Play();
                end
            }, 
            Startup = function(v2467, _) --[[ Line: 15582 ]] --[[ Name: Startup ]]
                local v2469 = game.ReplicatedStorage.Emotes.Think.Attachment:Clone();
                v2469:SetAttribute("EmoteProperty", true);
                table.insert(v2467, v2469);
                v2469.Parent = v96.HumanoidRootPart;
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
            Startup = function(v2470) --[[ Line: 15702 ]] --[[ Name: Startup ]]
                local v2471 = shared.cfolder({
                    Name = "InfinityDebris", 
                    Parent = v96
                });
                l_CollectionService_1:AddTag(v2471, "InfinityDebris");
                table.insert(v2470, v2471);
            end, 
            Keyframes = {
                freeze = function(_, _, v2474) --[[ Line: 15712 ]]
                    v2474:AdjustSpeed(0);
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
            Startup = function(v2475, _, v2477) --[[ Line: 15737 ]] --[[ Name: Startup ]]
                local l_Attachment_15 = Instance.new("Attachment");
                table.insert(v2475, l_Attachment_15);
                l_Attachment_15.Parent = v96.Head;
                l_Attachment_15.Position = Vector3.new(-0.1889999955892563, -0.007000000216066837, 0.4569999873638153, 0);
                local v2479 = game.ReplicatedStorage.Emotes.Sweating:Clone();
                v2477.Crying = v2479;
                table.insert(v2475, v2479);
                v2479.Parent = l_Attachment_15;
                local l_Attachment_16 = Instance.new("Attachment");
                table.insert(v2475, l_Attachment_16);
                l_Attachment_16.Parent = v96.Head;
                l_Attachment_16.Position = Vector3.new(0.1899999976158142, 0.5, -0.46399998664855957, 0);
                local v2481 = game.ReplicatedStorage.Emotes.Sweated:Clone();
                v2477.Crying2 = v2481;
                table.insert(v2475, v2481);
                v2481.Parent = l_Attachment_16;
            end, 
            Keyframes = {
                sweat = function(v2482) --[[ Line: 15756 ]]
                    v2482.Crying.Enabled = false;
                    v2482.Crying2:Emit(10);
                end
            }, 
            HideWeapon = true, 
            Animation = 15488553333, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Cry = {
            HideWeapon = true, 
            Startup = function(v2483, _) --[[ Line: 15770 ]] --[[ Name: Startup ]]
                local v2485 = game.ReplicatedStorage.Emotes.Crying:Clone();
                table.insert(v2483, v2485);
                v2485.Parent = v96.Head;
                local v2486 = v70({
                    SoundId = "rbxassetid://9113234042", 
                    Parent = v96.Head, 
                    TimePosition = 1, 
                    Looped = true, 
                    Volume = 7
                });
                v2486:Resume();
                table.insert(v2483, v2486);
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
            Startup = function(v2487) --[[ Line: 15800 ]] --[[ Name: Startup ]]
                local v2488 = game.ReplicatedStorage.Emotes.basketball:Clone();
                table.insert(v2487, v2488);
                v2488:SetAttribute("EmoteProperty", true);
                local l_Motor6D_31 = v2488:FindFirstChildOfClass("Motor6D");
                table.insert(v2487, l_Motor6D_31);
                l_Motor6D_31:SetAttribute("EmoteProperty", true);
                l_Motor6D_31.Part0 = v96.PrimaryPart;
                l_Motor6D_31.Parent = v96.PrimaryPart;
                l_Motor6D_31.Part1 = v2488.Handle;
                v2488.Parent = v96;
                task.delay(5.233, function() --[[ Line: 15812 ]]
                    if v2488 then
                        v2488:Destroy();
                    end;
                end);
                local v2490 = v70({
                    SoundId = "rbxassetid://9046712764", 
                    Volume = 0, 
                    TimePosition = 0.4, 
                    Looped = false, 
                    Parent = v96.PrimaryPart
                });
                v2490:SetAttribute("EmoteProperty", true);
                v2490:Resume();
                l_TweenService_0:Create(v2490, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Volume = 0.4
                }):Play();
                table.insert(v2487, v2490);
            end, 
            Animation = 13874117043, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        ["Bring It"] = {
            Keyframes = {
                start = function() --[[ Line: 15841 ]]
                    v70({
                        SoundId = "rbxassetid://12981991293", 
                        Parent = v96.PrimaryPart, 
                        PlaybackSpeed = 1, 
                        Volume = 0.4
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://12332220659", 
                        Volume = 0.45, 
                        PlaybackSpeed = 1, 
                        Parent = v96.PrimaryPart
                    }):Play();
                end, 
                one = function() --[[ Line: 15857 ]]
                    v70({
                        SoundId = "rbxassetid://9117373365", 
                        Volume = 0.75, 
                        PlaybackSpeed = 1.45, 
                        Parent = v96.PrimaryPart
                    }):Play();
                end, 
                two = function() --[[ Line: 15866 ]]
                    v70({
                        SoundId = "rbxassetid://12332220659", 
                        Volume = 1.35, 
                        PlaybackSpeed = 1.9, 
                        Parent = v96.PrimaryPart
                    }):Play();
                end
            }, 
            Animation = 13801083337, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Applause = {
            Keyframes = {
                claploop = function() --[[ Line: 15883 ]]
                    local v2491 = v70({
                        SoundId = "rbxassetid://1840084272", 
                        PlaybackSpeed = 1, 
                        Volume = 0.5, 
                        Parent = v96.PrimaryPart
                    });
                    v2491:Play();
                    game:service("TweenService"):Create(v2491, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
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
                start = function(v2492, v2493) --[[ Line: 15905 ]]
                    local v2494 = game.ReplicatedStorage.Emotes.Glasses:Clone();
                    v2494:SetAttribute("EmoteProperty", true);
                    v2494.Parent = v96;
                    table.insert(v2493, v2494);
                    local l_Motor6D_32 = Instance.new("Motor6D");
                    l_Motor6D_32:SetAttribute("EmoteProperty", true);
                    table.insert(v2493, l_Motor6D_32);
                    l_Motor6D_32.Part0 = v96["Left Arm"];
                    l_Motor6D_32.C0 = CFrame.new(0.00482857227, -0.974339962, -0.0985401124, 0.99999547, 1.35184547E-27, -3.3606216E-28, 1.00842308E-27, -0.0216581449, 0.999762356, 0, -0.999764025, -0.0216580443);
                    l_Motor6D_32.Part1 = v2494.Handle;
                    l_Motor6D_32.Parent = v96["Left Arm"];
                    local v2496 = v70({
                        SoundId = "rbxassetid://13773962010", 
                        Volume = 1.5, 
                        PlaybackSpeed = 1.15, 
                        Parent = v2494.Handle
                    });
                    v2496:Play();
                    task.delay(0.5, function() --[[ Line: 15926 ]]
                        game:service("TweenService"):Create(v2496, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            Volume = 0
                        }):Play();
                    end);
                    v2492.glasses = v2494;
                    v70({
                        SoundId = "rbxassetid://3929467229", 
                        Parent = v96.Head, 
                        PlaybackSpeed = 1.5, 
                        Volume = 0.4
                    }):Play();
                end, 
                vfx = function(v2497, v2498) --[[ Line: 15942 ]]
                    v70({
                        SoundId = "rbxassetid://13773869254", 
                        Parent = v96.Head, 
                        PlaybackSpeed = 1, 
                        Volume = 0.9
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://12332220659", 
                        Parent = v96.Head, 
                        Volume = 0.35, 
                        PlaybackSpeed = 1.35
                    }):Play();
                    local l_Attachment_17 = Instance.new("Attachment");
                    l_Attachment_17:SetAttribute("EmoteProperty", true);
                    l_Attachment_17.CFrame = CFrame.new(-0.239279747, 0.309562922, -0.575252533, -0.0331349373, -0.72963804, -0.683030546, -0.989827991, -0.0706492513, 0.123488307, -0.138357326, 0.68017441, -0.719875157);
                    l_Attachment_17.Parent = v96.Head;
                    table.insert(v2498, l_Attachment_17);
                    for _, v2501 in pairs(game.ReplicatedStorage.Emotes.Shine:GetChildren()) do
                        local v2502 = v2501:Clone();
                        v2502.Parent = l_Attachment_17;
                        shared.resizeparticle(v2502, 1.5);
                        v2502:Emit(1);
                    end;
                    if v2497.glasses then
                        local l_glasses_0 = v2497.glasses;
                        for _, v2505 in pairs({
                            l_glasses_0.Glass1, 
                            l_glasses_0.Glass2
                        }) do
                            v2505.Material = Enum.Material.Neon;
                            v2505.Color = Color3.new(1, 1, 1);
                            v2505.Transparency = 0;
                            task.delay(0.5, function() --[[ Line: 15975 ]]
                                game:service("TweenService"):Create(v2505, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    Color = Color3.fromRGB(105, 102, 92), 
                                    Transparency = 0.75
                                }):Play();
                            end);
                        end;
                    end;
                end, 
                gone = function(v2506) --[[ Line: 15985 ]]
                    if v2506.glasses then
                        v2506.glasses:Destroy();
                    end;
                end, 
                away = function() --[[ Line: 15991 ]]
                    v70({
                        SoundId = "rbxassetid://12981991293", 
                        Parent = v96.Head, 
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
                facepalm = function() --[[ Line: 16015 ]]
                    v70({
                        SoundId = "rbxassetid://511340819", 
                        Parent = v96.Head, 
                        TimePosition = 0.1, 
                        Volume = 1.5
                    }):Resume();
                    task.delay(1, function() --[[ Line: 16023 ]]
                        v70({
                            SoundId = "rbxassetid://3848835272", 
                            Parent = v96.Head, 
                            Volume = 0.4, 
                            PlaybackSpeed = 1.25
                        }):Play();
                    end);
                end, 
                sway = function() --[[ Line: 16033 ]]
                    v70({
                        SoundId = "rbxassetid://3929467229", 
                        Parent = v96.Head, 
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
                crack1 = function() --[[ Line: 16059 ]]
                    v70({
                        SoundId = "rbxassetid://9113541085", 
                        Parent = v96.Head, 
                        Volume = 0.75
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://12332220659", 
                        Volume = 0.375, 
                        PlaybackSpeed = 2, 
                        Parent = v96.Head
                    }):Play();
                end, 
                crack2 = function() --[[ Line: 16074 ]]
                    v70({
                        SoundId = "rbxassetid://9113538220", 
                        Parent = v96.Head, 
                        Volume = 0.75
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://12981991293", 
                        Parent = v96.PrimaryPart, 
                        PlaybackSpeed = 1.5, 
                        Volume = 0.375, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                crack3 = function() --[[ Line: 16090 ]]
                    v70({
                        SoundId = "rbxassetid://6930015332", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.75
                    }):Play();
                end, 
                crack4 = function(_, _, v2509) --[[ Line: 16098 ]]
                    v70({
                        SoundId = "rbxassetid://9113538216", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.75
                    }):Play();
                    v2509:AdjustSpeed(1.5);
                    v70({
                        SoundId = "rbxassetid://12981991293", 
                        Parent = v96.PrimaryPart, 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.375, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                fist = function() --[[ Line: 16115 ]]
                    v70({
                        SoundId = "rbxassetid://7543903290", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.9
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://296072089", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.9
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://8595975458", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.9
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://12332220659", 
                        Volume = 0.5, 
                        PlaybackSpeed = 1.5, 
                        Parent = v96.PrimaryPart, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                fist2 = function() --[[ Line: 16143 ]]
                    v70({
                        SoundId = "rbxassetid://7515452875", 
                        Parent = v96.PrimaryPart, 
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
            Startup = function(v2510, _, _) --[[ Line: 16172 ]] --[[ Name: Startup ]]
                local v2513 = game.ReplicatedStorage.Emotes.book:Clone();
                v2513:SetAttribute("EmoteProperty", true);
                table.insert(v2510, v2513);
                v2513.Parent = v96;
                local l_LeftHandle_2 = v2513.LeftHandle;
                l_LeftHandle_2:SetAttribute("EmoteProperty", true);
                table.insert(v2510, l_LeftHandle_2);
                l_LeftHandle_2.RootPart.Part0 = l_LeftHandle_2;
                l_LeftHandle_2.RootPart.Part1 = v2513.RootPart;
                l_LeftHandle_2.Parent = v96;
                local v2515 = game.ReplicatedStorage.Emotes.monocle:Clone();
                v2515:SetAttribute("EmoteProperty", true);
                table.insert(v2510, v2515);
                local l_m6d_27 = v2515.m6d;
                l_m6d_27:SetAttribute("EmoteProperty", true);
                table.insert(v2510, l_m6d_27);
                l_m6d_27.Name = "Meshes/monocle_Cylinder.002";
                l_m6d_27.Part0 = v96.Head;
                l_m6d_27.Part1 = v2515[l_m6d_27.Name];
                l_m6d_27.Parent = v96.Head;
                v2515.Parent = v96.Head;
                local l_m6d_28 = v2513.m6d;
                l_m6d_28:SetAttribute("EmoteProperty", true);
                table.insert(v2510, l_m6d_28);
                l_m6d_28.Name = "LeftHandle";
                l_m6d_28.Part0 = v96["Left Arm"];
                l_m6d_28.Part1 = l_LeftHandle_2;
                l_m6d_28.Parent = v96["Left Arm"];
                v2513.Parent = v96["Left Arm"];
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
            Startup = function(v2518, _, _) --[[ Line: 16215 ]] --[[ Name: Startup ]]
                local v2521 = game.ReplicatedStorage.Emotes.rocket:Clone();
                v2521:SetAttribute("EmoteProperty", true);
                table.insert(v2518, v2521);
                v2521.Parent = v96;
                for _, v2523 in pairs(v2521:GetChildren()) do
                    if v2523.Name ~= "Rocket" and v2523:IsA("BasePart") then
                        v2523.Transparency = 1;
                    end;
                end;
                local l_Weld_13 = Instance.new("Weld");
                l_Weld_13.Part0 = v96.PrimaryPart;
                l_Weld_13.Part1 = v2521.Base;
                l_Weld_13.C0 = CFrame.new(-0.0188751221, -2.70935678, 3.05175781E-5, 0, 0, 1, 0, 1, 0, -1, 0, 0);
                l_Weld_13.Parent = v2521;
                v70({
                    SoundId = "rbxassetid://9119414082", 
                    Parent = v2521.Rocket, 
                    Volume = 0.3, 
                    Looped = true
                }):Play();
                local l_Animation_0 = Instance.new("Animation");
                l_Animation_0.AnimationId = "rbxassetid://16584484676";
                v2521.AnimationController:LoadAnimation(l_Animation_0):Play();
            end, 
            Animation = 16584466961, 
            Looped = true, 
            Stun = "Slowed", 
            StunAttribute = 1
        }, 
        Read = {
            Keyframes = {
                book = function() --[[ Line: 16250 ]]
                    v70({
                        SoundId = "rbxassetid://7244593699", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.75
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://4458782689", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.75
                    }):Play();
                end, 
                start = function(v2526, v2527) --[[ Line: 16264 ]]
                    local v2528 = game.ReplicatedStorage.Emotes.Book.BookRig:Clone();
                    local v2529 = game.ReplicatedStorage.Emotes.Book.MiddleCover:Clone();
                    v2529.Part0 = v96["Left Arm"];
                    v2529.Part1 = v2528.MiddleCover;
                    v2529.Parent = v96["Left Arm"];
                    v2528.LeftCover.SurfaceGui.TextLabel.Text = v96.Name;
                    v2528:SetAttribute("EmoteProperty", true);
                    v2529:SetAttribute("EmoteProperty", true);
                    v2528.Parent = v96;
                    table.insert(v2527, v2528);
                    table.insert(v2527, v2529);
                    v2526.book = v2528;
                    v70({
                        SoundId = "rbxassetid://12332220659", 
                        Volume = 0.3333333333333333, 
                        PlaybackSpeed = 1.5, 
                        Parent = v96.PrimaryPart, 
                        RollOffMaxDistance = v1
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://12981991293", 
                        Parent = v96.PrimaryPart, 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.39999999999999997, 
                        RollOffMaxDistance = v1
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://13726870246", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.39999999999999997, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                up = function() --[[ Line: 16302 ]]
                    v70({
                        SoundId = "rbxassetid://4458775948", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.6
                    }):Play();
                end, 
                close = function() --[[ Line: 16310 ]]
                    v70({
                        SoundId = "rbxassetid://3763472732", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.7
                    }):Play();
                end, 
                away = function() --[[ Line: 16318 ]]
                    v70({
                        SoundId = "rbxassetid://3848838070", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.39999999999999997, 
                        PlaybackSpeed = 1.5
                    }):Play();
                end, 
                gone = function(v2530) --[[ Line: 16327 ]]
                    if v2530.book then
                        v2530.book:Destroy();
                    end;
                end, 
                swish1 = function() --[[ Line: 16333 ]]
                    v70({
                        SoundId = "rbxassetid://4458759938", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.5, 
                        PlaybackSpeed = 1.15
                    }):Play();
                end, 
                swish2 = function() --[[ Line: 16342 ]]
                    v70({
                        SoundId = "rbxassetid://3929467449", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.5, 
                        PlaybackSpeed = 1.35
                    }):Play();
                end, 
                swish3 = function() --[[ Line: 16351 ]]
                    v70({
                        SoundId = "rbxassetid://3929467229", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.5, 
                        PlaybackSpeed = 1.25
                    }):Play();
                end, 
                swish4 = function() --[[ Line: 16360 ]]
                    v70({
                        SoundId = "rbxassetid://4458759938", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.5, 
                        PlaybackSpeed = 1.25
                    }):Play();
                end, 
                step = function() --[[ Line: 16369 ]]
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v96["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.2, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                step2 = function() --[[ Line: 16379 ]]
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v96["Left Leg"], 
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
                start = function(_, _, v2533) --[[ Line: 16397 ]]
                    v2533:AdjustSpeed(2.25);
                    v70({
                        SoundId = "rbxassetid://12332220659", 
                        Volume = 0.25, 
                        PlaybackSpeed = 1.85, 
                        Parent = v96.PrimaryPart, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                pull = function(v2534, v2535, v2536) --[[ Line: 16408 ]]
                    v2536:AdjustSpeed(1);
                    v70({
                        SoundId = "rbxassetid://12981991293", 
                        Parent = v96.PrimaryPart, 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.3, 
                        RollOffMaxDistance = v1
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://13726870246", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.3, 
                        RollOffMaxDistance = v1
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://873073853", 
                        Parent = v96.PrimaryPart, 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.35, 
                        RollOffMaxDistance = v1
                    }):Play();
                    local v2537 = game.ReplicatedStorage.Emotes.Phone:Clone();
                    table.insert(v2535, v2537);
                    v2537.Name = "PhoneEmote";
                    v2537:SetAttribute("EmoteProperty", true);
                    v2537.Parent = v96;
                    local l_Weld_14 = Instance.new("Weld");
                    l_Weld_14.Part0 = v96["Left Arm"];
                    l_Weld_14.Part1 = v2537;
                    l_Weld_14.C0 = CFrame.new(0.135000005, -1, -0.460000008, 4.37113883E-8, 3.82137093E-15, -1, 8.74227766E-8, -1, 0, -1, -8.74227766E-8, -4.37113883E-8);
                    l_Weld_14.Parent = v2537;
                    v2534.phone = v2537;
                end, 
                away = function(v2539, _, _) --[[ Line: 16445 ]]
                    if v2539.phone then
                        v2539.phone:Destroy();
                    end;
                end, 
                done = function() --[[ Line: 16451 ]]
                    v70({
                        SoundId = "rbxassetid://12332220659", 
                        Volume = 0.3333333333333333, 
                        PlaybackSpeed = 2, 
                        Parent = v96.PrimaryPart
                    }):Play();
                end, 
                snap = function(v2542) --[[ Line: 16460 ]]
                    if v2542.phone then
                        v70({
                            SoundId = "rbxassetid://8550763922", 
                            Parent = v2542.phone.Attachment2, 
                            Volume = 0.5, 
                            PlaybackSpeed = 1.5, 
                            RollOffMaxDistance = v1
                        }):Play();
                        for _, v2544 in pairs(v2542.phone.Attachment2:GetChildren()) do
                            if v2544:IsA("ParticleEmitter") then
                                v2544:Emit(1);
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
            Startup = function(v2545, _, v2547) --[[ Line: 16492 ]] --[[ Name: Startup ]]
                local v2548 = game.ReplicatedStorage.Emotes.Phone:Clone();
                table.insert(v2545, v2548);
                v2548.Name = "Handle";
                v2548.Transparency = 1;
                v2548:SetAttribute("EmoteProperty", true);
                v2548.Parent = v96;
                local l_Motor6D_33 = Instance.new("Motor6D");
                l_Motor6D_33:SetAttribute("EmoteProperty", true);
                table.insert(v2545, l_Motor6D_33);
                l_Motor6D_33.Name = "Meshes/IPHONE12 MESH ";
                l_Motor6D_33.Part0 = v96["Right Arm"];
                l_Motor6D_33.Part1 = v2548;
                l_Motor6D_33.C0 = CFrame.new(-0.134792328, -0.986119986, -0.459802628, 2.98023224E-8, -1.49011585E-8, 1, 2.98023224E-8, -1, -1.49011594E-8, 1, 2.98023224E-8, -2.98023224E-8);
                l_Motor6D_33.Parent = v96["Right Arm"];
                v2547.phone = v2548;
            end, 
            Keyframes = {
                appear = function(v2550) --[[ Line: 16508 ]]
                    v2550.phone.Transparency = 0;
                end, 
                disappear = function(v2551) --[[ Line: 16512 ]]
                    v2551.phone:Destroy();
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
            Startup = function(v2552, _, _) --[[ Line: 16530 ]] --[[ Name: Startup ]]
                local v2555 = false;
                local function _(v2556) --[[ Line: 16531 ]]
                    v2556:SetAttribute("EmoteProperty", true);
                    table.insert(v2552, v2556);
                    l_CollectionService_1:AddTag(v2556, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                end;
                local v2558 = game.ReplicatedStorage.Emotes.ArmSlap:Clone();
                v2558.Parent = v96;
                v2558:SetAttribute("EmoteProperty", true);
                table.insert(v2552, v2558);
                l_CollectionService_1:AddTag(v2558, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                local _ = function(v2559) --[[ Line: 16539 ]]
                    for _, v2561 in pairs(v2558:GetDescendants()) do
                        if tostring(v2561) == v2559 then
                            return v2561;
                        end;
                    end;
                end;
                for _, v2564 in pairs(game.ReplicatedStorage.Emotes.kjphone:GetChildren()) do
                    local v2565 = v2564:Clone();
                    v2565.Parent = v96.PrimaryPart;
                    v2565.Part0 = v96.PrimaryPart;
                    local v2566 = tostring(v2564);
                    local v2567;
                    for _, v2569 in pairs(v2558:GetDescendants()) do
                        if tostring(v2569) == v2566 then
                            v2567 = v2569;
                            v2555 = true;
                        end;
                        if v2555 then
                            break;
                        end;
                    end;
                    if not v2555 then
                        v2567 = nil;
                    end;
                    v2555 = false;
                    v2565.Part1 = v2567;
                end;
                game:GetService("Debris"):AddItem(v2558, 6.983);
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
            Startup = function(v2570, _, v2572) --[[ Line: 16572 ]] --[[ Name: Startup ]]
                local v2573 = game.ReplicatedStorage.Emotes.Phone:Clone();
                table.insert(v2570, v2573);
                v2573.Name = "PhoneEmote";
                v2573:SetAttribute("EmoteProperty", true);
                v2573.Parent = v96;
                local l_Weld_15 = Instance.new("Weld");
                l_Weld_15.Part0 = v96["Left Arm"];
                l_Weld_15.Part1 = v2573;
                l_Weld_15.C0 = CFrame.new(0.135000005, -1, -0.460000008, 4.37113883E-8, 3.82137093E-15, -1, 8.74227766E-8, -1, 0, -1, -8.74227766E-8, -4.37113883E-8);
                l_Weld_15.Parent = v2573;
                v2572.phone = v2573;
            end, 
            Keyframes = {
                selfie = function(v2575) --[[ Line: 16586 ]]
                    if v2575.phone then
                        v70({
                            SoundId = "rbxassetid://8550763922", 
                            Parent = v2575.phone.Attachment, 
                            PlaybackSpeed = 1.2, 
                            Volume = 0.5, 
                            RollOffMaxDistance = v1
                        }):Play();
                        for _, v2577 in pairs(v2575.phone.Attachment:GetChildren()) do
                            if v2577:IsA("ParticleEmitter") then
                                v2577:Emit(1);
                            end;
                        end;
                    end;
                end, 
                ["end"] = function(v2578) --[[ Line: 16603 ]]
                    v2578.phone:Destroy();
                end
            }, 
            Fix = true, 
            Animation = 15091452031, 
            Looped = false, 
            Stun = "Freeze"
        }, 
        Selfie = {
            Keyframes = {
                start = function(_, _, v2581) --[[ Line: 16616 ]]
                    v2581:AdjustSpeed(2.25);
                    v70({
                        SoundId = "rbxassetid://12332220659", 
                        Volume = 0.5, 
                        PlaybackSpeed = 1.85, 
                        Parent = v96.PrimaryPart, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                phone = function() --[[ Line: 16627 ]]
                    v70({
                        SoundId = "rbxassetid://13726870246", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.6, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                pull = function(v2582, v2583, v2584) --[[ Line: 16636 ]]
                    v2584:AdjustSpeed(1);
                    v70({
                        SoundId = "rbxassetid://12981991293", 
                        Parent = v96.PrimaryPart, 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.6, 
                        RollOffMaxDistance = v1
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://873073853", 
                        Parent = v96.PrimaryPart, 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.7, 
                        RollOffMaxDistance = v1
                    }):Play();
                    local v2585 = game.ReplicatedStorage.Emotes.Phone:Clone();
                    table.insert(v2583, v2585);
                    v2585.Name = "PhoneEmote";
                    v2585:SetAttribute("EmoteProperty", true);
                    v2585.Parent = v96;
                    local l_Weld_16 = Instance.new("Weld");
                    l_Weld_16.Part0 = v96["Left Arm"];
                    l_Weld_16.Part1 = v2585;
                    l_Weld_16.C0 = CFrame.new(0.135000005, -1, -0.460000008, 4.37113883E-8, 3.82137093E-15, -1, 8.74227766E-8, -1, 0, -1, -8.74227766E-8, -4.37113883E-8);
                    l_Weld_16.Parent = v2585;
                    v2582.phone = v2585;
                end, 
                away = function(_, _, v2589) --[[ Line: 16666 ]]
                    v2589:AdjustSpeed(1.5);
                end, 
                ["2away"] = function(v2590) --[[ Line: 16670 ]]
                    if v2590.phone then
                        v2590.phone:Destroy();
                    end;
                end, 
                step = function() --[[ Line: 16676 ]]
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v96["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.2, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                picture = function(v2591) --[[ Line: 16686 ]]
                    if v2591.phone then
                        v70({
                            SoundId = "rbxassetid://8550763922", 
                            Parent = v2591.phone.Attachment, 
                            Volume = 0.5, 
                            PlaybackSpeed = 1.2, 
                            RollOffMaxDistance = v1
                        }):Play();
                        for _, v2593 in pairs(v2591.phone.Attachment:GetChildren()) do
                            if v2593:IsA("ParticleEmitter") then
                                v2593:Emit(1);
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
            Startup = function(v2594, _) --[[ Line: 16710 ]] --[[ Name: Startup ]]
                local v2596 = game.ReplicatedStorage.Emotes.Fork.RightGrip:Clone();
                table.insert(v2594, v2596);
                local l_Motor6D_34 = Instance.new("Motor6D");
                l_Motor6D_34.C0 = CFrame.new(-5.49316406E-4, -1.00001884, 5.7220459E-5, -1.1920929E-7, 1.00000012, 0, 1.00000012, -1.1920929E-7, 0, 0, 0, -1.00000024);
                l_Motor6D_34.Part0 = v96["Left Arm"];
                l_Motor6D_34.Part1 = v2596;
                l_Motor6D_34.Parent = v2596;
                v2596.Parent = v96;
                local v2598 = game.ReplicatedStorage.Emotes.Fork.Fork:Clone();
                table.insert(v2594, v2598);
                v2596.Fork.Part0 = v2596;
                v2596:SetAttribute("EmoteProperty", true);
                v2596.Fork.Part1 = v2598;
                v2598:SetAttribute("EmoteProperty", true);
                v2598.Parent = v96;
                local v2599 = v70({
                    SoundId = "rbxassetid://13727102947", 
                    Volume = 0.4, 
                    Looped = true, 
                    Parent = v2598
                });
                table.insert(v2594, v2599);
                v2599:Play();
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
            Startup = function() --[[ Line: 16749 ]] --[[ Name: Startup ]]
                local v2600 = game.ReplicatedStorage.Emotes.BillboardGui:Clone();
                v2600.Enabled = true;
                v2600.Parent = v96.Head;
                task.delay(2, function() --[[ Line: 16753 ]]
                    game:service("TweenService"):Create(v2600.ImageLabel, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        ImageTransparency = 1
                    }):Play();
                end);
                game:GetService("Debris"):AddItem(v2600, 3);
            end, 
            Animation = 0
        }, 
        Sheathe = {
            Sounds = {}, 
            Startup = function() --[[ Line: 16768 ]] --[[ Name: Startup ]]
                for _ = 1, 10 do
                    local l_GrabWeapon_0 = v96:FindFirstChild("GrabWeapon");
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
                freeze = function(_, _, v2605) --[[ Line: 16801 ]]
                    v2605:AdjustSpeed(0);
                end, 
                open = function(v2606, _, _) --[[ Line: 16805 ]]
                    local l_umbrella_0 = v2606.umbrella;
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
            Startup = function(v2610, _, v2612) --[[ Line: 16818 ]] --[[ Name: Startup ]]
                v70({
                    SoundId = "rbxassetid://13875814315", 
                    Parent = v96.PrimaryPart, 
                    Volume = 2.5
                }):Play();
                local v2613 = game.ReplicatedStorage.Emotes.Umbrella:Clone();
                table.insert(v2610, v2613);
                v2613:SetAttribute("EmoteProperty", true);
                local l_Motor6D_35 = v2613:FindFirstChildOfClass("Motor6D");
                table.insert(v2610, l_Motor6D_35);
                l_Motor6D_35:SetAttribute("EmoteProperty", true);
                l_Motor6D_35.Part0 = v96["Right Arm"];
                l_Motor6D_35.Parent = v96["Right Arm"];
                l_Motor6D_35.Part1 = v2613.Handle;
                v2613.TopUmbrella.Mesh.Offset = Vector3.new(0, 0, 0, 0);
                v2613.TopUmbrella.Mesh.Scale = Vector3.new(0.10000000149011612, 1.5, 0.10000000149011612, 0);
                v2613.Parent = v96;
                v2612.umbrella = v2613;
            end, 
            HideWeapon = true, 
            Animation = 14056388573, 
            Looped = false, 
            Stun = "Slowed"
        }, 
        Relax = {
            Keyframes = {
                freeze = function(_, _, v2617) --[[ Line: 16848 ]]
                    v2617:AdjustSpeed(0);
                end, 
                start = function() --[[ Line: 16852 ]]
                    v70({
                        SoundId = "rbxassetid://12332099688", 
                        Volume = 1, 
                        Parent = v96.PrimaryPart
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://13631231525", 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.9
                    }):Play();
                    task.delay(0.4, function() --[[ Line: 16865 ]]
                        v70({
                            SoundId = "rbxassetid://12332220659", 
                            Volume = 0.95, 
                            PlaybackSpeed = 1.85, 
                            Parent = v96.PrimaryPart, 
                            RollOffMaxDistance = v1
                        }):Play();
                        v70({
                            SoundId = "rbxassetid://4953436541", 
                            Volume = 1.15, 
                            PlaybackSpeed = 1.85, 
                            Parent = v96.PrimaryPart, 
                            RollOffMaxDistance = v1
                        }):Play();
                    end);
                end, 
                step = function() --[[ Line: 16884 ]]
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v96["Left Arm"], 
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
                claploop = function(v2618, _, _) --[[ Line: 16925 ]]
                    if not v2618.turn then
                        v2618.turn = 1;
                    end;
                    v70({
                        SoundId = v2618.turn % 2 == 0 and "rbxassetid://14351823273" or "rbxassetid://14351823038", 
                        Parent = v96["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.25, 
                        RollOffMaxDistance = v1
                    }):Play();
                    v2618.turn = v2618.turn + 1;
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
                clap = function(_, _, _) --[[ Line: 16953 ]]
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v96["Left Leg"], 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.3, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                claploop = function(_, _, _) --[[ Line: 16963 ]]
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v96["Right Leg"], 
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
                clap = function(v2627, _, _) --[[ Line: 16987 ]]
                    if not v2627.num or v2627.num > 2 then
                        v2627.num = 1;
                    end;
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            16584838006, 
                            16584838984
                        })[v2627.num], 
                        Parent = v96["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.11
                    }):Play();
                    v2627.num = v2627.num + 1;
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
                claploop = function(_, _, _) --[[ Line: 17019 ]]
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v96["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.8, 
                        RollOffMaxDistance = v1
                    }):Play();
                end
            }, 
            Startup = function() --[[ Line: 17030 ]] --[[ Name: Startup ]]
                v70({
                    SoundId = "rbxassetid://" .. ({
                        7455224144, 
                        7455246815, 
                        7455224490
                    })[math.random(1, 3)], 
                    Parent = v96["Left Leg"], 
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
                claploop = function(_, _, v2635) --[[ Line: 17051 ]]
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v96["Left Leg"], 
                        PlaybackSpeed = 1.25, 
                        Volume = 0.4, 
                        RollOffMaxDistance = v1
                    }):Play();
                    task.delay(0.5, function() --[[ Line: 17060 ]]
                        if v2635.IsPlaying then
                            v70({
                                SoundId = ({
                                    "rbxassetid://9125595581", 
                                    "rbxassetid://9114663061", 
                                    "rbxassetid://9114663248", 
                                    "rbxassetid://9114662567"
                                })[math.random(1, 4)], 
                                Volume = 0.2, 
                                Parent = v96["Left Arm"]
                            }):Play();
                        end;
                    end);
                end
            }, 
            Startup = function(v2636, _, _) --[[ Line: 17077 ]] --[[ Name: Startup ]]
                local v2639 = game.ReplicatedStorage.Emotes.Grocery:Clone();
                v2639:SetAttribute("EmoteProperty", true);
                table.insert(v2636, v2639);
                v2639.Name = "Handle";
                local l_Handle_46 = v2639.Handle;
                l_Handle_46:SetAttribute("EmoteProperty", true);
                table.insert(v2636, l_Handle_46);
                l_Handle_46.Name = "Handle";
                l_Handle_46.Part0 = v96["Left Arm"];
                l_Handle_46.Part1 = v2639;
                l_Handle_46.Parent = v96["Left Arm"];
                v2639.Parent = v96["Left Arm"];
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
                clap = function(_, _, _) --[[ Line: 17104 ]]
                    v70({
                        SoundId = ({
                            "rbxassetid://16002610872", 
                            "rbxassetid://16002610798", 
                            "rbxassetid://16002610939"
                        })[math.random(1, 3)], 
                        Parent = v96["Left Leg"], 
                        Volume = 0.25
                    }):Play();
                end
            }, 
            Startup = function(v2644, _, _) --[[ Line: 17113 ]] --[[ Name: Startup ]]
                local v2647 = game.ReplicatedStorage.Emotes.Stars:Clone();
                v2647:SetAttribute("EmoteProperty", true);
                table.insert(v2644, v2647);
                v2647.Parent = v96.Torso;
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
                claploop = function(_, _, _) --[[ Line: 17136 ]]
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v96["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.8, 
                        RollOffMaxDistance = v1
                    }):Play();
                end
            }, 
            Startup = function(v2651) --[[ Line: 17147 ]] --[[ Name: Startup ]]
                local v2652 = game.ReplicatedStorage.Emotes.Cola.Handle:Clone();
                v2652:SetAttribute("EmoteProperty", true);
                table.insert(v2651, v2652);
                local v2653 = game.ReplicatedStorage.Emotes.Cola.M6D:Clone();
                v2653:SetAttribute("EmoteProperty", true);
                table.insert(v2651, v2653);
                v2653.Name = "Handle";
                v2653.Part0 = v96["Left Arm"];
                v2653.Part1 = v2652;
                v2653.Parent = v96["Left Arm"];
                v2652.Parent = v96;
                v70({
                    SoundId = "rbxassetid://" .. ({
                        7455224144, 
                        7455246815, 
                        7455224490
                    })[math.random(1, 3)], 
                    Parent = v96["Left Leg"], 
                    PlaybackSpeed = 1, 
                    Volume = 0.8, 
                    RollOffMaxDistance = v1
                }):Play();
                v70({
                    SoundId = ({
                        "rbxassetid://10721950", 
                        "rbxassetid://10722059"
                    })[math.random(1, 2)], 
                    Parent = v96.PrimaryPart, 
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
                freeze = function(_, _, v2656) --[[ Line: 17266 ]]
                    v2656:AdjustSpeed(0);
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
                freeze = function(_, _, v2659) --[[ Line: 17296 ]]
                    v2659:AdjustSpeed(0);
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
                look = function() --[[ Line: 17315 ]]
                    v70({
                        SoundId = "rbxassetid://5031986894", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.65, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                step = function() --[[ Line: 17324 ]]
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v96["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.2, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                step2 = function() --[[ Line: 17334 ]]
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v96["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.3, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                step3 = function() --[[ Line: 17344 ]]
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v96["Left Leg"], 
                        PlaybackSpeed = 1, 
                        Volume = 0.3, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                cloth = function() --[[ Line: 17355 ]]
                    v70({
                        SoundId = "rbxassetid://12982203916", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.35, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                cloth2 = function() --[[ Line: 17364 ]]
                    v70({
                        SoundId = "rbxassetid://12981981352", 
                        Parent = v96.PrimaryPart, 
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
                start = function() --[[ Line: 17381 ]]
                    v70({
                        SoundId = "rbxassetid://12981991293", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.3, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                point = function() --[[ Line: 17390 ]]
                    v70({
                        SoundId = "rbxassetid://13631231525", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.9, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                cloth2 = function() --[[ Line: 17399 ]]
                    v70({
                        SoundId = "rbxassetid://12982203916", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.3, 
                        RollOffMaxDistance = v1
                    }):Play();
                    task.delay(0.5, function() --[[ Line: 17407 ]]
                        v70({
                            SoundId = "rbxassetid://13716998561", 
                            Parent = v96.PrimaryPart, 
                            Volume = 2, 
                            RollOffMaxDistance = v1
                        }):Play();
                    end);
                end, 
                distort = function() --[[ Line: 17417 ]]

                end, 
                snap = function() --[[ Line: 17421 ]]
                    v70({
                        SoundId = "rbxassetid://9125818080", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.9, 
                        RollOffMaxDistance = v1
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://9113542363", 
                        Parent = v96.PrimaryPart, 
                        Volume = 0.8, 
                        RollOffMaxDistance = v1
                    }):Play();
                    v70({
                        SoundId = "rbxassetid://13717046717", 
                        Parent = v96.PrimaryPart, 
                        Volume = 1, 
                        RollOffMaxDistance = v1
                    }):Play();
                end, 
                step = function() --[[ Line: 17444 ]]
                    v70({
                        SoundId = "rbxassetid://" .. ({
                            7455224144, 
                            7455246815, 
                            7455224490
                        })[math.random(1, 3)], 
                        Parent = v96["Left Leg"], 
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
    local v2822 = {
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
            Startup = function(v2660, _, _) --[[ Line: 17477 ]] --[[ Name: Startup ]]
                local function _(v2663) --[[ Line: 17478 ]]
                    v2663:SetAttribute("EmoteProperty", true);
                    table.insert(v2660, v2663);
                    l_CollectionService_1:AddTag(v2663, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    v2663.Parent = workspace.Thrown;
                end;
                local v2665 = game.ReplicatedStorage.Emotes.GlitcherModel:Clone();
                v2665:SetAttribute("EmoteProperty", true);
                table.insert(v2660, v2665);
                l_CollectionService_1:AddTag(v2665, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                v2665.Parent = workspace.Thrown;
                v2665.Parent = v96;
                local l_Primary1_0 = v2665.Primary1;
                l_Primary1_0:SetAttribute("EmoteProperty", true);
                table.insert(v2660, l_Primary1_0);
                l_CollectionService_1:AddTag(l_Primary1_0, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                l_Primary1_0.Parent = workspace.Thrown;
                l_Primary1_0.Part0 = v96.Torso;
                l_Primary1_0.Part1 = v2665.PrimaryPart;
                l_Primary1_0.Parent = v96.Torso;
                l_Primary1_0.Name = "Primary";
                local v2667 = game.ReplicatedStorage.Emotes.AuraBox:Clone();
                v2667:SetAttribute("EmoteProperty", true);
                table.insert(v2660, v2667);
                l_CollectionService_1:AddTag(v2667, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                v2667.Parent = workspace.Thrown;
                v2667.Anchored = false;
                local l_Weld_17 = Instance.new("Weld");
                l_Weld_17.C0 = CFrame.new(-0.0500144958, 3.30000019, 0.250011444, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                l_Weld_17.Part0 = v96.PrimaryPart;
                l_Weld_17.Part1 = v2667;
                l_Weld_17.Parent = v2667;
                for _, v2670 in pairs(v96:GetChildren()) do
                    if v2670:IsA("BasePart") then
                        for _, v2672 in pairs(game.ReplicatedStorage.Emotes.StartGlitch:GetChildren()) do
                            local v2673 = v2672:Clone();
                            v2673.Parent = v2670;
                            v2673:SetAttribute("EmoteProperty", true);
                            table.insert(v2660, v2673);
                            l_CollectionService_1:AddTag(v2673, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                            v2673.Parent = workspace.Thrown;
                        end;
                    end;
                end;
                v2667.Parent = v96;
            end, 
            Keyframes = {
                burst = function() --[[ Line: 17517 ]]
                    local v2674 = game.ReplicatedStorage.Emotes.BurstEffect:Clone();
                    game.Debris:AddItem(v2674, 3);
                    v2674.Parent = workspace.Thrown;
                    v2674.CFrame = v96.PrimaryPart.CFrame * CFrame.new(-1.33514404E-5, 2.79999971, -0.199993134, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                    v7(v2674);
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
                one = function(v2675, _, _, _) --[[ Line: 17548 ]]
                    v2675.sound.Parent = v2675.strings:FindFirstChild("1_001", true);
                end, 
                two = function(v2679, _, _, _) --[[ Line: 17552 ]]
                    v2679.sound.Parent = v2679.realmp.RealmPrismPart;
                end
            }, 
            Startup = function(v2683, _, v2685) --[[ Line: 17557 ]] --[[ Name: Startup ]]
                local function _(v2686) --[[ Line: 17558 ]]
                    v2686:SetAttribute("EmoteProperty", true);
                    table.insert(v2683, v2686);
                    l_CollectionService_1:AddTag(v2686, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    v2686.Parent = workspace.Thrown;
                end;
                local v2688 = game.ReplicatedStorage.Emotes.PrisonRealmRig:Clone();
                v2688:SetAttribute("EmoteProperty", true);
                table.insert(v2683, v2688);
                l_CollectionService_1:AddTag(v2688, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                v2688.Parent = workspace.Thrown;
                local v2689 = game.ReplicatedStorage.Emotes.RealmPrism:Clone();
                v2689:SetAttribute("EmoteProperty", true);
                table.insert(v2683, v2689);
                l_CollectionService_1:AddTag(v2689, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                v2689.Parent = workspace.Thrown;
                local v2690 = game.ReplicatedStorage.Emotes.Strings:Clone();
                v2690:SetAttribute("EmoteProperty", true);
                table.insert(v2683, v2690);
                l_CollectionService_1:AddTag(v2690, "emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                v2690.Parent = workspace.Thrown;
                for _, v2692 in pairs({
                    v2688, 
                    v2689, 
                    unpack(v2690:GetChildren())
                }) do
                    v2692.PrimaryPart.Anchored = false;
                    local l_Weld_18 = Instance.new("Weld");
                    l_Weld_18.Part0 = v96.PrimaryPart;
                    l_Weld_18.Part1 = v2692.PrimaryPart;
                    l_Weld_18.C0 = v2692:GetAttribute("Offset");
                    l_Weld_18.Parent = v2692.PrimaryPart;
                end;
                v2685.realmp = v2689;
                v2685.strings = v2690;
                local v2694 = v70({
                    SoundId = "rbxassetid://116434570262349", 
                    Parent = v2688:FindFirstChild("Bone_L", true), 
                    Volume = 2
                });
                v2685.sound = v2694;
                v2694:Play();
                local l_Animation_1 = Instance.new("Animation");
                l_Animation_1.AnimationId = "rbxassetid://132931842051377";
                l_Animation_1 = v2688.AnimationController:LoadAnimation(l_Animation_1);
                l_Animation_1:Play();
                table.insert(v2683, l_Animation_1);
                local l_Animation_2 = Instance.new("Animation");
                l_Animation_2.AnimationId = "rbxassetid://73313263538976";
                l_Animation_2 = v2689.Humanoid:LoadAnimation(l_Animation_2);
                l_Animation_2:Play();
                table.insert(v2683, l_Animation_2);
                for v2697, v2698 in pairs({
                    115400109213203, 
                    129152881643120, 
                    116148929833466, 
                    106613129685108, 
                    85535076926939, 
                    136688312702757
                }) do
                    local l_Animation_3 = Instance.new("Animation");
                    l_Animation_3.AnimationId = "rbxassetid://" .. v2698;
                    l_Animation_3 = v2690["String" .. v2697].AnimationController:LoadAnimation(l_Animation_3);
                    l_Animation_3:Play();
                    table.insert(v2683, l_Animation_3);
                end;
                local l_Cube_2_0 = v2688.Cube_2;
                local l_Cube_finals_0 = v2688.Cube_finals;
                local l_OPEN_0 = v2688.OPEN;
                local l_CIRCLE_001_0 = v2688.CIRCLE_001;
                local l_Sphere_001_0 = v2688.Sphere_001;
                local l_RealmPrismPart_0 = v2689.RealmPrismPart;
                local l_Eye_014_0 = v2690.String4.Eye_014;
                local l_Cube_001_0 = v2690.String2.Cube_001;
                local l_Cube_001_1 = v2690.String6.Cube_001;
                local l_Eye_014_1 = v2690.String6.Eye_014;
                local l_Eye_014_2 = v2690.String1.Eye_014;
                local l_Cube_001_2 = v2690.String3.Cube_001;
                local l_Cube_001_3 = v2690.String1.Cube_001;
                local l_Eye_014_3 = v2690.String2.Eye_014;
                local l_Eye_014_4 = v2690.String3.Eye_014;
                local l_Cube_001_4 = v2690.String4.Cube_001;
                local l_Cube_001_5 = v2690.String5.Cube_001;
                local l_Eye_014_5 = v2690.String5.Eye_014;
                local l_Talismanmesh_0 = v2688.Talismanmesh;
                task.delay(3.667, function() --[[ Line: 17625 ]]
                    if not v2688.Parent then
                        return;
                    else
                        v2688.RootPart.PrismRootPart.Talisman.ParticleEmitter:Emit(1);
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
                task.delay(9.15, function() --[[ Line: 17666 ]]
                    l_TweenService_0:Create(l_RealmPrismPart_0, TweenInfo.new(0.01666666666666572, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                end);
                task.delay(9.166666666666666, function() --[[ Line: 17669 ]]
                    l_TweenService_0:Create(l_RealmPrismPart_0, TweenInfo.new(0.016666666666667496, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(3.3399999141693115, 3.312000036239624, 3.315999984741211, 0)
                    }):Play();
                end);
                task.delay(9.183333333333334, function() --[[ Line: 17672 ]]
                    l_TweenService_0:Create(l_RealmPrismPart_0, TweenInfo.new(0.049999999999998934, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.6697041988372803, 1.6561146974563599, 1.657652497291565, 0)
                    }):Play();
                end);
                task.delay(9.233333333333333, function() --[[ Line: 17675 ]]
                    l_TweenService_0:Create(l_RealmPrismPart_0, TweenInfo.new(0.11666666666666714, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(1.062999963760376, 2, 1.0570000410079956, 0)
                    }):Play();
                end);
                task.delay(9.35, function() --[[ Line: 17678 ]]
                    l_TweenService_0:Create(l_RealmPrismPart_0, TweenInfo.new(0.2833333333333332, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Size = Vector3.new(0.5, 0.5, 0.5, 0)
                    }):Play();
                end);
                task.delay(9.633333333333333, function() --[[ Line: 17681 ]]
                    l_TweenService_0:Create(l_RealmPrismPart_0, TweenInfo.new(3.6500000000000004, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 0
                    }):Play();
                end);
                task.delay(13.283333333333333, function() --[[ Line: 17684 ]]
                    l_TweenService_0:Create(l_RealmPrismPart_0, TweenInfo.new(0.016666666666667496, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                        Transparency = 1
                    }):Play();
                end);
                task.delay(6.85, function() --[[ Line: 17688 ]]
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
                task.delay(6.866666666666666, function() --[[ Line: 17702 ]]
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
                task.delay(7.183333333333334, function() --[[ Line: 17716 ]]
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
                task.delay(9.1, function() --[[ Line: 17730 ]]
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
                task.delay(9.216666666666667, function() --[[ Line: 17744 ]]
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
                task.delay(0.4, function() --[[ Line: 17758 ]]
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
                task.delay(0.4166666666666667, function() --[[ Line: 17765 ]]
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
                task.delay(4.55, function() --[[ Line: 17772 ]]
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
                task.delay(4.866666666666666, function() --[[ Line: 17780 ]]
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
                task.delay(6.316666666666666, function() --[[ Line: 17787 ]]
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
                task.delay(6.666666666666667, function() --[[ Line: 17794 ]]
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
            Startup = function(v2719, _, _) --[[ Line: 17822 ]] --[[ Name: Startup ]]
                for _, v2723 in pairs(v96:GetDescendants()) do
                    if v2723:IsA("Sound") and tostring(v2723) == "CrushEmoteAmbience" then
                        game:GetService("TweenService"):Create(v2723, TweenInfo.new(0.75), {
                            Volume = 0
                        }):Play();
                        task.delay(1, function() --[[ Line: 17827 ]]
                            if v2723 and v2723.Parent then
                                v2723:Destroy();
                            end;
                        end);
                    end;
                    if (v2723:IsA("ParticleEmitter") or v2723:IsA("Attachment")) and v2723:GetAttribute("LimitedAura") then
                        if v2723:IsA("ParticleEmitter") then
                            v2723.Enabled = false;
                        else
                            for _, v2725 in pairs(v2723:GetChildren()) do
                                v2725.Enabled = false;
                            end;
                        end;
                        task.delay(4, function() --[[ Line: 17840 ]]
                            if v2723 and v2723.Parent then
                                v2723:Destroy();
                            end;
                        end);
                    end;
                end;
                local l_Accessory_0 = Instance.new("Accessory");
                l_Accessory_0.Name = "#EmoteHolder_" .. math.random(1, 100000);
                l_Accessory_0.Parent = v96;
                l_Accessory_0:SetAttribute("EmoteProperty", true);
                table.insert(v2719, l_Accessory_0);
               shared.repfire({
                    Type = "ReplicateEmoteVfx", 
                    Character = v96, 
                    vfxName = v97, 
                    SpecificModule = game.ReplicatedStorage.Emotes.VFX, 
                    AnimSent = 113876851900426, 
                    RealBind = l_Accessory_0
                });
                task.delay(9, function() --[[ Line: 17866 ]]
                    if not l_Accessory_0 or not l_Accessory_0.Parent or not workspace.Live:FindFirstChild((tostring(v96))) then
                        return;
                    else
                        local v2727 = {};
                        for v2728, v2729 in pairs({
                            "rbxassetid://112446641141594", 
                            "rbxassetid://98080224862986"
                        }) do
                            local v2730 = shared.sfx({
                                SoundId = v2729, 
                                Parent = v96.Torso, 
                                Name = "CrushEmoteAmbience", 
                                Volume = v2728 == 2 and 0.3 or 1, 
                                Looped = true
                            });
                            v2730:Play();
                            table.insert(v2727, v2730);
                        end;
                        local l_v96_0 = v96;
                        local v2732 = game.ReplicatedStorage.Emotes.VFX.VfxMods.FS.vfx.Aura:Clone();
                        for _, v2734 in pairs(v2732:GetChildren()) do
                            local l_l_v96_0_FirstChild_0 = l_v96_0:FindFirstChild(v2734.Name);
                            if l_l_v96_0_FirstChild_0 then
                                for _, v2737 in pairs(v2734:GetChildren()) do
                                    if v2734.Name == "HumanoidRootPart" then
                                        l_l_v96_0_FirstChild_0 = l_v96_0.Torso;
                                    end;
                                    if v2737:IsA("ParticleEmitter") then
                                        v2737.LockedToPart = true;
                                    end;
                                    v2737.Parent = l_l_v96_0_FirstChild_0;
                                    v2737:SetAttribute("LimitedAura", true);
                                    task.delay(65, function() --[[ Line: 17908 ]]
                                        if v2737 and v2737.Parent then
                                            v2737:Destroy();
                                        end;
                                    end);
                                    task.delay(60, function() --[[ Line: 17910 ]]
                                        for _, v2739 in pairs(v2727) do
                                            game:GetService("TweenService"):Create(v2739, TweenInfo.new(0.5), {
                                                Volume = 0
                                            }):Play();
                                            task.delay(0.75, function() --[[ Line: 17915 ]]
                                                if v2739 and v2739.Parent then
                                                    v2739:Destroy();
                                                end;
                                            end);
                                        end;
                                        if v2737:IsA("ParticleEmitter") then
                                            v2737.Enabled = false;
                                            return;
                                        else
                                            for _, v2741 in pairs(v2737:GetChildren()) do
                                                v2741.Enabled = false;
                                            end;
                                            return;
                                        end;
                                    end);
                                end;
                            end;
                        end;
                        v2732:Destroy();
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
            Preview = 130159910454717, 
            Animation = 107649573628906, 
            Stun = "Freeze", 
            Startup = function(v2742, _, _) --[[ Line: 17950 ]] --[[ Name: Startup ]]
                for _, v2746 in pairs(v96:GetDescendants()) do
                    if v2746:IsA("Sound") and tostring(v2746) == "CrushEmoteAmbience" then
                        game:GetService("TweenService"):Create(v2746, TweenInfo.new(0.75), {
                            Volume = 0
                        }):Play();
                        task.delay(1, function() --[[ Line: 17956 ]]
                            if v2746 and v2746.Parent then
                                v2746:Destroy();
                            end;
                        end);
                    end;
                    if (v2746:IsA("ParticleEmitter") or v2746:IsA("Attachment")) and v2746:GetAttribute("LimitedAura") then
                        if v2746:IsA("ParticleEmitter") then
                            v2746.Enabled = false;
                        else
                            for _, v2748 in pairs(v2746:GetChildren()) do
                                v2748.Enabled = false;
                            end;
                        end;
                        task.delay(4, function() --[[ Line: 17969 ]]
                            if v2746 and v2746.Parent then
                                v2746:Destroy();
                            end;
                        end);
                    end;
                end;
                local l_Accessory_1 = Instance.new("Accessory");
                l_Accessory_1.Name = "#EmoteHolder_" .. math.random(1, 100000);
                l_Accessory_1.Parent = v96;
                l_Accessory_1:SetAttribute("EmoteProperty", true);
                table.insert(v2742, l_Accessory_1);
               shared.repfire({
                    Type = "ReplicateEmoteVfx", 
                    Character = v96, 
                    vfxName = v97, 
                    SpecificModule = game.ReplicatedStorage.Emotes.VFX, 
                    AnimSent = 107649573628906, 
                    RealBind = l_Accessory_1
                });
                local v2750 = shared.cfolder({
                    Name = "NoRotate", 
                    Parent = v96
                }, 10);
                v2750:SetAttribute("EmoteProperty", true);
                table.insert(v2742, v2750);
                task.delay(4, function() --[[ Line: 18001 ]]
                    if not l_Accessory_1 or not l_Accessory_1.Parent or not workspace.Live:FindFirstChild((tostring(v96))) then
                        return;
                    else
                        local l_v96_1 = v96;
                        local v2752 = game.ReplicatedStorage.Emotes.VFX.VfxMods.Boundless.vfx.AuraChar:Clone();
                        game.Debris:AddItem(v2752, 5);
                        local v2753 = shared.sfx({
                            SoundId = "rbxassetid://81055990581650", 
                            Parent = l_v96_1.Torso, 
                            Name = "CrushEmoteAmbience", 
                            Volume = 1, 
                            Looped = true
                        });
                        v2753:Play();
                        for _, v2755 in pairs(v2752:GetChildren()) do
                            if v2755:IsA("BasePart") then
                                local l_l_v96_1_FirstChild_0 = l_v96_1:FindFirstChild(v2755.Name);
                                for _, v2758 in pairs(v2755:GetChildren()) do
                                    if l_l_v96_1_FirstChild_0 and (v2758:IsA("Attachment") or v2758:IsA("ParticleEmitter")) then
                                        local v2759 = v2758:Clone();
                                        v2759.Parent = l_l_v96_1_FirstChild_0;
                                        v2759:SetAttribute("LimitedAura", true);
                                        task.delay(60, function() --[[ Line: 18034 ]]
                                            game:GetService("TweenService"):Create(v2753, TweenInfo.new(0.5), {
                                                Volume = 0
                                            }):Play();
                                            task.delay(0.75, function() --[[ Line: 18037 ]]
                                                if v2753 and v2753.Parent then
                                                    v2753:Destroy();
                                                end;
                                            end);
                                            if v2759:IsA("ParticleEmitter") then
                                                v2759.Enabled = false;
                                                return;
                                            else
                                                for _, v2761 in pairs(v2759:GetChildren()) do
                                                    v2761.Enabled = false;
                                                end;
                                                return;
                                            end;
                                        end);
                                        task.delay(65, function() --[[ Line: 18047 ]]
                                            if v2759 and v2759.Parent then
                                                v2759:Destroy();
                                            end;
                                        end);
                                    end;
                                end;
                            end;
                        end;
                        v2752:Destroy();
                        return;
                    end;
                end);
            end
        }, 
        ["The Hunt"] = {
            Startup = function(_, _, _) --[[ Line: 18060 ]] --[[ Name: Startup ]]
                v70({
                    SoundId = "rbxassetid://16749048896", 
                    Parent = v96.PrimaryPart, 
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
            Startup = function(v2765, _, _) --[[ Line: 18085 ]] --[[ Name: Startup ]]
                local v2768 = game.ReplicatedStorage.Emotes.Keys[8]:Clone();
                v2768:SetAttribute("EmoteProperty", true);
                table.insert(v2765, v2768);
                local l_m6d_29 = v2768.m6d;
                l_m6d_29:SetAttribute("EmoteProperty", true);
                table.insert(v2765, l_m6d_29);
                l_m6d_29.Name = v2768.Name;
                l_m6d_29.Part0 = v96.PrimaryPart;
                l_m6d_29.Part1 = v2768;
                l_m6d_29.Parent = v96.PrimaryPart;
                v2768.Parent = v96;
            end, 
            Animation = 16719107050
        }, 
        ["Tenth Key"] = {
            Startup = function(v2770, _, _) --[[ Line: 18100 ]] --[[ Name: Startup ]]
                local v2773 = game.ReplicatedStorage.Emotes.Keys[10]:Clone();
                v2773:SetAttribute("EmoteProperty", true);
                table.insert(v2770, v2773);
                local l_m6d_30 = v2773.m6d;
                l_m6d_30:SetAttribute("EmoteProperty", true);
                table.insert(v2770, l_m6d_30);
                l_m6d_30.Name = v2773.Name;
                l_m6d_30.Part0 = v96.PrimaryPart;
                l_m6d_30.Part1 = v2773;
                l_m6d_30.Parent = v96.PrimaryPart;
                v2773.Parent = v96;
                shared.sfx({
                    SoundId = "rbxassetid://16725117208", 
                    Parent = v2773, 
                    Volume = 1.5
                }):Play();
            end, 
            Animation = 16725121777
        }, 
        ["Sixth Key"] = {
            Startup = function(v2775, _, _) --[[ Line: 18121 ]] --[[ Name: Startup ]]
                local v2778 = game.ReplicatedStorage.Emotes.Keys[6]:Clone();
                v2778:SetAttribute("EmoteProperty", true);
                table.insert(v2775, v2778);
                local l_m6d_31 = v2778.m6d;
                l_m6d_31:SetAttribute("EmoteProperty", true);
                table.insert(v2775, l_m6d_31);
                l_m6d_31.Name = v2778.Name;
                l_m6d_31.Part0 = v96.PrimaryPart;
                l_m6d_31.Part1 = v2778;
                l_m6d_31.Parent = v96.PrimaryPart;
                v2778.Parent = v96;
                shared.sfx({
                    SoundId = "rbxassetid://16725146789", 
                    Parent = v2778, 
                    Volume = 1.5
                }):Play();
            end, 
            Animation = 16725167915
        }, 
        ["Ninth Key"] = {
            Startup = function(v2780, _, _) --[[ Line: 18142 ]] --[[ Name: Startup ]]
                local v2783 = game.ReplicatedStorage.Emotes.Keys[9]:Clone();
                v2783:SetAttribute("EmoteProperty", true);
                table.insert(v2780, v2783);
                local l_m6d_32 = v2783.m6d;
                l_m6d_32:SetAttribute("EmoteProperty", true);
                table.insert(v2780, l_m6d_32);
                l_m6d_32.Name = v2783.Name;
                l_m6d_32.Part0 = v96.PrimaryPart;
                l_m6d_32.Part1 = v2783;
                l_m6d_32.Parent = v96.PrimaryPart;
                v2783.Parent = v96;
                shared.sfx({
                    SoundId = "rbxassetid://16719157711", 
                    Parent = v2783, 
                    Volume = 1.5
                }):Play();
            end, 
            Animation = 16719149848
        }, 
        ["First Key"] = {
            Startup = function(v2785, _, _) --[[ Line: 18163 ]] --[[ Name: Startup ]]
                local v2788 = game.ReplicatedStorage.Emotes.Keys[1]:Clone();
                v2788:SetAttribute("EmoteProperty", true);
                table.insert(v2785, v2788);
                local l_m6d_33 = v2788.m6d;
                l_m6d_33:SetAttribute("EmoteProperty", true);
                table.insert(v2785, l_m6d_33);
                l_m6d_33.Name = v2788.Name;
                l_m6d_33.Part0 = v96.PrimaryPart;
                l_m6d_33.Part1 = v2788;
                l_m6d_33.Parent = v96.PrimaryPart;
                v2788.Parent = v96;
                shared.sfx({
                    SoundId = "rbxassetid://16719180495", 
                    Parent = v2788, 
                    TimePosition = 0.075, 
                    Volume = 1.5
                }):Resume();
            end, 
            Animation = 16719183472
        }, 
        ["Seventh Key"] = {
            Startup = function(v2790, _, _) --[[ Line: 18185 ]] --[[ Name: Startup ]]
                local v2793 = game.ReplicatedStorage.Emotes.Keys[7]:Clone();
                v2793:SetAttribute("EmoteProperty", true);
                table.insert(v2790, v2793);
                local l_m6d_34 = v2793.m6d;
                l_m6d_34:SetAttribute("EmoteProperty", true);
                table.insert(v2790, l_m6d_34);
                l_m6d_34.Name = v2793.Name;
                l_m6d_34.Part0 = v96.PrimaryPart;
                l_m6d_34.Part1 = v2793;
                l_m6d_34.Parent = v96.PrimaryPart;
                v2793.Parent = v96;
                shared.sfx({
                    SoundId = "rbxassetid://16719202700", 
                    Parent = v2793, 
                    TimePosition = 0, 
                    Volume = 1.5
                }):Resume();
            end, 
            Animation = 16719205513
        }, 
        ["Third Key"] = {
            Startup = function(v2795, _, _) --[[ Line: 18207 ]] --[[ Name: Startup ]]
                local v2798 = game.ReplicatedStorage.Emotes.Keys[3]:Clone();
                v2798:SetAttribute("EmoteProperty", true);
                table.insert(v2795, v2798);
                local l_m6d_35 = v2798.m6d;
                l_m6d_35:SetAttribute("EmoteProperty", true);
                table.insert(v2795, l_m6d_35);
                l_m6d_35.Name = v2798.Name;
                l_m6d_35.Part0 = v96.PrimaryPart;
                l_m6d_35.Part1 = v2798;
                l_m6d_35.Parent = v96.PrimaryPart;
                v2798.Parent = v96;
                shared.sfx({
                    SoundId = "rbxassetid://16725331724", 
                    Parent = v2798, 
                    Volume = 1.5
                }):Resume();
            end, 
            Animation = 16725337143
        }, 
        ["Fourth Key"] = {
            Startup = function(v2800, _, _) --[[ Line: 18228 ]] --[[ Name: Startup ]]
                local v2803 = game.ReplicatedStorage.Emotes.Keys[4]:Clone();
                v2803:SetAttribute("EmoteProperty", true);
                table.insert(v2800, v2803);
                local l_m6d_36 = v2803.m6d;
                l_m6d_36:SetAttribute("EmoteProperty", true);
                table.insert(v2800, l_m6d_36);
                l_m6d_36.Name = v2803.Name;
                l_m6d_36.Part0 = v96.PrimaryPart;
                l_m6d_36.Part1 = v2803;
                l_m6d_36.Parent = v96.PrimaryPart;
                v2803.Parent = v96;
                shared.sfx({
                    SoundId = "rbxassetid://16719261316", 
                    Parent = v2803, 
                    TimePosition = 0.2, 
                    Volume = 1.5
                }):Resume();
            end, 
            Animation = 16719220174
        }, 
        ["Fifth Key"] = {
            Startup = function(v2805, _, _) --[[ Line: 18250 ]] --[[ Name: Startup ]]
                local v2808 = game.ReplicatedStorage.Emotes.Keys[5]:Clone();
                v2808:SetAttribute("EmoteProperty", true);
                table.insert(v2805, v2808);
                local l_m6d_37 = v2808.m6d;
                l_m6d_37:SetAttribute("EmoteProperty", true);
                table.insert(v2805, l_m6d_37);
                l_m6d_37.Name = v2808.Name;
                l_m6d_37.Part0 = v96.PrimaryPart;
                l_m6d_37.Part1 = v2808;
                l_m6d_37.Parent = v96.PrimaryPart;
                v2808.Parent = v96;
                shared.sfx({
                    SoundId = "rbxassetid://16725540436", 
                    Parent = v2808, 
                    Volume = 1.5
                }):Resume();
            end, 
            Animation = 16725350277
        }, 
        ["Second Key"] = {
            Startup = function(v2810, _, _) --[[ Line: 18271 ]] --[[ Name: Startup ]]
                local v2813 = game.ReplicatedStorage.Emotes.Keys[2]:Clone();
                v2813:SetAttribute("EmoteProperty", true);
                table.insert(v2810, v2813);
                local l_m6d_38 = v2813.m6d;
                l_m6d_38:SetAttribute("EmoteProperty", true);
                table.insert(v2810, l_m6d_38);
                l_m6d_38.Name = v2813.Name;
                l_m6d_38.Part0 = v96.PrimaryPart;
                l_m6d_38.Part1 = v2813;
                l_m6d_38.Parent = v96.PrimaryPart;
                v2813.Parent = v96;
                task.delay(0.3, function() --[[ Line: 18281 ]]
                    if v2813.Parent then
                        shared.sfx({
                            SoundId = "rbxassetid://16719230370", 
                            Parent = v2813, 
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
            Startup = function(v2815, _, _) --[[ Line: 18306 ]] --[[ Name: Startup ]]
                local v2818 = game.ReplicatedStorage.Emotes.potion:Clone();
                v2818.Parent = v96;
                local l_Weld_19 = Instance.new("Weld");
                l_Weld_19.Part0 = v96["Right Arm"];
                l_Weld_19.Part1 = v2818;
                l_Weld_19.C0 = CFrame.new(-0.100006104, -1, 0.499969482, 1, 0, 0, 0, -1.00000012, -2.79396772E-9, 0, -2.79396772E-9, -1);
                l_Weld_19.Parent = v2818;
                for _, v2821 in pairs({
                    l_Weld_19, 
                    v2818
                }) do
                    v2821:SetAttribute("EmoteProperty", true);
                    table.insert(v2815, v2821);
                end;
            end, 
            HideWeapon = true, 
            Looped = true, 
            Animation = 35654637, 
            Stun = "Slowed"
        }
    };
    if v100 then
        for v2823, _ in pairs(v2822) do
            if string.split(v2823, " ")[2] == "Key" or v2823 == "The Hunt" then
                v2822[v2823].HideWeapon = true;
                v2822[v2823].Stun = "Freeze";
                v2822[v2823].Ease = 0;
                v2822[v2823].CantCancel = true;
                v2822[v2823].Key = true;
                v2822[v2823].NoRotate = true;
                v2822[v2823].Keyframes = {
                    ["end"] = function() --[[ Line: 18334 ]]

                    end
                };
            end;
        end;
        for v2825, v2826 in pairs(v2822) do
            v103[v2825] = v2826;
        end;
    end;
    if v98 then
        return v103;
    elseif tick() - (v96:GetAttribute("EmoteCD") or 0) < 0 then
        return;
    elseif not v103[v97] then
        return;
    else
        v103 = v103[v97];
        if not shared.intcheck then
            return;
        else
            if v103.KillEmote or v103.AuraEffect then
                local l_ForceField_3 = v96:FindFirstChildOfClass("ForceField");
                if l_ForceField_3 and l_ForceField_3:GetAttribute("Emote") then
                    return;
                end;
            end;
            if v96:FindFirstChild("KillEmoteInProgress") then
                return;
            elseif v103.KillEmote and not v62(v96) then
                return;
            else
                local v2828 = require(v96.CharacterHandler:FindFirstChild("AnimationPlayer") or v96.CharacterHandler:WaitForChild("AnimationPlayer"));
                local l_v2828_0 = v2828 --[[ copy: 10 -> 46 ]];
                v102 = function(v2830) --[[ Line: 18374 ]]
                    return l_v2828_0.playAnimation(v96:FindFirstChild("Humanoid"), v2830);
                end;
                v2828 = 0;
                if v97 == "OK" or v97 == "And One" then
                    v2828 = v2828 + 2;
                end;
                if v97 == "Cart Ride" then
                    v2828 = v2828 + 1.5;
                end;
                if v97 == "Untouchable" or v97 == "Hologram" or v97 == "Party" then
                    v2828 = v2828 + 2;
                end;
                v96:SetAttribute("EmoteCD", tick() + v2828);
                local v2831 = v102(v103.Animation);
                local v2832 = {
                    v2831
                };
                v2831.Looped = v103.Looped;
                shared.cfolder({
                    Name = "CancelEmote2", 
                    Parent = v96
                }, 0.1);
                local v2833 = shared.cfolder({
                    Name = "DoingEmote"
                });
                v2833:SetAttribute("Name", v97);
                v2833:SetAttribute("FixRotation", v103.FixRotation);
                l_CollectionService_1:AddTag(v2833, "emotestun" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                v2833.Parent = v96;
                if v103.Tag then
                    l_CollectionService_1:AddTag(v2833, v103.Tag);
                    l_CollectionService_1:AddTag(v2833, "interactableEmote");
                end;
                table.insert(v2832, v2833);
                if v103.Stun then
                    local v2834 = shared.cfolder({
                        Name = v103.Stun
                    });
                    if v103.StunAttribute then
                        v2834:SetAttribute("Div", v103.StunAttribute);
                    end;
                    v2834:SetAttribute("EmoteStun", true);
                    l_CollectionService_1:AddTag(v2834, "emotestun" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    v2834.Parent = v96;
                    table.insert(v2832, v2834);
                end;
                if v103.CanWalk then
                    local v2835 = shared.cfolder({
                        Name = "CanWalk"
                    });
                    l_CollectionService_1:AddTag(v2835, "emotestun" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    v2835.Parent = v96;
                    table.insert(v2832, v2835);
                end;
                if v103.NoRotate then
                    local v2836 = shared.cfolder({
                        Name = "NoRotate"
                    });
                    l_CollectionService_1:AddTag(v2836, "emotestun" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    v2836.Parent = v96;
                    table.insert(v2832, v2836);
                end;
                if v103.HideWeapon and v96:GetAttribute("WeaponHolding") then
                    local v2837 = shared.cfolder({
                        Name = "GrabWeapon"
                    });
                    v2837:SetAttribute("inf", true);
                    v2837.Parent = v96;
                    local v2838 = shared.cfolder({
                        Name = "HideWeapon", 
                        Parent = v96
                    });
                    l_CollectionService_1:AddTag(v2838, "emotestun" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    l_CollectionService_1:AddTag(v2837, "emotestun" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                    table.insert(v2832, v2838);
                    table.insert(v2832, v2837);
                end;
                if v103.Heavy then
                    table.insert(v2832, shared.cfolder({
                        Name = "HeavyBody", 
                        Parent = v96
                    }));
                end;
                if v96:FindFirstChild("NoCancel") then
                    v103.CantCancel = true;
                end;
                local v2839 = shared.intcheck(v96, v2832, nil, v103.CantCancel);
                if v2839.interrupted then
                    return;
                else
                    if v103.CantCancel then
                        for _ = 1, 5 do
                            local l_AbsoluteImmortal_0 = v96:FindFirstChild("AbsoluteImmortal");
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
                        table.insert(v2832, l_ForceField_4);
                        l_ForceField_4.Parent = v96;
                    end;
                    table.insert(v2832, v96.DescendantAdded:Connect(function(v2843) --[[ Line: 18500 ]]
                        task.wait();
                        if v2843.Name == "EmoteSFX" and v2843:IsA("Sound") then
                            table.insert(v2832, v2843);
                            local v2844 = nil;
                            do
                                local l_v2844_0 = v2844;
                                l_v2844_0 = v2843:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 18504 ]]
                                    if not v2843.Parent then
                                        table.remove(v2832, table.find(v2832, v2843));
                                        return l_v2844_0:Disconnect();
                                    else
                                        return;
                                    end;
                                end);
                                table.insert(v2832, l_v2844_0);
                            end;
                        end;
                    end));
                    if v97 == "Boppin" then
                        local v2846 = {
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
                        v103.Keyframes = {};
                        for v2847, v2848 in pairs(v2846) do
                            v103.Keyframes[v2847] = function(v2849) --[[ Line: 18530 ]]
                                local v2850 = game.ReplicatedStorage.Emotes.Smear[string.sub(v2847, 1, 6)]:Clone();
                                v2850:SetAttribute("EmoteProperty", true);
                                table.insert(v2832, v2850);
                                local l_Weld_20 = Instance.new("Weld");
                                l_Weld_20.Parent = v2850;
                                l_Weld_20.Part0 = v96.PrimaryPart;
                                l_Weld_20.Part1 = v2850;
                                l_Weld_20.C0 = v2848;
                                v2849[v2847] = v2850;
                                v2850.Parent = v96;
                            end;
                            v103.Keyframes[v2847 .. "end"] = function(v2852) --[[ Line: 18545 ]]
                                local v2853 = v2852[v2847];
                                if v2853 then
                                    v2853:Destroy();
                                end;
                            end;
                        end;
                    end;
                    local v2854 = {};
                    if v103.Animation ~= 0 then
                        v96:SetAttribute("SideDashDisable", true);
                        v2831:Play(v103.Ease);
                    end;
                    if v103.KillEmote then
                        local v2855 = v62(v96);
                        local l_PrimaryPart_1 = v96.PrimaryPart;
                        local v2857 = nil;
                        local v2858 = nil;
                        local v2859 = {};
                        local v2860 = {};
                        local v2861 = nil;
                        local function v2863(v2862) --[[ Line: 18571 ]]
                           shared.repfire({
                                Effect = "Smooth Grab", 
                                CanBypass = true, 
                                Hit = v2862.hit, 
                                From = v96.PrimaryPart, 
                                NoLook = true, 
                                Offset = v2862.offset, 
                                Anchor = v2862.anchor
                            });
                        end;
                        local l_v2860_0 = v2860 --[[ copy: 21 -> 47 ]];
                        local function v2868(v2865) --[[ Line: 18583 ]]
                            for _, v2867 in pairs(l_v2860_0) do
                                if v2867:IsA("Animation") then
                                    v2867:Stop(v2865.speed or 0);
                                end;
                                v2867:Destroy();
                            end;
                        end;
                        do
                            local l_v2857_0, l_v2858_0, l_v2861_0 = v2857, v2858, v2861;
                            local function v2874(v2872) --[[ Line: 18593 ]]
                                if not workspace.Live:FindFirstChild((tostring(l_v2857_0))) then
                                    return;
                                else
                                    local l_BodyVelocity_4 = Instance.new("BodyVelocity");
                                    l_BodyVelocity_4.MaxForce = Vector3.new(1, 1, 1, 0) * 40000;
                                    l_BodyVelocity_4.Velocity = v2872.Velocity;
                                    l_BodyVelocity_4.Parent = l_v2857_0.PrimaryPart;
                                    game.Debris:AddItem(l_BodyVelocity_4, v2872.DeletionTime);
                                    return;
                                end;
                            end;
                            local v2875 = {};
                            local l_v2875_0 = v2875 --[[ copy: 26 -> 48 ]];
                            local function v2881(v2877) --[[ Line: 18605 ]]
                                for _, v2879 in pairs(l_v2875_0) do
                                    v2879:Destroy();
                                end;
                                local l_BodyVelocity_5 = Instance.new("BodyVelocity");
                                table.insert(v2832, l_BodyVelocity_5);
                                table.insert(l_v2875_0, l_BodyVelocity_5);
                                l_BodyVelocity_5.Name = "moveme";
                                l_BodyVelocity_5.MaxForce = Vector3.new(1, 0, 1, 0) * 40000;
                                l_BodyVelocity_5:SetAttribute("Speed", v2877.speed or 100);
                                l_BodyVelocity_5:SetAttribute("Fallout", v2877.fallout or 0.95);
                                l_BodyVelocity_5:SetAttribute("End", v2877.endd or 5);
                                l_BodyVelocity_5.Parent = v96.PrimaryPart;
                                game.Debris:AddItem(l_BodyVelocity_5, v2877.deletiontime or 5);
                            end;
                            local function v2884(v2882) --[[ Line: 18621 ]]
                                local v2883 = {
                                    Effect = "Ground Crater", 
                                    Seed = math.random(1, 2000000000), 
                                    start = v2882.startpos, 
                                    ["end"] = Vector3.new(0, -14, 0, 0), 
                                    amount = v2882.amount, 
                                    size = v2882.size, 
                                    nosound = v2882.nosound
                                };
                               shared.repfire(v2883);
                            end;
                            local l_v2868_0 = v2868 --[[ copy: 24 -> 49 ]];
                            local l_v2874_0 = v2874 --[[ copy: 25 -> 50 ]];
                            local l_v2884_0 = v2884 --[[ copy: 28 -> 51 ]];
                            local l_v2881_0 = v2881 --[[ copy: 27 -> 52 ]];
                            local l_l_PrimaryPart_1_0 = l_PrimaryPart_1 --[[ copy: 17 -> 53 ]];
                            local v2972 = {
                                ["Beneath Me"] = {
                                    VictimAnim = 74811458332755, 
                                    GrabOffset = CFrame.new(0, 0, 0), 
                                    ForceStopAnim = true, 
                                    Markers = {
                                        stomp = function() --[[ Line: 18641 ]]
                                            v17({
                                                v96, 
                                                l_v2857_0
                                            }, 3);
                                        end, 
                                        stomp2 = function() --[[ Line: 18645 ]]
                                            v17({
                                                v96, 
                                                l_v2857_0
                                            }, 8);
                                            l_v2868_0();
                                            shared.ragdoll({
                                                hit = l_v2857_0, 
                                                time = 20
                                            });
                                            l_v2874_0({
                                                Velocity = Vector3.new(0, math.random(100, 125), 0), 
                                                DeletionTime = Random.new():NextNumber(0.1, 0.125)
                                            });
                                            l_v2884_0({
                                                startpos = l_v2857_0.PrimaryPart.Position, 
                                                ["end"] = Vector3.new(0, -24, 0, 0), 
                                                amount = 6, 
                                                nosound = true, 
                                                size = 0.3
                                            });
                                            l_v2884_0({
                                                ["end"] = Vector3.new(0, -24, 0, 0), 
                                                amount = 9, 
                                                nosound = true, 
                                                nosmoke = true, 
                                                size = 1.34, 
                                                startpos = l_v2857_0.PrimaryPart.Position, 
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
                                        rip = function() --[[ Line: 18689 ]]
                                            l_v2857_0:SetAttribute("NoHeadLerp", true);
                                            local l_ForceField_5 = Instance.new("ForceField");
                                            l_ForceField_5.Visible = false;
                                            l_ForceField_5.Name = "AbsoluteImmortal";
                                            l_ForceField_5.Parent = l_v2857_0;
                                            shared.cfolder({
                                                Name = "RootAnchor", 
                                                Parent = l_v2857_0
                                            });
                                            local l_ForceField_6 = Instance.new("ForceField");
                                            l_ForceField_6.Parent = l_v2857_0;
                                            l_ForceField_6.Visible = false;
                                            l_v2857_0.Torso.Neck:Destroy();
                                            local l_Head_0 = l_v2857_0.Head;
                                            l_Head_0.CanCollide = false;
                                            l_Head_0.Massless = true;
                                            l_Head_0.Parent = workspace.Thrown;
                                            for _, v2894 in pairs(l_Head_0:GetDescendants()) do
                                                if v2894:IsA("BillboardGui") then
                                                    v2894:Destroy();
                                                end;
                                            end;
                                            local l_Weld_21 = Instance.new("Weld");
                                            for _, v2897 in pairs({
                                                l_Head_0, 
                                                l_Weld_21
                                            }) do
                                                table.insert(v2832, v2897);
                                                game.Debris:AddItem(v2897, 15);
                                            end;
                                            l_Weld_21.Parent = v96;
                                            l_Weld_21.Part0 = v96["Right Arm"];
                                            l_Weld_21.Part1 = l_Head_0;
                                            l_Weld_21.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(0, 1.5707963267948966, 0);
                                            task.delay(1.85, function() --[[ Line: 18732 ]]
                                                l_v2868_0();
                                                l_v2861_0:AdjustSpeed(0);
                                            end);
                                            shared.ragdoll({
                                                hit = l_v2857_0, 
                                                time = 20
                                            });
                                            task.delay(1.5, function() --[[ Line: 18742 ]]
                                                if l_Head_0 and l_Head_0.Parent then
                                                    local function v2899(v2898) --[[ Line: 18744 ]] --[[ Name: fadeOut ]]
                                                        game:GetService("TweenService"):Create(v2898, TweenInfo.new(0.65), {
                                                            Transparency = 1
                                                        }):Play();
                                                    end;
                                                    local function v2903(v2900) --[[ Line: 18748 ]] --[[ Name: fadeOutDescendants ]]
                                                        for _, v2902 in pairs(v2900:GetDescendants()) do
                                                            if v2902:IsA("Part") or v2902:IsA("MeshPart") or v2902:IsA("Decal") then
                                                                v2899(v2902);
                                                            end;
                                                        end;
                                                    end;
                                                    for _, v2905 in pairs(l_v2857_0:GetDescendants()) do
                                                        if v2905:IsA("Accessory") then
                                                            v2903(v2905);
                                                        end;
                                                    end;
                                                    v2899(l_Head_0);
                                                    v2903(l_Head_0);
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
                                        two = function() --[[ Line: 18777 ]]
                                            local l_ForceField_7 = Instance.new("ForceField");
                                            l_ForceField_7.Visible = false;
                                            l_ForceField_7.Name = "AbsoluteImmortal";
                                            l_ForceField_7.Parent = l_v2857_0;
                                            local _ = shared.cfolder({
                                                Name = "RootAnchor", 
                                                Parent = l_v2857_0
                                            });
                                            v11(l_v2857_0);
                                            l_v2861_0:AdjustSpeed(0);
                                            l_v2868_0();
                                            local l_Name_0 = l_v2857_0.Name;
                                            local l_PlayerFromCharacter_3 = game.Players:GetPlayerFromCharacter(l_v2857_0);
                                            if l_PlayerFromCharacter_3 then
                                                l_Name_0 = l_PlayerFromCharacter_3.DisplayName;
                                            end;
                                           shared.repfire({
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
                                        slam = function() --[[ Line: 18819 ]]
                                            local l_ForceField_8 = Instance.new("ForceField");
                                            l_ForceField_8.Visible = false;
                                            l_ForceField_8.Name = "AbsoluteImmortal";
                                            l_ForceField_8.Parent = l_v2857_0;
                                            local _ = shared.cfolder({
                                                Name = "RootAnchor", 
                                                Parent = l_v2857_0
                                            });
                                           shared.repfire({
                                                Effect = "Death FX", 
                                                Character = l_v2857_0
                                            });
                                            v17({
                                                v96, 
                                                l_v2857_0
                                            }, 8);
                                            l_v2861_0:Stop(0);
                                            l_v2868_0();
                                            shared.ragdoll({
                                                hit = l_v2857_0, 
                                                time = 20
                                            });
                                           shared.repfire({
                                                Effect = "System Message", 
                                                Info = {
                                                    Text = string.format("[S] %s has been banned from the game <font size=\"10\" color=\"rgb(255, 255, 255)\">just kidding!!!</font>", l_v2857_0.Name), 
                                                    Color = Color3.fromRGB(205, 84, 75), 
                                                    Font = Enum.Font.SourceSansBold, 
                                                    FontSize = Enum.FontSize.Size24
                                                }
                                            });
                                            l_v2884_0({
                                                startpos = l_v2857_0.PrimaryPart.Position, 
                                                ["end"] = Vector3.new(0, -24, 0, 0), 
                                                amount = 6, 
                                                nosound = true, 
                                                size = 0.45
                                            });
                                            l_v2884_0({
                                                ["end"] = Vector3.new(0, -24, 0, 0), 
                                                amount = 8, 
                                                nosound = true, 
                                                nosmoke = true, 
                                                size = 1.5, 
                                                startpos = l_v2857_0.PrimaryPart.Position, 
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
                                        die = function() --[[ Line: 18884 ]]
                                            local l_ForceField_9 = Instance.new("ForceField");
                                            l_ForceField_9.Visible = false;
                                            l_ForceField_9.Name = "AbsoluteImmortal";
                                            l_ForceField_9.Parent = l_v2857_0;
                                            local v2913 = v96.Torso.CFrame * CFrame.new(4, 0, -4) * CFrame.Angles(0, -0.6981317007977318, 0);
                                            l_v2868_0();
                                            l_v2857_0:SetPrimaryPartCFrame(v2913);
                                        end
                                    }
                                }, 
                                ["Boxed Up"] = {
                                    DontRestoreVictimCollisions = true, 
                                    VictimAnim = 109129404577713, 
                                    GrabOffset = CFrame.new(0, 0, -3.5) * CFrame.Angles(0, 3.141592653589793, 0), 
                                    Markers = {
                                        down = function() --[[ Line: 18904 ]]
                                            shared.cfolder({
                                                Name = "RootAnchor", 
                                                Parent = l_v2857_0
                                            });
                                            v11(l_v2857_0);
                                            wait(0.2);
                                            if v96.PrimaryPart:FindFirstChild("Present") then
                                                table.remove(v2832, table.find(v2832, v96.PrimaryPart:FindFirstChild("Present")));
                                                for _, v2915 in pairs(v96.PrimaryPart:FindFirstChild("Present"):GetDescendants()) do
                                                    if v2915:IsA("Part") or v2915:IsA("MeshPart") then
                                                        game:GetService("TweenService"):Create(v2915, TweenInfo.new(0.25), {
                                                            Transparency = 1
                                                        }):Play();
                                                    end;
                                                end;
                                            end;
                                        end, 
                                        up = function() --[[ Line: 18926 ]]
                                            v17({
                                                v96, 
                                                l_v2857_0
                                            }, 3);
                                        end, 
                                        axekick = function() --[[ Line: 18930 ]]
                                            v17({
                                                v96, 
                                                l_v2857_0
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
                                        kick = function() --[[ Line: 18944 ]]
                                            v17({
                                                v96, 
                                                l_v2857_0
                                            }, 4, 0.1);
                                            l_v2881_0({
                                                speed = 80, 
                                                fallout = 0.9, 
                                                endd = 5, 
                                                deletiontime = 0.25
                                            });
                                        end, 
                                        move2 = function() --[[ Line: 18955 ]]
                                            l_v2881_0({
                                                speed = 30, 
                                                fallout = 0.935, 
                                                endd = 5, 
                                                deletiontime = 0.5
                                            });
                                        end, 
                                        move = function() --[[ Line: 18964 ]]
                                            l_v2881_0({
                                                speed = 25, 
                                                fallout = 0.935, 
                                                endd = 5, 
                                                deletiontime = 0.5
                                            });
                                        end, 
                                        move3 = function() --[[ Line: 18973 ]]
                                            l_v2881_0({
                                                speed = 25, 
                                                fallout = 0.935, 
                                                endd = 5, 
                                                deletiontime = 0.5
                                            });
                                        end, 
                                        before = function() --[[ Line: 18982 ]]
                                            l_v2881_0({
                                                speed = 60, 
                                                fallout = 0.95, 
                                                endd = 5, 
                                                deletiontime = 0.5
                                            });
                                        end, 
                                        knee = function() --[[ Line: 18991 ]]
                                            v17({
                                                v96, 
                                                l_v2857_0
                                            }, 4, 0.1);
                                            l_v2881_0({
                                                speed = 80, 
                                                fallout = 0.9, 
                                                endd = 5, 
                                                deletiontime = 0.25
                                            });
                                        end, 
                                        elbow = function() --[[ Line: 19002 ]]
                                            l_v2881_0({
                                                speed = 80, 
                                                fallout = 0.95, 
                                                endd = 5, 
                                                deletiontime = 1
                                            });
                                            for v2916 = 1, 2 do
                                                if not v2831.IsPlaying then
                                                    return;
                                                else
                                                    v17({
                                                        v96, 
                                                        l_v2857_0
                                                    }, 2, v2916 == 2 and 0.5 or 0.1);
                                                    task.wait(0.25);
                                                end;
                                            end;
                                        end, 
                                        here = function() --[[ Line: 19021 ]]
                                            l_v2857_0:SetPrimaryPartCFrame(v96.PrimaryPart.CFrame * CFrame.new(-5, 0, -3) * CFrame.Angles(0, 3.141592653589793, 0));
                                        end, 
                                        connect = function() --[[ Line: 19025 ]]

                                        end, 
                                        finished = function() --[[ Line: 19029 ]]
                                            v17({
                                                v96, 
                                                l_v2857_0
                                            }, 8, 0.5);
                                            l_v2868_0();
                                            local l_BodyVelocity_6 = Instance.new("BodyVelocity");
                                            l_BodyVelocity_6.MaxForce = Vector3.new(1, 1, 1, 0) * 1000000;
                                            l_BodyVelocity_6.Velocity = -v96.PrimaryPart.CFrame.RightVector * 10 + Vector3.new(0, -50, 0, 0);
                                            l_BodyVelocity_6.Parent = l_v2857_0.PrimaryPart;
                                            task.delay(0.1, function() --[[ Line: 19038 ]]
                                                l_BodyVelocity_6.Velocity = Vector3.new(0, 150, 0, 0);
                                            end);
                                            game.Debris:AddItem(l_BodyVelocity_6, 0.15);
                                            local l_Position_1 = l_v2857_0.PrimaryPart.Position;
                                            v70({
                                                SoundId = "rbxassetid://126972610957117", 
                                                CFrame = CFrame.new(l_Position_1), 
                                                TimePosition = 1, 
                                                Volume = 4
                                            }):Resume();
                                            l_v2884_0({
                                                startpos = l_Position_1, 
                                                ["end"] = Vector3.new(0, -24, 0, 0), 
                                                amount = 6, 
                                                size = 0.3
                                            });
                                            l_v2884_0({
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
                                        heavypunch = function() --[[ Line: 19085 ]]
                                            l_v2857_0:SetPrimaryPartCFrame(v96.PrimaryPart.CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(0, 3.141592653589793, 0));
                                            l_v2868_0();
                                            l_v2861_0:Stop(0);
                                            shared.ragdoll({
                                                hit = l_v2857_0, 
                                                time = 10
                                            });
                                            local l_BodyVelocity_7 = Instance.new("BodyVelocity");
                                            l_BodyVelocity_7.MaxForce = Vector3.new(1, 1, 1, 0) * 100000;
                                            l_BodyVelocity_7.Velocity = v96.PrimaryPart.CFrame.RightVector * 100 + Vector3.new(0, 10, 0, 0);
                                            l_BodyVelocity_7.Parent = l_v2857_0.PrimaryPart;
                                            game.Debris:AddItem(l_BodyVelocity_7, 0.15);
                                            v17({
                                                v96, 
                                                l_v2857_0
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
                                        crack = function() --[[ Line: 19116 ]]
                                            l_v2857_0:SetPrimaryPartCFrame(l_l_PrimaryPart_1_0.CFrame * CFrame.new(0, -0.1, -2.9) * CFrame.Angles(0, 3.141592653589793, 0));
                                            task.delay(0.91, function() --[[ Line: 19119 ]]
                                                l_v2868_0();
                                                l_v2861_0:Stop(0);
                                            end);
                                            v17({
                                                v96, 
                                                l_v2857_0
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
                                        start = function() --[[ Line: 19139 ]]
                                            local _ = tick();
                                            l_v2857_0:SetPrimaryPartCFrame(l_l_PrimaryPart_1_0.CFrame * CFrame.new(0, 0, -3.15) * CFrame.Angles(0, 3.141592653589793, 0));
                                            task.delay(1.2, function() --[[ Line: 19143 ]]
                                                local _ = shared.cfolder({
                                                    Name = "RootAnchor", 
                                                    Parent = l_v2857_0
                                                }, 0.35);
                                                l_v2868_0();
                                                l_v2861_0:Stop(0);
                                                shared.ragdoll({
                                                    hit = l_v2857_0, 
                                                    time = 25
                                                });
                                                l_v2857_0:SetPrimaryPartCFrame(l_l_PrimaryPart_1_0.CFrame * CFrame.new(0, -2, -3.75) * CFrame.Angles(-1.5707963267948966, 0, 0));
                                                l_v2857_0.PrimaryPart.Velocity = Vector3.zero;
                                            end);
                                        end
                                    }
                                }, 
                                Insect = {
                                    VictimAnim = 70500126966316, 
                                    GrabOffset = CFrame.new(0, 0, -4) * CFrame.Angles(0, 3.141592653589793, 0), 
                                    Markers = {
                                        flick = function() --[[ Line: 19169 ]]
                                            l_v2868_0();
                                            v17({
                                                v96, 
                                                l_v2857_0
                                            }, 6, 0.15);
                                            local l_BodyVelocity_8 = Instance.new("BodyVelocity");
                                            l_BodyVelocity_8.MaxForce = Vector3.new(1, 1, 1, 0) * 40000;
                                            l_BodyVelocity_8.Velocity = v96.PrimaryPart.CFrame.lookVector * 500 + Vector3.new(0, 50, 0, 0);
                                            l_BodyVelocity_8.Parent = l_v2857_0.PrimaryPart;
                                            game.Debris:AddItem(l_BodyVelocity_8, 0.2);
                                            local l_BodyAngularVelocity_0 = Instance.new("BodyAngularVelocity");
                                            l_BodyAngularVelocity_0.Name = "BAV";
                                            l_BodyAngularVelocity_0.AngularVelocity = Vector3.new(math.random(5, 10), math.random(1, 5), math.random(2, 6));
                                            l_BodyAngularVelocity_0.MaxTorque = Vector3.new(1, 1, 1, 0) * 40000;
                                            l_BodyAngularVelocity_0.Parent = l_v2857_0.PrimaryPart;
                                            game:service("Debris"):AddItem(l_BodyAngularVelocity_0, 0.15);
                                            local l_l_v2857_0_0 = l_v2857_0;
                                            shared.sfx({
                                                SoundId = "rbxassetid://74450756836645", 
                                                Parent = l_l_v2857_0_0.Torso, 
                                                Volume = 3
                                            }):Play();
                                            
                                            require(hitterbox):CheckCollision({
                                                hit = l_l_v2857_0_0, 
                                                dmg = 0, 
                                                time = 3, 
                                                NoCrater = true, 
                                                nosound = true, 
                                                AccurateCheck = true, 
                                                IgnoreRankedWalls = true, 
                                                CraterTime = 3, 
                                                callback = function(_, v2926) --[[ Line: 19205 ]] --[[ Name: callback ]]
                                                    local v2927, v2928 = v77({
                                                        orig = l_l_v2857_0_0.PrimaryPart.Position, 
                                                        dir = Vector3.new(0, -37.5, 0, 0)
                                                    });
                                                    if not v2927 or v2926 or not l_l_v2857_0_0.Parent or not l_l_v2857_0_0.PrimaryPart or not l_l_v2857_0_0.PrimaryPart.Parent then
                                                        return;
                                                    else
                                                        for _, v2930 in pairs({
                                                            l_l_v2857_0_0, 
                                                            v96
                                                        }) do
                                                            local l_PlayerFromCharacter_4 = game.Players:GetPlayerFromCharacter(v2930);
                                                            if l_PlayerFromCharacter_4 then
                                                               shared.repfire({
                                                                    Effect = "Camshake", 
                                                                    Intensity = 8, 
                                                                    Last = 0.75
                                                                });
                                                            end;
                                                        end;
                                                        task.spawn(function() --[[ Line: 19226 ]]
                                                            l_l_v2857_0_0.PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, -250, 0, 0);
                                                            for _, v2933 in pairs(l_l_v2857_0_0:GetChildren()) do
                                                                if v2933:IsA("BasePart") then
                                                                    v2933.AssemblyLinearVelocity = Vector3.new(0, -250, 0, 0);
                                                                end;
                                                            end;
                                                            game:GetService("RunService").Heartbeat:Wait();
                                                            l_l_v2857_0_0.PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, -250, 0, 0);
                                                            for _, v2935 in pairs(l_l_v2857_0_0:GetChildren()) do
                                                                if v2935:IsA("BasePart") then
                                                                    v2935.AssemblyLinearVelocity = Vector3.new(0, -250, 0, 0);
                                                                end;
                                                            end;
                                                        end);
                                                        shared.sfx({
                                                            SoundId = "rbxassetid://14700241589", 
                                                            CFrame = CFrame.new(v2928), 
                                                            Volume = 5
                                                        }):Play();
                                                        shared.sfx({
                                                            SoundId = "rbxassetid://14392660963", 
                                                            CFrame = CFrame.new(v2928), 
                                                            Volume = 7
                                                        }):Play();
                                                       shared.repfire({
                                                            Effect = "Ground Crater", 
                                                            Seed = math.random(1, 2000000000), 
                                                            start = v2928 + Vector3.new(0, 0.10000000149011612, 0, 0), 
                                                            ["end"] = Vector3.new(0, -24, 0, 0), 
                                                            amount = 6, 
                                                            nosound = true, 
                                                            size = 0.3
                                                        });
                                                       shared.repfire({
                                                            Effect = "Ground Crater", 
                                                            Seed = math.random(1, 2000000000), 
                                                            start = v2928 + Vector3.new(0, 0.10000000149011612, 0, 0), 
                                                            ["end"] = Vector3.new(0, -14, 0, 0), 
                                                            amount = 6, 
                                                            nosound = true, 
                                                            sizemult = 1.35, 
                                                            size = 2
                                                        });
                                                       shared.repfire({
                                                            Effect = "Ground Crater", 
                                                            Seed = math.random(1, 2000000000), 
                                                            start = v2928 + Vector3.new(0, 0.10000000149011612, 0, 0), 
                                                            ["end"] = Vector3.new(0, -14, 0, 0), 
                                                            amount = 9, 
                                                            nosound = true, 
                                                            sizemult = 1.75, 
                                                            size = 3
                                                        });
                                                        return;
                                                    end;
                                                end, 
                                                caller = v96
                                            });
                                        end
                                    }
                                }, 
                                ["Fly High"] = {
                                    VictimAnim = 136857536023148, 
                                    GrabOffset = CFrame.new(0, 0, 0), 
                                    EndOffset = CFrame.new(0, 0, 0), 
                                    DontRestoreVictimCollisions = true, 
                                    Startup = function(v2936) --[[ Line: 19295 ]] --[[ Name: Startup ]]
                                        v70({
                                            SoundId = "rbxassetid://93273930314761", 
                                            Parent = v2936.Torso, 
                                            Volume = 2
                                        }):Play();
                                    end, 
                                    Markers = {
                                        throw = function() --[[ Line: 19304 ]]
                                            for _, v2938 in pairs(l_v2857_0:GetDescendants()) do
                                                if v2938:IsA("Decal") or v2938:IsA("BillboardGui") then
                                                    v2938:Destroy();
                                                end;
                                                if v2938:IsA("Part") or v2938:IsA("MeshPart") or v2938:IsA("UnionOperation") then
                                                    v2938.Transparency = 1;
                                                    v2938.CollisionGroup = "untouchable";
                                                end;
                                            end;
                                            local l_ForceField_10 = Instance.new("ForceField");
                                            l_ForceField_10.Visible = false;
                                            l_ForceField_10.Name = "AbsoluteImmortal";
                                            l_ForceField_10.Parent = l_v2857_0;
                                            shared.ragdoll({
                                                hit = l_v2857_0, 
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
                                        crack = function() --[[ Line: 19336 ]]
                                            v17({
                                                v96, 
                                                l_v2857_0
                                            }, 3);
                                        end, 
                                        send = function() --[[ Line: 19340 ]]
                                            v17({
                                                v96, 
                                                l_v2857_0
                                            }, 6);
                                            local v2940 = v96.PrimaryPart.CFrame * CFrame.new(0, 3, -11) * CFrame.Angles(0, 3.141592653589793, 0);
                                            l_v2861_0:Stop(0);
                                            l_v2868_0();
                                            l_v2857_0:PivotTo(v2940);
                                            task.delay(0.065, function() --[[ Line: 19349 ]]
                                                shared.ragdoll({
                                                    hit = l_v2857_0, 
                                                    time = 20
                                                });
                                            end);
                                            local l_BodyVelocity_9 = Instance.new("BodyVelocity");
                                            l_BodyVelocity_9.MaxForce = Vector3.new(1, 1, 1, 0) * 40000;
                                            l_BodyVelocity_9.Velocity = -v96.PrimaryPart.CFrame.RightVector * 150 + Vector3.new(0, 60, 0, 0);
                                            l_BodyVelocity_9.Parent = l_v2857_0.PrimaryPart;
                                            game.Debris:AddItem(l_BodyVelocity_9, 0.15);
                                            local l_BodyAngularVelocity_1 = Instance.new("BodyAngularVelocity");
                                            l_BodyAngularVelocity_1.Name = "BAV";
                                            l_BodyAngularVelocity_1.AngularVelocity = Vector3.new(math.random(5, 10), math.random(1, 5), math.random(2, 6));
                                            l_BodyAngularVelocity_1.MaxTorque = Vector3.new(1, 1, 1, 0) * 40000;
                                            l_BodyAngularVelocity_1.Parent = l_v2857_0.PrimaryPart;
                                            game:service("Debris"):AddItem(l_BodyAngularVelocity_1, 0.15);
                                            local l_l_v2857_0_1 = l_v2857_0;
                                            require(hitterbox):CheckCollision({
                                                hit = l_l_v2857_0_1, 
                                                dmg = 0, 
                                                time = 3, 
                                                NoCrater = true, 
                                                nosound = true, 
                                                AccurateCheck = true, 
                                                IgnoreRankedWalls = true, 
                                                CraterTime = 3, 
                                                callback = function(_, v2945) --[[ Line: 19382 ]] --[[ Name: callback ]]
                                                    local v2946, v2947 = v77({
                                                        orig = l_l_v2857_0_1.PrimaryPart.Position, 
                                                        dir = Vector3.new(0, -37.5, 0, 0)
                                                    });
                                                    if not v2946 or v2945 or not l_l_v2857_0_1.Parent or not l_l_v2857_0_1.PrimaryPart or not l_l_v2857_0_1.PrimaryPart.Parent then
                                                        return;
                                                    else
                                                        for _, v2949 in pairs({
                                                            l_l_v2857_0_1, 
                                                            v96
                                                        }) do
                                                            local l_PlayerFromCharacter_5 = game.Players:GetPlayerFromCharacter(v2949);
                                                            if l_PlayerFromCharacter_5 then
                                                                
                                                            end;
                                                        end;
                                                        task.spawn(function() --[[ Line: 19403 ]]
                                                            l_l_v2857_0_1.PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, -250, 0, 0);
                                                            for _, v2952 in pairs(l_l_v2857_0_1:GetChildren()) do
                                                                if v2952:IsA("BasePart") then
                                                                    v2952.AssemblyLinearVelocity = Vector3.new(0, -250, 0, 0);
                                                                end;
                                                            end;
                                                            game:GetService("RunService").Heartbeat:Wait();
                                                            l_l_v2857_0_1.PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, -250, 0, 0);
                                                            for _, v2954 in pairs(l_l_v2857_0_1:GetChildren()) do
                                                                if v2954:IsA("BasePart") then
                                                                    v2954.AssemblyLinearVelocity = Vector3.new(0, -250, 0, 0);
                                                                end;
                                                            end;
                                                        end);
                                                        shared.sfx({
                                                            SoundId = "rbxassetid://14700241589", 
                                                            CFrame = CFrame.new(v2947), 
                                                            Volume = 5
                                                        }):Play();
                                                        shared.sfx({
                                                            SoundId = "rbxassetid://14392660963", 
                                                            CFrame = CFrame.new(v2947), 
                                                            Volume = 7
                                                        }):Play();
                                                       shared.repfire({
                                                            Effect = "Ground Crater", 
                                                            Seed = math.random(1, 2000000000), 
                                                            start = v2947 + Vector3.new(0, 0.10000000149011612, 0, 0), 
                                                            ["end"] = Vector3.new(0, -24, 0, 0), 
                                                            amount = 6, 
                                                            nosound = true, 
                                                            size = 0.3
                                                        });
                                                       shared.repfire({
                                                            Effect = "Ground Crater", 
                                                            Seed = math.random(1, 2000000000), 
                                                            start = v2947 + Vector3.new(0, 0.10000000149011612, 0, 0), 
                                                            ["end"] = Vector3.new(0, -14, 0, 0), 
                                                            amount = 6, 
                                                            nosound = true, 
                                                            sizemult = 1.35, 
                                                            size = 2
                                                        });
                                                       shared.repfire({
                                                            Effect = "Ground Crater", 
                                                            Seed = math.random(1, 2000000000), 
                                                            start = v2947 + Vector3.new(0, 0.10000000149011612, 0, 0), 
                                                            ["end"] = Vector3.new(0, -14, 0, 0), 
                                                            amount = 9, 
                                                            nosound = true, 
                                                            sizemult = 1.75, 
                                                            size = 3
                                                        });
                                                        return;
                                                    end;
                                                end, 
                                                caller = v96
                                            });
                                        end
                                    }
                                }, 
                                ["no name ideas"] = {
                                    VictimAnim = 88023704984538, 
                                    GrabOffset = CFrame.new(0, 0, 0), 
                                    DontCFrame = true, 
                                    DontRagdoll = true, 
                                    Startup = function() --[[ Line: 19473 ]] --[[ Name: Startup ]]
                                        for _, v2956 in pairs({
                                            l_v2857_0, 
                                            v96
                                        }) do
                                            local l_Humanoid_1 = v2956:FindFirstChildOfClass("Humanoid");
                                            task.delay(0.15, function() --[[ Line: 19477 ]]
                                                for _, v2959 in pairs(l_Humanoid_1:GetPlayingAnimationTracks()) do
                                                    if v2839.interrupted then
                                                        return;
                                                    else
                                                        v2959:AdjustSpeed(1.35);
                                                    end;
                                                end;
                                            end);
                                        end;
                                        local _ = v94("Left", v2832, l_v2857_0);
                                        local v2961 = v94("Right", v2832, l_v2857_0);
                                        v2961.Name = "handsonvictim";
                                        table.insert(v2859, v2961);
                                        local v2962 = nil;
                                        v2962 = v70({
                                            SoundId = "rbxassetid://117301839591469", 
                                            Parent = l_v2857_0.Torso, 
                                            Volume = 6, 
                                            PlaybackSpeed = 1.345
                                        });
                                        v2962:Play();
                                        table.insert(v2832, v2962);
                                    end, 
                                    Markers = {
                                        impale = function() --[[ Line: 19505 ]]
                                            for _, v2964 in pairs({
                                                l_v2857_0, 
                                                v96
                                            }) do
                                                local l_Humanoid_2 = v2964:FindFirstChildOfClass("Humanoid");
                                                task.delay(0.15, function() --[[ Line: 19509 ]]
                                                    for _, v2967 in pairs(l_Humanoid_2:GetPlayingAnimationTracks()) do
                                                        v2967:AdjustSpeed(1.15);
                                                    end;
                                                end);
                                            end;
                                            task.wait(1);
                                            if v2839.interrupted then
                                                return;
                                            else
                                                local v2968 = v96.PrimaryPart.CFrame * CFrame.new(0, 0.1, -11) * CFrame.Angles(0, 3.141592653589793, 0);
                                                l_v2861_0:Stop(0);
                                                l_v2868_0();
                                                l_v2857_0:PivotTo(v2968);
                                                task.delay(0.015, function() --[[ Line: 19528 ]]
                                                    shared.ragdoll({
                                                        hit = l_v2857_0, 
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
                                        laser = function() --[[ Line: 19545 ]]
                                            if l_v2857_0 and game.Players:GetPlayerFromCharacter(l_v2857_0) then
                                                shared.repfire({
                                                    Type = "FlashTemp"
                                                });
                                            end;
                                            l_v2861_0:AdjustSpeed(0.5);
                                            task.delay(1.35, function() --[[ Line: 19560 ]]
                                                l_v2868_0();
                                                shared.cfolder({
                                                    Name = "RootAnchor", 
                                                    Parent = l_v2857_0
                                                }, 0.1);
                                                for _, v2970 in pairs(l_v2857_0:GetChildren()) do
                                                    if v2970:IsA("BasePart") then
                                                        spawn(function() --[[ Line: 19570 ]]
                                                            local v2971 = tick();
                                                            while tick() - v2971 <= 0.15 and task.wait() do
                                                                v2970.Velocity = Vector3.zero;
                                                            end;
                                                        end);
                                                    end;
                                                end;
                                            end);
                                        end
                                    }
                                }
                            };
                            if v2855 and v2855 and not v2855:FindFirstChild("KillEmoteFinished") then
                                local _ = v2855:FindFirstChild("Humanoid");
                                local _ = v2855:FindFirstChild("HumanoidRootPart");
                                local v2975 = v2972[v97];
                                if not v2975 then
                                    return warn("no data");
                                else
                                    local _ = v2855;
                                    local l_v2855_1 = v2855;
                                    local _ = l_PrimaryPart_1.CFrame;
                                    local l_ObjectValue_0 = Instance.new("ObjectValue");
                                    l_ObjectValue_0.Value = v96;
                                    l_ObjectValue_0.Name = "#PLAYERBIND";
                                    l_ObjectValue_0:SetAttribute("Person", (tostring(l_v2855_1)));
                                    l_ObjectValue_0.Parent = game.ReplicatedStorage
                                    table.insert(v2832, l_ObjectValue_0);
                                    if tostring(l_v2855_1) == "Weakest Dummy" then
                                        local v2980 = {
                                            "Left Arm", 
                                            "Right Arm", 
                                            "Left Leg", 
                                            "Right Leg", 
                                            "Torso"
                                        };
                                        for _, v2982 in pairs(l_v2855_1:GetDescendants()) do
                                            if v2982:IsA("BasePart") and v2982.Name ~= "HumanoidRootPart" and table.find(v2980, (tostring(v2982))) then
                                                v2982.Transparency = 0;
                                            end;
                                        end;
                                    end;
                                    shared.cfolder({
                                        Name = "RestoreVisibility", 
                                        Parent = l_v2855_1
                                    }, 1);
                                    table.insert(v2832, shared.cfolder({
                                        Name = "KillEmoteInProgress", 
                                        Parent = v96
                                    }, 10));
                                    if not v2975.CanRotate then
                                        table.insert(v2832, shared.cfolder({
                                            Name = "NoRotate", 
                                            Parent = v96
                                        }, 10));
                                    end;
                                    if v2975.VictimSfx then
                                        local v2983 = v70({
                                            SoundId = v2975.VictimSfx, 
                                            Parent = v2855.Torso, 
                                            Volume = v2975.VictimSfxVolume or 2
                                        });
                                        v2983:Play();
                                        table.insert(v2832, v2983);
                                    end;
                                    local l_Head_1 = v2855:FindFirstChild("Head");
                                    if l_Head_1 then
                                        l_Head_1.Anchored = false;
                                    end;
                                    local v2985 = shared.cfolder({
                                        Name = "DelayRespawn", 
                                        Parent = v2855
                                    }, 7);
                                    table.insert(v2832, v2985);
                                    l_v2857_0 = v2855;
                                    l_v2855_1 = l_v2857_0;
                                    table.insert(v2860, v2985);
                                    shared.cfolder({
                                        Name = "KillEmoteFinished", 
                                        Parent = v2855
                                    });
                                    local l_AnimationPlayer_32 = require(v2855.CharacterHandler:WaitForChild("AnimationPlayer"));
                                    local l_l_AnimationPlayer_32_0 = l_AnimationPlayer_32 --[[ copy: 40 -> 54 ]];
                                    local l_v2855_2 = v2855 --[[ copy: 16 -> 55 ]];
                                    local function v2990(v2989) --[[ Line: 19673 ]]
                                        return l_l_AnimationPlayer_32_0.playAnimation(l_v2855_2:FindFirstChild("Humanoid"), v2989);
                                    end;
                                    shared.unragdoll({
                                        hit = v2855, 
                                        deadbypass = true
                                    });
                                    if v3[v97] then
                                       shared.repfire({
                                            Type = "ReplicateEmoteVfx", 
                                            Character = v96, 
                                            Victim = v2855, 
                                            vfxName = v97, 
                                            SpecificModule = nil, 
                                            AnimSent = v103.Animation
                                        });
                                    end;
                                    if v2975.StartTime then
                                        v2831:AdjustSpeed(0);
                                        task.delay(v2975.StartTime, function() --[[ Line: 19696 ]]
                                            v2831:AdjustSpeed(1);
                                        end);
                                    end;
                                    if v2975.Startup then
                                        v2975.Startup(v2855);
                                    end;
                                    do
                                        local l_l_v2855_1_0 = l_v2855_1;
                                        if v2975.Markers then
                                            for v2992, v2993 in pairs(v2975.Markers) do
                                                local v2994 = nil;
                                                do
                                                    local l_v2994_0 = v2994;
                                                    l_v2994_0 = v2831:GetMarkerReachedSignal(v2992):Connect(function() --[[ Line: 19706 ]]
                                                        if v2839.interrupted or not workspace.Live:FindFirstChild((tostring(l_l_v2855_1_0))) then
                                                            return;
                                                        else
                                                            if l_v2994_0 then
                                                                l_v2994_0:Disconnect();
                                                            end;
                                                            return v2993();
                                                        end;
                                                    end);
                                                    table.insert(v2832, l_v2994_0);
                                                    task.delay(11, function() --[[ Line: 19719 ]]
                                                        if l_v2994_0 then
                                                            return l_v2994_0:Disconnect();
                                                        else
                                                            return;
                                                        end;
                                                    end);
                                                end;
                                            end;
                                        end;
                                        if v2975.Tasks then
                                            for v2996, v2997 in pairs(v2975.Tasks) do
                                                local v2998 = nil;
                                                do
                                                    local l_v2998_0 = v2998;
                                                    l_v2998_0 = task.delay(v2996, function() --[[ Line: 19729 ]]
                                                        if v2839.interrupted or not workspace.Live:FindFirstChild((tostring(l_l_v2855_1_0))) then
                                                            return;
                                                        else
                                                            if table.find(v2832, l_v2998_0) then
                                                                table.remove(v2832, table.find(v2832, l_v2998_0));
                                                            end;
                                                            v2997();
                                                            return;
                                                        end;
                                                    end);
                                                    table.insert(v2832, l_v2998_0);
                                                end;
                                            end;
                                        end;
                                        l_AnimationPlayer_32 = v2990(v2975.VictimAnim);
                                        l_AnimationPlayer_32:Play();
                                        l_v2861_0 = l_AnimationPlayer_32;
                                        local l_v2975_0 = v2975 --[[ copy: 32 -> 56 ]];
                                        local l_l_AnimationPlayer_32_1 = l_AnimationPlayer_32 --[[ copy: 40 -> 57 ]];
                                        task.delay(0.15, function() --[[ Line: 19750 ]]
                                            if not l_v2975_0.StartTime then
                                                l_l_AnimationPlayer_32_1.TimePosition = 0.15;
                                                v2831.TimePosition = 0.15;
                                                wait(0.1);
                                                l_l_AnimationPlayer_32_1.TimePosition = 0.25;
                                                v2831.TimePosition = 0.25;
                                            end;
                                        end);
                                        if v2975.ForceStopAnim then
                                            table.insert(v2860, l_AnimationPlayer_32);
                                        end;
                                        local v3002 = shared.cfolder({
                                            Name = "RootAnchor", 
                                            Parent = v2855
                                        });
                                        table.insert(v2860, v3002);
                                        table.insert(v2832, v3002);
                                        if v2975.GrabOffset then
                                            v2863({
                                                offset = v2975.GrabOffset, 
                                                hit = v2855, 
                                                anchor = v3002
                                            });
                                            l_v2858_0 = v2975.GrabOffset;
                                        end;
                                        local l_v2855_3 = v2855 --[[ copy: 16 -> 58 ]];
                                        local l_v3002_0 = v3002 --[[ copy: 41 -> 59 ]];
                                        local l_v2975_1 = v2975 --[[ copy: 32 -> 60 ]];
                                        local l_l_AnimationPlayer_32_2 = l_AnimationPlayer_32 --[[ copy: 40 -> 61 ]];
                                        spawn(function() --[[ Line: 19784 ]]
                                            local v3007 = {};
                                            local v3008 = {};
                                            for _, v3010 in pairs({
                                                l_v2855_3
                                            }) do
                                                local v3011 = nil;
                                                v3011 = v3010.DescendantAdded:connect(function(v3012) --[[ Line: 19789 ]]
                                                    if v3012:IsA("BasePart") then
                                                        v3012.CollisionGroup = "nocol";
                                                        table.insert(v3008, v3012);
                                                    end;
                                                end);
                                                do
                                                    local l_v3011_0 = v3011;
                                                    task.delay(5, function() --[[ Line: 19796 ]]
                                                        if l_v3011_0 then
                                                            return l_v3011_0:Disconnect();
                                                        else
                                                            return;
                                                        end;
                                                    end);
                                                    table.insert(v3007, l_v3011_0);
                                                    table.insert(v2832, l_v3011_0);
                                                    for _, v3015 in pairs(v3010:GetDescendants()) do
                                                        if v3015:IsA("BasePart") then
                                                            v3015.CollisionGroup = "nocol";
                                                            table.insert(v3008, v3015);
                                                        end;
                                                    end;
                                                end;
                                            end;
                                            l_v3002_0:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 19809 ]]
                                                if not l_v3002_0.Parent then
                                                    if workspace.Live:FindFirstChild((tostring(v96))) then
                                                        v22(v96);
                                                    end;
                                                    if not workspace.Live:FindFirstChild((tostring(l_v2857_0))) then
                                                        return;
                                                    else
                                                        if l_v2975_1.EndOffset then
                                                            l_v2858_0 = l_v2975_1.EndOffset;
                                                        end;
                                                        if not l_v2975_1.DontCFrame and l_v2857_0.PrimaryPart then
                                                            l_v2857_0:SetPrimaryPartCFrame(v96.PrimaryPart.CFrame * l_v2858_0);
                                                        end;
                                                        if l_l_AnimationPlayer_32_2 and not l_v2975_1.DontStopVicAnimationOnAnchorDeletion then
                                                            l_l_AnimationPlayer_32_2:Stop(0);
                                                        end;
                                                        if v2839.interrupted then
                                                            l_l_AnimationPlayer_32_2:Stop(0);
                                                        end;
                                                        if not l_v2975_1.DontRagdoll or l_v2975_1.DontRagdoll and v2839.interrupted then
                                                            shared.ragdoll({
                                                                hit = l_v2857_0, 
                                                                time = 15
                                                            });
                                                        end;
                                                        if not l_v2975_1.DontRestoreVictimCollisions then
                                                            for _, v3017 in pairs(v3008) do
                                                                v3017.CollisionGroup = "playercol";
                                                            end;
                                                        end;
                                                        table.clear(v3008);
                                                        for _, v3019 in pairs(v3007) do
                                                            v3019:Disconnect();
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
                    if v103.Startup and not v2839.interrupted then
                        v103.Startup(v2832, v2831, v2854, v103, v2839);
                        if v103.Key and v97 ~= "The Hunt" then
                            local v3020 = {
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
                            local v3021 = table.find(v3020, string.gsub(v97, " Key", ""));
                            v3021 = gameinfo.KeyOffsets[v3021];
                            local l_Attachment_18 = Instance.new("Attachment");
                            l_Attachment_18:SetAttribute("EmoteProperty", true);
                            table.insert(v2832, l_Attachment_18);
                            l_Attachment_18.Parent = v96.PrimaryPart;
                            l_Attachment_18.CFrame = v3021;
                            local v3023 = game.ReplicatedStorage.Emotes.ImpactGlow2:Clone();
                            v3023.Parent = l_Attachment_18;
                            v3023:Emit(5);
                            shared.sfx({
                                SoundId = "rbxassetid://16748459318", 
                                Parent = l_Attachment_18, 
                                Volume = 0.85
                            }):Play();
                        end;
                        if v103.Dual then
                            if v103.Dual.Freeze == nil then
                                v2831:AdjustSpeed(0);
                                v2831.TimePosition = 0;
                            end;
                            local v3024 = false;
                            local l_l_CollectionService_1_Tagged_1 = l_CollectionService_1:GetTagged(v103.Tag);
                            if v99 then
                                table.insert(l_l_CollectionService_1_Tagged_1, v99:FindFirstChild("DoingEmote"));
                            end;
                            local v3026 = false;
                            if not v103.Dual.Dead then

                            end;
                            for _, v3028 in pairs(workspace.Live:GetChildren()) do
                                local l_Humanoid_4 = v3028:FindFirstChildOfClass("Humanoid");
                                local l_PrimaryPart_2 = v3028.PrimaryPart;
                                if l_Humanoid_4 and v3028 ~= v96 and l_Humanoid_4.Health == 0 and v3028:FindFirstChild("Ragdoll") and l_PrimaryPart_2 and (l_PrimaryPart_2.Position - v96.PrimaryPart.Position).magnitude <= 16 and not table.find(l_l_CollectionService_1_Tagged_1, v3028.PrimaryPart) then
                                    l_l_CollectionService_1_Tagged_1 = {
                                        v3028.PrimaryPart
                                    };
                                    v3026 = true;
                                    shared.unragdoll({
                                        hit = v3028, 
                                        deadbypass = true
                                    });
                                    v0:Play(v3028, v97, nil, v96);
                                    return;
                                end;
                            end;
                            for _, v3032 in pairs(l_l_CollectionService_1_Tagged_1) do
                                local l_Parent_0 = v3032.Parent;
                                if l_Parent_0 ~= v96 and l_Parent_0 then
                                    local l_CFrame_2 = v96.PrimaryPart.CFrame;
                                    local l_Position_2 = l_Parent_0.PrimaryPart.Position;
                                    local l_unit_1 = (Vector3.new(l_Position_2.X, l_CFrame_2.p.Y, l_Position_2.Z) - l_CFrame_2.p).unit;
                                    if (math.deg((math.acos((l_CFrame_2.LookVector:Dot(l_unit_1))))) <= 90 and (l_Parent_0.PrimaryPart.Position - v96.PrimaryPart.Position).magnitude <= 8 or l_Parent_0 == v99 or v3026) and (not v96:FindFirstChild("Ragdoll") or v103.Dual.Dead) and (l_Parent_0 == v99 or not v99) then
                                        if v103.Dual.Dead then

                                        end;
                                        for _, v3038 in pairs(l_CollectionService_1:GetTagged(v103.Tag)) do
                                            local l_Parent_1 = v3038.Parent;
                                            if l_Parent_1 == v96 or l_Parent_1 == l_Parent_0 then
                                                l_CollectionService_1:RemoveTag(v3038, v103.Tag);
                                            end;
                                        end;
                                        local v3040 = {};
                                        l_CFrame_2 = nil;
                                        for _, v3042 in pairs({
                                            l_Parent_0, 
                                            v96
                                        }) do
                                            for _, v3044 in pairs(l_CollectionService_1:GetTagged(v3042.Name .. "syncui")) do
                                                game:GetService("Debris"):AddItem(v3044, 0);
                                            end;
                                            local v3045 = shared.cfolder({
                                                Name = "NoRotate", 
                                                Parent = v3042
                                            });
                                            l_CFrame_2 = v3045;
                                            l_CollectionService_1:AddTag(v3045, "RemoveOnLeave" .. l_Parent_0.Name);
                                            l_CollectionService_1:AddTag(v3045, "RemoveOnLeave" .. v96.Name);
                                            if v103.Dual.CanRotate == true then
                                                v3045.Name = "a";
                                                shared.cfolder({
                                                    Name = "", 
                                                    Parent = v3042
                                                }, 0.1);
                                            elseif (not v103.Looped or v97 == "Cart Ride" or v103.Dual.CanRotate) and v103.Dual.NoRotate ~= 1e999 then
                                                game:GetService("Debris"):AddItem(v3045, v103.Dual.CanRotate or v103.Dual.NoRotate or 3);
                                            end;
                                            v3045:SetAttribute("EmoteProperty", true);
                                            table.insert(v2832, v3045);
                                            if v3042 == v96 and not v103.Dual.RotateCheck then
                                                local v3046 = nil;
                                                do
                                                    local l_v3046_0 = v3046;
                                                    l_v3046_0 = v3045:GetPropertyChangedSignal("Parent"):Once(function() --[[ Line: 19978 ]]
                                                        if not v3045.Parent then
                                                            for _, v3049 in pairs(v3040) do
                                                                v3049:Disconnect();
                                                            end;
                                                            for _, v3051 in pairs(v2832) do
                                                                if typeof(v3051) == "Instance" and v3051.Name == "NoRotate" and v3051.Parent then
                                                                    v3051:Destroy();
                                                                end;
                                                            end;
                                                            return l_v3046_0:Disconnect();
                                                        else
                                                            return;
                                                        end;
                                                    end);
                                                    table.insert(v2832, l_v3046_0);
                                                end;
                                            end;
                                            local v3052 = nil;
                                            v3052 = v3042:GetPropertyChangedSignal("Parent"):Once(function() --[[ Line: 19994 ]]
                                                if not v3042.Parent then
                                                    for _, v3054 in pairs({
                                                        l_Parent_0, 
                                                        v96
                                                    }) do
                                                        shared.cfolder({
                                                            Name = "CancelEmote", 
                                                            Parent = v3054
                                                        }, 0.1);
                                                    end;
                                                    return v3052:Disconnect();
                                                else
                                                    return;
                                                end;
                                            end);
                                            table.insert(v2832, v3052);
                                            local v3055 = nil;
                                            for _, v3057 in pairs(v3042.Humanoid:GetPlayingAnimationTracks()) do
                                                local l_Animation_4 = v103.Animation;
                                                l_Animation_4 = if typeof(l_Animation_4) == "Instance" then game:GetService("KeyframeSequenceProvider"):RegisterKeyframeSequence(l_Animation_4) else "rbxassetid://" .. l_Animation_4;
                                                local l_AnimationTwo_0 = v103.AnimationTwo;
                                                if l_AnimationTwo_0 then
                                                    if typeof(l_AnimationTwo_0) == "Instance" then
                                                        l_AnimationTwo_0 = game:GetService("KeyframeSequenceProvider"):RegisterKeyframeSequence(l_Animation_4);
                                                        l_AnimationTwo_0 = l_Animation_4;
                                                    else
                                                        l_AnimationTwo_0 = "rbxassetid://" .. l_AnimationTwo_0;
                                                    end;
                                                end;
                                                if v3057.Animation.AnimationId == l_Animation_4 or l_AnimationTwo_0 and v3057.Animation.AnimationId == l_AnimationTwo_0 then
                                                    v3055 = v3057;
                                                end;
                                            end;
                                            if not v3055 then
                                                for _, v3061 in pairs({
                                                    l_Parent_0, 
                                                    v96
                                                }) do
                                                    shared.cfolder({
                                                        Name = "CancelEmote", 
                                                        Parent = v3061
                                                    }, 0.1);
                                                end;
                                                --[[ close >= 33 ]]
                                                break;
                                            else
                                                if v3045.Parent then
                                                    local v3062 = nil;
                                                    do
                                                        local l_v3062_0 = v3062;
                                                        l_v3062_0 = v3055.Stopped:Once(function() --[[ Line: 20045 ]]
                                                            for _, v3065 in pairs({
                                                                l_Parent_0, 
                                                                v96
                                                            }) do
                                                                shared.cfolder({
                                                                    Name = "CancelEmote", 
                                                                    Parent = v3065
                                                                }, 0.1);
                                                            end;
                                                            return l_v3062_0:Disconnect();
                                                        end);
                                                        table.insert(v3040, l_v3062_0);
                                                        table.insert(v2832, l_v3062_0);
                                                    end;
                                                end;
                                                v3055:AdjustSpeed(1);
                                                if not v103.Dual.CallOnAccept then
                                                    v3055.TimePosition = 0;
                                                end;
                                                if (v3042 == v96 or v103.Dual.DoBoth) and v103.Dual.Callback then
                                                    if v103.Dual.CallOnAccept then
                                                        task.spawn(function() --[[ Line: 20066 ]]
                                                            for _, v3067 in pairs({
                                                                v96, 
                                                                l_Parent_0
                                                            }) do
                                                                local l_Animation_5 = Instance.new("Animation");
                                                                l_Animation_5.AnimationId = "rbxassetid://17465544429";
                                                                local v3069 = v3067.Humanoid:LoadAnimation(l_Animation_5);
                                                                v3069:Play();
                                                                table.insert(v2832, v3069);
                                                            end;
                                                            if game.PlaceId == 12360882630 or workspace:GetAttribute("RankedOnes") and game.PlaceId ~= 13635175275 then
                                                                return;
                                                            else
                                                                local v3070 = game.ReplicatedStorage.Emotes.inv:Clone();
                                                                v3070:SetAttribute("EmoteProperty", true);
                                                                table.insert(v2832, v3070);
                                                                local l_PlayerFromCharacter_6 = game.Players:GetPlayerFromCharacter(v96);
                                                                local l_PlayerFromCharacter_7 = game.Players:GetPlayerFromCharacter(l_Parent_0);
                                                                local l_inv_0 = l_PlayerFromCharacter_6.PlayerGui:FindFirstChild("inv");
                                                                if l_inv_0 then
                                                                    l_inv_0:Destroy();
                                                                end;
                                                                local v3074 = l_PlayerFromCharacter_7 and l_PlayerFromCharacter_7.DisplayName or "?";
                                                                l_CollectionService_1:AddTag(v3070, "RemoveOnLeave" .. (l_PlayerFromCharacter_6 and l_PlayerFromCharacter_6.Name or "?"));
                                                                local v3075 = shared.cfolder({
                                                                    Name = "RootAnchor"
                                                                });
                                                                shared.bindDeletion(v3075, v3045);
                                                                v3075.Parent = v96;
                                                                table.insert(v2832, v3075);
                                                                l_CollectionService_1:AddTag(v3075, "RemoveOnLeave" .. (v99 or l_PlayerFromCharacter_7 or v96).Name);
                                                                local v3076 = {};
                                                                local v3077 = {};
                                                                for _, v3079 in pairs({
                                                                    v96, 
                                                                    l_Parent_0
                                                                }) do
                                                                    table.insert(v3077, v3079.DescendantAdded:connect(function(v3080) --[[ Line: 20100 ]]
                                                                        if v3080:IsA("BasePart") then
                                                                            v3080.CollisionGroup = "nocol";
                                                                            table.insert(v3076, v3080);
                                                                        end;
                                                                    end));
                                                                    for _, v3082 in pairs(v3079:GetDescendants()) do
                                                                        if v3082:IsA("BasePart") then
                                                                            v3082.CollisionGroup = "nocol";
                                                                            table.insert(v3076, v3082);
                                                                        end;
                                                                    end;
                                                                end;
                                                                local l_v3075_0 = v3075 --[[ copy: 5 -> 18 ]];
                                                                local l_v3076_0 = v3076 --[[ copy: 6 -> 19 ]];
                                                                v3075:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 20115 ]]
                                                                    if not l_v3075_0.Parent then
                                                                        for _, v3086 in pairs(v3077) do
                                                                            v3086:Disconnect();
                                                                        end;
                                                                        for _, v3088 in pairs(l_v3076_0) do
                                                                            v3088.CollisionGroup = "playercol";
                                                                        end;
                                                                    end;
                                                                end);
                                                                l_CollectionService_1:AddTag(v3075, l_Parent_0.Name .. "carry");
                                                               shared.repfire({
                                                                    Effect = "Smooth Grab", 
                                                                    Hit = v96, 
                                                                    StartOffset = v96.PrimaryPart.CFrame, 
                                                                    From = l_Parent_0.PrimaryPart, 
                                                                    CanBypass = true, 
                                                                    Offset = CFrame.new(0, 0, -4.5), 
                                                                    Anchor = v3075
                                                                });
                                                                v3070.Parent = l_PlayerFromCharacter_6.PlayerGui;
                                                                v3075 = v3070.Frame.Frame;
                                                                v3075.Name = "Invitation" .. v3074;
                                                                v3075.TextLabel.TextLabel.Text = v3074;
                                                                v3075.LayoutOrder = 1;
                                                                v3076 = v3075.TextLabel;
                                                                v3076.Deny.MouseButton1Click:Connect(function() --[[ Line: 20146 ]]
                                                                    shared.sfx({
                                                                        SoundId = "rbxassetid://6895079853", 
                                                                        Parent = l_PlayerFromCharacter_6.PlayerGui, 
                                                                        Volume = 1.5
                                                                    }):Resume();
                                                                    v3075:Destroy();
                                                                    shared.cfolder({
                                                                        Name = "Freeze", 
                                                                        Parent = v96
                                                                    }, 0);
                                                                end);
                                                                v3076.Accept.MouseButton1Click:Connect(function() --[[ Line: 20159 ]]
                                                                    shared.sfx({
                                                                        SoundId = "rbxassetid://6895079853", 
                                                                        Parent = l_PlayerFromCharacter_6.PlayerGui, 
                                                                        Volume = 1.5
                                                                    }):Resume();
                                                                    if not l_PlayerFromCharacter_6.Character or not l_PlayerFromCharacter_7.Character then
                                                                        v3075:Destroy();
                                                                        return;
                                                                    elseif l_PlayerFromCharacter_6.Character:GetAttribute("donealr") or l_PlayerFromCharacter_7.Character:GetAttribute("donealr") then
                                                                        v3075:Destroy();
                                                                        return;
                                                                    else
                                                                        local _ = {
                                                                            {
                                                                                l_PlayerFromCharacter_6.UserId, 
                                                                                l_PlayerFromCharacter_7.UserId, 
                                                                                false, 
                                                                                false
                                                                            }
                                                                        };
                                                                        for _, v3091 in pairs({
                                                                            l_PlayerFromCharacter_6, 
                                                                            l_PlayerFromCharacter_7
                                                                        }) do
                                                                            if v3091.Character then
                                                                                v3091.Character:SetAttribute("donealr", true);
                                                                            end;
                                                                        end;
                                                                        local l_l_PlayerFromCharacter_6_0 = l_PlayerFromCharacter_6;
                                                                        local l_l_PlayerFromCharacter_7_0 = l_PlayerFromCharacter_7;
                                                                        local v3094 = {
                                                                            "Ones", 
                                                                            l_PlayerFromCharacter_6.UserId, 
                                                                            l_l_PlayerFromCharacter_7_0.UserId, 
                                                                            0, 
                                                                            false, 
                                                                            0, 
                                                                            true
                                                                        };
                                                                        for _, v3096 in pairs({
                                                                            l_l_PlayerFromCharacter_6_0, 
                                                                            l_l_PlayerFromCharacter_7_0
                                                                        }) do
                                                                            local l_Sound_0 = Instance.new("Sound");
                                                                            l_Sound_0.SoundId = "rbxassetid://5153734236";
                                                                            l_Sound_0.Volume = 2;
                                                                            l_Sound_0.Parent = v3096.PlayerGui;
                                                                            l_Sound_0:Play();
                                                                            v3096:SetAttribute("Enemy", v3096 == l_l_PlayerFromCharacter_6_0 and l_l_PlayerFromCharacter_7_0.Name or l_l_PlayerFromCharacter_6_0.Name);
                                                                            if v3096.Character then
                                                                                v3096.Character:SetAttribute("donealr", true);
                                                                            end;
                                                                        end;
                                                                        task.spawn(function() --[[ Line: 20206 ]]
                                                                            local v3098 = game:GetService("TeleportService"):ReserveServer(game.PlaceId);
                                                                            local v3099 = {
                                                                                l_PlayerFromCharacter_6, 
                                                                                l_PlayerFromCharacter_7
                                                                            };
                                                                            task.wait(1.75);
                                                                            game:GetService("TeleportService"):TeleportToPrivateServer(game.PlaceId, v3098, v3099, nil, v3094);
                                                                        end);
                                                                        v3075:Destroy();
                                                                        return;
                                                                    end;
                                                                end);
                                                                shared.sfx({
                                                                    SoundId = "rbxassetid://7116606826", 
                                                                    Parent = l_PlayerFromCharacter_6.PlayerGui, 
                                                                    Volume = 0.75
                                                                }):Play();
                                                                repeat
                                                                    task.wait();
                                                                until v96:GetAttribute("donealr") or not v3070.Parent;
                                                                if not v3070.Parent and not v96:GetAttribute("donealr") then
                                                                    return;
                                                                else
                                                                    v103.Dual.Callback(v96, l_Parent_0, v2832, v103.Dual.Dist, v2854, v2839);
                                                                    return;
                                                                end;
                                                            end;
                                                        end);
                                                    else
                                                        v103.Dual.Callback(v96, l_Parent_0, v2832, v103.Dual.Dist, v2854, v2839);
                                                    end;
                                                end;
                                                --[[ close >= 33 ]]
                                            end;
                                        end;
                                        if v103.Dual.Dist then
                                            l_Position_2 = shared.cfolder({
                                                Name = "RootAnchor"
                                            });
                                            if l_CFrame_2 then
                                                shared.bindDeletion(l_Position_2, l_CFrame_2);
                                            end;
                                            l_Position_2.Parent = v96;
                                            table.insert(v2832, l_Position_2);
                                            l_CollectionService_1:AddTag(l_Position_2, "RemoveOnLeave" .. l_Parent_0.Name);
                                            l_CollectionService_1:AddTag(l_Position_2, "RemoveOnLeave" .. v96.Name);
                                            l_unit_1 = {};
                                            local v3100 = {};
                                            for _, v3102 in pairs({
                                                v96
                                            }) do
                                                table.insert(v3100, v3102.DescendantAdded:connect(function(v3103) --[[ Line: 20257 ]]
                                                    if v3103:IsA("BasePart") then
                                                        v3103.CollisionGroup = "nocol";
                                                        table.insert(l_unit_1, v3103);
                                                    end;
                                                end));
                                                for _, v3105 in pairs(v3102:GetDescendants()) do
                                                    if v3105:IsA("BasePart") then
                                                        v3105.CollisionGroup = "nocol";
                                                        table.insert(l_unit_1, v3105);
                                                    end;
                                                end;
                                            end;
                                            l_Position_2:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 20272 ]]
                                                if not l_Position_2.Parent then
                                                    for _, v3107 in pairs(v3100) do
                                                        v3107:Disconnect();
                                                    end;
                                                    for _, v3109 in pairs(l_unit_1) do
                                                        v3109.CollisionGroup = "playercol";
                                                    end;
                                                end;
                                            end);
                                           shared.repfire({
                                                Effect = "Smooth Grab", 
                                                CanBypass = true, 
                                                Hit = v96, 
                                                StartOffset = v96.PrimaryPart.CFrame, 
                                                From = l_Parent_0.PrimaryPart, 
                                                NoLook = v103.Dual.NoLook, 
                                                Offset = typeof(v103.Dual.Dist) == "CFrame" and v103.Dual.Dist or CFrame.new(0, 0, -v103.Dual.Dist), 
                                                Anchor = l_Position_2
                                            });
                                        end;
                                        v3024 = true;
                                    end;
                                end;
                            end;
                            if not v3024 then
                                task.spawn(function() --[[ Line: 20303 ]]
                                    local v3110 = tick();
                                    local v3111 = 0.1;
                                    if v103.Dual.Freeze == false then
                                        v3111 = 2;
                                    end;
                                    if v3111 < v2831.Speed or not v2831.IsPlaying or v2839.interrupted then
                                        return;
                                    else
                                        repeat
                                            task.wait();
                                        until tick() - v3110 > 1 or not v2831.IsPlaying or v3111 < v2831.Speed or v2839.interrupted;
                                        if v3111 < v2831.Speed or not v2831.IsPlaying or v2839.interrupted then
                                            return;
                                        else
                                            local v3112 = {};
                                            local v3113 = false;
                                            for _, v3115 in pairs(game.Players:GetPlayers()) do
                                                if v3115.Character then
                                                    local v3116 = game.ReplicatedStorage.Emotes.Sync:Clone();
                                                    l_CollectionService_1:AddTag(v3116, (l_PlayerFromCharacter_0 or v96).Name .. "syncui");
                                                    table.insert(v2832, v3116);
                                                    if v97 == "Duel Request" then
                                                        v3116.Frame.TextButton.Text = "FRIENDLY DUEL";
                                                    end;
                                                    v3116.PlayerToHideFrom = l_PlayerFromCharacter_0;
                                                    l_CollectionService_1:AddTag(v3116, "EmoteSync");
                                                    v3116:SetAttribute("EmoteProperty", true);
                                                    v3116.Adornee = v96["Left Arm"];
                                                    v3116.Parent = v3115.PlayerGui;
                                                    local v3117 = nil;
                                                    do
                                                        local l_v3117_0 = v3117;
                                                        l_v3117_0 = v3116.Frame.Button.MouseButton1Click:Connect(function() --[[ Line: 20332 ]]
                                                            local l_Character_0 = v3115.Character;
                                                            if v3113 then
                                                                return l_v3117_0:Disconnect();
                                                            else
                                                                local v3120 = tick() - (l_Character_0:GetAttribute("LastDamage") or 0);
                                                                if not l_Character_0:FindFirstChild("DoingEmote") and not v2:Check(l_Character_0, {
                                                                    "Emote"
                                                                }) then
                                                                    return;
                                                                elseif v3120 < 1 then
                                                                    return;
                                                                elseif (l_Character_0.PrimaryPart.Position - v96.PrimaryPart.Position).magnitude > 25 then
                                                                    return;
                                                                else
                                                                    l_v3117_0:Disconnect();
                                                                    v3113 = true;
                                                                    for _, v3122 in pairs(v3112) do
                                                                        v3122:Destroy();
                                                                    end;
                                                                    v0:Play(l_Character_0, v97, nil, v96);
                                                                    return;
                                                                end;
                                                            end;
                                                        end);
                                                        table.insert(v3112, v3116);
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
                    local v3123 = nil;
                    local v3124 = nil;
                    v3124 = v2831.Stopped:Connect(function() --[[ Line: 20368 ]]
                        if not v2839.interrupted then
                            if v103.Idle then
                                local v3125 = v102(v103.Idle);
                                table.insert(v2832, v3125);
                                v3125:Play();
                                if v103.IdleKeyframes and v3123 then
                                    v3123(v3125);
                                end;
                                if v103.IdleSound then
                                    local v3126 = v70(v103.IdleSound);
                                    v3126.Parent = v96.Torso;
                                    v3126:Play();
                                    table.insert(v2832, v3126);
                                end;
                                local v3127 = nil;
                                v3127 = v3125.Stopped:Once(function() --[[ Line: 20386 ]]
                                    if (not v2839.interrupted or v2839.interrupted == "CancelEmote") and v103.End then
                                        local v3128 = shared.cfolder({
                                            Name = "Freeze", 
                                            Parent = v96
                                        }, v103.End[2] or 3.7);
                                        local v3129 = nil;
                                        task.delay(0.25, function() --[[ Line: 20395 ]]
                                            if v3128.Parent then
                                                shared.bindDeletion(shared.cfolder({
                                                    Name = "DoingEmote", 
                                                    Parent = v96
                                                }), v3128);
                                                local v3130 = shared.cfolder({
                                                    Name = "DoingEmote1", 
                                                    Parent = v96
                                                });
                                                v3130:GetPropertyChangedSignal("Name"):Once(function() --[[ Line: 20407 ]]
                                                    if v3130.Name == "Done" then
                                                        v3128:Destroy();
                                                    end;
                                                end);
                                                shared.bindDeletion(v3130, v3128);
                                            end;
                                        end);
                                        v3128:GetPropertyChangedSignal("Name"):Once(function() --[[ Line: 20416 ]]
                                            if v3128.Name == "Done" then
                                                v102(v103.End[1]):Stop();
                                            end;
                                        end);
                                        do
                                            local l_v3129_0 = v3129;
                                            v3128:GetPropertyChangedSignal("Parent"):Once(function() --[[ Line: 20422 ]]
                                                local l_pairs_1 = pairs;
                                                local l_l_CollectionService_1_1 = l_CollectionService_1;
                                                local v3134 = "emoteendstuff";
                                                local v3135 = v99 or l_PlayerFromCharacter_0 or v96;
                                                for _, v3137 in l_pairs_1(l_l_CollectionService_1_1:GetTagged(v3134 .. v3135.Name)) do
                                                    v3137:Destroy();
                                                end;
                                                if l_v3129_0 then
                                                    l_TweenService_0:Create(l_v3129_0, TweenInfo.new(0.85, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                                        Volume = 0
                                                    }):Play();
                                                end;
                                            end);
                                            if v103.End[3] then
                                                l_v3129_0 = v70(v103.End[3]);
                                                l_v3129_0.Parent = v96.Torso;
                                                l_v3129_0:Play();
                                            end;
                                            v3128:SetAttribute("EmoteEnding", true);
                                            v102(v103.End[1]):Play();
                                            if v97 == "Am Dead" then
                                                local l_l_CollectionService_1_Tagged_2 = l_CollectionService_1:GetTagged("emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                                                task.delay(1.55, function() --[[ Line: 20444 ]]
                                                    for _, v3140 in pairs(l_l_CollectionService_1_Tagged_2) do
                                                        v3140:Destroy();
                                                    end;
                                                end);
                                            elseif v97 == "Paddleball" then
                                                local l_l_CollectionService_1_Tagged_3 = l_CollectionService_1:GetTagged("emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                                                task.delay(1.183, function() --[[ Line: 20451 ]]
                                                    for _, v3143 in pairs(l_l_CollectionService_1_Tagged_3) do
                                                        v3143:Destroy();
                                                    end;
                                                end);
                                            elseif v97 == "Chosen" then
                                                local l_l_CollectionService_1_Tagged_4 = l_CollectionService_1:GetTagged("emoteendstuff" .. (v99 or l_PlayerFromCharacter_0 or v96).Name);
                                                for _, v3146 in pairs(l_l_CollectionService_1_Tagged_4) do
                                                    if typeof(v3146) == "Instance" and v3146.Name == "chosenparticles" then
                                                        for _, v3148 in pairs(v3146:GetDescendants()) do
                                                            if v3148:IsA("Beam") then
                                                                l_TweenService_0:Create(v3148, TweenInfo.new(1 + math.random(), Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
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
                                        local v3151 = "emoteendstuff";
                                        local v3152 = v99 or l_PlayerFromCharacter_0 or v96;
                                        for _, v3154 in l_pairs_2(l_l_CollectionService_1_2:GetTagged(v3151 .. v3152.Name)) do
                                            v3154:Destroy();
                                        end;
                                    end;
                                    v3127:Disconnect();
                                    
                                end);
                                table.insert(v2832, v3127);
                                return;
                            end;
                        else
                            local l_pairs_3 = pairs;
                            local l_l_CollectionService_1_3 = l_CollectionService_1;
                            local v3157 = "emoteendstuff";
                            local v3158 = v99 or l_PlayerFromCharacter_0 or v96;
                            for _, v3160 in l_pairs_3(l_l_CollectionService_1_3:GetTagged(v3157 .. v3158.Name)) do
                                v3160:Destroy();
                            end;
                        end;
                        v3124:Disconnect();
                        
                    end);
                    table.insert(v2832, v3124);
                    if v103.Keyframes then
                        v3123 = function(v3161) --[[ Line: 20497 ]]
                            for v3162, v3163 in pairs(v103.Keyframes) do
                                local v3164 = tick();
                                local v3165 = 15;
                                if v103.Infinite then
                                    v3165 = 1e999;
                                end;
                                local v3166 = nil;
                                do
                                    local l_v3165_0, l_v3166_0 = v3165, v3166;
                                    l_v3166_0 = v3161:GetMarkerReachedSignal(v3162):Connect(function() --[[ Line: 20505 ]]
                                        if tick() - v3164 > l_v3165_0 then
                                            return l_v3166_0:Disconnect();
                                        else
                                            if v3162 ~= "snap" and v3162 ~= "clap" and v3162 ~= "claploop" and v97 ~= "Boppin" and not v103.DontDisconnectMarkers then
                                                l_v3166_0:Disconnect();
                                            end;
                                            v3163(v2854, v2832, v3161, v2839);
                                            return;
                                        end;
                                    end);
                                    table.insert(v2832, l_v3166_0);
                                end;
                            end;
                        end;
                        v3123(v2831);
                    end;
                    if v103.Sounds and not v2839.interrupted then
                        for v3169, v3170 in pairs(v103.Sounds) do
                            if not v2839.interrupted then
                                task.delay(v3169, function() --[[ Line: 20526 ]]
                                    local v3171 = {
                                        Name = "EmoteSFX", 
                                        Parent = v96.PrimaryPart, 
                                        RollOffMaxDistance = v1
                                    };
                                    local v3172 = nil;
                                    if v3170.ParentTorso then
                                        v3171.Parent = v96.Torso;
                                        v3170.ParentTorso = nil;
                                    end;
                                    if v3170.Smooth then
                                        v3172 = v3170.Volume or 0.5;
                                        v3170.Volume = 0;
                                        v3170.Smooth = nil;
                                    end;
                                    for v3173, v3174 in pairs(v3170) do
                                        v3171[v3173] = v3174;
                                    end;
                                    if v2839.interrupted then
                                        return;
                                    else
                                        local v3175 = v70(v3171);
                                        v3175:SetAttribute("EmoteProperty", true);
                                        table.insert(v2832, v3175);
                                        if v3172 then
                                            v3175.Volume = 0;
                                        end;
                                        if v2839.interrupted then
                                            return v3175;
                                        else
                                            v3175:Resume();
                                            if v3172 then
                                                l_TweenService_0:Create(v3175, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                                    Volume = v3172
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
v0.GetTable = function(_, v3178) --[[ Line: 20579 ]] --[[ Name: GetTable ]]
    return v0:Play(nil, nil, true, nil, v3178);
end;
v0.IsLimited = function(_, v3180) --[[ Line: 20583 ]] --[[ Name: IsLimited ]]
    return v0:GetTable(true)[v3180].Limited;
end;
return v0;
