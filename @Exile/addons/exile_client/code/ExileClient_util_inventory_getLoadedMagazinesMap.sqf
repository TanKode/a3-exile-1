/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_player","_loadedMagazines","_magazine","_bullets","_isLoaded","_type"];
_player = _this;
_loadedMagazines = [];
{
	_magazine = _x select 0;
	_bullets = _x select 1;
	_isLoaded = _x select 2;
	_type = _x select 3;
	if (_isLoaded && _bullets > 0 && _type != 0) then
	{
		_loadedMagazines pushBack [_magazine, _bullets];
	};
} 
forEach (magazinesAmmoFull _player);
_loadedMagazines