#include "\A3XAI\globaldefines.hpp"

//Do not edit this file

waitUntil {uiSleep 3; !isNil "A3XAI_locations_ready"};

call compile preprocessFileLineNumbers format ["%1\A3XAI_custom_defs.sqf",A3XAI_ServerDir];

A3XAI_customSpawnsReady = true;