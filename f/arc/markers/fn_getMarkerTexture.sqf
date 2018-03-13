/*
 * Author: Kingsley
 * Gets the texture of a marker
 * Used in conjunction with getMarkerType
 *
 * Arguments:
 * 0: Marker type <STRING>
 *
 * Return Value:
 * Marker texture path <STRING>
 *
 * Example:
 * _texture = ["b_plane"] call ARC_fnc_getMarkerTexture;
 *
 * Public: Yes
 */

params ["_type"];

if (_type == "" || {!(isClass (configfile >> "CfgMarkers" >> _type))}) exitWith {nil};

(getText (configfile >> "CfgMarkers" >> _type >> "texture"))