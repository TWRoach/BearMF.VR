private _side = _this;

_outputText = "";
_situation = "";

_sit = [_side, "situation"] call ARC_fnc_buildBriefingFromConfig;
if (_sit != "") then {
    _situation = format ["%1<font size='22'>情況</font><br/>", _situation];
    _situation = format ["%1%2<br/><br/>", _situation, _sit];
};

_ef = [_side, "enemyForces"] call ARC_fnc_buildBriefingFromConfig;
if (_ef != "") then {
    _situation = format ["%1<font size='16'>敵軍</font><br/>%2<br/><br/>", _situation, _ef];
};

_ff = [_side, "friendlyForces"] call ARC_fnc_buildBriefingFromConfig;
if (_ff != "") then {
    _situation = format ["%1<font size='16'>友軍</font><br/>%2<br/><br/>", _situation, _ff];
};

_outputText = format ["%1%2", _outputText, _situation];

_mission = [_side, "mission"] call ARC_fnc_buildBriefingFromConfig;
if (_mission != "") then {
    _outputText = format ["%1<font size='22'>任務目標</font><br/>%2<br/><br/>", _outputText, _mission];
};

_specialTasks = [_side, "specialTasks"] call ARC_fnc_buildBriefingFromConfig;
if (_specialTasks != "") then {
    _outputText = format ["%1<font size='16'>特殊任務</font><br/>%2<br/><br/>", _outputText, _specialTasks];
};

_commandersIntent = [_side, "commandersIntent"] call ARC_fnc_buildBriefingFromConfig;
if (_commandersIntent != "") then {
    _outputText = format ["%1<font size='22'>指揮官的意圖</font><br/>%2<br/><br/>", _outputText, _commandersIntent];
};

_movementPlan = [_side, "movementPlan"] call ARC_fnc_buildBriefingFromConfig;
if (_movementPlan != "") then {
    _outputText = format ["%1<font size='16'>移動計畫</font><br/>%2<br/><br/>", _outputText, _movementPlan];
};

_fireSupportPlan = [_side, "fireSupportPlan"] call ARC_fnc_buildBriefingFromConfig;
if (_fireSupportPlan != "") then {
    _outputText = format ["%1<font size='16'>火力支援計劃</font><br/>%2<br/><br/>", _outputText, _fireSupportPlan];
};

_admin = [_side, "logistics"] call ARC_fnc_buildBriefingFromConfig;
if (_admin != "") then {
    _outputText = format ["%1<font size='22'>後勤</font><br/>%2", _outputText, _admin];
};

if (_outputText != "") then {
    player createDiaryRecord ["diary", ["作戰簡報", _outputText]];
};
