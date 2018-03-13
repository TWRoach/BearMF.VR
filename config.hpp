class CfgARCMF {
    /*
-----------------------------------------------------------------------------------------------------------------
        一般設置
        描述:這裡可以幫任務自訂義常規的的設置
-----------------------------------------------------------------------------------------------------------------
    */
    class General {
        // 0: 時間不會凍結
        // 1: 時間永遠凍結
        // 2: 時間只會在簡報階段凍結
        freezeTime = 0;
    };
    /*
-----------------------------------------------------------------------------------------------------------------
        簡報設置
        描述: 這裡你可以自訂義任何陣營的的簡報
        注意: 每個陣營都有自己的文本,需要打在相對應的欄上
        警告: 你必須要把每一行都用引號包起來, 例如. mission[] = {"這是你的任務"};
-----------------------------------------------------------------------------------------------------------------
    */
    class Briefing {
        class BLUFOR {
            situation[] = {};
            mission[] = {};
            friendlyForces[] = {};
            enemyForces[] = {};
            commandersIntent[] = {};
            movementPlan[] = {};
            fireSupportPlan[] = {};
            specialTasks[] = {};
            logistics[] = {};
        };
        class OPFOR {
            situation[] = {};
            mission[] = {};
            friendlyForces[] = {};
            enemyForces[] = {};
            commandersIntent[] = {};
            movementPlan[] = {};
            fireSupportPlan[] = {};
            specialTasks[] = {};
            logistics[] = {};
        };
        class INDFOR {
            situation[] = {};
            mission[] = {};
            friendlyForces[] = {};
            enemyForces[] = {};
            commandersIntent[] = {};
            movementPlan[] = {};
            fireSupportPlan[] = {};
            specialTasks[] = {};
            logistics[] = {};
        };
        class CIVILIAN {
            situation[] = {};
            mission[] = {};
            friendlyForces[] = {};
            enemyForces[] = {};
            commandersIntent[] = {};
            movementPlan[] = {};
            fireSupportPlan[] = {};
            specialTasks[] = {};
            logistics[] = {};
        };
        class GAME_MASTER {
            situation[] = {};
            mission[] = {};
            friendlyForces[] = {};
            enemyForces[] = {};
            commandersIntent[] = {};
            movementPlan[] = {};
            fireSupportPlan[] = {};
            specialTasks[] = {};
            logistics[] = {};
        };
    };
    /*
-----------------------------------------------------------------------------------------------------------------
        標記配置
        描述: 這是自訂義每個陣營的標記配置
-----------------------------------------------------------------------------------------------------------------
    */
    class Markers {
        class BLUFOR {
            enableGroupMarkers = true;
        };
        class OPFOR {
            enableGroupMarkers = true;
        };
        class INDFOR {
            enableGroupMarkers = true;
        };
    };
    /*
-----------------------------------------------------------------------------------------------------------------
        ACRE無線電配置
        描述: 這可以自定義那些無線電可以被分配到哪一個人身上.
        筆記:
            1. 如果你想把無線電分配到所有人身上, 輸入 "all".
            2. ACRE語言功能設置值是 "english", "greek" 以及 "russian".
-----------------------------------------------------------------------------------------------------------------
    */
    class ACRE {
        class BLUFOR {
            languages[] = {"english","russian","greek"};
            AN_PRC_343[] = {"all"};
            AN_PRC_148[] = {"co", "dc", "ftl", "vc", "mmgtl", "mattl", "fac", "m"};
            AN_PRC_152[] = {"co", "dc", "cp", "p", "vc", "mmgtl", "mattl", "mtrl", "fac"};
            AN_PRC_117F[] = {};
            AN_PRC_77[] = {};
        };
        class OPFOR {
            languages[] = {"english","russian","greek"};
            AN_PRC_343[] = {"all"};
            AN_PRC_148[] = {"co", "dc", "ftl", "vc", "mmgtl", "mattl", "fac", "m"};
            AN_PRC_152[] = {"co", "dc", "cp", "p", "vc", "mmgtl", "mattl", "mtrl", "fac"};
            AN_PRC_117F[] = {};
            AN_PRC_77[] = {};
        };
        class INDFOR {
            languages[] = {"english","russian","greek"};
            AN_PRC_343[] = {"all"};
            AN_PRC_148[] = {"co", "dc", "ftl", "vc", "mmgtl", "mattl", "fac", "m"};
            AN_PRC_152[] = {"co", "dc", "cp", "p", "vc", "mmgtl", "mattl", "mtrl", "fac"};
            AN_PRC_117F[] = {};
            AN_PRC_77[] = {};
        };
    };
    /*
-----------------------------------------------------------------------------------------------------------------
        AI自訂義裝備
        簡介: 這是你幫AI團隊自訂義裝備的部分
        筆記:
            1. AI 裝備是使用概率設置隨機化的.
                a. 概率是由 0 到 1 (0 = 0%, 1 = 100%).
                b. 要是概率加起來不足1或超過 他們會被重新隨機計算.
                c. 要刪除默認的物品 請在語法中保持為空.
            2. 使用相對應的classnames進行設定.
            3. 社群AI模組 會禁止AI使用手榴彈或榴彈發射器.
            4. 這可以通用使用宙斯或MCC或任何方式重生的AI.
            5. prioritizeTracerMags - 如果true將只會使用帶有曳光彈的彈匣 (如果沒有則是標準彈匣).
            6. removeMedicalItems - 如果true則會刪除所有ACE醫療物品.
            7. removeNightVision - 如果true則會刪除所有夜視鏡
            8. enabled - 如果true會為特定的陣營啟用自訂義AI裝備 false則不會
        範例:
            headgear[] = {{"H_HelmetSpecB_snakeskin", 0.8},{"", 0.2} // 20%的機率會去除頭飾
            };
            rifles[] = {{"rhs_weap_m4a1_carryhandle", 0.75},{"rhs_weap_m249_pip_L", 0.25}};
-----------------------------------------------------------------------------------------------------------------
    */
    class AI {
        class Gear {
            class BLUFOR {
                enabled = false;
                removeNightVision = true;
                removeMedicalItems = true;
                prioritizeTracerMags = true;
                uniforms[] = {};
                vests[] = {};
                headgear[] = {};
                goggles[] = {};
                backpacks[] = {};
                faces[] = {};
                voices[] = {};
                rifles[] = {};
                launchers[] = {};
                attachments[] = {};
            };
            class OPFOR {
                enabled = false;
                removeNightVision = true;
                removeMedicalItems = true;
                prioritizeTracerMags = true;
                uniforms[] = {};
                vests[] = {};
                headgear[] = {};
                goggles[] = {};
                backpacks[] = {};
                faces[] = {};
                voices[] = {};
                rifles[] = {};
                launchers[] = {};
                attachments[] = {};
            };
            class INDFOR {
                enabled = false;
                removeNightVision = true;
                removeMedicalItems = true;
                prioritizeTracerMags = true;
                uniforms[] = {};
                vests[] = {};
                headgear[] = {};
                goggles[] = {};
                backpacks[] = {};
                faces[] = {};
                voices[] = {};
                rifles[] = {};
                launchers[] = {};
                attachments[] = {};
            };
            class CIVILIAN {
                enabled = false;
                removeNightVision = true;
                removeMedicalItems = true;
                prioritizeTracerMags = true;
                uniforms[] = {};
                vests[] = {};
                headgear[] = {};
                goggles[] = {};
                backpacks[] = {};
                faces[] = {};
                voices[] = {};
                rifles[] = {};
                launchers[] = {};
                attachments[] = {};
            };
        };
    };
    /*
-----------------------------------------------------------------------------------------------------------------
        強化配置
        簡介: 這是你自訂義設防設置的部分.
        筆記:
            1. 確保單位裝備有提供fortify tool("ACE_Fortify")
            2. 沒有資源的話,budget使用 -1
            3. 物件只有在簡報階段放置
        範例:
            budget = 5000;
            objects[] = {
                {"Land_BagFence_01_long_green_F", 50},
                {"Land_HBarrier_01_tower_green_F", 500}
            };
-----------------------------------------------------------------------------------------------------------------
    */
    class Fortify {
        class BLUFOR {
            budget = -1;
            objects[] = {};
        };
        class OPFOR {
            budget = -1;
            objects[] = {};
        };
        class INDFOR {
            budget = -1;
            objects[] = {};
        };
        class CIVILIAN {
            budget = -1;
            objects[] = {};
        };
    };
};
