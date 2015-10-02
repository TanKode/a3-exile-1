/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_position","_result","_trigger"];
_position = _this;
_result = false;
_trigger = _position nearestObject "EmptyDetector";
{
	if (getMarkerType _x == "ExileTraderZone") then
	{
		if ((getMarkerPos _x) distance2D _position < ((getMarkerSize _x) select 0)) exitWith
		{
			_result = true;
		};
	};
}
forEach allMapMarkers;
_result