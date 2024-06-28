

--REQUIRES REPENTOGON TO WORK
if not REPENTANCE then return end

GSA_MOD = RegisterMod("thebindingofGSA", 1)
local mod = GSA_MOD

--callbacks include:
local postPickupInit = require("scripts.callbacks.post_pickup_init")
local postPickupMorph = require("scripts.callbacks.post_pickup_morph");
local prePickupMorph = require("scripts.callbacks.pre_pickup_morph");
local postPlayerUpdate = require("scripts.callbacks.post_player_update");
local postPlayerInit = require("scripts.callbacks.post_player_init");
local postTearUpdate = require("scripts.callbacks.post_tear_update");
local postProjectileInit = require("scripts.callbacks.post_projectile_init");
local useItem = require("scripts.callbacks.use_item");

--callbacks init:
postPickupInit(mod)
postPickupMorph(mod)
prePickupMorph(mod)
--postPlayerInit(mod)
postPlayerUpdate(mod)
postTearUpdate(mod)
postProjectileInit(mod)
useItem(mod)

--local Kimel = require("scripts.characters.kimel")
--local Hikkof = require("scripts.characters.hikkof")
--local Adam = require("scripts.characters.adam")
--local Patryk = require("scripts.characters.patryk")

--mod:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, Kimel.PostPickupInit)

--[[
local evaluateCache = require("scripts.callbacks.evaluate_cache")
local postPlayerInit = require("scripts.callbacks.post_player_init")
local postPlayerUpdate = require("scripts.callbacks.post_player_update")

local postPickupInit = require("scripts.callbacks.post_pickup_init")

local postTearInit = require("scripts.callbacks.post_tear_init")
local postTearUpdate = require("scripts.callbacks.post_tear_update")
local preTearCollision = require("scripts.callbacks.pre_tear_collision")
local postLaserInit = require("scripts.callbacks.post_laser_init")
local postLaserUpdate = require("scripts.callbacks.post_laser_update")
local postKnifeInit = require("scripts.callbacks.post_knife_init")
local postKnifeUpdate = require("scripts.callbacks.post_knife_update")
local postBombInit = require("scripts.callbacks.post_bomb_init")
local postBombUpdate = require("scripts.callbacks.post_bomb_update")
local postEffectInit = require("scripts.callbacks.post_effect_init")
local postEffectUpdate = require("scripts.callbacks.post_effect_update")
local postUpdate = require("scripts.callbacks.post_update")

local postPeffectUpdate = require("scripts.callbacks.post_peffect_update")
local postPlayerRender = require("scripts.callbacks.post_player_render")

local inputAction = require("scripts.callbacks.input_action")
local entityTakeDamage = require("scripts.callbacks.entity_take_damage")

local postEntityKill = require("scripts.callbacks.post_entity_kill")
local postNPCDeath = require("scripts.callbacks.post_npc_death")

--UNUSED
--local preKnifeCollision = require("scripts.callbacks.pre_knife_collision")
--local preNPCCollision = require("scripts.callbacks.pre_npc_collision")
--local postEffectRender = require("scripts.callbacks.post_effect_render")

--THIS IS ACTUALLY USED FOR CHECKING PLAYER INPUT, AND NOT FOR RENDERING
--UNUSED!!!!!!
--local postRender = require("scripts.callbacks.post_render")

--Callbacks (yes, every module is initialized to just simply gives callbacks where needed)
--it is purely to do not keep everything in main
evaluateCache(mod)
postPlayerInit(mod)
postPlayerUpdate(mod)

postPickupInit(mod)

postTearInit(mod)
postTearUpdate(mod)
preTearCollision(mod)
postLaserInit(mod)
postLaserUpdate(mod)
postKnifeInit(mod)
postKnifeUpdate(mod)
postBombInit(mod)
postBombUpdate(mod)
postEffectInit(mod)
postEffectUpdate(mod)
postUpdate(mod)
postPeffectUpdate(mod)

inputAction(mod)
entityTakeDamage(mod)
--preNPCCollision(mod)

postEntityKill(mod)
postNPCDeath(mod)

postPlayerRender(mod)
]]--