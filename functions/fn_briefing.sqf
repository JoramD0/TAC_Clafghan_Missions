/*
 * Author: Kresky, Jonpas
 * Adds briefing based on side.
 * Call from initPlayerLocal.sqf.
 * Copy to other side briefings if you want to add briefings to those sides.
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player] call FUNC(briefing);
 *
 * New Line:
 * <br/>
 *
 * Text Colour (Hex colour Code)
 * <font color='#FF0000'>TEXT HERE</font color>
 *
 * Clickable Marker Link:
 * <marker name = 'MARKER_NAME'>MARKER_TEXT</marker>
 *
 * Image:
 * <img image='FOLDER\IMAGE.jpg' width='200' height='100'/>
 */
#include "..\script_component.hpp"

params ["_player"];

switch (side _player) do {
	// BLUFOR briefing
	case west: {
		_player createDiaryRecord ["Diary", ["Khmer Rebel Intel", "
			<br/>Thanks to the rebels who defected recently, we've gained some additional Intel on the rebel HQ and rebel outpost.
			<br/>We've learned of the approximate locations of various of treehouse scouts, as well as some areas with punji traps.
			<br/>Additionally the defectors have informed us that the rebels have placed DShK's on high ground to target aircraft. Helicopter pilots will need to be careful. The guns aren't dedicated AA weapons however, and as such aren't as powerful and they cannot aim that high up.
			<br/>
			<br/>Treehouse scout locations:
			<br/><marker name = 'tree_01'>Treehouse 1</marker>
			<br/><marker name = 'tree_02'>Treehouse 2</marker>
			<br/><marker name = 'tree_03'>Treehouse 3</marker>
			<br/><marker name = 'tree_04'>Treehouse 4</marker>
			<br/><marker name = 'tree_05'>Treehouse 5</marker>
			<br/><marker name = 'tree_06'>Treehouse 6</marker>
			<br/><marker name = 'tree_07'>Treehouse 7</marker>
			<br/><marker name = 'tree_08'>Treehouse 8</marker>
			<br/><marker name = 'tree_09'>Treehouse 9</marker>
			<br/><marker name = 'tree_10'>Treehouse 10</marker>
			<br/><marker name = 'tree_11'>Treehouse 11</marker>
			<br/><marker name = 'tree_12'>Treehouse 12</marker>
			<br/>
			<br/>Punji Trap areas:
			<br/><marker name = 'punji_01'>Punji Area 1</marker>
			<br/><marker name = 'punji_02'>Punji Area 2</marker>
			<br/><marker name = 'punji_03'>Punji Area 3</marker>
			<br/><marker name = 'punji_04'>Punji Area 4</marker>
			<br/><marker name = 'punji_05'>Punji Area 5</marker>
			<br/>
			<br/>DShK Emplacements:
			<br/><marker name = 'mg_01'>Emplacement 1</marker>
			<br/><marker name = 'mg_02'>Emplacement 2</marker>
		"]];
		
		_player createDiaryRecord ["Diary", ["Objectives", "
			<br/>While <marker name = 'task_04'>CDF operates along the road</marker> pushing <marker name = 'task_05'>north</marker>, Theseus has been tasked with assaulting and securing the rebel HQ and rebel outpost further east.
			<br/>We're also to search and rescue the USPACOM agent, James Miller, as well as eliminate or capture the officer Samay Chhoub.
			<br/>Additionally, if we find any supplies at the rebel HQ, we've been asked to destroy them, as getting it out of the jungle will take time and we cannot risk the rebels, or Red Star Militia, getting their hands on them.
			<br/>
			<br/><font color='#E3D310'>PRIMARY OBJECTIVES:</font color>
			<br/>- Assault and secure the <marker name = 'task_01'>Rebel HQ</marker>
			<br/>- Assault and secure the <marker name = 'task_02'>Rebel Outpost</marker>
			<br/>- Find and rescue USPACOM Agent James Miller
			<br/>- Find and eliminate or capture the enemy rebel officer Samay Chhoub
			<br/>
			<br/><font color='#E3D310'>SECONDARY OBJECTIVES:</font color>
			<br/>- Blow up rebel supplies located at the Rebel HQ
			<br/>- Bring back any prisoners you find to the <marker name = 'task_03'>Forward HQ</marker>
			<br/>- Eliminate all the treehouse scouts (See Khmer Rebel Intel tab for approximate locations)
		"]];

		_player createDiaryRecord ["Diary", ["Situation", "
			<br/>After having successfully driven away the rebels from the east, CDF have now set their eyes on the north.
			<br/>Together with Theseus, they will be conducting a larger push north, eliminating various of rebel held locations that they've learned about thanks to the Intel we gathered.
			<br/>CDF will be mainly pushing along the main road up north, securing the two crossroads, <marker name = 'task_06'>crossroad 1</marker> and <marker name = 'task_07'>crossroad 2</marker>, as well as securing a <marker name = 'task_08'>suspected rebel outpost</marker>.
			<br/>A forward recon team have reported activity from the Red Star Militia as well, and CDF is expecting to meet some light RSM troops as they push further north.
			<br/>
			<br/>Theseus will be moving towards what is suspected to be a primary <marker name = 'task_01'>Rebel HQ</marker>, which we will assault and secure. Additionally, we're to push further north and secure the <marker name = 'task_02'>small outpost just north of the HQ</marker>.
			<br/>Thanks to the Intel we've gathered, we've learned that the rebels have managed to capture a USPACOM agent named James Miller, who went missing a few weeks ago.
			<br/>Additionally we've learned of a high ranking officer within the Khmer Rebels, currently operating inside the rebel HQ. According to the intel, this may be the high-ranked commander, Samay Chhoub, whos identity were previously mostly unknown.
			<br/>
			<br/><font color='#1D69F6'>FRIENDLY FORCES:</font color>
			<br/>Theseus Inc.
			<br/>Cambodian Defence Force
			<br/>
			<br/><font color='#D81717'>ENEMY FORCES:</font color>
			<br/>Khmer Rebels
			<br/>Red Star Militia
		"]];
	};

	// OPFOR briefing
	case east: {

	};

	// RESISTANCE/INDEPENDENT briefing
	case resistance: {

	};

	// CIVILIAN briefing
	case civilian: {

	};
};
