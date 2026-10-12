function macros() {
#macro MANA_RECHARGE_FACTOR 0.005
#macro ADS_REWARDED_ENABLED true
#macro DISABLE_LEVELING 0

#macro SECOND_LENGTH 40
#macro ADS_REWARDED_AD_ID "ca-app-pub-3449005372449418/1468795116"
#macro ADS_APP_ID "ca-app-pub-3449005372449418~4781350593"
#macro ADS_AD_ID "ca-app-pub-3449005372449418/7973655999"
#macro URL_TWITTER  @"https://twitter.com/wizards_age"
#macro KOFI_URL "https://ko-fi.com/wizardsagestudios"
#macro GGS_APP_ID "638088923170"

#region IAP

#macro IAP_PREMIUM_KEY "premiumkey"

#endregion

#region LEADERBOARDS

#macro LEADERBOARD_MAIN "CgkIopDBiMkSEAIQAA"

#endregion

#region ACHIEVEMENTS

#macro ACH_FIRST_STEP "CgkIopDBiMkSEAIQAg"
#macro ACH_DUNGEONS_DEEP "CgkIopDBiMkSEAIQAw"
#macro ACH_CAVERNS_OLD "CgkIopDBiMkSEAIQBA"
#macro ACH_DUNGEON_MASTER "CgkIopDBiMkSEAIQBQ"

#endregion

#macro GUI_DEPTH -9998
#macro SHOT_DEPTH -9990
#macro GRID_SIZE 16
#macro HORN_SPEED 1
#macro DEPTH_GUI -9998
#macro Z_TERMINAL_VELOCITY -4
#macro DEBUG true
#macro LONG_TICK 800
#macro SHRUG_THRESHOLD 4
#macro SERF_JOB_RADIUS 120
#macro CRITICAL_MULTIPLIER 2
#macro CONSOLE_SPEED 220
#macro ANIMAL_ROAM_RANGE 200
#macro AUDIO_CHANNELS 6
#macro LONG_PRESS 20
#macro FPS_THRESHOLD 30
#macro OBJECT_TYPES_CUTOFF 10000
#macro disableDrawOutsideView true
#macro WARHORN_DISMISSAL_CUTOFF 18
#macro INTERACT_RANGE_MINIMUM 64
#macro PLAYER_OFFSET 48
#macro FACTION_NUETRAL 0
#macro PADDING 2

#macro MONSTERS_BEGIN Beetlerang
#macro MONSTERS_END Wyrm

	//COMBAT
#macro ATTACK_PREPARE_TIME 12 //Was 8

	//#macro Android:ONMOBILE true
#macro ONMOBILE false
#macro SFX_FALLOFF_REF 50
#macro SFX_FALLOFF_MAX 200
#macro SFX_FALLOFF_FACTOR 1
#macro GENERATION_CLEAR_DISTANCE 300
#macro PARRY_WINDOW 8
#macro FOOD_PER_FARM 2
#macro CONSUMPTION_RATE 0.25
#macro PIXELS_PER_FOOT 2
#macro MULTITOUCHES 3
#macro SOME_BULLSHIT false
#macro TICKS_TO_SECONDS 60
#macro RENDER_FOG false
#macro FOG_FACTOR 8
#macro DEFOG_RADIUS 120
#macro FOG_APPEARANCE_RADIUS 40
#macro BUILD_DISTANCE_MINIMUM 32
#macro LEVENGEN_GENERATE_MOUNTAINS false

	//PALETTE
#macro PAL_GREEN $179793
#macro NUM_SHOP_ITEMS 5

	global.upgrades[upgrades.hpUp,upgradeArray.level]=0;
	global.upgrades[upgrades.hpUp,upgradeArray.cost]=5;
	global.upgrades[upgrades.hpUp,upgradeArray.description]="Get  an  extra  Health  Orb!";
	global.upgrades[upgrades.hpUp,upgradeArray.buttonText]="Hp Max Up";
	global.upgrades[upgrades.hpUp,upgradeArray.buttonIcon]=spr_potions;

	global.upgrades[upgrades.hpRefill,upgradeArray.level]=-1;
	global.upgrades[upgrades.hpRefill,upgradeArray.cost]=3;
	global.upgrades[upgrades.hpRefill,upgradeArray.description]="Restore  all  health!";
	global.upgrades[upgrades.hpRefill,upgradeArray.buttonText]="Hp Fill";
	global.upgrades[upgrades.hpRefill,upgradeArray.buttonIcon]=spr_potions;
	
	global.upgrades[upgrades.mpUp,upgradeArray.level]=0;
	global.upgrades[upgrades.mpUp,upgradeArray.cost]=5;
	global.upgrades[upgrades.mpUp,upgradeArray.description]="Increases  MP  maximum.";
	global.upgrades[upgrades.mpUp,upgradeArray.buttonText]="Mp Max Up";
	global.upgrades[upgrades.mpUp,upgradeArray.buttonIcon]=spr_potions;
	
	global.upgrades[upgrades.shockSpell,upgradeArray.level]=-1;
	global.upgrades[upgrades.shockSpell,upgradeArray.cost]=10;
	global.upgrades[upgrades.shockSpell,upgradeArray.description]="Lightning-Orbs  protect  you  from  harm!";
	global.upgrades[upgrades.shockSpell,upgradeArray.buttonText]="Ltng Orbs";
	global.upgrades[upgrades.shockSpell,upgradeArray.buttonIcon]=spr_potions;
	
	global.upgrades[upgrades.mirrorImage,upgradeArray.level]=-1;
	global.upgrades[upgrades.mirrorImage,upgradeArray.cost]=10;
	global.upgrades[upgrades.mirrorImage,upgradeArray.description]="Duplicates  the  Caster!";
	global.upgrades[upgrades.mirrorImage,upgradeArray.buttonText]="Mirror";
	global.upgrades[upgrades.mirrorImage,upgradeArray.buttonIcon]=spr_potions;


	enum upgradeArray{
		level,
		cost,
		description,
		buttonIcon,
		buttonText
	}
	
	

	enum upgrades {
		hpRefill,
		hpUp,
		mpUp,
		shockSpell,
		mirrorImage
	}

	enum gameStates {
		menu,
		game,
		transition
	}

	enum buttonStates {
		idle,
		pressed,
		released,
		held
	}


	enum civilization {
		humans,
		otherworlders,
		outworlders,
		undead,
		monster
	}

	enum attackClasses {
		quick,
		strong,
		chain,
		special
	}

	enum biomes {
		grassland,
		forest,
		badlands,
		tundra,
		volcanic,
		cave,
		ocean
	}

	enum terrains {
		air,
		plain,
		beginDifficult,//Marker used for >= stuff
		difficult,
		fertile,
		incline,
		sharpIncline,//Marker used for >= stuff
		endDifficult,
		elevated,
		beginSubmerged,//Marker used for >= stuff
		submerged,
		bog,
		water,
		lava,
		tar,
		quicksand,
		endSubmerged,//Marker used for >= stuff
		impassable,//Marker used for >= stuff
	}

	enum unitClasses {
		grunt,
		hero,
		champion
	}
	

	enum artifacts {
		none,
		GoldenFleeceMantle,
		FeatherMantle,
		EyeOfWode,
		ManticoresVenom,
		WyrmscaleBracers,
		BearToothEarring,
		IdolBrog,
		IdolOgre,
		BronzeGauntlets,
	}

	enum missionTypes {
		conquest,
		skirmish,
		duel,
		arena,
		challenge
	}

	enum missionResults {
		won,
		lost,
		tied,
		reatreat
	}

	enum shinyTypes{
		none,
		ghost,//Ethereal, slower
		molten,//Red, inflicts Burning, explodes on death
		frozen,//Blue, inflict Chilled, explodes on death
		steel,//Gray, stupid high hp, immune knockback
		shadow//Ethereal, super powerful, life-drain
	}

	enum moveTypes {
		land,
		amphibious,
		flying,
		aquatic
	}

	enum orbs {
		none,
		fire,
		frost,
		wind,
		thunder,
		dark,
		light,
		venom
	}


	enum controlTypes{
		keyboard,
		controller,
		tap,
		drag
	}

	enum packBuildingTypes {
		farm,
		workshop,
		archer,
		barracks
	}

	enum buttonEvents {
	
	
	}

	enum actions {
		spawning,
		landing,
		flying,
		freeStatesBegin,
		idle,
		standing,
		animating,
		loopAnimation,
		walking,
		chew,
		goto,
		running,
		warhornStatesBegin,
		warhornBlow,
		warhornIdle,
		defending,
		warhornWalking,
		warhornStatesEnd,
		freeStatesEnd,
		dialogue,
		preparing,
		attacking,
		attackPreparing,
		attackRecovering,
		counterAttacking,
		hurt,
		fallRecovery,
		fallUnrecoverable,
		fallRecovered,
		falling,
		knockdown,
		throwing,

		recoiling,
		celebrating,
		dying,
		chopping,
		building,
		training,
		building2,
		hunting,
		pressed,
		released,
		broken,
		opening,
		closing,
		digging,
		walkon,
		sleeping,
		unavailable,
		available,
		conquered,
		dragging,
		pinching,
		flee, //DONT USE
		walk,
		talk,
		stand
	}

	enum roles {
		combatant,
		idle,
		wander,
		fighting,
		demolishing,
		building,
		panicking,
		carrying,
		hunting,
		digging,
		logging,
		fleeing,
		sleeping,
		collecting
	}

	enum armorTypes{
		none,
		cloth,
		leather,
		metal,
		structure,
		ethereal,
		magic
	}

	enum damageTypes{
		normal,
		piercing,
		hacking,
		smashing,
		blasting,
		magic,
		chaos
	}

	enum auras{
		regen,
		attack,
		shield,
		swift
	}

	enum statuses{
		normal,
		negative,
		burnt, //Take additional damage when hit
		diseased,//Can't have health restored!
		poisoned, //Damage over time
		terror, //Continously runs to a corner of the map.
		stoned, //Petrified, can't move, but take 25% damage.  Can only move by hopping?
		frozen, //Move and attack very slowly.
		cursed, //Can't use attacks.
		polymorphed, //You are a sheep.
		silence, //Can't use Warhorn!
		sleep, //Victim falls over and does not move.  Ends when attacked.
		zombie, //If someone is KO'd when having Zombie, comes back as Zombie!
		nuetral,
		confuse, //Victim will not acquire any targets, wanders randomly.
		dizzy,  //Chance to fall over when taking any action.
		berserk, //Treats nearest person as enemy, +25% damage!
		positive,
		invisible, //Can't be hit by most phyiscal attacks.
		invincible, //Takes no damage when struck, but still does animatinos.
		image, //Has an illusionary double.  Avoids all attacks, but 25% chance to end image each time.
		regen, //Triples health regeneration rate.
		float, //Ignores terrain, also takes double knockback
	


	

	

		staggered, //Knocked down any time he is hit.
	
	}

	enum sfxPriorities{
		ambience,
		work,
		combatAttacking,
		combatDamage,
		combatDeath,
		player,
		bgm	
	}

	enum facings{
		up,
		down
	}



}
