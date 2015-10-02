/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_inputBox","_character","_fakePinCode","_i"];
_inputBox = _this select 0;
_character = _this select 1;
if!(_character in [48,49,50,51,52,53,54,55,56,57])then
{
	ExileClientPinCode = ExileClientPinCode select [0,(count ExileClientPinCode) -1];
};
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
true