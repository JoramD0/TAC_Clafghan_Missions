#include "script_component.hpp"

params ["_player"];

TAC_disguiseActionAdded = false;

[_player, specScreen] call FUNC(baseSpectator);
[_player] call FUNC(briefing);

[_player] call FUNC(initialiseDisguiseHandler);
[_player] call FUNC(addCheckDisguiseAction);

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;