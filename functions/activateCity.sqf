params ["_id"];

private _city = GVAR(all_cities) select _id;

if (_city getVariable "activating") exitWith {};

_city setVariable ["activating", true];

private _is_init = _city getVariable ["initialized", false];
private _data_units = _city getVariable ["data_units", []];
private _type = _city getVariable ["type", ""];
private _radius_x = _city getVariable ["RadiusX", 0];
private _radius_y = _city getVariable ["RadiusY", 0];
private _radius = (_radius_x + _radius_y)/2;