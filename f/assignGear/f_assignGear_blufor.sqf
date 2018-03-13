removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

switch (_typeOfUnit) do {
// LOADOUT: COMMANDER
    case "co": {
        this forceAddUniform "rhs_uniform_cu_ucp_10th";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_iotv_ucp_Squadleader";
        for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_M433_HEDP";};
        for "_i" from 1 to 3 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        for "_i" from 1 to 4 do {this addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_SmokeGreen_Grenade_shell";};
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_SmokeBlue_Grenade_shell";};
        this addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";
        this addWeapon "rhs_weap_m4a1_carryhandle_m203";
        this addPrimaryWeaponItem "rhsusf_acc_SFMB556";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
        this addPrimaryWeaponItem "rhsusf_acc_eotech_xps3";
        this addWeapon "rhsusf_weap_m9";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
    case "dc": {
        this forceAddUniform "rhs_uniform_cu_ucp_10th";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_iotv_ucp_Squadleader";
        for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_M433_HEDP";};
        for "_i" from 1 to 3 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        for "_i" from 1 to 4 do {this addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_SmokeGreen_Grenade_shell";};
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_SmokeBlue_Grenade_shell";};
        this addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";
        this addWeapon "rhs_weap_m4a1_carryhandle_m203";
        this addPrimaryWeaponItem "rhsusf_acc_SFMB556";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
        this addPrimaryWeaponItem "rhsusf_acc_eotech_xps3";
        this addWeapon "rhsusf_weap_m9";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: FORWARD AIR CONTROLLER
    case "fac": {
        this forceAddUniform "rhs_uniform_cu_ucp_10th";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_iotv_ucp_Repair";
        for "_i" from 1 to 9 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        this addBackpack "rhsusf_assault_eagleaiii_ucp";
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_mag_m18_purple";};
        for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_m18_yellow";};
        for "_i" from 1 to 4 do {this addItemToBackpack "rhs_mag_m18_red";};
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_mag_m18_green";};
        this addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";
        this addWeapon "rhs_weap_m4a1_carryhandle_mstock_grip2";
        this addPrimaryWeaponItem "rhsusf_acc_SFMB556";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
        this addPrimaryWeaponItem "rhsusf_acc_compm4";
        this addPrimaryWeaponItem "rhsusf_acc_grip2";
        this addWeapon "rhsusf_weap_m9";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MEDIC
    case "m": {
        this forceAddUniform "rhs_uniform_cu_ucp_10th";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_spcs_ucp_rifleman";
        for "_i" from 1 to 9 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        this addBackpack "rhsusf_assault_eagleaiii_ucp";
        for "_i" from 1 to 30 do {this addItemToBackpack "ACE_fieldDressing";};
        for "_i" from 1 to 15 do {this addItemToBackpack "ACE_morphine";};
        for "_i" from 1 to 10 do {this addItemToBackpack "ACE_epinephrine";};
        for "_i" from 1 to 5 do {this addItemToBackpack "ACE_salineIV_250";};
        for "_i" from 1 to 10 do {this addItemToBackpack "ACE_personalAidKit";};
        this addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";
        this addWeapon "rhs_weap_m4a1_carryhandle_mstock_grip2";
        this addPrimaryWeaponItem "rhsusf_acc_SFMB556";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
        this addPrimaryWeaponItem "rhsusf_acc_compm4";
        this addPrimaryWeaponItem "rhsusf_acc_grip2";
        this addWeapon "rhsusf_weap_m9";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: FIRE TEAM LEADER
    case "ftl": {
        this forceAddUniform "rhs_uniform_cu_ucp_10th";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_iotv_ucp_Squadleader";
        for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_M433_HEDP";};
        for "_i" from 1 to 3 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        for "_i" from 1 to 4 do {this addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_SmokeGreen_Grenade_shell";};
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_SmokeBlue_Grenade_shell";};
        this addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";
        this addWeapon "rhs_weap_m4a1_carryhandle_m203";
        this addPrimaryWeaponItem "rhsusf_acc_SFMB556";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
        this addPrimaryWeaponItem "rhsusf_acc_eotech_xps3";
        this addWeapon "rhsusf_weap_m9";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: RIFLEMAN
    case "r": {
this forceAddUniform "LOP_U_UA_Fatigue_01";
for "_i" from 1 to 12 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 4 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_XL50";
this addVest "LOP_V_CarrierRig_WDL";
for "_i" from 1 to 7 do {this addItemToVest "rhs_30Rnd_762x39mm_Savz58_tracer";};
for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_9x18_8_57N181S";};
this addBackpack "rhssaf_kitbag_md2camo";
for "_i" from 1 to 6 do {this addItemToBackpack "rhs_30Rnd_762x39mm_Savz58_tracer";};
for "_i" from 1 to 4 do {this addItemToBackpack "rhs_mag_rdg2_white";};
this addHeadgear "LOP_H_SSh68Helmet_BLK";
this addGoggles "rhs_balaclava1_olive";
this addWeapon "rhs_weap_savz58p_rail";
this addPrimaryWeaponItem "rhsgref_acc_zendl";
this addPrimaryWeaponItem "RH_reflex";
this addWeapon "rhs_weap_makarov_pm";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
    };

// LOADOUT: AUTOMATIC RIFLEMAN
    case "r1": {
this forceAddUniform "LOP_U_UA_Fatigue_02";
for "_i" from 1 to 12 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 4 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_XL50";
this addVest "LOP_V_CarrierRig_WDL";
for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_9x18_8_57N181S";};
for "_i" from 1 to 4 do {this addItemToVest "rhs_30Rnd_762x39mm_Savz58_tracer";};
this addBackpack "rhssaf_kitbag_smb";
for "_i" from 1 to 10 do {this addItemToBackpack "rhs_30Rnd_762x39mm_Savz58_tracer";};
for "_i" from 1 to 4 do {this addItemToBackpack "rhs_mag_rdg2_white";};
this addHeadgear "LOP_H_SSh68Helmet_BLK";
this addGoggles "rhs_balaclava1_olive";
this addWeapon "rhs_weap_savz58v_rail";
this addPrimaryWeaponItem "rhsgref_acc_zendl";
this addPrimaryWeaponItem "RH_reflex";
this addWeapon "rhs_weap_makarov_pm";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
    };

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
    case "r2": {
this forceAddUniform "LOP_U_UA_Fatigue_04";
for "_i" from 1 to 12 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 4 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_XL50";
this addVest "LOP_V_CarrierRig_WDL";
for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_9x18_8_57N181S";};
for "_i" from 1 to 7 do {this addItemToVest "rhs_30Rnd_762x39mm_Savz58_tracer";};
this addBackpack "rhssaf_kitbag_md2camo";
for "_i" from 1 to 6 do {this addItemToBackpack "rhs_30Rnd_762x39mm_Savz58_tracer";};
for "_i" from 1 to 4 do {this addItemToBackpack "rhs_mag_rdg2_white";};
this addHeadgear "rhs_ssh68";
this addGoggles "rhs_balaclava1_olive";
this addWeapon "rhs_weap_savz58v_rail_black";
this addPrimaryWeaponItem "RH_reflex";
this addWeapon "rhs_weap_makarov_pm";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
    };

// LOADOUT: RIFLEMAN (AT)
    case "r3": {
this forceAddUniform "LOP_U_UVF_Fatigue_BL_OSW";
for "_i" from 1 to 12 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 4 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_XL50";
this addVest "LOP_V_CarrierRig_WDL";
for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_9x18_8_57N181S";};
for "_i" from 1 to 14 do {this addItemToVest "rhsgref_5Rnd_762x54_m38";};
this addBackpack "rhssaf_kitbag_md2camo";
for "_i" from 1 to 4 do {this addItemToBackpack "rhsgref_5Rnd_762x54_m38";};
for "_i" from 1 to 4 do {this addItemToBackpack "rhs_mag_rdg2_white";};
this addHeadgear "rhs_ssh68";
this addGoggles "rhs_balaclava1_olive";
this addWeapon "rhs_weap_m38_rail";
this addPrimaryWeaponItem "RH_compM2l";
this addWeapon "rhs_weap_makarov_pm";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
    };

// LOADOUT: MEDIUM MG TEAM LEADER
    case "r4": {
this forceAddUniform "LOP_U_UA_Fatigue_01";
for "_i" from 1 to 12 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 4 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_Flashlight_XL50";
this addVest "LOP_V_CarrierRig_WDL";
for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_9x18_8_57N181S";};
for "_i" from 1 to 10 do {this addItemToVest "rhsgref_1Rnd_00Buck";};
for "_i" from 1 to 10 do {this addItemToVest "rhsgref_1Rnd_Slug";};
this addBackpack "rhssaf_kitbag_md2camo";
for "_i" from 1 to 4 do {this addItemToBackpack "rhs_mag_rdg2_white";};
for "_i" from 1 to 10 do {this addItemToBackpack "rhsgref_1Rnd_00Buck";};
for "_i" from 1 to 10 do {this addItemToBackpack "rhsgref_1Rnd_Slug";};
this addHeadgear "rhs_ssh68";
this addGoggles "rhs_balaclava1_olive";
this addWeapon "rhs_weap_Izh18";
this addPrimaryWeaponItem "RH_reflex";
this addWeapon "rhs_weap_makarov_pm";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
    };

// LOADOUT: MEDIUM MG GUNNER
    case "mmgg": {
        this forceAddUniform "rhs_uniform_cu_ucp_10th";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "rhsusf_iotv_ucp_SAW";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        for "_i" from 1 to 4 do {this addItemToVest "hlc_100Rnd_762x51_T_M60E4";};
        this addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";
        this addWeapon "rhs_weap_m240B";
        this addPrimaryWeaponItem "rhsusf_acc_eotech_552";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MEDIUM MG AMMO BEARER
    case "mmgab": {
        this forceAddUniform "rhs_uniform_cu_ucp_10th";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_spcs_ucp_rifleman";
        for "_i" from 1 to 11 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addBackpack "rhsusf_assault_eagleaiii_ucp";
        for "_i" from 1 to 8 do {this addItemToBackpack "hlc_100Rnd_762x51_T_M60E4";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        this addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";
        this addWeapon "rhs_weap_m4a1_carryhandle_mstock_grip2";
        this addPrimaryWeaponItem "rhsusf_acc_SFMB556";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
        this addPrimaryWeaponItem "rhsusf_acc_compm4";
        this addPrimaryWeaponItem "rhsusf_acc_grip2";
        this addWeapon "rhsusf_weap_m9";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MEDIUM AT TEAM LEADER
    case "mattl": {
        this forceAddUniform "rhs_uniform_cu_ucp_10th";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_iotv_ucp_Squadleader";
        for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_M433_HEDP";};
        for "_i" from 1 to 3 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        for "_i" from 1 to 4 do {this addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_SmokeGreen_Grenade_shell";};
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_SmokeBlue_Grenade_shell";};
        this addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";
        this addWeapon "rhs_weap_m4a1_carryhandle_m203";
        this addPrimaryWeaponItem "rhsusf_acc_SFMB556";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
        this addPrimaryWeaponItem "rhsusf_acc_eotech_xps3";
        this addWeapon "rhsusf_weap_m9";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: MEDIUM AT MISSILE SPECIALIST
    case "matg": {
        this forceAddUniform "rhs_uniform_cu_ucp_10th";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "rhsusf_spcs_ucp_rifleman";
        for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
        this addBackpack "B_Bergen_mcamo_F";
        for "_i" from 1 to 10 do {this addItemToBackpack "rhs_mag_smaw_SR";};
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_mag_smaw_HEAA";};
        this addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";
        this addWeapon "rhs_weap_m4a1_carryhandle_mstock_grip2";
        this addPrimaryWeaponItem "rhsusf_acc_SFMB556";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
        this addPrimaryWeaponItem "rhsusf_acc_compm4";
        this addPrimaryWeaponItem "rhsusf_acc_grip2";
        this addWeapon "rhs_weap_smaw_green";
        this addSecondaryWeaponItem "rhs_weap_optic_smaw";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MEDIUM AT ASSISTANT MISSILE SPECIALIST
    case "matab": {
        this forceAddUniform "rhs_uniform_cu_ucp_10th";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_spcs_ucp_rifleman";
        for "_i" from 1 to 11 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addBackpack "B_Bergen_mcamo_F";
        for "_i" from 1 to 10 do {this addItemToBackpack "rhs_mag_smaw_SR";};
        for "_i" from 1 to 3 do {this addItemToBackpack "rhs_mag_smaw_HEAA";};
        this addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";
        this addWeapon "rhs_weap_m4a1_carryhandle_mstock_grip2";
        this addPrimaryWeaponItem "rhsusf_acc_SFMB556";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
        this addPrimaryWeaponItem "rhsusf_acc_compm4";
        this addPrimaryWeaponItem "rhsusf_acc_grip2";
        this addWeapon "rhsusf_weap_m9";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MORTAR TEAM LEADER
    case "mtrl": {
        this forceAddUniform "rhs_uniform_cu_ucp_10th";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_iotv_ucp_Squadleader";
        for "_i" from 1 to 8 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_M433_HEDP";};
        for "_i" from 1 to 3 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        for "_i" from 1 to 4 do {this addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_SmokeGreen_Grenade_shell";};
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_SmokeBlue_Grenade_shell";};
        this addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";
        this addWeapon "rhs_weap_m4a1_carryhandle_m203";
        this addPrimaryWeaponItem "rhsusf_acc_SFMB556";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
        this addPrimaryWeaponItem "rhsusf_acc_eotech_xps3";
        this addWeapon "rhsusf_weap_m9";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: MORTAR GUNNER
    case "mtrg": {
        this forceAddUniform "rhs_uniform_cu_ucp_10th";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_spcs_ucp_rifleman";
        for "_i" from 1 to 11 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhs_mag_m67";
        this addBackpack "B_Mortar_01_weapon_F";
        this addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";
        this addWeapon "rhs_weap_m4a1_carryhandle_mstock";
        this addPrimaryWeaponItem "rhsusf_acc_SFMB556";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
        this addPrimaryWeaponItem "rhsusf_acc_compm4";
        this addPrimaryWeaponItem "rhsusf_acc_grip2";
        this addWeapon "rhsusf_weap_m9";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: MORTAR ASSISTANT
    case "mtra": {
        this forceAddUniform "rhs_uniform_cu_ucp_10th";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_spcs_ucp_rifleman";
        for "_i" from 1 to 11 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addItemToVest "rhs_mag_m67";
        this addBackpack "B_Mortar_01_support_F";
        this addHeadgear "rhsusf_ach_helmet_headset_ess_ucp";
        this addWeapon "rhs_weap_m4a1_carryhandle_mstock";
        this addPrimaryWeaponItem "rhsusf_acc_SFMB556";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
        this addPrimaryWeaponItem "rhsusf_acc_compm4";
        this addPrimaryWeaponItem "rhsusf_acc_grip2";
        this addWeapon "rhsusf_weap_m9";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: PILOT
    case "p": {
this forceAddUniform "U_B_HeliPilotCoveralls";
for "_i" from 1 to 14 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 4 do {this addItemToUniform "ACE_tourniquet";};
this addVest "rhsusf_spcs_ocp_rifleman";
for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";};
for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_an_m8hc";};
this addBackpack "rhsusf_assault_eagleaiii_ocp";
this addItemToBackpack "ToolKit";
this addHeadgear "rhsusf_hgu56p_visor";
this addWeapon "rhs_weap_m4a1_carryhandle";
this addPrimaryWeaponItem "rhsusf_acc_grip3";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";									
    };

// LOADOUT: CO-PILOT
    case "cp": {
        this forceAddUniform "rhs_uniform_cu_ucp";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        this addVest "rhsusf_iotv_ucp_Repair";
        for "_i" from 1 to 7 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m18_purple";};
        this addItemToVest "rhs_mag_m67";
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addBackpack "B_AssaultPack_blk";
        this addItemToBackpack "ToolKit";
        this addHeadgear "rhsusf_hgu56p";
        this addWeapon "rhs_weap_m4_carryhandle_mstock";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
        this linkItem "rhsusf_ANPVS_15";
    };

// LOADOUT: VEHICLE COMMANDER
    case "vc": {
        this forceAddUniform "rhs_uniform_cu_ucp_10th";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_iotv_ucp_Squadleader";
        for "_i" from 1 to 7 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_M433_HEDP";};
        for "_i" from 1 to 3 do {this addItemToVest "1Rnd_Smoke_Grenade_shell";};
        for "_i" from 1 to 4 do {this addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_SmokeGreen_Grenade_shell";};
        for "_i" from 1 to 2 do {this addItemToVest "1Rnd_SmokeBlue_Grenade_shell";};
        this addBackpack "B_AssaultPack_blk";
        this addItemToBackpack "ToolKit";
        this addHeadgear "rhsusf_cvc_green_ess";
        this addWeapon "rhs_weap_m4a1_carryhandle_m203";
        this addPrimaryWeaponItem "rhsusf_acc_SFMB556";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
        this addPrimaryWeaponItem "rhsusf_acc_eotech_xps3";
        this addWeapon "rhsusf_weap_m9";
        this addWeapon "Binocular";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
        this linkItem "ItemGPS";
    };

// LOADOUT: VEHICLE DRIVER
    case "vd": {
        this forceAddUniform "rhs_uniform_cu_ucp_10th";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_spcs_ucp_rifleman";
        for "_i" from 1 to 11 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addBackpack "B_AssaultPack_blk";
        this addItemToBackpack "ToolKit";
        this addItemToVest "rhs_mag_m67";
        this addHeadgear "rhsusf_cvc_green_ess";
        this addWeapon "rhs_weap_m4a1_carryhandle_mstock";
        this addPrimaryWeaponItem "rhsusf_acc_SFMB556";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
        this addPrimaryWeaponItem "rhsusf_acc_compm4";
        this addPrimaryWeaponItem "rhsusf_acc_grip2";
        this addWeapon "rhsusf_weap_m9";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: VEHICLE GUNNER
    case "vg": {
        this forceAddUniform "rhs_uniform_cu_ucp_10th";
        for "_i" from 1 to 3 do {this addItemToUniform "ACE_fieldDressing";};
        this addItemToUniform "ACE_CableTie";
        this addItemToUniform "ACE_morphine";
        this addItemToUniform "ACE_tourniquet";
        for "_i" from 1 to 3 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
        this addVest "rhsusf_spcs_ucp_rifleman";
        for "_i" from 1 to 11 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
        for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
        this addBackpack "B_AssaultPack_blk";
        this addItemToBackpack "ToolKit";
        this addItemToVest "rhs_mag_m67";
        this addHeadgear "rhsusf_cvc_green_ess";
        this addWeapon "rhs_weap_m4a1_carryhandle_mstock";
        this addPrimaryWeaponItem "rhsusf_acc_SFMB556";
        this addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
        this addPrimaryWeaponItem "rhsusf_acc_compm4";
        this addPrimaryWeaponItem "rhsusf_acc_grip2";
        this addWeapon "rhsusf_weap_m9";
        this linkItem "ItemMap";
        this linkItem "ItemCompass";
        this linkItem "ItemWatch";
    };

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
    default {
        if (_typeOfUnit != "r") then {["r", this] call f_fnc_assignGear;};
        if (true) exitWith {player globalChat format ["DEBUG (f\assignGear\f_assignGear_blufor.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.", this, _typeOfUnit]};
    };
};

this selectWeapon primaryWeapon this;
