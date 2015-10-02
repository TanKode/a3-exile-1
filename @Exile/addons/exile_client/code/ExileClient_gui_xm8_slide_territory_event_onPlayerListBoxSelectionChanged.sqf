/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_playerListBox","_index","_display","_playerUID","_kickButton"];
disableSerialization;
_playerListBox = _this select 0;
_index = _this select 1;
_display = uiNameSpace getVariable ["RscExileXM8", displayNull];
_playerUID = _playerListBox lbData _index;
_kickButton = _display displayCtrl 4134;
_kickButton ctrlEnable !(_playerUID isEqualTo (getPlayerUID player));