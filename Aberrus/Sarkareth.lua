if select(4, GetBuildInfo()) < 100100 then return end -- not 10.1

--------------------------------------------------------------------------------
-- Module Declaration
--

local mod, CL = BigWigs:NewBoss("Scalecommander Sarkareth", 2569, 2520)
if not mod then return end
mod:RegisterEnableMob(205319) -- Sarkareth XXX Confirm on raid release
mod:SetEncounterID(2685)
mod:SetRespawnTime(30)
mod:SetStage(1)

--------------------------------------------------------------------------------
-- Locals
--

-- Stage One: The Legacy of the Dracthyr
local opressingHowlCount = 1
local glitteringSurgeCount = 1
local bombCount = 1
local massDisintergrateCount = 1
local breathCount = 1
local clawsCount = 1

-- Stage Two: A Touch of the Forbidden
local mobCollector = {}
local marksUsed = {}
local desolateBlossomCount = 1
local infiniteDuressCount = 1

-- Stage Three: The Seas of Infinity
local cosmicAscensionCount = 1
local hurtlingBarrageCount = 1
local scouringEternityCount = 1
local embraceOfNothingnessCount = 1

--------------------------------------------------------------------------------
-- Localization
--

local L = mod:GetLocale()
if L then
	-- General
	L.claws = "Tank Debuff" -- (Stage 1) Burning Claws / (Stage 2) Void Claws / (Stage 3) Void Slash

	-- Stage One: The Legacy of the Dracthyr
	L.oppressing_howl = mod:SpellName(401383) -- Opressing Howl
	L.glittering_surge = mod:SpellName(401810) -- Glittering Surge
	L.mass_disintergrate = mod:SpellName(401642) -- Mass Disintegrate
	L.mass_disintergrate_single = mod:SpellName(356995) -- Disintegrate

	-- Stage Two: A Touch of the Forbidden
	L.desolate_blossom = mod:SpellName(404403) -- Desolate Blossom
	L.infinite_duress = mod:SpellName(404288) -- Infinite Duress

	-- Stage Three: The Seas of Infinity
	L.cosmic_ascension = mod:SpellName(403771) -- Cosmic Ascension
	L.hurtling_barrage = mod:SpellName(405022) -- Hurtling Barrage
	L.scouring_eternity = mod:SpellName(403625) -- Scouring Eternity
	L.embrace_of_nothingness = mod:SpellName(403517) -- Embrace of Nothingness
end

--------------------------------------------------------------------------------
-- Initialization
--

local massDisintergrateMarker = mod:AddMarkerOption(true, "player", 1, 401680, 1, 2, 3, 4) -- Mass Disintegrate
local nullGlimmerMarker = mod:AddMarkerOption(false, "npc", 8, -26675, 8, 7, 6, 5) -- Null Glimmer
local infiniteDuressMarker = mod:AddMarkerOption(true, "player", 1, 404288, 1, 2) -- Infinite Duress
function mod:GetOptions()
	return {
		-- General
		401951, -- Oblivion
		401215, -- Emptiness Between Stars
		403997, -- Mind Fragment
		407576, -- Astral Flare
		-- Stage One: The Legacy of the Dracthyr
		401383, -- Opressing Howl
		401810, -- Glittering Surge
		401500, -- Scorching Bomb
		406989, -- Burning Ground
		{401680, "SAY", "SAY_COUNTDOWN"}, -- Mass Disintegrate
		massDisintergrateMarker,
		402050, -- Searing Breath
		401330, -- Burning Claws
		-- Stage Two: A Touch of the Forbidden
		404027, -- Void Bomb
		404456, -- Abyssal Breath
		nullGlimmerMarker,
		404754, -- Blasting Scream
		404403, -- Desolate Blossom
		{404288, "SAY", "SAY_COUNTDOWN", "ME_ONLY_EMPHASIZE"}, -- Infinite Duress
		infiniteDuressMarker,
		411241, -- Void Claws
		-- Stage Three: The Seas of Infinity
		403771, -- Cosmic Ascension
		405022, -- Hurtling Barrage
		403625, -- Scouring Eternity
		408429, -- Void Slash
	},{
		[401951] = "general",
		[401383] = -26140, -- Stage One: The Legacy of the Dracthyr
		[404027] = -26142, -- Stage Two: A Touch of the Forbidden
		[403771] = -26145, -- Stage Three: The Seas of Infinity
	}
end

function mod:OnBossEnable()
	-- General
	self:Log("SPELL_AURA_APPLIED", "OblivionApplied", 401951)
	self:Log("SPELL_AURA_APPLIED_DOSE", "OblivionApplied", 401951)
	self:Log("SPELL_AURA_APPLIED", "EmptinessBetweenStarsApplied", 401215)
	self:Log("SPELL_AURA_REMOVED", "EmptinessBetweenStarsRemoved", 401215)
	self:Log("SPELL_AURA_APPLIED", "MindFragmentApplied", 403997)
	self:Log("SPELL_AURA_APPLIED_DOSE", "MindFragmentApplied", 403997)
	self:Log("SPELL_AURA_APPLIED", "AstralFlareApplied", 407576)
	self:Log("SPELL_AURA_APPLIED_DOSE", "AstralFlareApplied", 407576)

	-- Ground Effects
	self:Log("SPELL_AURA_APPLIED", "GroundDamage", 406989) -- Burning Ground
	self:Log("SPELL_PERIODIC_DAMAGE", "GroundDamage", 406989)
	self:Log("SPELL_PERIODIC_MISSED", "GroundDamage", 406989)

	-- Stage One: The Legacy of the Dracthyr
	self:Log("SPELL_CAST_START", "OppressingHowl", 401383)
	self:Log("SPELL_CAST_START", "GlitteringSurge", 401810)
	self:Log("SPELL_CAST_START", "ScorchingBomb", 401500)
	self:Log("SPELL_CAST_START", "MassDisintegrate", 401642)
	self:Log("SPELL_AURA_APPLIED", "MassDisintegrateApplied", 401680)
	self:Log("SPELL_AURA_REMOVED", "MassDisintegrateRemoved", 401680)
	self:Log("SPELL_CAST_START", "SearingBreath", 402050)
	self:Log("SPELL_CAST_START", "BurningClaws", 401325)
	self:Log("SPELL_AURA_APPLIED", "BurningClawsApplied", 401330)
	self:Log("SPELL_AURA_REMOVED", "BurningClawsRemoved", 401330)

	-- Stage Two: A Touch of the Forbidden
	self:Log("SPELL_CAST_START", "VoidBomb", 404027)
	self:Log("SPELL_CAST_START", "AbyssalBreath", 404456)
	self:Log("SPELL_CAST_START", "BlastingScream", 404754)
	self:Log("SPELL_CAST_START", "DesolateBlossom", 404403)
	self:Log("SPELL_CAST_START", "InfiniteDuressStart", 404288)
	self:Log("SPELL_CAST_SUCCESS", "InfiniteDuressSuccess", 404288)
	self:Log("SPELL_AURA_APPLIED", "InfiniteDuressApplied", 404288)
	self:Log("SPELL_AURA_REMOVED", "InfiniteDuressRemoved", 404288)
	self:Log("SPELL_CAST_START", "VoidClaws", 411236)
	self:Log("SPELL_AURA_APPLIED", "VoidClawsApplied", 411241)
	self:Log("SPELL_AURA_REMOVED", "VoidClawsRemoved", 411241)

	-- Stage Three: The Seas of Infinity
	self:Log("SPELL_CAST_START", "CosmicAscension", 403771)
	self:Log("SPELL_CAST_START", "HurtlingBarrage", 405022)
	self:Log("SPELL_CAST_START", "ScouringEternity", 403625)
	self:Log("SPELL_CAST_START", "VoidSlash", 408422)
	self:Log("SPELL_AURA_APPLIED", "VoidSlashApplied", 408429)
	self:Log("SPELL_AURA_REMOVED", "VoidSlashRemoved", 408429)
end

function mod:OnEngage()
	self:SetStage(1)
	mobCollector = {}
	marksUsed = {}

	opressingHowlCount = 1
	glitteringSurgeCount = 1
	bombCount = 1
	massDisintergrateCount = 1
	breathCount = 1
	clawsCount = 1


	if self:GetOption(nullGlimmerMarker) then
		self:RegisterTargetEvents("AddMarking")
	end
end

--------------------------------------------------------------------------------
-- Event Handlers
--

-- General
function mod:OblivionApplied(args)
	if self:Me(args.destGUID) then
		local amount = args.amount or 1
		if amount % 3 == 0 then -- 3, 6, 9 (You go inside at 10)
			self:StackMessage(args.spellId, "blue", args.destName, args.amount, 1)
			self:PlaySound(args.spellId, amount > 8 and "warning" or "info")
		end
	end
end

function mod:EmptinessBetweenStarsApplied(args)
	if self:Me(args.destGUID) then
		self:PersonalMessage(args.spellId)
		self:PlaySound(args.spellId, "long")
		self:TargetBar(args.spellId, self:Easy() and 25 or 20, args.destName)
	end
end

function mod:EmptinessBetweenStarsRemoved(args)
	if self:Me(args.destGUID) then
		self:Message(args.spellId, "green", CL.removed:format(args.spellName))
		self:PlaySound(args.spellId, "info")
		self:StopBar(args.spellId, args.destName)
	end
end

function mod:MindFragmentApplied(args)
	if self:Me(args.destGUID) then
		if (args.amount or 1) < 3 then -- You leave on 3, dont want double warnings
			self:StackMessage(args.spellId, "blue", args.destName, args.amount, 1)
			self:PlaySound(args.spellId, "info")
		end
	end
end

function mod:AstralFlareApplied(args)
	if self:Me(args.destGUID) then
		local amount = args.amount or 1
		if amount % 2 == 0 then -- 2, 4, 6...
			self:StackMessage(args.spellId, "blue", args.destName, amount, 1)
			self:PlaySound(args.spellId, amount > 8 and "warning" or "info")
		end
	end
end

do
	local prev = 0
	function mod:GroundDamage(args)
		if self:Me(args.destGUID) then
			local t = args.time
			if t-prev > 2 then
				prev = t
				self:PlaySound(args.spellId, "underyou")
				self:PersonalMessage(args.spellId, "underyou")
			end
		end
	end
end

-- Stage One: The Legacy of the Dracthyr
function mod:OppressingHowl(args)
	self:StopBar(CL.count:format(L.oppressing_howl, opressingHowlCount))
	self:Message(args.spellId, "yellow", CL.count:format(L.oppressing_howl, opressingHowlCount))
	self:PlaySound(args.spellId, "alert")
	opressingHowlCount = opressingHowlCount + 1
	--self:Bar(args.spellId, 0, CL.count:format(L.oppressing_howl, opressingHowlCount))
end

function mod:GlitteringSurge(args)
	self:StopBar(CL.count:format(L.glittering_surge, glitteringSurgeCount))
	self:Message(args.spellId, "red", CL.count:format(L.glittering_surge, glitteringSurgeCount))
	self:PlaySound(args.spellId, "warning")
	glitteringSurgeCount = glitteringSurgeCount + 1
	--self:Bar(args.spellId, 0, CL.count:format(L.glittering_surge, glitteringSurgeCount))
end

function mod:ScorchingBomb(args)
	self:StopBar(CL.count:format(CL.bombs, bombCount))
	self:Message(args.spellId, "orange", CL.count:format(CL.bombs, bombCount))
	self:PlaySound(args.spellId, "alert")
	bombCount = bombCount + 1
	--self:Bar(args.spellId, 0, CL.count:format(CL.bombs, bombCount))
end

do
	local playerList = {}
	function mod:MassDisintegrate(args)
		self:StopBar(CL.count:format(L.glittering_surge, massDisintergrateCount))
		self:Message(401680, "cyan", CL.count:format(L.glittering_surge, massDisintergrateCount))
		self:PlaySound(401680, "info")
		massDisintergrateCount = massDisintergrateCount + 1
		--self:Bar(401680, 0, CL.count:format(L.glittering_surge, massDisintergrateCount))

		playerList = {}
	end

	function mod:MassDisintegrateApplied(args)
		local count = #playerList+1
		playerList[count] = args.destName
		if self:Me(args.destGUID) then
			self:PersonalMessage(args.spellId, nil, L.mass_disintergrate_single)
			self:PlaySound(args.spellId, "warning")
			self:Say(args.spellId, CL.rticon:format(L.mass_disintergrate_single, count))
			self:SayCountdown(args.spellId, 6, count)
		end
		self:CustomIcon(massDisintergrateMarker, args.destName, count)
	end

	function mod:MassDisintegrateRemoved(args)
		if self:Me(args.destGUID) then
			self:CancelSayCountdown(args.spellId)
		end
		self:CustomIcon(massDisintergrateMarker, args.destName)
	end
end

function mod:SearingBreath(args)
	self:StopBar(CL.count:format(CL.breath, breathCount))
	self:Message(args.spellId, "red", CL.count:format(CL.breath, breathCount))
	self:PlaySound(args.spellId, "alert")
	breathCount = breathCount + 1
	--self:Bar(args.spellId, 0, CL.count:format(CL.breath, breathCount))
end

do
	local tankTimers = {}
	function mod:BurningClaws(args)
		self:StopBar(CL.count:format(L.claws, clawsCount))
		clawsCount = clawsCount + 1
		--self:Bar(401330, 0, CL.count:format(L.claws, clawsCount))
	end

	function mod:BurningClawsApplied(args)
		self:CancelTimer(tankTimers[args.destName])
		self:StopBar(L.claws, args.destName)
		if self:Tank() then
			self:StackMessage(args.spellId, "purple", args.destName, args.amount, 1, L.claws)
			local bossUnit = self:UnitTokenFromGUID(args.sourceGUID)
			if bossUnit and self:Tank() and not self:Me(args.destGUID) and not self:Tanking(bossUnit) then
				self:PlaySound(args.spellId, "warning") -- Taunt
			elseif self:Me(args.destGUID) then
				self:PlaySound(args.spellId, "alarm") -- On you
			end
		end
		-- Don't show the timer for the full 27s, only sub 10s
		tankTimers[args.destName] = self:ScheduleTimer("TargetBar", 17, args.spellId, 10, args.destName, L.claws)
	end

	function mod:BurningClawsRemoved(args)
		self:StopBar(L.claws, args.destName)
		self:CancelTimer(tankTimers[args.destName])
	end
end

-- Stage Two: A Touch of the Forbidden
function mod:VoidBomb(args)
	self:StopBar(CL.count:format(CL.bombs, bombCount))
	self:Message(args.spellId, "orange", CL.count:format(CL.bombs, bombCount))
	self:PlaySound(args.spellId, "alert")
	bombCount = bombCount + 1
	--self:Bar(args.spellId, 0, CL.count:format(CL.bombs, bombCount))
end

function mod:AbyssalBreath(args)
	self:StopBar(CL.count:format(CL.breath, breathCount))
	self:Message(args.spellId, "red", CL.count:format(CL.breath, breathCount))
	self:PlaySound(args.spellId, "alert")
	breathCount = breathCount + 1
	--self:Bar(args.spellId, 0, CL.count:format(CL.breath, breathCount))

	marksUsed = {}
end

function mod:AddMarking(_, unit, guid)
	if not mobCollector[guid] then
		local mobId = self:MobId(guid)
		if mobId == 202971 then -- Null Glimmer
			for i = 8, 5, -1 do -- 8, 7, 6, 5
				if not marksUsed[i] then
					mobCollector[guid] = true
					marksUsed[i] = guid
					self:CustomIcon(nullGlimmerMarker, unit, i)
					return
				end
			end
		end
	end
end

function mod:BlastingScream(args)
	local canDo, ready = self:Interrupter(args.sourceGUID)
	if canDo then
		self:Message(args.spellId, "orange")
		if ready then
			self:PlaySound(args.spellId, "alarm")
		end
	end
end

function mod:DesolateBlossom(args)
	self:StopBar(CL.count:format(L.desolate_blossom, desolateBlossomCount))
	self:Message(args.spellId, "yellow", CL.count:format(L.desolate_blossom, desolateBlossomCount))
	self:PlaySound(args.spellId, "alert")
	desolateBlossomCount = desolateBlossomCount + 1
	--self:Bar(args.spellId, 0, CL.count:format(L.desolate_blossom, desolateBlossomCount))
end


do
	local playerList, onMe = {}, false
	function mod:InfiniteDuressStart(args)
		playerList = {}
		onMe = false
		self:Message(args.spellId, "yellow", CL.incoming:format(L.infinite_duress))
	end

	local function onMeSound()
		if not onMe then
			mod:PlaySound(404288, "alert")
		end
	end

	function mod:InfiniteDuressSuccess(args)
		self:StopBar(CL.count:format(CL.bombs, infiniteDuressCount))
		infiniteDuressCount = infiniteDuressCount + 1
		--self:Bar(args.spellId, 0, CL.count:format(L.infinite_duress, infiniteDuressCount))
		self:SimpleTimer(onMeSound, 0.3)
	end

	function mod:InfiniteDuressApplied(args)
		local count = #playerList+1
		playerList[count] = args.destName
		playerList[args.destName] = count -- Set raid marker
		if self:Me(args.destGUID) then
			onMe = true
			self:TargetBar(args.spellId, 16, args.destName, L.infinite_duress)
			self:Say(args.spellId, L.infinite_duress)
			self:SayCountdown(args.spellId, 16)
			self:PlaySound(args.spellId, "warning")
		end
		self:TargetsMessage(args.spellId, "cyan", playerList, 2, L.infinite_duress)
		self:CustomIcon(infiniteDuressMarker, args.destName, count)
	end

	function mod:InfiniteDuressRemoved(args)
		if self:Me(args.destGUID) then
			self:StopBar(L.infinite_duress, args.destName)
			self:CancelSayCountdown(args.spellId)
		end
		self:CustomIcon(infiniteDuressMarker, args.destName)
	end
end

do
	local tankTimers = {}
	function mod:VoidClaws(args)
		self:StopBar(CL.count:format(L.claws, clawsCount))
		clawsCount = clawsCount + 1
		--self:Bar(411241, 0, CL.count:format(L.claws, clawsCount))
	end

	function mod:VoidClawsApplied(args)
		self:CancelTimer(tankTimers[args.destName])
		self:StopBar(L.claws, args.destName)
		if self:Tank() then
			self:StackMessage(args.spellId, "purple", args.destName, args.amount, 1, L.claws)
			local bossUnit = self:UnitTokenFromGUID(args.sourceGUID)
			if bossUnit and self:Tank() and not self:Me(args.destGUID) and not self:Tanking(bossUnit) then
				self:PlaySound(args.spellId, "warning") -- Taunt
			elseif self:Me(args.destGUID) then
				self:PlaySound(args.spellId, "alarm") -- On you
			end
		end
		-- Don't show the timer for the full 18s, only sub 10s
		tankTimers[args.destName] = self:ScheduleTimer("TargetBar", 8, args.spellId, 10, args.destName, L.claws)
	end

	function mod:VoidClawsRemoved(args)
		self:StopBar(L.claws, args.destName)
		self:CancelTimer(tankTimers[args.destName])
	end
end

-- Stage Three: The Seas of Infinity
function mod:CosmicAscension(args)
	self:StopBar(CL.count:format(L.cosmic_ascension, cosmicAscensionCount))
	self:Message(args.spellId, "red", CL.count:format(L.cosmic_ascension, cosmicAscensionCount))
	self:PlaySound(args.spellId, "alarm")
	cosmicAscensionCount = cosmicAscensionCount + 1
	--self:Bar(args.spellId, 0, CL.count:format(L.cosmic_ascension, cosmicAscensionCount))

	marksUsed = {}
end

function mod:HurtlingBarrage(args)
	self:StopBar(CL.count:format(L.hurtling_barrage, hurtlingBarrageCount))
	self:Message(args.spellId, "yellow", CL.count:format(L.hurtling_barrage, hurtlingBarrageCount))
	self:PlaySound(args.spellId, "alert")
	hurtlingBarrageCount = hurtlingBarrageCount + 1
	--self:Bar(args.spellId, 0, CL.count:format(L.hurtling_barrage, hurtlingBarrageCount))
end

function mod:ScouringEternity(args)
	self:StopBar(CL.count:format(L.scouring_eternity, scouringEternityCount))
	self:Message(args.spellId, "red", CL.count:format(L.scouring_eternity, scouringEternityCount))
	self:PlaySound(args.spellId, "warning")
	scouringEternityCount = scouringEternityCount + 1
	--self:Bar(args.spellId, 0, CL.count:format(L.scouring_eternity, scouringEternityCount))
end

do
	local tankTimers = {}
	function mod:VoidSlash(args)
		self:StopBar(CL.count:format(L.claws, clawsCount))
		clawsCount = clawsCount + 1
		--self:Bar(408422, 0, CL.count:format(L.claws, clawsCount))
	end

	function mod:VoidSlashApplied(args)
		self:CancelTimer(tankTimers[args.destName])
		self:StopBar(L.claws, args.destName)
		if self:Tank() then
			self:StackMessage(args.spellId, "purple", args.destName, args.amount, 1, L.claws)
			local bossUnit = self:UnitTokenFromGUID(args.sourceGUID)
			if bossUnit and self:Tank() and not self:Me(args.destGUID) and not self:Tanking(bossUnit) then
				self:PlaySound(args.spellId, "warning") -- Taunt
			elseif self:Me(args.destGUID) then
				self:PlaySound(args.spellId, "alarm") -- On you
			end
		end
		-- Don't show the timer for the full 21s, only sub 10s
		tankTimers[args.destName] = self:ScheduleTimer("TargetBar", 11, args.spellId, 10, args.destName, L.claws)
	end

	function mod:VoidSlashRemoved(args)
		self:StopBar(L.claws, args.destName)
		self:CancelTimer(tankTimers[args.destName])
	end
end
