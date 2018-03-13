// [<newUnit>,<oldUnit>,<respawn>,<respawnDelay>]
// [player, objNull, 1, 1, true] call f_fnc_CamInit;

_this spawn {
    params [
        ["_unit", objNull],
        ["_oldUnit", objNull],
        ["_respawn", 1],
        ["_respawnDelay", 3],
        ["_forced", false]
    ];

    ARC_isSpectating = true;
    ARC_cam_preCamGroup = group player;
    ARC_cam_preCamSide = playerSide;
    ARC_cam_preCamName = name player;
    ARC_cam_preCamPos = getPos player;
    ARC_cam_preCamClassname = typeOf player;
    ARC_cam_preCamLoadout = [player, "init", false] call BIS_fnc_exportInventory;
    ARC_cam_preCamLoadout_new = getUnitLoadout player;

    if (isNil "ARC_spectatorUnits") then {
        ARC_spectatorUnits = [];
        publicVariable "ARC_spectatorUnits";
    };

    if (isNil "f_cam_isJIP") then {f_cam_isJIP = false};
    if (isNull _unit) then {_unit = cameraOn; f_cam_isJIP = true};
    if (typeOf _unit != "seagull" && !_forced || !hasInterface) exitWith {};
    waituntil {missionNamespace getVariable ["BIS_fnc_feedback_allowDeathScreen", true] || isNull (_oldUnit) || f_cam_isJIP || _forced};

    if (!isNil "BIS_fnc_feedback_allowPP") then {
        BIS_fnc_feedback_allowPP = false;
    };

    if (f_cam_isJIP) then {
        ["F_ScreenSetup",false] call BIS_fnc_blackOut;
        uiSleep 3;
        ["F_ScreenSetup"] call BIS_fnc_blackIn;
    };

    // Create a Virtual Agent to act as our player to make sure we get to keep Draw3D
    createCenter ARC_cam_preCamSide;
    _newGrp = createGroup ARC_cam_preCamSide;
    _newUnit = _newGrp createUnit [ARC_cam_preCamClassname, [0,0,25], [], 0, "FORM"];
    _newUnit setName ARC_cam_preCamName;
    _newUnit setUnitLoadout [ARC_cam_preCamLoadout_new, true];
    _newUnit allowDamage false;
    _newUnit enableSimulation false;
    _newUnit setPosASL [0,0,25];
    selectPlayer _newUnit;
    waitUntil {player == _newUnit};
    player setVariable ["ARC_cam_preCamSide", ARC_cam_preCamSide, true];
    player setVariable ["ARC_cam_isVirtual", true, true];
    player setVariable ["ARC_wantsToRejoin", false, true];
    deleteVehicle _unit;
    ARC_spectatorUnits pushBack player;
    publicVariable "ARC_spectatorUnits";
    {player removeItem _x} forEach ([] call acre_api_fnc_getCurrentRadioList);

    if (isNull _oldUnit) then {
        if (count playableUnits > 0) then {
            _oldUnit = (playableUnits select 0);
        } else {
            _oldUnit = (allUnits select 0);
        };
    };

    // ACRE
    [true] call acre_api_fnc_setSpectator;

    // Chat
    call ARC_fnc_disableAllChannels;
    ARC_spectatorChatID radioChannelAdd [player];
    setCurrentChannel ARC_spectatorChatID;
    ["Use Spectator Channel to Chat", -1, -1, 4, 0] spawn BIS_fnc_dynamicText;

    _listBox = 2100;
    lbClear _listBox;
    #include "macros.hpp"
    f_cam_controls = [F_CAM_HELPFRAME,F_CAM_HELPBACK,F_CAM_MOUSEHANDLER,F_CAM_UNITLIST,F_CAM_HELPCANCEL,F_CAM_HELPCANCEL,F_CAM_MINIMAP,F_CAM_FULLMAP,F_CAM_BUTTIONFILTER,F_CAM_BUTTIONTAGS,F_CAM_BUTTIONTAGSNAME,F_CAM_BUTTIONFIRSTPERSON,F_CAM_BUTTONRESPAWN,F_CAM_TOGGLELIST,F_CAM_TRACERS,F_CAM_REFRESH];
    f_cam_units = [];
    f_cam_players = [];
    f_cam_startX = 0;
    f_cam_startY = 0;
    f_cam_detlaX = 0;
    f_cam_detlaY = 0;
    f_cam_zoom = 0;
    f_cam_hideUI = false;
    f_cam_map_zoom = 0.5;
    f_cam_mode = 0;
    f_cam_toggleCamera = false;
    f_cam_playersOnly = false;
    f_cam_toggleTags = false;
    f_cam_ads = false;
    f_cam_nvOn = false;
    f_cam_tiBHOn = false;
    f_cam_tiWHOn = false;
    f_cam_tagsEvent = -1;
    f_cam_mShift = false;
    f_cam_freecamOn = false;
    f_cam_toggleTagsName = true;
    f_cam_mapMode = 0;
    f_cam_MouseButton = [false,false];
    f_cam_mouseCord = [0.5,0.5];
    f_cam_mouseDeltaX = 0.5;
    f_cam_mouseDeltaY = 0.5;
    f_cam_mouseLastX = 0.5;
    f_cam_mouseLastY = 0.5;
    f_cam_angleYcached  = 0;
    f_cam_angleX = 0;
    f_cam_tracerOn = false;
    f_cam_angleY = 60;
    f_cam_ctrl_down = false;
    f_cam_shift_down = false;
    f_cam_freecam_buttons = [false,false,false,false,false,false];
    f_cam_forcedExit = false;
    f_freecam_x_speed = 0;
    f_freecam_y_speed = 0;
    f_freecam_z_speed = 0;

    f_cam_timestamp = time;
    f_cam_muteSpectators = true;

    f_cam_cachedTracers = [];
    f_cam_tracersFinished = true;

    // Menu (Top left)
    f_cam_menuControls = [21111,/*2111,2112,*/2113,2236,2114,5532];
    f_cam_menuShown = true;
    f_cam_menuWorking = false;
    f_cam_sideButton = 0; // 0 = ALL, 1 = BLUFOR , 2 = OPFOR, 3 = INDFOR , 4 = Civ
    f_cam_sideNames = ["UNIT LIST (ALL SIDES)","UNIT LIST (BLUFOR)","UNIT LIST (OPFOR)","UNIT LIST (INDFOR)","UNIT LIST (CIV)"];

    f_cam_tagsButton = 0;
    f_cam_tagsNames = ["TAGS (OFF)","TAGS (ALL SIDES)","TAGS (ALL PLAYERS)","TAGS (BLUFOR)","TAGS (OPFOR)","TAGS (INDFOR)","TAGS (CIV)"];

    f_cam_tracersButton = 0;
    f_cam_tracersNames = ["3D TRACERS (OFF)", "3D TRACERS (PLAYERS)", "3D TRACERS (AI)", "3D TRACERS (BOTH)"];

    f_cam_unitListShow = true;

    // Colors
    f_cam_blufor_color = [0.2, 0.2, 1, 1];
    f_cam_opfor_color = [1, 0.2, 0.2, 1];
    f_cam_indep_color = [0, 0.702, 0.349, 1];
    f_cam_civ_color = [civilian] call BIS_fnc_sideColor;
    f_cam_empty_color = [sideUnknown] call BIS_fnc_sideColor;

    // Camera
    f_cam_angle = 360;
    f_cam_zoom = 3;
    f_cam_height = 3;
    f_cam_fovZoom = 1.2;
    f_cam_scrollHeight = 0;
    f_cam_cameraMode = 0; // set camera mode (default)

    f_cam_listUnits = [];

    f_cam_ToggleFPCamera = {
        f_cam_toggleCamera = !f_cam_toggleCamera;
        if (f_cam_toggleCamera) then {
            f_cam_mode = 1; //(view)
            f_cam_camera cameraEffect ["terminate", "BACK"];
            f_cam_curTarget switchCamera "internal";
        } else {
            f_cam_mode = 0;
            f_cam_camera cameraEffect ["internal", "BACK"];
        };
    };

    f_cam_GetCurrentCam = {
        _camera = f_cam_camera;
        switch (f_cam_mode) do {
            case 0: {
                _camera = f_cam_camera; // Standard
            };
            case 1: {
                _camera = cameraOn; // FP
            };
            case 3: {
                _camera = f_cam_freecamera; // freecam
            };
        };
        _camera
    };

    #include "tracers.sqf"

    createDialog "f_spec_dialog";

    ((findDisplay 9228) displayCtrl 1350) ctrlShow false;
    ((findDisplay 9228) displayCtrl 1350) mapCenterOnCamera false;

    ((findDisplay 9228) displayCtrl 1360) ctrlShow false;
    ((findDisplay 9228) displayCtrl 1360) mapCenterOnCamera false;

    // Auto-size controls
    _btnWidth = safeZoneW / (count f_cam_menuControls);
    _w = 0 * safeZoneW + safeZoneX;

    {
        ((findDisplay 9228) displayCtrl _x) ctrlSetPosition [_w, (0 * safeZoneH + safeZoneY), _btnWidth, (0.03 * safeZoneH)];
        ((findDisplay 9228) displayCtrl _x) ctrlCommit 0;
        _w = _w + _btnWidth;
    } forEach f_cam_menuControls;

    f_cam_helptext = "<t align='left'><t color='#FFFFFF'><t size='1.5'>Camera</t><br />Hold Right-Click to pan the camera<br />Use the Scroll-Wheel or Numpad +/- to zoom in and out<br />Use Ctrl + Right-Click to change FOV zoom<br />Press Space to toggle freecam<br /><br /><t size='1.5'>Interface</t><br />Press H to toggle the help window<br />Press M to toggle between no map, minimap and full size map<br />Press T to toggle tracers on the map<br />Press I to toggle tags</t></t>";

    hintSilent (parseText f_cam_helptext);
    [{hintSilent ""}, [], 10] call CBA_fnc_waitAndExecute;

    // create the camera and set it up.
    f_cam_camera = "camera" camCreate [position _oldUnit select 0,position _oldUnit select 1,3];
    f_cam_fakecamera = "camera" camCreate [position _oldUnit select 0,position _oldUnit select 1,3];

    f_cam_curTarget = _oldUnit;
    f_cam_freecamera = "camera" camCreate [position _oldUnit select 0,position _oldUnit select 1,3];
    f_cam_camera camCommit 0;
    f_cam_fakecamera camCommit 0;
    f_cam_camera cameraEffect ["internal","back"];
    f_cam_camera camSetTarget f_cam_fakecamera;
    f_cam_camera camSetFov 1.2;
    f_cam_freecamera camSetFov 1.2;
    f_cam_zeusKey = 21;

    if (count (actionKeys "curatorInterface") > 0) then {
        f_cam_zeusKey = (actionKeys "curatorInterface") select 0;
    };

    f_cam_MouseMoving = false;
    cameraEffectEnableHUD true;
    showCinemaBorder false;
    f_cam_fired = [];

    {
        _event = _x addEventHandler ["fired", {
            f_cam_fired = f_cam_fired - [objNull];
            f_cam_fired pushBack (_this select 6);
        }];
        _x setVariable ["f_cam_fired_eventid", _event];
        false
    } count (allUnits + vehicles);

    [] call f_fnc_UpdateValues;
    ["f_spect_tags", "onEachFrame", {_this call f_fnc_DrawTags}] call BIS_fnc_addStackedEventHandler;
    ["f_spect_cams", "onEachFrame", {_this call f_fnc_FreeCam}] call BIS_fnc_addStackedEventHandler;
    f_cam_tracerPFH = [] call f_fnc_handleTracers;
};