-- Saved by UniversalSynSaveInstance https://discord.gg/wx4ThpAsmw

local v0 = {};
local v1 = nil;
local l_pointToObjectSpace_0 = CFrame.new().pointToObjectSpace;
local l_l_pointToObjectSpace_0_0 = l_pointToObjectSpace_0 --[[ copy: 2 -> 21 ]];
v1 = function(v4, v5, v6)
    local v7 = l_l_pointToObjectSpace_0_0(v4, v6);
    local v8 = v5.x / 2;
    local _ = v5.y / 2;
    local _ = v5.z / 2;
    local l_x_0 = v7.x;
    local _ = v7.y;
    local _ = v7.z;
    local v14 = false;
    if l_x_0 * l_x_0 < v8 * v8 then
        v14 = false;
        if l_x_0 * l_x_0 < v8 * v8 then
            v14 = l_x_0 * l_x_0 < v8 * v8;
        end;
    end;
    return v14;
end;
l_pointToObjectSpace_0 = nil;
local l_pointToObjectSpace_1 = CFrame.new().pointToObjectSpace;
local l_l_pointToObjectSpace_1_0 = l_pointToObjectSpace_1 --[[ copy: 3 -> 22 ]];
l_pointToObjectSpace_0 = function(v17, v18, v19, v20)
    local v21 = l_l_pointToObjectSpace_1_0(v17, v19);
    local v22 = v18.x / 2;
    local v23 = v18.y / 2;
    local v24 = v18.z / 2;
    local l_x_1 = v21.x;
    local l_y_1 = v21.y;
    local l_z_1 = v21.z;
    local v28 = v22 < l_x_1 and l_x_1 - v22 or l_x_1 < -v22 and l_x_1 + v22 or 0;
    local v29 = v23 < l_y_1 and l_y_1 - v23 or l_y_1 < -v23 and l_y_1 + v23 or 0;
    local v30 = v24 < l_z_1 and l_z_1 - v24 or l_z_1 < -v24 and l_z_1 + v24 or 0;
    return v28 * v28 + v29 * v29 + v30 * v30 < v20 * v20;
end;
l_pointToObjectSpace_1 = nil;
local l_components_0 = CFrame.new().components;
local l_l_components_0_0 = l_components_0 --[[ copy: 4 -> 23 ]];
l_pointToObjectSpace_1 = function(v33, v34, v35, v36, v37)
    local v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49 = l_l_components_0_0(v33);
    local v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61 = l_l_components_0_0(v35);
    local v62 = v34.x / 2;
    local v63 = v34.y / 2;
    local v64 = v34.z / 2;
    local v65 = v36.x / 2;
    local v66 = v36.y / 2;
    local v67 = v36.z / 2;
    local v68 = v50 - v38;
    local v69 = v51 - v39;
    local v70 = v52 - v40;
    local v71 = v41 * v68 + v44 * v69 + v47 * v70;
    local v72 = v42 * v68 + v45 * v69 + v48 * v70;
    local v73 = v43 * v68 + v46 * v69 + v49 * v70;
    local v74 = v53 * v68 + v56 * v69 + v59 * v70;
    local v75 = v54 * v68 + v57 * v69 + v60 * v70;
    local v76 = v55 * v68 + v58 * v69 + v61 * v70;
    local v77 = v65 < v74 and v74 - v65 or v74 < -v65 and v74 + v65 or 0;
    local v78 = v66 < v75 and v75 - v66 or v75 < -v66 and v75 + v66 or 0;
    local v79 = v67 < v76 and v76 - v67 or v76 < -v67 and v76 + v67 or 0;
    local v80 = v62 < v71 and v71 - v62 or v71 < -v62 and v71 + v62 or 0;
    local v81 = v63 < v72 and v72 - v63 or v72 < -v63 and v72 + v63 or 0;
    local v82 = v64 < v73 and v73 - v64 or v73 < -v64 and v73 + v64 or 0;
    local v83 = v77 * v77 + v78 * v78 + v79 * v79;
    local v84 = v80 * v80 + v81 * v81 + v82 * v82;
    local v85 = v62 < v63 and (v62 < v64 and v62 or v64) or v63 < v64 and v63 or v64;
    local v86 = v65 < v66 and (v65 < v67 and v65 or v67) or v66 < v67 and v66 or v67;
    if not (v83 >= v85 * v85) or v84 < v86 * v86 then
        return true;
    elseif not (v62 * v62 + v63 * v63 + v64 * v64 >= v83) or v65 * v65 + v66 * v66 + v67 * v67 < v84 then
        return false;
    elseif v37 == nil then
        local v87 = v41 * v53 + v44 * v56 + v47 * v59;
        local v88 = v41 * v54 + v44 * v57 + v47 * v60;
        local v89 = v41 * v55 + v44 * v58 + v47 * v61;
        local v90 = v42 * v53 + v45 * v56 + v48 * v59;
        local v91 = v42 * v54 + v45 * v57 + v48 * v60;
        local v92 = v42 * v55 + v45 * v58 + v48 * v61;
        local v93 = v43 * v53 + v46 * v56 + v49 * v59;
        local v94 = v43 * v54 + v46 * v57 + v49 * v60;
        local v95 = v43 * v55 + v46 * v58 + v49 * v61;
        local v96 = v67 * v67;
        local v97 = v65 * v65;
        local v98 = v66 * v66;
        local v99 = v62 * v87;
        local v100 = v63 * v90;
        local v101 = v64 * v93;
        local v102 = v62 * v88;
        local v103 = v63 * v91;
        local v104 = v64 * v94;
        local v105 = v62 * v89;
        local v106 = v63 * v92;
        local v107 = v64 * v95;
        local v108 = v99 + v100 + v101 - v74;
        if v108 * v108 < v97 then
            local v109 = v102 + v103 + v104 - v75;
            if v109 * v109 < v98 then
                local v110 = v105 + v106 + v107 - v76;
                if v110 * v110 < v96 then
                    return true;
                end;
            end;
        end;
        local v111 = -v99 + v100 + v101 - v74;
        if v111 * v111 < v97 then
            local v112 = -v102 + v103 + v104 - v75;
            if v112 * v112 < v98 then
                local v113 = -v105 + v106 + v107 - v76;
                if v113 * v113 < v96 then
                    return true;
                end;
            end;
        end;
        local v114 = v99 - v100 + v101 - v74;
        if v114 * v114 < v97 then
            local v115 = v102 - v103 + v104 - v75;
            if v115 * v115 < v98 then
                local v116 = v105 - v106 + v107 - v76;
                if v116 * v116 < v96 then
                    return true;
                end;
            end;
        end;
        local v117 = -v99 - v100 + v101 - v74;
        if v117 * v117 < v97 then
            local v118 = -v102 - v103 + v104 - v75;
            if v118 * v118 < v98 then
                local v119 = -v105 - v106 + v107 - v76;
                if v119 * v119 < v96 then
                    return true;
                end;
            end;
        end;
        local v120 = v99 + v100 - v101 - v74;
        if v120 * v120 < v97 then
            local v121 = v102 + v103 - v104 - v75;
            if v121 * v121 < v98 then
                local v122 = v105 + v106 - v107 - v76;
                if v122 * v122 < v96 then
                    return true;
                end;
            end;
        end;
        local v123 = -v99 + v100 - v101 - v74;
        if v123 * v123 < v97 then
            local v124 = -v102 + v103 - v104 - v75;
            if v124 * v124 < v98 then
                local v125 = -v105 + v106 - v107 - v76;
                if v125 * v125 < v96 then
                    return true;
                end;
            end;
        end;
        local v126 = v99 - v100 - v101 - v74;
        if v126 * v126 < v97 then
            local v127 = v102 - v103 - v104 - v75;
            if v127 * v127 < v98 then
                local v128 = v105 - v106 - v107 - v76;
                if v128 * v128 < v96 then
                    return true;
                end;
            end;
        end;
        local v129 = -v99 - v100 - v101 - v74;
        if v129 * v129 < v97 then
            local v130 = -v102 - v103 - v104 - v75;
            if v130 * v130 < v98 then
                local v131 = -v105 - v106 - v107 - v76;
                if v131 * v131 < v96 then
                    return true;
                end;
            end;
        end;
        local v132 = v62 * v62;
        local v133 = v63 * v63;
        local v134 = v64 * v64;
        local v135 = v65 * v93;
        local v136 = v66 * v94;
        local v137 = v65 * v87;
        local v138 = v66 * v88;
        local v139 = v65 * v90;
        local v140 = v66 * v91;
        local v141 = v67 * v95;
        local v142 = v67 * v89;
        local v143 = v67 * v92;
        local v144 = (v73 - v64 + v135 + v136) / v95;
        if v144 * v144 < v96 then
            local v145 = v71 + v137 + v138 - v144 * v89;
            if v145 * v145 < v132 then
                local v146 = v72 + v139 + v140 - v144 * v92;
                if v146 * v146 < v133 then
                    return true;
                end;
            end;
        end;
        local v147 = (v73 + v64 + v135 + v136) / v95;
        if v147 * v147 < v96 then
            local v148 = v71 + v137 + v138 - v147 * v89;
            if v148 * v148 < v132 then
                local v149 = v72 + v139 + v140 - v147 * v92;
                if v149 * v149 < v133 then
                    return true;
                end;
            end;
        end;
        local v150 = (v73 - v64 - v135 + v136) / v95;
        if v150 * v150 < v96 then
            local v151 = v71 - v137 + v138 - v150 * v89;
            if v151 * v151 < v132 then
                local v152 = v72 - v139 + v140 - v150 * v92;
                if v152 * v152 < v133 then
                    return true;
                end;
            end;
        end;
        local v153 = (v73 + v64 - v135 + v136) / v95;
        if v153 * v153 < v96 then
            local v154 = v71 - v137 + v138 - v153 * v89;
            if v154 * v154 < v132 then
                local v155 = v72 - v139 + v140 - v153 * v92;
                if v155 * v155 < v133 then
                    return true;
                end;
            end;
        end;
        local v156 = (v73 - v64 + v135 - v136) / v95;
        if v156 * v156 < v96 then
            local v157 = v71 + v137 - v138 - v156 * v89;
            if v157 * v157 < v132 then
                local v158 = v72 + v139 - v140 - v156 * v92;
                if v158 * v158 < v133 then
                    return true;
                end;
            end;
        end;
        local v159 = (v73 + v64 + v135 - v136) / v95;
        if v159 * v159 < v96 then
            local v160 = v71 + v137 - v138 - v159 * v89;
            if v160 * v160 < v132 then
                local v161 = v72 + v139 - v140 - v159 * v92;
                if v161 * v161 < v133 then
                    return true;
                end;
            end;
        end;
        local v162 = (v73 - v64 - v135 - v136) / v95;
        if v162 * v162 < v96 then
            local v163 = v71 - v137 - v138 - v162 * v89;
            if v163 * v163 < v132 then
                local v164 = v72 - v139 - v140 - v162 * v92;
                if v164 * v164 < v133 then
                    return true;
                end;
            end;
        end;
        local v165 = (v73 + v64 - v135 - v136) / v95;
        if v165 * v165 < v96 then
            local v166 = v71 - v137 - v138 - v165 * v89;
            if v166 * v166 < v132 then
                local v167 = v72 - v139 - v140 - v165 * v92;
                if v167 * v167 < v133 then
                    return true;
                end;
            end;
        end;
        local v168 = (v71 - v62 + v137 + v138) / v89;
        if v168 * v168 < v96 then
            local v169 = v72 + v139 + v140 - v168 * v92;
            if v169 * v169 < v133 then
                local v170 = v73 + v135 + v136 - v168 * v95;
                if v170 * v170 < v134 then
                    return true;
                end;
            end;
        end;
        local v171 = (v71 + v62 + v137 + v138) / v89;
        if v171 * v171 < v96 then
            local v172 = v72 + v139 + v140 - v171 * v92;
            if v172 * v172 < v133 then
                local v173 = v73 + v135 + v136 - v171 * v95;
                if v173 * v173 < v134 then
                    return true;
                end;
            end;
        end;
        local v174 = (v71 - v62 - v137 + v138) / v89;
        if v174 * v174 < v96 then
            local v175 = v72 - v139 + v140 - v174 * v92;
            if v175 * v175 < v133 then
                local v176 = v73 - v135 + v136 - v174 * v95;
                if v176 * v176 < v134 then
                    return true;
                end;
            end;
        end;
        local v177 = (v71 + v62 - v137 + v138) / v89;
        if v177 * v177 < v96 then
            local v178 = v72 - v139 + v140 - v177 * v92;
            if v178 * v178 < v133 then
                local v179 = v73 - v135 + v136 - v177 * v95;
                if v179 * v179 < v134 then
                    return true;
                end;
            end;
        end;
        local v180 = (v71 - v62 + v137 - v138) / v89;
        if v180 * v180 < v96 then
            local v181 = v72 + v139 - v140 - v180 * v92;
            if v181 * v181 < v133 then
                local v182 = v73 + v135 - v136 - v180 * v95;
                if v182 * v182 < v134 then
                    return true;
                end;
            end;
        end;
        local v183 = (v71 + v62 + v137 - v138) / v89;
        if v183 * v183 < v96 then
            local v184 = v72 + v139 - v140 - v183 * v92;
            if v184 * v184 < v133 then
                local v185 = v73 + v135 - v136 - v183 * v95;
                if v185 * v185 < v134 then
                    return true;
                end;
            end;
        end;
        local v186 = (v71 - v62 - v137 - v138) / v89;
        if v186 * v186 < v96 then
            local v187 = v72 - v139 - v140 - v186 * v92;
            if v187 * v187 < v133 then
                local v188 = v73 - v135 - v136 - v186 * v95;
                if v188 * v188 < v134 then
                    return true;
                end;
            end;
        end;
        local v189 = (v71 + v62 - v137 - v138) / v89;
        if v189 * v189 < v96 then
            local v190 = v72 - v139 - v140 - v189 * v92;
            if v190 * v190 < v133 then
                local v191 = v73 - v135 - v136 - v189 * v95;
                if v191 * v191 < v134 then
                    return true;
                end;
            end;
        end;
        local v192 = (v72 - v63 + v139 + v140) / v92;
        if v192 * v192 < v96 then
            local v193 = v73 + v135 + v136 - v192 * v95;
            if v193 * v193 < v134 then
                local v194 = v71 + v137 + v138 - v192 * v89;
                if v194 * v194 < v132 then
                    return true;
                end;
            end;
        end;
        local v195 = (v72 + v63 + v139 + v140) / v92;
        if v195 * v195 < v96 then
            local v196 = v73 + v135 + v136 - v195 * v95;
            if v196 * v196 < v134 then
                local v197 = v71 + v137 + v138 - v195 * v89;
                if v197 * v197 < v132 then
                    return true;
                end;
            end;
        end;
        local v198 = (v72 - v63 - v139 + v140) / v92;
        if v198 * v198 < v96 then
            local v199 = v73 - v135 + v136 - v198 * v95;
            if v199 * v199 < v134 then
                local v200 = v71 - v137 + v138 - v198 * v89;
                if v200 * v200 < v132 then
                    return true;
                end;
            end;
        end;
        local v201 = (v72 + v63 - v139 + v140) / v92;
        if v201 * v201 < v96 then
            local v202 = v73 - v135 + v136 - v201 * v95;
            if v202 * v202 < v134 then
                local v203 = v71 - v137 + v138 - v201 * v89;
                if v203 * v203 < v132 then
                    return true;
                end;
            end;
        end;
        local v204 = (v72 - v63 + v139 - v140) / v92;
        if v204 * v204 < v96 then
            local v205 = v73 + v135 - v136 - v204 * v95;
            if v205 * v205 < v134 then
                local v206 = v71 + v137 - v138 - v204 * v89;
                if v206 * v206 < v132 then
                    return true;
                end;
            end;
        end;
        local v207 = (v72 + v63 + v139 - v140) / v92;
        if v207 * v207 < v96 then
            local v208 = v73 + v135 - v136 - v207 * v95;
            if v208 * v208 < v134 then
                local v209 = v71 + v137 - v138 - v207 * v89;
                if v209 * v209 < v132 then
                    return true;
                end;
            end;
        end;
        local v210 = (v72 - v63 - v139 - v140) / v92;
        if v210 * v210 < v96 then
            local v211 = v73 - v135 - v136 - v210 * v95;
            if v211 * v211 < v134 then
                local v212 = v71 - v137 - v138 - v210 * v89;
                if v212 * v212 < v132 then
                    return true;
                end;
            end;
        end;
        local v213 = (v72 + v63 - v139 - v140) / v92;
        if v213 * v213 < v96 then
            local v214 = v73 - v135 - v136 - v213 * v95;
            if v214 * v214 < v134 then
                local v215 = v71 - v137 - v138 - v213 * v89;
                if v215 * v215 < v132 then
                    return true;
                end;
            end;
        end;
        local v216 = (v73 - v64 + v136 + v141) / v93;
        if v216 * v216 < v97 then
            local v217 = v71 + v138 + v142 - v216 * v87;
            if v217 * v217 < v132 then
                local v218 = v72 + v140 + v143 - v216 * v90;
                if v218 * v218 < v133 then
                    return true;
                end;
            end;
        end;
        local v219 = (v73 + v64 + v136 + v141) / v93;
        if v219 * v219 < v97 then
            local v220 = v71 + v138 + v142 - v219 * v87;
            if v220 * v220 < v132 then
                local v221 = v72 + v140 + v143 - v219 * v90;
                if v221 * v221 < v133 then
                    return true;
                end;
            end;
        end;
        local v222 = (v73 - v64 - v136 + v141) / v93;
        if v222 * v222 < v97 then
            local v223 = v71 - v138 + v142 - v222 * v87;
            if v223 * v223 < v132 then
                local v224 = v72 - v140 + v143 - v222 * v90;
                if v224 * v224 < v133 then
                    return true;
                end;
            end;
        end;
        local v225 = (v73 + v64 - v136 + v141) / v93;
        if v225 * v225 < v97 then
            local v226 = v71 - v138 + v142 - v225 * v87;
            if v226 * v226 < v132 then
                local v227 = v72 - v140 + v143 - v225 * v90;
                if v227 * v227 < v133 then
                    return true;
                end;
            end;
        end;
        local v228 = (v73 - v64 + v136 - v141) / v93;
        if v228 * v228 < v97 then
            local v229 = v71 + v138 - v142 - v228 * v87;
            if v229 * v229 < v132 then
                local v230 = v72 + v140 - v143 - v228 * v90;
                if v230 * v230 < v133 then
                    return true;
                end;
            end;
        end;
        local v231 = (v73 + v64 + v136 - v141) / v93;
        if v231 * v231 < v97 then
            local v232 = v71 + v138 - v142 - v231 * v87;
            if v232 * v232 < v132 then
                local v233 = v72 + v140 - v143 - v231 * v90;
                if v233 * v233 < v133 then
                    return true;
                end;
            end;
        end;
        local v234 = (v73 - v64 - v136 - v141) / v93;
        if v234 * v234 < v97 then
            local v235 = v71 - v138 - v142 - v234 * v87;
            if v235 * v235 < v132 then
                local v236 = v72 - v140 - v143 - v234 * v90;
                if v236 * v236 < v133 then
                    return true;
                end;
            end;
        end;
        local v237 = (v73 + v64 - v136 - v141) / v93;
        if v237 * v237 < v97 then
            local v238 = v71 - v138 - v142 - v237 * v87;
            if v238 * v238 < v132 then
                local v239 = v72 - v140 - v143 - v237 * v90;
                if v239 * v239 < v133 then
                    return true;
                end;
            end;
        end;
        local v240 = (v71 - v62 + v138 + v142) / v87;
        if v240 * v240 < v97 then
            local v241 = v72 + v140 + v143 - v240 * v90;
            if v241 * v241 < v133 then
                local v242 = v73 + v136 + v141 - v240 * v93;
                if v242 * v242 < v134 then
                    return true;
                end;
            end;
        end;
        local v243 = (v71 + v62 + v138 + v142) / v87;
        if v243 * v243 < v97 then
            local v244 = v72 + v140 + v143 - v243 * v90;
            if v244 * v244 < v133 then
                local v245 = v73 + v136 + v141 - v243 * v93;
                if v245 * v245 < v134 then
                    return true;
                end;
            end;
        end;
        local v246 = (v71 - v62 - v138 + v142) / v87;
        if v246 * v246 < v97 then
            local v247 = v72 - v140 + v143 - v246 * v90;
            if v247 * v247 < v133 then
                local v248 = v73 - v136 + v141 - v246 * v93;
                if v248 * v248 < v134 then
                    return true;
                end;
            end;
        end;
        local v249 = (v71 + v62 - v138 + v142) / v87;
        if v249 * v249 < v97 then
            local v250 = v72 - v140 + v143 - v249 * v90;
            if v250 * v250 < v133 then
                local v251 = v73 - v136 + v141 - v249 * v93;
                if v251 * v251 < v134 then
                    return true;
                end;
            end;
        end;
        local v252 = (v71 - v62 + v138 - v142) / v87;
        if v252 * v252 < v97 then
            local v253 = v72 + v140 - v143 - v252 * v90;
            if v253 * v253 < v133 then
                local v254 = v73 + v136 - v141 - v252 * v93;
                if v254 * v254 < v134 then
                    return true;
                end;
            end;
        end;
        local v255 = (v71 + v62 + v138 - v142) / v87;
        if v255 * v255 < v97 then
            local v256 = v72 + v140 - v143 - v255 * v90;
            if v256 * v256 < v133 then
                local v257 = v73 + v136 - v141 - v255 * v93;
                if v257 * v257 < v134 then
                    return true;
                end;
            end;
        end;
        local v258 = (v71 - v62 - v138 - v142) / v87;
        if v258 * v258 < v97 then
            local v259 = v72 - v140 - v143 - v258 * v90;
            if v259 * v259 < v133 then
                local v260 = v73 - v136 - v141 - v258 * v93;
                if v260 * v260 < v134 then
                    return true;
                end;
            end;
        end;
        local v261 = (v71 + v62 - v138 - v142) / v87;
        if v261 * v261 < v97 then
            local v262 = v72 - v140 - v143 - v261 * v90;
            if v262 * v262 < v133 then
                local v263 = v73 - v136 - v141 - v261 * v93;
                if v263 * v263 < v134 then
                    return true;
                end;
            end;
        end;
        local v264 = (v72 - v63 + v140 + v143) / v90;
        if v264 * v264 < v97 then
            local v265 = v73 + v136 + v141 - v264 * v93;
            if v265 * v265 < v134 then
                local v266 = v71 + v138 + v142 - v264 * v87;
                if v266 * v266 < v132 then
                    return true;
                end;
            end;
        end;
        local v267 = (v72 + v63 + v140 + v143) / v90;
        if v267 * v267 < v97 then
            local v268 = v73 + v136 + v141 - v267 * v93;
            if v268 * v268 < v134 then
                local v269 = v71 + v138 + v142 - v267 * v87;
                if v269 * v269 < v132 then
                    return true;
                end;
            end;
        end;
        local v270 = (v72 - v63 - v140 + v143) / v90;
        if v270 * v270 < v97 then
            local v271 = v73 - v136 + v141 - v270 * v93;
            if v271 * v271 < v134 then
                local v272 = v71 - v138 + v142 - v270 * v87;
                if v272 * v272 < v132 then
                    return true;
                end;
            end;
        end;
        local v273 = (v72 + v63 - v140 + v143) / v90;
        if v273 * v273 < v97 then
            local v274 = v73 - v136 + v141 - v273 * v93;
            if v274 * v274 < v134 then
                local v275 = v71 - v138 + v142 - v273 * v87;
                if v275 * v275 < v132 then
                    return true;
                end;
            end;
        end;
        local v276 = (v72 - v63 + v140 - v143) / v90;
        if v276 * v276 < v97 then
            local v277 = v73 + v136 - v141 - v276 * v93;
            if v277 * v277 < v134 then
                local v278 = v71 + v138 - v142 - v276 * v87;
                if v278 * v278 < v132 then
                    return true;
                end;
            end;
        end;
        local v279 = (v72 + v63 + v140 - v143) / v90;
        if v279 * v279 < v97 then
            local v280 = v73 + v136 - v141 - v279 * v93;
            if v280 * v280 < v134 then
                local v281 = v71 + v138 - v142 - v279 * v87;
                if v281 * v281 < v132 then
                    return true;
                end;
            end;
        end;
        local v282 = (v72 - v63 - v140 - v143) / v90;
        if v282 * v282 < v97 then
            local v283 = v73 - v136 - v141 - v282 * v93;
            if v283 * v283 < v134 then
                local v284 = v71 - v138 - v142 - v282 * v87;
                if v284 * v284 < v132 then
                    return true;
                end;
            end;
        end;
        local v285 = (v72 + v63 - v140 - v143) / v90;
        if v285 * v285 < v97 then
            local v286 = v73 - v136 - v141 - v285 * v93;
            if v286 * v286 < v134 then
                local v287 = v71 - v138 - v142 - v285 * v87;
                if v287 * v287 < v132 then
                    return true;
                end;
            end;
        end;
        local v288 = (v73 - v64 + v141 + v135) / v94;
        if v288 * v288 < v98 then
            local v289 = v71 + v142 + v137 - v288 * v88;
            if v289 * v289 < v132 then
                local v290 = v72 + v143 + v139 - v288 * v91;
                if v290 * v290 < v133 then
                    return true;
                end;
            end;
        end;
        local v291 = (v73 + v64 + v141 + v135) / v94;
        if v291 * v291 < v98 then
            local v292 = v71 + v142 + v137 - v291 * v88;
            if v292 * v292 < v132 then
                local v293 = v72 + v143 + v139 - v291 * v91;
                if v293 * v293 < v133 then
                    return true;
                end;
            end;
        end;
        local v294 = (v73 - v64 - v141 + v135) / v94;
        if v294 * v294 < v98 then
            local v295 = v71 - v142 + v137 - v294 * v88;
            if v295 * v295 < v132 then
                local v296 = v72 - v143 + v139 - v294 * v91;
                if v296 * v296 < v133 then
                    return true;
                end;
            end;
        end;
        local v297 = (v73 + v64 - v141 + v135) / v94;
        if v297 * v297 < v98 then
            local v298 = v71 - v142 + v137 - v297 * v88;
            if v298 * v298 < v132 then
                local v299 = v72 - v143 + v139 - v297 * v91;
                if v299 * v299 < v133 then
                    return true;
                end;
            end;
        end;
        local v300 = (v73 - v64 + v141 - v135) / v94;
        if v300 * v300 < v98 then
            local v301 = v71 + v142 - v137 - v300 * v88;
            if v301 * v301 < v132 then
                local v302 = v72 + v143 - v139 - v300 * v91;
                if v302 * v302 < v133 then
                    return true;
                end;
            end;
        end;
        local v303 = (v73 + v64 + v141 - v135) / v94;
        if v303 * v303 < v98 then
            local v304 = v71 + v142 - v137 - v303 * v88;
            if v304 * v304 < v132 then
                local v305 = v72 + v143 - v139 - v303 * v91;
                if v305 * v305 < v133 then
                    return true;
                end;
            end;
        end;
        local v306 = (v73 - v64 - v141 - v135) / v94;
        if v306 * v306 < v98 then
            local v307 = v71 - v142 - v137 - v306 * v88;
            if v307 * v307 < v132 then
                local v308 = v72 - v143 - v139 - v306 * v91;
                if v308 * v308 < v133 then
                    return true;
                end;
            end;
        end;
        local v309 = (v73 + v64 - v141 - v135) / v94;
        if v309 * v309 < v98 then
            local v310 = v71 - v142 - v137 - v309 * v88;
            if v310 * v310 < v132 then
                local v311 = v72 - v143 - v139 - v309 * v91;
                if v311 * v311 < v133 then
                    return true;
                end;
            end;
        end;
        local v312 = (v71 - v62 + v142 + v137) / v88;
        if v312 * v312 < v98 then
            local v313 = v72 + v143 + v139 - v312 * v91;
            if v313 * v313 < v133 then
                local v314 = v73 + v141 + v135 - v312 * v94;
                if v314 * v314 < v134 then
                    return true;
                end;
            end;
        end;
        local v315 = (v71 + v62 + v142 + v137) / v88;
        if v315 * v315 < v98 then
            local v316 = v72 + v143 + v139 - v315 * v91;
            if v316 * v316 < v133 then
                local v317 = v73 + v141 + v135 - v315 * v94;
                if v317 * v317 < v134 then
                    return true;
                end;
            end;
        end;
        local v318 = (v71 - v62 - v142 + v137) / v88;
        if v318 * v318 < v98 then
            local v319 = v72 - v143 + v139 - v318 * v91;
            if v319 * v319 < v133 then
                local v320 = v73 - v141 + v135 - v318 * v94;
                if v320 * v320 < v134 then
                    return true;
                end;
            end;
        end;
        local v321 = (v71 + v62 - v142 + v137) / v88;
        if v321 * v321 < v98 then
            local v322 = v72 - v143 + v139 - v321 * v91;
            if v322 * v322 < v133 then
                local v323 = v73 - v141 + v135 - v321 * v94;
                if v323 * v323 < v134 then
                    return true;
                end;
            end;
        end;
        local v324 = (v71 - v62 + v142 - v137) / v88;
        if v324 * v324 < v98 then
            local v325 = v72 + v143 - v139 - v324 * v91;
            if v325 * v325 < v133 then
                local v326 = v73 + v141 - v135 - v324 * v94;
                if v326 * v326 < v134 then
                    return true;
                end;
            end;
        end;
        local v327 = (v71 + v62 + v142 - v137) / v88;
        if v327 * v327 < v98 then
            local v328 = v72 + v143 - v139 - v327 * v91;
            if v328 * v328 < v133 then
                local v329 = v73 + v141 - v135 - v327 * v94;
                if v329 * v329 < v134 then
                    return true;
                end;
            end;
        end;
        local v330 = (v71 - v62 - v142 - v137) / v88;
        if v330 * v330 < v98 then
            local v331 = v72 - v143 - v139 - v330 * v91;
            if v331 * v331 < v133 then
                local v332 = v73 - v141 - v135 - v330 * v94;
                if v332 * v332 < v134 then
                    return true;
                end;
            end;
        end;
        local v333 = (v71 + v62 - v142 - v137) / v88;
        if v333 * v333 < v98 then
            local v334 = v72 - v143 - v139 - v333 * v91;
            if v334 * v334 < v133 then
                local v335 = v73 - v141 - v135 - v333 * v94;
                if v335 * v335 < v134 then
                    return true;
                end;
            end;
        end;
        local v336 = (v72 - v63 + v143 + v139) / v91;
        if v336 * v336 < v98 then
            local v337 = v73 + v141 + v135 - v336 * v94;
            if v337 * v337 < v134 then
                local v338 = v71 + v142 + v137 - v336 * v88;
                if v338 * v338 < v132 then
                    return true;
                end;
            end;
        end;
        local v339 = (v72 + v63 + v143 + v139) / v91;
        if v339 * v339 < v98 then
            local v340 = v73 + v141 + v135 - v339 * v94;
            if v340 * v340 < v134 then
                local v341 = v71 + v142 + v137 - v339 * v88;
                if v341 * v341 < v132 then
                    return true;
                end;
            end;
        end;
        local v342 = (v72 - v63 - v143 + v139) / v91;
        if v342 * v342 < v98 then
            local v343 = v73 - v141 + v135 - v342 * v94;
            if v343 * v343 < v134 then
                local v344 = v71 - v142 + v137 - v342 * v88;
                if v344 * v344 < v132 then
                    return true;
                end;
            end;
        end;
        local v345 = (v72 + v63 - v143 + v139) / v91;
        if v345 * v345 < v98 then
            local v346 = v73 - v141 + v135 - v345 * v94;
            if v346 * v346 < v134 then
                local v347 = v71 - v142 + v137 - v345 * v88;
                if v347 * v347 < v132 then
                    return true;
                end;
            end;
        end;
        local v348 = (v72 - v63 + v143 - v139) / v91;
        if v348 * v348 < v98 then
            local v349 = v73 + v141 - v135 - v348 * v94;
            if v349 * v349 < v134 then
                local v350 = v71 + v142 - v137 - v348 * v88;
                if v350 * v350 < v132 then
                    return true;
                end;
            end;
        end;
        local v351 = (v72 + v63 + v143 - v139) / v91;
        if v351 * v351 < v98 then
            local v352 = v73 + v141 - v135 - v351 * v94;
            if v352 * v352 < v134 then
                local v353 = v71 + v142 - v137 - v351 * v88;
                if v353 * v353 < v132 then
                    return true;
                end;
            end;
        end;
        local v354 = (v72 - v63 - v143 - v139) / v91;
        if v354 * v354 < v98 then
            local v355 = v73 - v141 - v135 - v354 * v94;
            if v355 * v355 < v134 then
                local v356 = v71 - v142 - v137 - v354 * v88;
                if v356 * v356 < v132 then
                    return true;
                end;
            end;
        end;
        local v357 = (v72 + v63 - v143 - v139) / v91;
        if v357 * v357 < v98 then
            local v358 = v73 - v141 - v135 - v357 * v94;
            if v358 * v358 < v134 then
                local v359 = v71 - v142 - v137 - v357 * v88;
                if v359 * v359 < v132 then
                    return true;
                end;
            end;
        end;
        return false;
    else
        return v37;
    end;
end;
l_components_0 = setmetatable;
local l_components_1 = CFrame.new().components;
local l_FindPartsInRegion3WithIgnoreList_0 = Workspace.FindPartsInRegion3WithIgnoreList;
local l_unpack_0 = unpack;
local l_type_0 = type;
local l_IsA_0 = game.IsA;
local l_new_0 = Region3.new;
local l_new_1 = Vector3.new;
local function v387(v367, v368)
    local v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380 = l_components_1(v367);
    local v381 = v368.x / 2;
    local v382 = v368.y / 2;
    local v383 = v368.z / 2;
    local v384 = v381 * (v372 < 0 and -v372 or v372) + v382 * (v373 < 0 and -v373 or v373) + v383 * (v374 < 0 and -v374 or v374);
    local v385 = v381 * (v375 < 0 and -v375 or v375) + v382 * (v376 < 0 and -v376 or v376) + v383 * (v377 < 0 and -v377 or v377);
    local v386 = v381 * (v378 < 0 and -v378 or v378) + v382 * (v379 < 0 and -v379 or v379) + v383 * (v380 < 0 and -v380 or v380);
    return l_new_0(l_new_1(v369 - v384, v370 - v385, v371 - v386), (l_new_1(v369 + v384, v370 + v385, v371 + v386)));
end;
local function v395(v388, v389)
    local v390 = l_type_0(v389) == "table" and v389 or {
        v389
    };
    local v391 = #v390;
    while true do
        local v392 = l_FindPartsInRegion3WithIgnoreList_0(Workspace, v388, v390, 100);
        local v393 = #v390;
        for v394 = 1, #v392 do
            v390[v393 + v394] = v392[v394];
        end;
        if not (#v392 >= 100) then
            break;
        end;
    end;
    return {
        l_unpack_0(v390, v391 + 1, #v390)
    };
end;
local function v398(v396, v397)
    return v1(v396.CFrame, v396.Size, v397);
end;
local function v402(v399, v400, v401)
    return l_pointToObjectSpace_0(v399.CFrame, v399.Size, v400, v401);
end;
local function v406(v403, v404, v405)
    return l_pointToObjectSpace_1(v403.CFrame, v403.Size, v404, v405);
end;
local function v409(v407, v408)
    return (not l_IsA_0(v408, "Part") or v408.Shape == "Block") and l_pointToObjectSpace_1(v407.CFrame, v407.Size, v408.CFrame, v408.Size) or l_pointToObjectSpace_0(v407.CFrame, v407.Size, v408.Position, v408.Size.x);
end;
local function v415(v410, v411)
    local v412 = {};
    for v413 = 1, #v411 do
        local v414 = v411[v413];
        if (not l_IsA_0(v414, "Part") or v414.Shape == "Block") and l_pointToObjectSpace_1(v410.CFrame, v410.Size, v414.CFrame, v414.Size) or l_pointToObjectSpace_0(v410.CFrame, v410.Size, v414.Position, v414.Size.x) then
            v412[#v412 + 1] = v411[v413];
        end;
    end;
    return v412;
end;
local function v422(v416, v417)
    local v418 = {};
    local v419 = v395(v416.Region3, v417);
    for v420 = 1, #v419 do
        local v421 = v419[v420];
        if (not l_IsA_0(v421, "Part") or v421.Shape == "Block") and l_pointToObjectSpace_1(v416.CFrame, v416.Size, v421.CFrame, v421.Size) or l_pointToObjectSpace_0(v416.CFrame, v416.Size, v421.Position, v421.Size.x) then
            v418[#v418 + 1] = v419[v420];
        end;
    end;
    return v418;
end;
local function v429(v423, v424)
    local v425 = {
        CFrame = v423, 
        Size = v424, 
        Region3 = v387(v423, v424), 
        Cast = v422, 
        CastPart = v409, 
        CastParts = v415, 
        CastPoint = v398, 
        CastSphere = v402, 
        CastBox = v406
    };
    return (l_components_0({}, {
        __index = v425, 
        __newindex = function(_, v427, v428)
            v425[v427] = v428;
            v425.Region3 = v387(v425.CFrame, v425.Size);
        end
    }));
end;
v0.Region3BoundingBox = v387;
v0.FindAllPartsInRegion3 = v395;
v0.BoxPointCollision = v1;
v0.BoxSphereCollision = l_pointToObjectSpace_0;
v0.BoxCollision = l_pointToObjectSpace_1;
v0.new = v429;
v0.FromPart = function(v430)
    return (v429(v430.CFrame, v430.Size));
end;
return v0;
