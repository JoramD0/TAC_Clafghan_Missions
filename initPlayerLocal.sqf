#include "script_component.hpp"

params ["_player"];

[_player, specScreen] call FUNC(baseSpectator);
[_player] call FUNC(briefing);

[tunMainEntObj, tunMainEntPos, "Enter"] call FUNC(teleport);
[tunMainExtObj, tunMainExtPos, "Exit"] call FUNC(teleport);
[tun1stEntObj, tun1stEntPos, "Enter"] call FUNC(teleport);
[tun1stExtObj, tun1stExtPos, "Exit"] call FUNC(teleport);
[tun2ndEntObj, tun2ndEntPos, "Enter"] call FUNC(teleport);
[tun2ndExtObj, tun2ndExtPos, "Exit"] call FUNC(teleport);

if (!isNil "intel_01") then {
	[intel_01, "Take Intel", "Intel taken", "Intel", "Map found in the rebel tunnel HQ", true] call FUNC(collectIntel);
};
if (!isNil "intel_02") then {
	[intel_02, "Take Intel", "Intel taken", "Intel", "Photos found in the rebel tunnel HQ", true] call FUNC(collectIntel);
};
if (!isNil "intel_03") then {
	[intel_03, "Take Intel", "Intel taken", "Intel", "Documents found in the rebel tunnel HQ", true] call FUNC(collectIntel);
};
if (!isNil "intel_04") then {
	[intel_04, "Take Intel", "Intel taken", "Intel", "Sleeved map found in the rebel tunnel HQ", true] call FUNC(collectIntel);
};
