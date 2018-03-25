#include "../civilianGear.hpp"

params ["_playerObject"];

private _disguisedActionText = parseText format ["<img image='\a3\ui_f\data\igui\cfg\holdactions\holdaction_search_ca.paa' size='3' align='center'/><br/>%1<br/><br/>Head:<br/>%2<br/><br/>Glasses:<br/>%3<br/><br/>Uniform:<br/>%4<br/><br/>Vest:<br/>%5<br/><br/>Backpack:<br/>%6",
    ['<t color="#FFFFFF" align="center">NOT DISGUISED</t>','<t color="#FFFFFF" align="center">DISGUISED</t>'] select (captive _playerObject),
    ['<t color="#FF0000">Not disguised</t>','<t color="#12B317">Disguised</t>'] select (headgear _playerObject in TAC_CIVILIAN_HEADGEAR),
    ['<t color="#FF0000">Not disguised</t>','<t color="#12B317">Disguised</t>'] select (goggles _playerObject in TAC_CIVILIAN_GLASSES),
    ['<t color="#FF0000">Not disguised</t>','<t color="#12B317">Disguised</t>'] select (uniform _playerObject in TAC_CIVILIAN_UNIFORMS),
    ['<t color="#FF0000">Not disguised</t>','<t color="#12B317">Disguised</t>'] select (vest _playerObject in TAC_CIVILIAN_VESTS),
    ['<t color="#FF0000">Not disguised</t>','<t color="#12B317">Disguised</t>'] select (backpack _playerObject in TAC_CIVILIAN_BACKPACKS)];
	[_disguisedActionText, 10] call ace_common_fnc_displayTextStructured;