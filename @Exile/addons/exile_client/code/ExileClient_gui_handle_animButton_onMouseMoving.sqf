/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_control","_state","_displayName","_controlName","_texture"];
_control = (_this select 0) select 0;
_state = (_this select 0) select 3;
_displayName = _this select 1;
_controlName = _this select 2;
try
{
	if(ExileGuiControlClick)then
	{
		throw "click";
	};
	if(_state)then
	{
		throw "hover";
	}
	else
	{
		throw "none";
	};
}
catch
{
	_texture = getText(configFile >> _displayName >> "controls" >> _controlName >> "buttonPictures" >> _exception);
	_control ctrlSetText _texture;
};
