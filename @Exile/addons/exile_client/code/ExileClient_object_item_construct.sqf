/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_itemClassName"];
_itemClassName = _this select 0;
if( isClass(configFile >> "CfgMagazines" >> _itemClassName >> "Interactions" >> "Constructing") ) then
{
	if (findDisplay 602 != displayNull) then
	{
		(findDisplay 602) closeDisplay 2; 
	};
	try 
	{
		if !((vehicle player) isEqualTo player) then { throw "ConstructionVehicleWarning"; };
		if ((getPosATL player) call ExileClient_util_world_isTraderZoneNearby) then { throw "ConstructionTraderZoneWarning"; };
		if ((getPosATL player) call ExileClient_util_world_isSpawnZoneNearby) then { throw "ConstructionSpawnZoneWarning"; };
		if(_itemClassName isEqualTo "Exile_Item_Flag") then { throw "FLAG"; };
		[_itemClassName] call ExileClient_construction_beginNewObject;
	}
	catch 
	{
		if(_exception isEqualTo "FLAG")then
		{
			call ExileClient_gui_setupTerritoryDialog_show;
		}
		else
		{
			[_exception] call ExileClient_gui_notification_event_addNotification;
		};	
	};
};
true