/*
	File: EXILE_AHAT_CONFIG.sqf
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com
	
	Description:
	Arma AntiHack & AdminTools - infiSTAR.de
	
	ON LINUX YOU NEED THIS PARAMETER: -profiles
*/

/*
	"_passwordAdmin" is passwordAdmin - in your servers config.cfg, needed for servercommands from client
*/
_passwordAdmin = 'zY3TktwtoI7QxU2vp030V88Xcb69B3uk';



/* "_OPEN_ADMIN_MENU_KEY": Key to open the menu (google DIK_KeyCodes (0x3B is F1))   */
_OPEN_ADMIN_MENU_KEY = 0x3B;
_HIDE_FROM_PLAYERS = false;	// So no normal can see it :)!

/* What ESCAPE Menu shows */
_ESCMNUTOP = 'AntiHack & AdminTools';
_ESCMNUBOT = 'by infiSTAR.de';
_BRIEFING_MSG = false;	/* use mission briefing message: if   "_BRIEFING_MSG = false;"   then the message will be replaced by infiSTAR */

/* shows RESTART IN X MINS */
_USE_RESTART_TIMER = false;	/* true or false */
_RESTART_TIME_IN_M = 180;		/* restart time in minutes */
_SHOW_TIMER_IN_MIN = [1,2,3,5,10];	/* minutes before restart, when message is shown */

/* The following 3 options can be disabled by putting the value to -1. For example "_TGV = -1;" */
/* Terrain Grid Value   */ _TGV = 40;		/* 50, 25, 12.5  */	/* if set to 50 grass will be very low for better client FPS.. default is 25 ~35 is good performance and grass :) */
/* ViewDistance Value   */ _VDV = 1000;
/* ObjectViewDistance   */ _VOV = 800;

/* "_LogAdminActions": Sends actions done by each admin to the server to log it to the .txt file and .rpt file + sends it back to all other admins. */
_LogAdminActions = true;	/* true or false */
_enableIngameLogs = true;	/* true or false */

/* "_startAsNormal": if you add admin UIDs in here as well, they will start as almost "normal" player instead of with admin menu and such. */
_startAsNormal =
[
	'0','0','0'
];

_adminUIDandAccess =
[
	[
		[
			'76561198061912622', // Tom
			'76561198070524133' // Fabi
		],	// Admins with UIDs in this Array have their Access defined in the array below.
		[
			'Teleport On Map Click','Teleport - Target To Me','Teleport - Me To Target','Teleport In Facing Direction (10m steps)',
			'spectating','AdminConsole','Delete Vehicle','FlyUp','ShowGear',
			'HealSelf','HealRepairNear','AdminLog','Freeze Target','UnFreeze Target',
			'==== Loadouts ====','==== Vehicles ====','==== Base Deleter ====','Items spawn menu',
			'Remove Gear','Heal','Restore','Move In My Vehicle','Move In Target Vehicle','Eject','Eject Crew',
			'Kill','Explode','Force Disconnect','Kick (Silent)','Kick (Announce)','Ban (Silent)','Ban (Announce)',
			'infiSTAR Player ESP','infiSTAR Dead ESP','infiSTAR AI ESP',
			'infiSTAR MapIcons','Vehicle Marker','Flag Marker (with radius)','DeadPlayer Marker',
			'God Mode','Vehicle God Mode','Lower Terrain','Vehboost','UnlimAmmo','noRecoil','FastFire','Stealth / Invisible',
			'Disable Announces','Mass Message','Spawn Support-Boxes',
			'Spawn Ammo','Login as Arma Admin','BIS FreeRoam Cam (works with ESP)','FreeRoam Cam (does not work with ESP)',
			'Request Steam Name','showinfo',
			'+500 Money','+1000 Money','+2000 Money','+10000 Money','-500 Money','-1000 Money','-2000 Money','-10000 Money',
			'+500 Respect','+5000 Respect','-500 Respect','-5000 Respect'
		]
	],
	[
		[''],	// Admins with UIDs in this Array have their Access defined in the array below.
		[
			'Teleport On Map Click','Teleport - Target To Me','Teleport - Me To Target','Teleport In Facing Direction (10m steps)',
			'spectating','AdminConsole','Delete Vehicle','FlyUp','ShowGear',
			'HealSelf','HealRepairNear','AdminLog','Freeze Target','UnFreeze Target',
			'==== Loadouts ====','==== Vehicles ====','==== Base Deleter ====','Items spawn menu',
			'Remove Gear','Heal','Restore','Move In My Vehicle','Move In Target Vehicle','Eject','Eject Crew',
			'Kill','Explode','Force Disconnect','Kick (Silent)','Kick (Announce)','Ban (Silent)','Ban (Announce)',
			'infiSTAR Player ESP','infiSTAR Dead ESP','infiSTAR AI ESP',
			'infiSTAR MapIcons','Vehicle Marker','Flag Marker (with radius)','DeadPlayer Marker',
			'God Mode','Vehicle God Mode','Lower Terrain','Vehboost','UnlimAmmo','noRecoil','FastFire','Stealth / Invisible',
			'Disable Announces','Mass Message','Spawn Support-Boxes',
			'Spawn Ammo','Login as Arma Admin','BIS FreeRoam Cam (works with ESP)','FreeRoam Cam (does not work with ESP)',
			'Request Steam Name','showinfo',
			'+500 Money','+1000 Money','+2000 Money','+10000 Money','-500 Money','-1000 Money','-2000 Money','-10000 Money',
			'+500 Respect','+5000 Respect','-500 Respect','-5000 Respect'
		]
	],
	[
		[''],	// Admins with UIDs in this Array have their Access defined in the array below.
		[
			'Teleport On Map Click','Teleport - Target To Me','Teleport - Me To Target','Teleport In Facing Direction (10m steps)',
			'spectating','AdminConsole','Delete Vehicle','FlyUp','ShowGear',
			'HealSelf','HealRepairNear','AdminLog','Freeze Target','UnFreeze Target',
			'==== Loadouts ====','==== Vehicles ====','==== Base Deleter ====','Items spawn menu',
			'Remove Gear','Heal','Restore','Move In My Vehicle','Move In Target Vehicle','Eject','Eject Crew',
			'Kill','Explode','Force Disconnect','Kick (Silent)','Kick (Announce)','Ban (Silent)','Ban (Announce)',
			'infiSTAR Player ESP','infiSTAR Dead ESP','infiSTAR AI ESP',
			'infiSTAR MapIcons','Vehicle Marker','Flag Marker (with radius)','DeadPlayer Marker',
			'God Mode','Vehicle God Mode','Lower Terrain','Vehboost','UnlimAmmo','noRecoil','FastFire','Stealth / Invisible',
			'Disable Announces','Mass Message','Spawn Support-Boxes',
			'Spawn Ammo','Login as Arma Admin','BIS FreeRoam Cam (works with ESP)','FreeRoam Cam (does not work with ESP)',
			'Request Steam Name','showinfo',
			'+500 Money','+1000 Money','+2000 Money','+10000 Money','-500 Money','-1000 Money','-2000 Money','-10000 Money',
			'+500 Respect','+5000 Respect','-500 Respect','-5000 Respect'
		]
	]
];
/* ********************************************************************************* */
/*            many checks should be set to true instead of false.                    */
/* ********************************************************************************* */
_LVC = true;	/* Local Vehicle Check */
_UAT = true;	/* Anti Teleport */
_CMC = true;	/* Check for custom CommandingMenus */
_KCM = true;	/* Just close ALL CommandingMenus */
_CAP = true;	/* Check Actions Plr - will announce: xxx possible scroll menu hack */
_wall_look = true;	/* checks if a players tries to look through a wall (if player is allowed to build in that territory, it will not be logged.) */
_wall_glitch_object = true;	/* checks if a players tries to glitch through a wall (if player is allowed to build in that territory, it will not be logged.) */
_wall_glitch_vehicle = true;	/* stops people from glitching into bases using "eject" or "getout" of a vehicle.. */


/*  Check Global Markers */ _CGM = true;	/* true or false */	/* you may need to disable this check for A.I. Missions - or whitelist the used Markers in the _aLocalM Array beneath */
/*  Check Local Markers  */ _CLM = true;	/* true or false */	/* false if you do not want LocalMarker to be checked. */
/*  Use _aLocalM array   */ _UMW = false;	/* true or false */	/* use allowed marker array from below (for example AltisLife uses house_ and others in there) or A.I. Missions */
/* _aLocalM: if '_CLM' && _UMW - this array of names will be allowed */
_aLocalM = [];


/* Use IDD White-List ? */ _UDW = true;	/* true or false */
/* _allowedIDDs: Insert IDDs here to prevent them from being closed! */
_allowedIDDs = [
	0,4,5,6,8,12,18,24,46,49,54,55,63,70,131,160,174,602,999,
	24001,24002,24004,24005,24006,24007,24008,24009,24010,24011,24012,24013,24014,24015,20016,20017,20018,20019,20020,20021
];

/* _badIDDsToKick: Forbidden Idds that will get you Kicked by the AH */
_badIDDsToKick = [-1337,133];

/* _badIDDsToClose: Forbidden Idds that will get closed by the AH */
_badIDDsToClose =
[
	2,3,7,17,19,25,26,27,28,29,30,31,32,37,40,41,43,44,45,51,52,53,74,85,
	106,126,127,132,146,147,150,151,152,153,154,159,162,164,262,
	314,632,1320,2121,148,163,129,169,157
];



/*  Use BadFile check    */ _UBF = true;	/* true or false */	/* Scriptscan pops up with message: "Done! badcontent.sqf not found" */
/* _blacklistedFileArray: The AntiHack will test if the client has one of these files in his Arma3 folder. You have to put the extensions in allowedPreprocessFileExtensions in your servers config.cfg (only if _UBF = true;) */
_blacklistedFileArray =
[
	'MixedScript.sqf','justtrolling.sqf','A3AH.sqf','hackfr.sqf','derp.sqf','run.sqf',
	'1.sqf','3.sqf','qa.sqf','gknova61_money.sqf','invi.sqf','Krypto.sqf','Dta\mhm.sqf','Newscroll.sqf',
	'test\jude\3dollar\blub.sqf','lel.sqf','_src\Load.sqf','scripts\jmepoch.sqf','Det\Test.sqf','test\mhm.sqf',
	'Jowin.sqf','FreundeMod\altea.sqf','dracau18scripts.sqf','CraftLourens.sqf','My Menu Collection\Wookie\mongoose.sqf',
	'menu\menuext.sqf','LystoArma3\Lystic.sqf','LystoArma3\antiantihax.sqf','rouvenk.sqf','chub\start.sqf','Whippy\playerTools.sqf',
	'rouven33.sqf','Addons\temp.sqf','hihi.sqf','test.sqf','\Life41337\init.sqf','swagre.sqf','huki.sqf','y.sqf',
	'Dta\nom.sqf','AnalFuckMeOnATable.sqf','JH\Action.sqf','V4Run.sqf','_src\test.sqf','ScriptName.sqf','999999999999999999999999999.sqf',
	'RommelV1\Rexecv1.sqf','abra.sqf','jmepochV2.sqf','FuryV3.sqf','69.sqf','_src\menu1.sqf','_src\keybinds.sqf','porno.sqf',
	'RhynoV1\RJZSexecutev4.sqf','RJZSexecv4.sqf','ArmA2OA_Extars\BB_menu_BB.sqf','LystoArma3\start.sqf','ammobox.sqf','temp.sqf',
	'v102.sqf','jestersMENU\jester@start.sqf','uc.sqf','FireTide.sqf','test\lol.sqf','lol.sqf','corn.sqf',
	'debug_console.dll','debug_consolee.dll','tbb4malloc_bi.dll','Xenos.exe','Xenos64.exe','fraps.dll','youtube.dll','_CommonRedist\DirectX\Config.cab',
	'DirectX\Config.cab','G-e-F_Menu\StartGeF.dta','Bonus\Soundtrack\Win\12_Wins.dta','_CommonRedist\DirectX\Jun2010\Apr2005_d3dx9_24_x64.cab',
	'Bonus\Soundtrack\clickSound.ogg','G-e-F_Menu\G-e-F_HackConfig.ini','Launcher\kernel_x86.dll','DLL\DatMalloc.dll','\G-e-F_HackConfig.ini',
	'Dta\Screens.bin','ArmA2OA_Extras\ben_ex.sqf','RyanV1\Keybindiezz.sqf','ArmaX.sqf','insanity.sqf'
];

/* _blacklistedVariables: The AntiHack will check if one of these variables is existing for the client */
_blacklistedVariables =
[
	'arsenalOpened','BIS_fnc_arsenal_fullArsenal','bis_fnc_camera_target'
];


_UVC = false;	/* Use Vehicle Check(s) - recommended but I am not sure if all existing vehicles are already in this white-list below. "EXILE" ones are white-listed anyways */
_VehicleWhiteList =
[
	'Steerable_Parachute_F','I_UAV_01_F','B_HMG_01_high_F','O_HMG_01_F'
];
_ForbiddenVehicles =
[
	'B_Heli_Light_01_armed_F','B_Heli_Attack_01_F'
];


_UFI = true;	/* Use "_ForbiddenItems"/Item Check(s) */
_UIW = false;	/* if "_UIW = true;" then it checks if the items the individual player has are in "_ItemWhiteList" */
_ItemWhiteList =
[
	'AllowThisItem1','AllowThisItem2'
];
_ForbiddenItems =
[
	'autocannon_Base_F','autocannon_30mm','autocannon_35mm','autocannon_40mm_CTWS','autocannon_30mm_CTWS','Bomb_04_Plane_CAS_01_F',
	'Bomb_03_Plane_CAS_02_F','cannon_105mm','cannon_120mm','cannon_120mm_long','cannon_125mm','Cannon_30mm_Plane_CAS_02_F','gatling_20mm',
	'gatling_25mm','gatling_30mm','Gatling_30mm_Plane_CAS_01_F','GBU12BombLauncher','GMG_20mm','GMG_40mm','GMG_UGV_40mm','HMG_127_MBT',
	'HMG_127','HMG_127_APC','HMG_01','HMG_M2','HMG_NSVT','LMG_Minigun2','LMG_RCWS','LMG_M200','LMG_Minigun','LMG_Minigun_heli','LMG_coax',
	'Missile_AGM_02_Plane_CAS_01_F','Missile_AA_04_Plane_CAS_01_F','Missile_AA_03_Plane_CAS_02_F','Missile_AGM_01_Plane_CAS_02_F','missiles_DAGR',
	'missiles_DAR','missiles_ASRAAM','missiles_SCALPEL','missiles_titan','missiles_titan_static','missiles_Zephyr','Mk82BombLauncher','mortar_82mm',
	'mortar_155mm_AMOS','rockets_Skyfire','rockets_230mm_GAT','Rocket_04_HE_Plane_CAS_01_F','Rocket_04_AP_Plane_CAS_01_F','Rocket_03_HE_Plane_CAS_02_F',
	'Rocket_03_AP_Plane_CAS_02_F','Twin_Cannon_20mm','srifle_EBR_MRCO_LP_BI_F'
];



/*
	custom Box content:
	just an item like it is in the example with   'ItemMap'   will put the item once in the box.
	if an array is used like the   ['ItemGPS',5]   example, well I assume you could guess what it will do.
	
	You can just define as many as you want buy copy pasting one of the existing _SupportBoxXContents and changing it up.
	After doing that you have to add it into the _allSupportBoxes array (last entry can't have a , at the end or the array is broken!).
*/
_SupportBox1Content =
[
	'Exile_Item_Flag','Exile_Item_CookingPot',
	['Exile_Item_Codelock',5],['Exile_Item_DuctTape',10],['Exile_Item_InstaDoc',10],
	['Exile_Item_Energydrink',10],['Exile_Item_ExtensionCord',5],['Exile_Item_FloodLightKit',5],
	['Exile_Item_FortificationUpgrade',5],['Exile_Item_FuelCanisterFull',5],['Exile_Item_GloriousKnakworst_Cooked',10],
	['Exile_Item_LightBulb',5],['Exile_Item_Matches',5],['Exile_Item_MetalBoard',5],
	['Exile_Item_MetalPole',5],['Exile_Item_PlasticBottleFreshWater',10],['Exile_Item_PortableGeneratorKit',5],
	['Exile_Item_Rope',15],['Exile_Item_SafeKit',15],['Exile_Magazine_Battery',15]
];

_SupportBox2Content =
[
	'Exile_Item_Flag',
	['Exile_Item_WoodDoorKit',15],['Exile_Item_WoodDoorwayKit',15],['Exile_Item_WoodDrawBridgeKit',15],
	['Exile_Item_WoodFloorKit',15],['Exile_Item_WoodFloorPortKit',15],['Exile_Item_WoodGateKit',15],
	['Exile_Item_WoodLog',15],['Exile_Item_WoodPlank',15],['Exile_Item_WoodStairsKit',15],
	['Exile_Item_WoodSupportKit',15],['Exile_Item_WoodWallHalfKit',15],['Exile_Item_WoodWallKit',15],
	['Exile_Item_WoodWindowKit',15],['Exile_Item_WorkBenchKit',15]
];

_SupportBox3Content =
[
	['Exile_Item_Flag',5],['Exile_Item_WoodDoorKit',15],['Exile_Item_WoodWallKit',15],
	['Exile_Item_WoodWindowKit',15],['Exile_Item_WoodFloorKit',15],['Exile_Item_SafeKit',5]
];

_SupportBox4Content =
[
	'ItemMap',['ItemGPS',5],'ItemWatch'
];

_allSupportBoxes = [
	_SupportBox1Content,
	_SupportBox2Content,
	_SupportBox3Content,
	_SupportBox4Content
];
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ******************************DO NOT TOUCH BELOW********************************* */
_allSupportBoxesCount = count _allSupportBoxes;
if(!isNil 'infiSTAR_IS_RUN_ON_THIS_SERVER') exitWith {
	diag_log format['<infiSTAR.de> %1 - is already started %1 seconds ago..',time - infiSTAR_IS_RUN_ON_THIS_SERVER];
};
infiSTAR_IS_RUN_ON_THIS_SERVER = time;
/* ********************************************************************************* */
/* #1 */
/* ********************************************************************************* */
comment 'Antihack & AdminTools - Christian Lorenzen - www.infiSTAR.de - License: (CC)';
diag_log format['<infiSTAR.de> %1 - run.sqf - including AntiHack',time];
#include "EXILE_AH.sqf"
diag_log format['<infiSTAR.de> %1 - run.sqf - AntiHack included!',time];

diag_log format['<infiSTAR.de> %1 - run.sqf - including AdminTools',time];
#include "EXILE_AT.sqf"
diag_log format['<infiSTAR.de> %1 - run.sqf - AdminTools included!',time];
/* ********************************************************************************* */
/* *********************************www.infiSTAR.de********************************* */
/* *******************Developed by infiSTAR (infiSTAR23@gmail.com)****************** */
/* **************infiSTAR Copyright®© 2011 - 2015 All rights reserved.************** */
/* ****DayZAntiHack.com***DayZAntiHack.de***ArmaAntiHack.com***Arma3AntiHack.com**** */