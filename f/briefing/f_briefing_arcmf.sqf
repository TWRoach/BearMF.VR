player createDiarySubject ["Blackbear", "Blackbear"];

_zeus = "<br/><font size='18'>區域性聲音 - <execute expression=""[true] call acre_api_fnc_setSpectator"">Enable</execute> / <execute expression=""[false] call acre_api_fnc_setSpectator"">Disable</execute></font><br/>切換區域性聲音可以讓你使用ACRE特有觀戰者模式,你可以在宙斯視角中聽到相對應的玩家聲音.";
player createDiaryRecord ["Blackbear", ["宙斯", _zeus]];

if ((call ARC_fnc_isRespawnEnabled)) then {
    _spect = "<br/><font size='18'>Spectator - <execute expression=""[player, player, 3, 1, true] call f_fnc_CamInit"">Forcefully Start Spectator</execute></font><br/>Forcefully starting spectator means your player unit will leave its group and disappear. Exiting the spectator is a complex process and may cause unexpected behaviour.";
    player createDiaryRecord ["Blackbear", ["Spectator", _spect]];
};

_radios = "<br/><font size='18'>缺少無線電</font><br/><font size='16'>AN/PRC-343 - <execute expression=""[player, '343'] call ARC_fnc_addMissingRadio"">Add to Inventory</execute></font><br/><font size='16'>AN/PRC-148 - <execute expression=""[player, '148'] call ARC_fnc_addMissingRadio"">Add to Inventory</execute></font><br/><font size='16'>AN/PRC-152 - <execute expression=""[player, '152'] call ARC_fnc_addMissingRadio"">Add to Inventory</execute></font><br/>不要濫用此功能,只有你忘了拿無線電或小隊長允許的情況下才可以使用這個功能";
player createDiaryRecord ["Blackbear", ["無線電", _radios]];

if (serverCommandAvailable "#kick" || isServer) then {
    _gear = "<br/><font size='18'>分配裝備給玩家</font><br/><font size='16'><execute expression=""openMap false; createDialog 'GUI_Gear';"">Open Gear Manager</execute></font><br/><br/><execute expression=""openMap false; [west] call ARC_fnc_reassignGear;"">Re-Assign BLUFOR</execute><br/><execute expression=""openMap false; [east] call ARC_fnc_reassignGear;"">Re-Assign OPFOR</execute><br/><execute expression=""openMap false; [resistance] call ARC_fnc_reassignGear;"">Re-Assign INDFOR</execute>";
    player createDiaryRecord ["Blackbear", ["裝備", _gear]];

    _grp = "<br/><font size='18'>隊伍名稱管理器</font><br/><font size='16'><execute expression=""openMap false; createDialog 'GUI_Groups';"">Open Group Manager</execute></font>";
    player createDiaryRecord ["Blackbear", ["隊伍", _grp]];
};

if ((getNumber (missionConfigFile >> "Header" >> "sandbox")) == 1) then {
    _advMode = "<br/><font size='18'>Adversarial Mode - <execute expression=""[true] call ARC_fnc_toggleAdversarial"">Enable</execute> / <execute expression=""[false] call ARC_fnc_toggleAdversarial"">Disable</execute></font><br/>Enabling adversarial mode will automatically make players enter spectator upon respawn. This is useful for off-day team vs team scenarios.<br/><br/><execute expression=""[west] call ARC_fnc_setAdversarialStart"">SET BLUFOR START</execute><br/><execute expression=""[east] call ARC_fnc_setAdversarialStart"">SET OPFOR START</execute><br/><execute expression=""[resistance] call ARC_fnc_setAdversarialStart"">SET INDFOR START</execute>";
    player createDiaryRecord ["Blackbear", ["Adversarial", _advMode]];
};

_debug = "<br/><font size='18'>客戶端武器安全 - <execute expression=""[true] call f_fnc_safety"">Enable</execute> / <execute expression=""[false] call f_fnc_safety"">Disable</execute></font><br/><br/><font size='18'><execute expression=""[player] call ARC_fnc_resetPosition; openMap false;"">Reset Position</execute> - 用於當你被卡住</font>";
player createDiaryRecord ["Blackbear", ["Debug", _debug]];

_docs = "<br/><font size='18'>Chat Commands</font><br/><font size='14' color='#ffbc43'>#loadout &lt;name&gt;</font><br/><font size='12'>這將給你特定的裝備,同時會有訊息通知所有人 例如. #loadout aar -> Kilroy received loadout 'aar' from chat.</font><br/><br/><font size='14' color='#ffbc43'>#groupname &lt;name&gt;</font><br/><font size='12'>這將設定你隊伍名稱. 例如#groupname PltHQ - 只有小隊長才可以使用</font><br/><br/><font size='14' color='#ffbc43'>#groupcolor &lt;color&gt;</font><br/><font size='12'>你可以在這裡設定隊伍標記顏色 例如. #groupcolor yellow - 只有小隊長才可以使用</font><br/><br/><font size='14' color='#ffbc43'>#radio &lt;type&gt;</font><br/><font size='12'>這會給你一個無線電 例如.  #radio 148 - 他將會記錄在 Map > Blackbear > Log.</font><br/><br/><font size='14' color='#ffbc43'>#rp</font><br/><font size='12'>這會重置你目前位置 - 當你被困在石頭或bug裡面時使用.</font>";
player createDiaryRecord ["Blackbear", ["文檔", _docs]];

player createDiaryRecord ["Blackbear", ["版本", format ["<br/>%1", (loadFile "version.txt")]]];
