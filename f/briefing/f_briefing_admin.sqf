_briefing = "<br/><font size='18'>管理部分</font><br/>這頁面只有目前的管理員看的到.<br/><br/>";

_briefing = _briefing + "<font size='18'>結束控制區</font><br/>";

{
    _title = getText (_x >> "title");
    _description = getText (_x >> "description");
    _index = _forEachIndex + 1;
    _briefing = _briefing + (format ["<execute expression=""[[%1], 'f_fnc_mpEnd', false] spawn BIS_fnc_MP;"">%2</execute><br/>", _index, _title]);
} forEach ("true" configClasses (missionConfigFile >> "CfgDebriefing"));

_briefing = _briefing + "<br/><font size='18'>簡報控制區</font><br/><execute expression=""[] remoteExecCall ['f_fnc_safeStartLoop', 2]"">開始簡報階段</execute><br/><execute expression=""ARC_briefingTimeEnd = true; publicVariable 'ARC_briefingTimeEnd';"">結束簡報階段</execute><br/><execute expression=""[true] remoteExec ['f_fnc_safety', (playableUnits + switchableUnits)];"">開啟強制所有玩家安全</execute><br/><execute expression=""[false] remoteExec ['f_fnc_safety', (playableUnits + switchableUnits)];"">關閉強制所有玩家安全</execute><br/><br/>";

player createDiaryRecord ["diary", ["管理員介面", _briefing]];
