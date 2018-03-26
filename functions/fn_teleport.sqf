/*
 * Author: Rory, jonpas
 * Teleports the player from base (this) to teleport locations (objects).
 *
 * Arguments:
 * 0: Interaction object <OBJECT>
 * 1: Teleport target object <OBJECT>
 * 2: Teleport target display name <STRING>
 *
 * Return Value:
 * None
 *
 * Example:
 * [this, teleportPosX, "Place X"] call TAC_Scripts_fnc_teleport
 */
#include "..\script_component.hpp"

params ["_controller", "_teleportObject", "_text"];

private _action = [
    format ["TAC_Scripts_teleport_%1", _teleportObject],
    _text,
    "",
    {
        (_this select 2) params ["_teleportObject", "_text"];
        titleText [format ["%1", _text], "BLACK IN", 2];
        ACE_player setPosASL (getPosASL _teleportObject);
        titleFadeOut 2;
    },
    {true},
    {},
    [_teleportObject, _text]
] call ACEFUNC(interact_menu,createAction);

[_controller, 0, ["ACE_MainActions"], _action] call ACEFUNC(interact_menu,addActionToObject);
