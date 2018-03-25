#include "script_component.hpp"

params ["_player"];

if (!TAC_disguiseActionAdded) exitWith {
	TAC_disguiseActionAdded = true;
};

[_player] call FUNC(addCheckDisguiseAction);