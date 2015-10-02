/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_position","_radius","_result","_objectsNearby"];
_position = _this select 0;
_radius = _this select 1;
_result = false;
_objectsNearby = _position nearObjects _radius;
{
	if (inflamed _x) exitWith
	{
		_result = true;
	};
}
forEach _objectsNearby;
_result