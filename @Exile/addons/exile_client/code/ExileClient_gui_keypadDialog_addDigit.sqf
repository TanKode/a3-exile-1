/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_digit","_display","_control"];
_digit = _this;
if ((count ExileClientPinCode) < ExileClientPinCodeLength) then
{
	ExileClientPinCode = ExileClientPinCode + (str _digit);
};
_display = uiNameSpace getVariable ["RscExileKeypad", displayNull];
_control = _display displayCtrl 4001;
ctrlSetFocus _control;
call ExileClient_gui_keypadDialog_updateControls;