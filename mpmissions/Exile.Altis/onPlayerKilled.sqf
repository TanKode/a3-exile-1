// [<oldUnit>, <killer>, <respawn>, <respawnDelay>]
private ["_curRespect", "_remRespect", "_newRespect", "_victim"];

_victim = _this select 0;

_curRespect = _victim getVariable ["ExileScore", 0];
_remRespect = _curRespect * 0.05;
if(_remRespect < 100) {
    _remRespect = 100;
}
_newRespect = _curRespect - _remRespect;
_victim setVariable ["ExileScore", _newRespect];
ExileClientPlayerScore = _newRespect;
(owner _victim) publicVariableClient "ExileClientPlayerScore";
ExileClientPlayerScore = nil;
format["setAccountMoneyAndRespect:%1:%2:%3", _victim getVariable ["ExileMoney", 0], _newRespect, (getPlayerUID _victim)] call ExileServer_system_database_query_fireAndForget;