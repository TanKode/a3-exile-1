/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_object"];
_object = _this select 1;
if!(isNull _object)then
{
	_object setVariable ["ExileAllreadyKnownCode",_this select 2];
};
(_this select 0) call ExileClient_gui_notification_event_addNotification;
true