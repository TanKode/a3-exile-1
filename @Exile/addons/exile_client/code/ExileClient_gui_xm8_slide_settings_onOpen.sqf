/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_display","_8GCombo","_soundCombo"];
disableSerialization;
_display = uiNameSpace getVariable ["RscExileXM8", displayNull];
_8GCombo = _display displayCtrl 4072;
lbClear _8GCombo;
_8GCombo lbAdd "Off";
_8GCombo lbAdd "On";
if (player getVariable ["ExileXM8IsOnline", false]) then
{
	_8GCombo lbSetCurSel 1;
}
else 
{
	_8GCombo lbSetCurSel 0;
};
_soundCombo = _display displayCtrl 4075;
lbClear _soundCombo;
_soundCombo lbAdd "Off";
_soundCombo lbAdd "On";
if (profileNamespace getVariable ["ExileEnableSoundNotifications", false]) then
{
	_soundCombo lbSetCurSel 1;
}
else 
{
	_soundCombo lbSetCurSel 0;
};