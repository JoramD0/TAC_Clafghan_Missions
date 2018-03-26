/*
 * Author: Corello
 * Creates a hidden object at the center of the location and stores city specific data.
 * Call from fn_initialiseCities.sqf
 *
 * Arguments:
 * 0: Position (The position of the location (from the config)) <OBJECT>
 * 1: Type (The type of the location (from the config)) <STRING>
 * 2: Name (The name of the location (from the config)) <STRING>
 * 3: X Radius (The width of the location) <INTEGER>
 * 4: Y Radius (The height of the location) <INTEGER>
 *
 * Return Value:
 * 1: The city object <OBJECT>
 *
 * Example:
 * [_position,_type,_name,_radius_x,_radius_y] call FUNC(createCity);
 */
#include "..\script_component.hpp"

params ["_position", "_type", "_name", "_radius_x", "_radius_y"];

private _id = count GVAR(all_cities);

private _city = createSimpleObject ["a3\structures_f_epb\items\military\ammobox_rounds_f.p3d", [_position select 0, _position select 1, getTerrainHeightASL _position]];
hideObjectGlobal _city;

_city setVariable ["id", _id];
_city setVariable ["name", _name];
_city setVariable ["RadiusX", _radius_x];
_city setVariable ["RadiusY", _radius_y];
_city setVariable ["type", _type];
_city setVariable ["data_units", []];
_city setVariable ["active", false];
_city setVariable ["activating", false];
_city setVariable ["initialized", false];

_trigger = createTrigger["EmptyDetector",_position];
_trigger setTriggerArea[(_radius_x+_radius_y) + 150,(_radius_x+_radius_y) + 150,0,false];
_trigger setTriggerActivation["ANYPLAYER","PRESENT",true];
_trigger setTriggerStatements [true, format ["[%1] spawn TAC_fnc_activateCity;",_id], format ["[%1] spawn TAC_fnc_deactivateCity",_id]];
_city setVariable ["trigger",_trigger];

GVAR(all_cities) set [_id, _city];

_city