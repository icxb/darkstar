-----------------------------------------
-- ID: 4343
-- Item: witch_kabob
-- Food Effect: 1hour, All Races
-----------------------------------------
-- Magic Points 15
-- Mind 4
-- Enmity -1
-- MP Recovered While Healing 3
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
local result = 0;
    if (target:hasStatusEffect(EFFECT_FOOD) == true or target:hasStatusEffect(EFFECT_FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
    target:addStatusEffect(EFFECT_FOOD,0,0,3600,4343);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_MP, 15);
    target:addMod(MOD_MND, 4);
    target:addMod(MOD_ENMITY, -1);
    target:addMod(MOD_MPHEAL, 3);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
    target:delMod(MOD_MP, 15);
    target:delMod(MOD_MND, 4);
    target:delMod(MOD_ENMITY, -1);
    target:delMod(MOD_MPHEAL, 3);
end;
