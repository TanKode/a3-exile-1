/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_message","_mode","_vehicle","_pincode"];
_message = _this select 0;
_mode = _this select 1;
_vehicle = _this select 2;
_pincode = _this select 3;
if(_mode)then
{
	["Success", [_message]] call ExileClient_gui_notification_event_addNotification;
	_vehicle setVariable ["ExileAllreadyKnownCode",_pincode];
}
else
{
	["Whoops", [_message]] call ExileClient_gui_notification_event_addNotification;
};
call ExileClient_gui_interactionMenu_unhook;
true