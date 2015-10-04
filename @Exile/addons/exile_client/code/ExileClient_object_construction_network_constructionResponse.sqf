/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_objectNetID","_object"];
_objectNetID = _this select 0;
_object = objectFromNetId _objectNetID;
ExileClientConstructionObject = _object;
ExileClientConstructionCanPlaceObject = false;
if((typeOf _object) isEqualTo "Exile_Construction_BaseCamera_Preview")then
{
}
else
{
	[] spawn ExileClient_construction_modeBase_thread;
};
true