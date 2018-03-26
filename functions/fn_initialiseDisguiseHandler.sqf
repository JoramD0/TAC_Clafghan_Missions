/*
 * Author: Corello
 * Initialises the Event Handler for periodically checking equipment against the civilian gear list.
 * Call from initPlayerLocal.sqf.
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player] call FUNC(initialiseDisguiseHandler);
 */
#include "..\script_component.hpp"
#include "..\civilianGear.hpp"

params ["_playerObject"];

[{
	params ["_args", "_idPFH"];
	_args params ["_playerObject"];

	if (!alive _playerObject) exitWith {false};

	private _setPlayerCaptive = false;

	if ((_playerObject != vehicle _playerObject)) then {
		if (typeOf(vehicle _playerObject) in TAC_CIVILIAN_VEHICLES) then {
			_setPlayerCaptive = true;
		};
	} else {
		if ((primaryWeapon _playerObject == "") && {secondaryWeapon _playerObject == ""} && {handgunWeapon _playerObject == ""} && {hmd player == ""} && {uniform _playerObject in TAC_CIVILIAN_UNIFORMS} && {headgear _playerObject in TAC_CIVILIAN_HEADGEAR} && {backpack _playerObject in TAC_CIVILIAN_BACKPACKS} && {vest _playerObject in TAC_CIVILIAN_VESTS} && {goggles _playerObject in TAC_CIVILIAN_GLASSES}) then {
			_setPlayerCaptive = true;
		} else {
			_setPlayerCaptive = false;
		};
	};

	if (missionNamespace getVariable [QGVAR(disguiseBlown), false]) then {
		_setPlayerCaptive = false;
	};

	{
		if(_playerObject inArea _x) exitWith {
			_setPlayerCaptive = false;
		}
	} forEach TAC_CIVILIAN_REDZONES;

	[_playerObject, "setCaptive", "tac_disguise", _setPlayerCaptive] call ACEFUNC(common_statusEffect_set);
}, 1, [_playerObject]] call CBA_fnc_addPerFrameHandler;