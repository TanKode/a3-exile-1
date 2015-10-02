/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_unit","_weapon","_muzzle","_mode","_ammo","_magazine","_projectile"];
_unit = _this select 0;
_weapon = _this select 1;
_muzzle = _this select 2;
_mode =	_this select 3;
_ammo = _this select 4;
_magazine =	_this select 5;
_projectile = _this select 6;
if (_ammo isKindOf "Exile_Ammo_Swing") then
{
	player playActionNow "GestureAxeSwing01";
	[] call ExileClient_object_tree_chop;
}
else 
{
	if !(ExilePlayerInSafezone) then
	{
		ExileClientPlayerIsInCombat = true;
		ExileClientPlayerLastCombatAt = diag_tickTime;
		true call ExileClient_gui_hud_toggleCombatIcon;
	};
};
true