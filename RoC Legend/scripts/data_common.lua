--
-- Please see the license.html file included with this distribution for
-- attribution and copyright information.
--

-- Abilities (database names)
abilities = {
	"strength",
	"constitution",
	"dexterity",
	"intelligence",
	"wisdom",
	"charisma"
};

ability_ltos = {
	["strength"] = "STR",
	["constitution"] = "CON",
	["dexterity"] = "DEX",
	["intelligence"] = "INT",
	["wisdom"] = "WIS",
	["charisma"] = "CHA"
};

ability_stol = {
	["STR"] = "strength",
	["CON"] = "constitution",
	["DEX"] = "dexterity",
	["INT"] = "intelligence",
	["WIS"] = "wisdom",
	["CHA"] = "charisma"
};

abilities_abbrv = {
	"Str",
	"Dex",
	"Con",
	"Int",
	"Wis",
	"Cha"
};

-- Values for wound comparison
healthstatusfull = "healthy";
healthstatushalf = "bloodied";
healthstatuswounded = "wounded";

-- Values for alignment comparison
alignment_lawchaos = {
	["lawful"] = 1,
	["chaotic"] = 3,
	["lg"] = 1,
	["ln"] = 1,
	["le"] = 1,
	["cg"] = 3,
	["cn"] = 3,
	["ce"] = 3,
};
alignment_goodevil = {
	["good"] = 1,
	["evil"] = 3,
	["lg"] = 1,
	["le"] = 3,
	["ng"] = 1,
	["ne"] = 3,
	["cg"] = 1,
	["ce"] = 3,
};
alignment_neutral = "n";

-- Values for size comparison
creaturesize = {
	["tiny"] = 1,
	["small"] = 2,
	["medium"] = 3,
	["large"] = 4,
	["huge"] = 5,
	["gargantuan"] = 6,
	["T"] = 1,
	["S"] = 2,
	["M"] = 3,
	["L"] = 4,
	["H"] = 5,
	["G"] = 6,
};

-- Values for creature type comparison
creaturedefaultorigin = "natural";
creaturedefaulttype = "humanoid";
creatureorigin = {
	"aberrant",
	"elemental",
	"fey",
	"immortal",
	"natural",
	"shadow",
};
creaturetype = {
	"animate",
	"beast",
	"humanoid",
	"magical beast",
};
creaturesubtype = {
	"air", -- Monster subtypes
	"angel",
	"aquatic",
	"cold",
	"construct",
	"demon",
	"devil",
	"dragon",
	"earth",
	"fire",
	"giant",
	"homunculus",
	"living construct",
	"mount",
	"ooze",
	"plant",
	"reptile",
	"shapechanger",
	"spider",
	"swarm",
	"undead",
	"water",
};

-- Values supported in effect conditionals
conditionaltags = {
};

-- Conditions supported in power descriptions and effect conditionals
-- NOTE: Skipped concealment and cover since there are too many false positives in power descriptions
conditionsparse = {
	"blinded",
	"dazed",
	"deafened",
	"dominated",
	"grabbed",
	"immobilized",
	"insubstantial",
	"invisible",
	"marked",
	"petrified",
	"phasing",
	"prone",
	"restrained",
	"slowed",
	"stunned",
	"swallowed",
	"unconscious",
	"weakened"
};

conditions = {
	"balancing",
	"blinded",
	"climbing",
	"dazed",
	"deafened",
	"dominated",
	"grabbed",
	"helpless",
	"immobilized",
	"insubstantial",
	"invisible",
	"marked",
	"petrified",
	"phasing",
	"prone",
	"restrained",
	"running",
	"slowed",
	"squeezing",
	"stunned",
	"surprised",
	"swallowed",
	"unconscious",
	"weakened"
};

-- Bonus/penalty effect types for token widgets
bonuscomps = {
	"INIT",
	"ABIL",
	"DEF",
	"AC",
	"FORT",
	"REF",
	"WILL",
	"ATK",
	"DMG",
	"DMGW",
	"HEAL",
	"SAVE",
	"SKILL"
};

-- Condition effect types for token widgets
condcomps = {
	["blinded"] = "cond_blinded",
	["dazed"] = "cond_dazed",
	["deafened"] = "cond_deafened",
	["dominated"] = "cond_charmed",
	["grabbed"] = "cond_grappled",
	["helpless"] = "cond_helpless",
	["immobilized"] = "cond_restrained",
	["insubstantial"] = "cond_incorporeal",
	["invisible"] = "cond_invisible",
	["marked"] = "cond_marked",
	["petrified"] = "cond_paralyzed",
	["prone"] = "cond_prone",
	["restrained"] = "cond_restrained",
	["slowed"] = "cond_slowed",
	["stunned"] = "cond_stunned",
	["surprised"] = "cond_surprised",
	["unconscious"] = "cond_unconscious",
	["weakened"] = "cond_weakened",
	-- Similar to conditions
	["ca"] = "cond_advantage",
	["grantca"] = "cond_disadvantage",
	["conc"] = "cond_conceal",
	["tconc"] = "cond_conceal",
	["cover"] = "cond_cover",
	["scover"] = "cond_cover",
};

-- Other visible effect types for token widgets
othercomps = {
	["CONC"] = "cond_conceal",
	["TCONC"] = "cond_conceal",
	["COVER"] = "cond_cover",
	["SCOVER"] = "cond_cover",
	["IMMUNE"] = "cond_immune",
	["RESIST"] = "cond_resistance",
	["VULN"] = "cond_vulnerable",
	["REGEN"] = "cond_regeneration",
	["DMGO"] = "cond_bleed",
	["SWARM"] = "cond_swarm",
};

-- Effect components which can be targeted
targetableeffectcomps = {
	"CONC",
	"TCONC",
	"COVER",
	"SCOVER",
	"DEF",
	"AC",
	"FORT",
	"REF",
	"WILL",
	"ATK",
	"DMG",
	"IMMUNE",
	"VULN",
	"RESIST"
};

-- Range types supported in power descriptions
rangetypes = {
	"melee",
	"ranged",
	"close",
	"area"
};

-- Damage types supported in power descriptions
dmgtypes = {
	"acid",
	"cold",
	"fire",
	"force",
	"lightning",
	"necrotic",
	"poison",
	"psychic",
	"radiant",
	"thunder",
	"critical", -- SPECIAL DAMAGE TYPES
};

-- Bonus types supported in power descriptions
bonustypes = {
	"racial",
	"power",
	"feat",
	"shield",
	"item",
	"proficiency",
	"enhancement"
};

-- Immunity types supported which are not energy types
immunetypes = {
	"charm",
	"disease",
	"fear",
	"gaze",
	"illusion",
	"petrification",
	"prone",
	"push",
	"pull",
	"sleep",
	"slide"
};

-- Skills supported in power descriptions
skills = {
	"acrobatics",
	"arcana",
	"athletics",
	"bluff",
	"diplomacy",
	"dungeoneering",
	"endurance",
	"heal",
	"history",
	"insight",
	"intimidate",
	"nature",
	"perception",
	"religion",
	"stealth",
	"streetwise",
	"thievery"
};

-- Skill properties
skilldata = {
	["Acrobatics"] = {
			skill_group = "P",
			stat = "dexterity"
		},
	["Athletics"] = {
			skill_group = "P",
			stat = "strength"
		},
	["Larceny"] = {
			skill_group = "P",
			stat = "dexterity"
		},
	["Stealth"] = {
			skill_group = "P",
			stat = "dexterity"
		},
	["Ride"] = {
			skill_group = "P",
			stat = "dexterity"
		},
	["Vigor"] = {
			skill_group = "P",
			stat = "constitution"
		},
	["Arcana"] = {
			skill_group = "K",
			stat = "intelligence"
		},
	["Engineering"] = {
			skill_group = "K",
			stat = "intelligence"
		},
	["Geography"] = {
			skill_group = "K",
			stat = "intelligence"
		},
	["History"] = {
			skill_group = "K",
			stat = "intelligence"
		},
	["Medicine"] = {
			skill_group = "K",
			stat = "intelligence"
		},
	["Nature"] = {
			skill_group = "K",
			stat = "intelligence"
		},
	["Bluff"] = {
			skill_group = "I",
			stat = "charisma"
		},
	["Diplomacy"] = {
			skill_group = "I",
			stat = "charisma"
		},
	["Intimidate"] = {
			skill_group = "I",
			stat = "charisma"
		},
	["Perception"] = {
			skill_group = "I",
			stat = "wisdom"
		}
};

-- Party sheet drop down list data
psabilitydata = {
	"Strength",
	"Constitution",
	"Dexterity",
	"Intelligence",
	"Wisdom",
	"Charisma"
};

psskilldata = {
	"Perception",
	"Arcana",
	"History",
	"Nature",
	"Bluff",
	"Diplomacy",
	"Intimidate",
	"Acrobatics",
	"Athletics",
	"Stealth",
	"Larceny",
	"Ride",
	"Vigor",
	"Engineering",
	"Geography",
	"Medicine"
};
