/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_display","_inputBox","_fakePinCode","_i","_okayButton"];
disableSerialization;
_display = uiNameSpace getVariable ["RscExileKeypad", displayNull];
_inputBox = _display displayCtrl 4001;
if (isStreamFriendlyUIEnabled) then 
{
	_fakePinCode = "";
	for "_i" from 1 to (count ExileClientPinCode) do 
	{
		_fakePinCode = _fakePinCode + "*";
	};
	_inputBox ctrlSetText _fakePinCode;
}
else 
{
	_inputBox ctrlSetText ExileClientPinCode;
};
_inputBox ctrlCommit 0;
_okayButton = _display displayCtrl 4000;
_okayButton ctrlEnable ((count ExileClientPinCode) isEqualTo ExileClientPinCodeLength);
true