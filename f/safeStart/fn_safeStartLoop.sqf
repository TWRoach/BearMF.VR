	if (!isServer) exitWith {};

if (!isNil "ARC_briefingIntervalPFH") then {
    [ARC_briefingIntervalPFH] call CBA_fnc_removePerFrameHandler;
};

if (!isNil "ARC_briefingEndIntervalPFH") then {
    [ARC_briefingEndIntervalPFH] call CBA_fnc_removePerFrameHandler;
};

[true] remoteExec ["f_fnc_safety", (playableUnits + switchableUnits)];

if (f_var_mission_timer > 0) then {	
    format ["武器鎖定中, 簡報階段會在 %1 分鐘後結束%2.", f_var_mission_timer, ["","s"] select (f_var_mission_timer > 1)] remoteExecCall ["hintSilent", 0];
} else {
    "武器鎖定中,任何武器都無法造成傷害,直到管理員解除." remoteExecCall ["hintSilent", 0];
};

ARC_briefingTimeEnd = false;
publicVariable "ARC_briefingTimeEnd";

acex_fortify_mode = true;
publicVariable "acex_fortify_mode";

[{
    ARC_briefingTimeMinutes = 0;
    ARC_briefingInterval = 0;

    ARC_briefingIntervalPFH = [{
        params ["_args","_handlerID"];

        if (f_var_mission_timer > 0 && {ARC_briefingTimeMinutes >= f_var_mission_timer}) then {
            ARC_briefingTimeEnd = true;
            publicVariable "ARC_briefingTimeEnd";
        };

        if (ARC_briefingTimeEnd) exitWith {
            [_handlerID] call CBA_fnc_removePerFrameHandler;

            ARC_briefingEndInterval = 5;

            ARC_briefingEndIntervalPFH = [{
                params ["_args","_handlerID"];

                if (ARC_briefingEndInterval <= 0) exitWith {
                    ["以解除鎖定,遊戲開始!", 5] remoteExecCall ["ARC_fnc_hint", 0];
                    [false] remoteExec ["f_fnc_safety", (playableUnits + switchableUnits)];
                    [_handlerID] call CBA_fnc_removePerFrameHandler;
                    acex_fortify_mode = false;
                    publicVariable "acex_fortify_mode";

                    if (getNumber (missionConfigFile >> "CfgARCMF" >> "General" >> "freezeTime") == 2) then {
                        setTimeMultiplier 1;
                    };
                };

                format [
                    "武器在 %1 秒後解除鎖定",
                    ARC_briefingEndInterval,
                    ["s",""] select (ARC_briefingEndInterval == 1)
                ] remoteExecCall ["hintSilent", 0];

                ARC_briefingEndInterval = ARC_briefingEndInterval - 1;
            }, 1, []] call CBA_fnc_addPerFrameHandler;
        };

        if (ARC_briefingInterval == 60) exitWith {
            ARC_briefingTimeMinutes = ARC_briefingTimeMinutes + 1;
            [0, ARC_briefingTimeMinutes] call ARC_fnc_displayBriefingTime;
            ARC_briefingInterval = 0;
        };

        ARC_briefingInterval = ARC_briefingInterval + 1;
    }, 1, []] call CBA_fnc_addPerFrameHandler;
}, [], 5] call CBA_fnc_waitAndExecute;
