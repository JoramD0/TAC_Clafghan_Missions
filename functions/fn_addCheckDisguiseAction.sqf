/*
 * Author: Corello
 * Adds the "Check Disguise" action to the player upon loading.
 * Call from initPlayerLocal.sqf and onPlayerRespawn.sqf
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player] call FUNC(addCheckDisguiseAction);
 */
#include "..\script_component.hpp"

// Exit if not player client
if (!hasInterface) exitWith {};

params ["_playerObject"];

private _addDisguisedAction = ['check-disguise','Check Disguise','\a3\ui_f\data\igui\cfg\holdactions\holdaction_search_ca.paa',{
	[_player] call FUNC(checkDisguise);
},{true}] call ACEFUNC(interact_menu,createAction);

[_playerObject, 1, ["ACE_SelfActions"], _addDisguisedAction] call ACEFUNC(interact_menu,addActionToObject);