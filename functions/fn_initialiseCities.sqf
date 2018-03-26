/*
 * Author: Corello
 * Initialises each city on the map.
 * Call from initServer.sqf.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call FUNC(initialiseCities);
 */
#include "..\script_component.hpp"

private ["_locations","_cities"];

_locations = configfile >> "cfgworlds" >> worldname >> "names";

_cities = ["NameVillage","NameCity","NameCityCapital","NameLocal","NameMarine","Hill","Airport"];
GVAR(all_cities) = [];

for "_i" from 0 to (count _locations - 1) do {
    private ["_current","_type"];
    _current = _locations select _i;

    _type = gettext(_current >> "type");
    if (_type in _cities) then {
        private ["_id", "_position","_name","_position","_radius_x","_radius_y","_new_position","_area"];
        _position = getarray(_current >> "position");

		_id = count GVAR(all_cities);
        _name = getText(_current >> "name");
        _radius_x = getNumber(_current >> "RadiusA");
        _radius_y = getNumber(_current >> "RadiusB");

        [_position,_type,_name,_radius_x,_radius_y] call FUNC(createCity);
    };
};