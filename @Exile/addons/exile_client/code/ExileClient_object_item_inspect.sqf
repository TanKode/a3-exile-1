/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_itemClassName","_inspectingConfig","_chance","_dice","_successFunction","_successNotification","_successCode"];
_itemClassName = _this select 0;
if( isClass(configFile >> "CfgMagazines" >> _itemClassName >> "Interactions" >> "Inspecting") ) then
{
	_inspectingConfig = configFile >> "CfgMagazines" >> _itemClassName >> "Interactions" >> "Inspecting";
	_chance = getNumber (_inspectingConfig >> "chance");
	_dice = floor (random 100);
	if (_dice <= _chance) then
	{
		_successFunction = getText (_inspectingConfig >> "successFunction");
		_successNotification = getText (_inspectingConfig >> "successNotification");
		_successCode = format["[] call %1", _successFunction];
		[] call compile _successCode;
		[_successNotification] call ExileClient_gui_notification_event_addNotification;
	}
	else 
	{
		["InspectingFailedInformation"] call ExileClient_gui_notification_event_addNotification;
	};
	player removeItem _itemClassName;
};
true