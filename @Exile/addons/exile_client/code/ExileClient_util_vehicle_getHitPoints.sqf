/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_class","_hitPointNames"];
_class = _this;
_hitPointNames = [];
if (typeName _class == "OBJECT") then
{
	_class = typeOf _class;
};
0 = configProperties 
[
	configFile >> "CfgVehicles" >> _class >> "HitPoints", 
	"_hitPointNames pushBack configName _x; true", 
	true
];
_hitPointNames