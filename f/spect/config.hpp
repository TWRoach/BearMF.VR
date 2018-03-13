#define BACKGROUND_COLOR {0,0,0,1}
#define PRIMARYCOLOR {1,1,1,1}
#define ARCRED {0.741,0.173,0.173,1}

class RscSpectListBox {
    access = 0;
    type = 5;
    w = 0.4;
    h = 0.4;
    rowHeight = 0;
    rowWidth = 0;
    colorText[] = {1, 1, 1, 1};
    colorScrollbar[] = {1, 0, 0, 0};
    colorSelect[] = {0, 0, 0, 1};
    colorSelect2[] = {0, 0, 0, 1};
    colorSelectBackground[] = {0.95, 0.95, 0.95, 1};
    colorSelectBackground2[] = {1, 1, 1, 0.5};
    colorBackground[] = {0, 0, 0, 1};
    soundSelect[] = {"", 0.1, 1};
    arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
    arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
    class ListScrollBar {
        color[] = {1, 1, 1, 0.6};
        colorActive[] = {1, 1, 1, 1};
        colorDisabled[] = {1, 1, 1, 0.3};
        shadow = 0;
        thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
        arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
        arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
        border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
    };
    style = 528;
    font = "PuristaMedium";
    sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 50) * 1)";
    shadow = 0;
    colorShadow[] = {0, 0, 0, 0.5};
    color[] = {1, 1, 1, 0.1};
    colorDisabled[] = {1, 1, 1, 0.25};
    period = 1.2;
    maxHistoryDelay = 1;
    autoScrollSpeed = -1;
    autoScrollDelay = 5;
    autoScrollRewind = 0;
};
class RscSpectFrame {
    type = 0;
    idc = -1;
    style = 64;
    shadow = 2;
    colorBackground[] = {0, 0, 0, 0};
    colorText[] = PRIMARYCOLOR;
    font = "PuristaMedium";
    sizeEx = 0.02;
    text = "";
};
class RscSpectMapControl
{
    access = 0;
    alphaFadeEndScale = 2;
    alphaFadeStartScale = 2;
    colorBackground[] = {0.969,0.957,0.949,1};
    colorCountlines[] = {0.572,0.354,0.188,0.25};
    colorCountlinesWater[] = {0.491,0.577,0.702,0.3};
    colorForest[] = {0.624,0.78,0.388,0.5};
    colorForestBorder[] = {0,0,0,0};
    colorGrid[] = {0.1,0.1,0.1,0.6};
    colorGridMap[] = {0.1,0.1,0.1,0.6};
    colorInactive[] = {1,1,1,0.5};
    colorLevels[] = {0.286,0.177,0.094,0.5};
    colorMainCountlines[] = {0.572,0.354,0.188,0.5};
    colorMainCountlinesWater[] = {0.491,0.577,0.702,0.6};
    colorMainRoads[] = {0.9,0.5,0.3,1};
    colorMainRoadsFill[] = {1,0.6,0.4,1};
    colorNames[] = {0.1,0.1,0.1,0.9};
    colorOutside[] = {0,0,0,1};
    colorPowerLines[] = {0.1,0.1,0.1,1};
    colorRailWay[] = {0.8,0.2,0,1};
    colorRoads[] = {0.7,0.7,0.7,1};
    colorRoadsFill[] = {1,1,1,1};
    colorRocks[] = {0,0,0,0.3};
    colorRocksBorder[] = {0,0,0,0};
    colorSea[] = {0.467,0.631,0.851,0.5};
    colorText[] = {0,0,0,1};
    colorTracks[] = {0.84,0.76,0.65,0.15};
    colorTracksFill[] = {0.84,0.76,0.65,1};
    font = "PuristaMedium";
    fontGrid = "PuristaMedium";
    fontInfo = "PuristaMedium";
    fontLabel = "PuristaMedium";
    fontLevel = "PuristaMedium";
    fontNames = "PuristaMedium";
    fontUnits = "PuristaMedium";
    h = "safeZoneH - 1.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
    idc = 51;
    maxSatelliteAlpha = 1;
    moveOnEdges = 1;
    ptsPerSquareCLn = 10;
    ptsPerSquareCost = 10;
    ptsPerSquareExp = 10;
    ptsPerSquareFor = 9;
    ptsPerSquareForEdge = 9;
    ptsPerSquareObj = 9;
    ptsPerSquareRoad = 6;
    ptsPerSquareSea = 5;
    ptsPerSquareTxt = 20;
    scaleDefault = 0.16;
    scaleMax = 1;
    scaleMin = 0.001;
    shadow = 0;
    showCountourInterval = 0;
    sizeEx = 0.04;
    sizeExGrid = 0.02;
    sizeExInfo = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
    sizeExLabel = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
    sizeExLevel = 0.02;
    sizeExNames = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8) * 2";
    sizeExUnits = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
    stickX[] = {0.2,["Gamma",1,1.5]};
    stickY[] = {0.2,["Gamma",1,1.5]};
    style = 48;
    text = "#(argb,8,8,3)color(1,1,1,1)";
    type = 101;
    w = "SafeZoneWAbs";
    x = "SafeZoneXAbs";
    y = "SafeZoneY + 1.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
    class Legend {
        colorBackground[] = {1, 1, 1, 0.5};
        color[] = {0, 0, 0, 1};
        x = "SafeZoneX + (((safezoneW / safezoneH) min 1.2) / 40)";
        y = "SafeZoneY + safezoneH - 4.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
        w = "10 * (((safezoneW / safezoneH) min 1.2) / 40)";
        h = "3.5 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
        font = "PuristaMedium";
        sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
    };
    class ActiveMarker {
        color[] = {0.3, 0.1, 0.9, 1};
        size = 50;
    };
    class Command {
        color[] = {1, 1, 1, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
        size = 18;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
    };
    class Task {
        colorCreated[] = {1, 1, 1, 1};
        colorCanceled[] = {0.7, 0.7, 0.7, 1};
        colorDone[] = {0.7, 1, 0.3, 1};
        colorFailed[] = {1, 0.3, 0.2, 1};
        color[] = {"(profilenamespace getvariable ['IGUI_TEXT_RGB_R',0])", "(profilenamespace getvariable ['IGUI_TEXT_RGB_G',1])", "(profilenamespace getvariable ['IGUI_TEXT_RGB_B',1])", "(profilenamespace getvariable ['IGUI_TEXT_RGB_A',0.8])"};
        icon = "\A3\ui_f\data\map\mapcontrol\taskIcon_CA.paa";
        iconCreated = "\A3\ui_f\data\map\mapcontrol\taskIconCreated_CA.paa";
        iconCanceled = "\A3\ui_f\data\map\mapcontrol\taskIconCanceled_CA.paa";
        iconDone = "\A3\ui_f\data\map\mapcontrol\taskIconDone_CA.paa";
        iconFailed = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_CA.paa";
        size = 27;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
    };
    class CustomMark {
        color[] = {0, 0, 0, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\custommark_ca.paa";
        size = 24;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
    };
    class Tree {
        color[] = {0.45, 0.64, 0.33, 0.4};
        icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
        size = 12;
        importance = "0.9 * 16 * 0.05";
        coefMin = 0.25;
        coefMax = 4;
    };
    class SmallTree {
        color[] = {0.45, 0.64, 0.33, 0.4};
        icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
        size = 12;
        importance = "0.6 * 12 * 0.05";
        coefMin = 0.25;
        coefMax = 4;
    };
    class Bush {
        color[] = {0.45, 0.64, 0.33, 0.4};
        icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
        size = "14/2";
        importance = "0.2 * 14 * 0.05 * 0.05";
        coefMin = 0.25;
        coefMax = 4;
    };
    class Church {
        color[] = {1, 1, 1, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\church_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Chapel {
        color[] = {0, 0, 0, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\Chapel_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Cross {
        color[] = {0, 0, 0, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\Cross_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Rock {
        color[] = {0.1, 0.1, 0.1, 0.8};
        icon = "\A3\ui_f\data\map\mapcontrol\rock_ca.paa";
        size = 12;
        importance = "0.5 * 12 * 0.05";
        coefMin = 0.25;
        coefMax = 4;
    };
    class Bunker {
        color[] = {0, 0, 0, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
        size = 14;
        importance = "1.5 * 14 * 0.05";
        coefMin = 0.25;
        coefMax = 4;
    };
    class Fortress {
        color[] = {0, 0, 0, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
        size = 16;
        importance = "2 * 16 * 0.05";
        coefMin = 0.25;
        coefMax = 4;
    };
    class Fountain {
        color[] = {0, 0, 0, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\fountain_ca.paa";
        size = 11;
        importance = "1 * 12 * 0.05";
        coefMin = 0.25;
        coefMax = 4;
    };
    class ViewTower {
        color[] = {0, 0, 0, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\viewtower_ca.paa";
        size = 16;
        importance = "2.5 * 16 * 0.05";
        coefMin = 0.5;
        coefMax = 4;
    };
    class Lighthouse {
        color[] = {1, 1, 1, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\lighthouse_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Quay {
        color[] = {1, 1, 1, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\quay_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Fuelstation {
        color[] = {1, 1, 1, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\fuelstation_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Hospital {
        color[] = {1, 1, 1, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\hospital_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class BusStop {
        color[] = {1, 1, 1, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\busstop_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Transmitter {
        color[] = {1, 1, 1, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\transmitter_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Stack {
        color[] = {0, 0, 0, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\stack_ca.paa";
        size = 20;
        importance = "2 * 16 * 0.05";
        coefMin = 0.9;
        coefMax = 4;
    };
    class Ruin {
        color[] = {0, 0, 0, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\ruin_ca.paa";
        size = 16;
        importance = "1.2 * 16 * 0.05";
        coefMin = 1;
        coefMax = 4;
    };
    class Tourism {
        color[] = {0, 0, 0, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\tourism_ca.paa";
        size = 16;
        importance = "1 * 16 * 0.05";
        coefMin = 0.7;
        coefMax = 4;
    };
    class Watertower {
        color[] = {1, 1, 1, 1};
        icon = "\A3\ui_f\data\map\mapcontrol\watertower_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
    };
    class Waypoint {
        color[] = {0, 0, 0, 0};
        size = 24;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
        icon = "";
    };
    class WaypointCompleted {
        color[] = {0, 0, 0, 0};
        size = 24;
        importance = 1;
        coefMin = 1;
        coefMax = 1;
        icon = "";
    };
    class power {
        icon = "\A3\ui_f\data\map\mapcontrol\power_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
        color[] = {1, 1, 1, 1};
    };
    class powersolar {
        icon = "\A3\ui_f\data\map\mapcontrol\powersolar_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
        color[] = {1, 1, 1, 1};
    };
    class powerwave {
        icon = "\A3\ui_f\data\map\mapcontrol\powerwave_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
        color[] = {1, 1, 1, 1};
    };
    class powerwind {
        icon = "\A3\ui_f\data\map\mapcontrol\powerwind_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
        color[] = {1, 1, 1, 1};
    };
    class shipwreck {
        icon = "\A3\ui_f\data\map\mapcontrol\shipwreck_CA.paa";
        size = 24;
        importance = 1;
        coefMin = 0.85;
        coefMax = 1;
        color[] = {1, 1, 1, 1};
    };
};
class RscSpectPic
{
    idc = -1;
    type = 0;
    style = 48; //1 2 3...176
    tileH = 2; //Tile Picture height (style = 144)
    tileW = 5; //Tile Picture width (style = 144)
    x = 0.25;
    y = 0.25;
    h = 0.5;
    w = 0.5;
    font = "EtelkaNarrowMediumPro";
    sizeEx = 0.05;
    colorBackground[] = {1,1,1,1}; //white background
    colorText[] = {1,1,1,1}; //grey foreground
    text = "#(argb,8,8,3)color(0.918,0.655,0.141,1)";
    lineSpacing = 1; //required for multi-line style
};
class RscSpectButton {
    access = 0;
    borderSize = 0;
    colorBorder[] = PRIMARYCOLOR;
    colorBackgroundActive[] = ARCRED;
    colorBackgroundDisabled[] = {0,0,0,0.75};
    colorDisabled[] = {0.4,0.4,0.4,1};
    colorFocused[] = BACKGROUND_COLOR;
    colorShadow[] = PRIMARYCOLOR;
    colorText[] = PRIMARYCOLOR;
    color[] = {1,1,1,1};
    colorBackground[] = BACKGROUND_COLOR;
    font = "RobotoCondensed";
    offsetPressedX = 0;
    offsetPressedY = 0;
    offsetX = 0;
    offsetY = 0;
    shadow = 0;
    sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.005)";
    soundClick[] = {"\A3\ui_f\data\sound\RscSpectButton\soundClick",0.09,1};
    soundEnter[] = {"\A3\ui_f\data\sound\RscSpectButton\soundEnter",0.09,1};
    soundEscape[] = {"\A3\ui_f\data\sound\RscSpectButton\soundEscape",0.09,1};
    soundPush[] = {"\A3\ui_f\data\sound\RscSpectButton\soundPush",0.09,1};
    style = 0x02 + 160;
    text = "";
    type = 1;
    blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.
    tooltipColorShade[] = BACKGROUND_COLOR; // Tooltip background color
    tooltipColorText[] = PRIMARYCOLOR; // Tooltip text color
    tooltipColorBox[] = BACKGROUND_COLOR; // Tooltip frame color
    h = 0.039216;
    w = 0.095589;
    x = 0;
    y = 0;
};
class RscSpectStructuredText {
    access = 0;
    h = 0.035;
    idc = -1;
    shadow = 1;
    color = "#EAA724";
    colorBackground[] = BACKGROUND_COLOR;
    size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    style = 0;
    text = "";
    type = 13;
    w = 0.1;
    x = 0;
    y = 0;
};
class RscSpectIGUIBack {
    type = 0;
    idc = 124;
    style = 128;
    text = "";
    colorText[] = {0, 0, 0, 0};
    font = "PuristaMedium";
    sizeEx = 0;
    shadow = 0;
    x = 0.1;
    y = 0.1;
    w = 0.1;
    h = 0.1;
    colorbackground[] = {"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0])", "(profilenamespace getvariable ['IGUI_BCG_RGB_G',1])", "(profilenamespace getvariable ['IGUI_BCG_RGB_B',1])", "(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.8])"};
};
class RscSpectText {
    access = 0;
    type = 0;
    idc = -1;
    colorBackground[] = {0, 0, 0, 0};
    colorText[] = {1, 1, 1, 1};
    text = "";
    fixedWidth = 0;
    x = 0;
    y = 0;
    h = 0.037;
    w = 0.3;
    style = 0;
    shadow = 1;
    colorShadow[] = {0, 0, 0, 0.5};
    font = "PuristaBold";
    SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    linespacing = 1;
};
class RscSpectControlsGroup {
    type = 15;
    idc = -1;
    style = 0;
    x = 0;
    y = 0;
    w = 1;
    h = 1;
    class VScrollbar  {
        color[] = {1,1,1,1 };
        width = 0.021000;
        autoScrollSpeed = -1;
        autoScrollDelay = 5;
        autoScrollRewind = 0;
    };
    class HScrollbar {
        color[] = {1, 1, 1, 1};
        height = 0.028;
    };
    class ListScrollBar  {
        arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
        arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
        border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
        color[] = {1,1,1,0.6};
        colorActive[] = {1,1,1,1};
        colorDisabled[] = {1,1,1,0.3};
        shadow = 0;
        thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
    };
    class Controls {};
};

class RscSpectList
{
    access = 0;
    rowHeight = 0;
    rowWidth = 0;
    arrowEmpty = "";
    arrowFull = "";
    color[] = {1,1,1,1};
    colorActive[] = {0.2,0.2,0.2,1};
    colorBackground[] = {0.1,0.1,0.1,1};
    colorDisabled[] = {0.1,0.1,0.1,0.5};
    colorScrollbar[] = {1,0,0,0};
    colorSelect[] = {1,1,1,1};
    colorSelectBackground[] = {0.2,0.2,0.2,1};
    colorText[] = {1,1,1,1};
    font = "PuristaMedium";
    maxHistoryDelay = 1;
    disableKeyboardSearch = 1;
    shadow = 1;
    sizeEx = "(((((safezoneW / safezoneH) min 0.9) / 1.2) / 25) * 1)";
    soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1};
    soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1};
    soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1};
    type = 5;
    style = 528;
    wholeHeight = 0.45;
    h = 0.035;
    w = 0.12;
    x = 0;
    y = 0;
    class ListScrollBar
    {
        color[] = {1,1,1,0.75};
        colorActive[] = {1,1,1,1};
        colorDisabled[] = {1,1,1,0.5};
        shadow = 0;
        arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
        arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
        border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
        thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
    };
    autoScrollSpeed = 0;
    autoScrollDelay = 0;
    autoScrollRewind = 0;

};

class RscSpectCombo
{
    access = 0;
    arrowEmpty = "#(argb,8,8,3)color(0.918,0.655,0.141,1)";
    arrowFull = "#(argb,8,8,3)color(0.918,0.655,0.141,1)";
    color[] = PRIMARYCOLOR;
    colorActive[] = BACKGROUND_COLOR;
    colorBackground[] = BACKGROUND_COLOR;
    colorDisabled[] = {1,1,1,0.25};
    colorScrollbar[] = BACKGROUND_COLOR;
    colorSelect[] = {1,1,1,1};
    colorSelectBackground[] = BACKGROUND_COLOR;
    colorText[] = PRIMARYCOLOR;
    font = "PuristaMedium";
    h = 0.035;
    maxHistoryDelay = 1;
    shadow = 0;
    colorBorder[] = PRIMARYCOLOR;
    sizeEx = "(((((safezoneW / safezoneH) min 1.0) / 1.0) / 25) * 1)";
    soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1};
    soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1};
    soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1};
    style = 0x02 + 160;
    type = 4;
    w = 0.12;
    wholeHeight = "5 * safezoneH";
    x = 0;
    y = 0;
    class ComboScrollBar
    {
        arrowEmpty = "";
        arrowFull = "";
        border = "";
        color[] = {1,1,1,0.0};
        colorActive[] = {1,1,1,0.0};
        colorDisabled[] = {1,1,1,0.0};
        shadow = 0;
        thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
    };

};

class f_spec_dialog {
    idd = 9228;
    movingEnable = 1;
    enableSimulation = 1;
    enableDisplay = 1;
    fadein = 0;
    fadeout = 0;
    duration = 2147483647;
    onKeyDown = "[""KeyDown"",_this] call F_fnc_EventHandler";
    onKeyUp= "[""KeyUp"",_this] call F_fnc_EventHandler";
    onUnload = "[] spawn f_fnc_OnUnload";
    class ControlsBackground {
        class MouseHandler: RscSpectControlsGroup {
            class ListScrollBar
            {
                color[] = {1,1,1,0.6};
                colorActive[] = {1,1,1,1};
                colorDisabled[] = {1,1,1,0.0};
                thumb = "";
                arrowFull = "";
                arrowEmpty = "";
                border = "";
            };
            onMouseButtonDown = "[""MouseButtonDown"",_this] call F_fnc_EventHandler";
            onMouseButtonUp = "[""MouseButtonUp"",_this] call F_fnc_EventHandler";
            onMouseZChanged = "[""MouseZChanged"",_this] call F_fnc_EventHandler";
            onMouseMoving = "['MouseMoving',_this] call F_fnc_EventHandler";
            idc = 123;
            x = SafeZoneX; y = SafeZoneY;
            w = SafeZoneW; h = SafeZoneH;
            colorBackground[] = {0.2, 0.0, 0.0, 0.0};
        };
        class OnEnterBox : RscSpectButton
        {
            idc = 4344;
            x = -0.1 * safezoneW + safezoneX;
            y = -0.1 * safezoneH + safezoneY;
            w = 0.4 * safezoneW;
            h = 0.2 * safezoneH;
            borderSize = 0;
            colorBorder[] = {0,0,0,0};
            colorBackgroundActive[] = {0,0,0,0};
            colorBackgroundDisabled[] = {0,0,0,0};
            colorDisabled[] = {0,0,0,0};
            colorFocused[] = {0,0,0,0};
            colorShadow[] = {0,0,0,0};
            colorText[] = {0,0,0,0};
            color[] = {0,0,0,0};
            colorBackground[] = {0,0,0,0};
        };
    };
    class Controls {
        class SpecUnitBox
        {
            idc = 2100;
            x = 0 * safezoneW + safezoneX;
            y = 0.03 * safezoneH + safezoneY;
            w = 0.15 * safezoneW;
            h = 0.97 * safezoneH;
            access = 0;
            blinkingPeriod = 0;
            colorArrow[] = {0,0,0,0};
            colorBackground[] = BACKGROUND_COLOR;
            colorBorder[] = {0,0,0,0};
            colorDisabled[] = {0,0,0,0};
            colorLines[] = {0,0,0,0};
            colorMarked[] = ARCRED;
            colorMarkedSelected[] = ARCRED;
            colorMarkedText[] = {1,1,1,1};
            colorPicture[] = {1,1,1,1};
            colorPictureDisabled[] = {1,1,1,0.25};
            colorPictureRight[] = {1,1,1,1};
            colorPictureRightDisabled[] = {1,1,1,0.25};
            colorPictureRightSelected[] = {1,1,1,1};
            colorPictureSelected[] = {1,1,1,1};
            colorSearch[] = ARCRED;
            colorSelect[] = ARCRED;
            colorSelectText[] = {1,1,1,1};
            colorText[] = {1,1,1,1};
            default = 0;
            deletable = 0;
            disableKeyboardSearch = 1;
            expandedTexture = "\a3\3DEN\Data\Controls\ctrlTree\expandedTexture_ca.paa";
            expandOnDoubleclick = 1;
            fade = 0;
            font = "RobotoCondensedLight";
            hiddenTexture = "\a3\3DEN\Data\Controls\ctrlTree\hiddenTexture_ca.paa";
            maxHistoryDelay = 1;
            multiselectEnabled = 0;
            onCanDestroy = "";
            onDestroy = "";
            onKeyDown = "";
            onKeyUp = "";
            onKillFocus = "";
            onMouseButtonClick = "";
            onMouseButtonDblClick = "";
            onMouseButtonDown = "";
            onMouseButtonUp = "";
            onMouseEnter = "";
            onMouseExit = "";
            onMouseHolding = "";
            onMouseMoving = "";
            onMouseZChanged = "";
            onSetFocus = "";
            onTreeCollapsed = "";
            onTreeDblClick = "";
            onTreeExpanded = "";
            onTreeLButtonDown = "";
            onTreeMouseExit = "";
            onTreeSelChanged = "[""TreeSelChanged"",_this] call f_fnc_EventHandler";
            shadow = 1;
            show = 1;
            sizeEx = "5 * (1 / (getResolution select 3)) * pixelGrid * 0.5";
            style = 0;
            tooltip = "";
            tooltipColorBox[] = {0,0,0,0};
            tooltipColorShade[] = {0,0,0,1};
            tooltipColorText[] = {1,1,1,1};
            tooltipMaxWidth = 0.5;
            type = 12;
            class ScrollBar {
                arrowEmpty = "\a3\3DEN\Data\Controls\ctrlDefault\arrowEmpty_ca.paa";
                arrowFull = "\a3\3DEN\Data\Controls\ctrlDefault\arrowFull_ca.paa";
                border = "\a3\3DEN\Data\Controls\ctrlDefault\border_ca.paa";
                color[] = {1,1,1,1};
                height = 0;
                scrollSpeed = 0.05;
                thumb = "\a3\3DEN\Data\Controls\ctrlDefault\thumb_ca.paa";
                width = 0;
            };
        };
        class ToggleUnitListButton: RscSpectButton
        {
            idc = 5534;
            x = 0.15 * safezoneW + safezoneX;
            y = 0.041 * safezoneH + safezoneY;
            w = 0.03 * safezoneH;
            h = 0.03 * safezoneH;
            colorBorder[] = {1,1,1,1};
            colorBackgroundActive[] = ARCRED;
            colorBackgroundDisabled[] = {0,0,0,0.75};
            colorDisabled[] = {0.4,0.4,0.4,1};
            colorFocused[] = BACKGROUND_COLOR;
            colorShadow[] = {1,1,1,1};
            colorText[] = {1,1,1,1};
            color[] = {1,1,1,1};
            colorBackground[] = BACKGROUND_COLOR;
            text = "«";
            onButtonClick = "[_this select 0,6] call f_fnc_HandleMenu";
        };
        class RefreshUnitList: RscSpectButton
        {
            idc = 21111;
            x = 0 * safezoneW + safezoneX;
            y = 0 * safezoneH + safezoneY;
            w = 0.05 * safezoneW;
            h = 0.03 * safezoneH;
            text = "REFRESH LIST";
            onButtonClick = "[] call f_fnc_UpdateValues";
            onMouseEnter = "[_this select 0, true] call f_fnc_AnimButton";
            onMouseExit = "[_this select 0, false] call f_fnc_AnimButton";
            tooltip = "Refresh the unit list below";

        };
        /*class FilterAIButton: RscSpectButton
        {
            idc = 2111;
            x = 0 * safezoneW + safezoneX;
            y = 0 * safezoneH + safezoneY;
            w = 0.05 * safezoneW;
            h = 0.03 * safezoneH;
            text = "SHOW AI (YES)";
            onButtonClick = "[_this select 0,0] call f_fnc_HandleMenu";
            onMouseEnter = "[_this select 0, true] call f_fnc_AnimButton";
            onMouseExit = "[_this select 0, false] call f_fnc_AnimButton";

        };
        class SideFilterButton: RscSpectButton
        {
            idc = 2112;
            x = 0.05 * safezoneW + safezoneX;
            y = 0 * safezoneH + safezoneY;
            w = 0.05 * safezoneW;
            h = 0.03 * safezoneH;
            text = "UNIT LIST (ALL SIDES)";
            tooltip = "Filter unit list by side";
            onButtonClick = "[_this select 0,1] call f_fnc_HandleMenu";
            onMouseEnter = "[_this select 0, true] call f_fnc_AnimButton";
            onMouseExit = "[_this select 0, false] call f_fnc_AnimButton";
        };*/
        class TagsNameButton: RscSpectButton
        {
            idc = 2113;
            x = 0.1 * safezoneW + safezoneX;
            y = 0 * safezoneH + safezoneY;
            w = 0.07 * safezoneW;
            h = 0.03 * safezoneH;
            text = "TAGS (OFF)";
            tooltip = "Filter tags by side/players";
            onButtonClick = "[_this select 0,2] call f_fnc_HandleMenu";
            onMouseEnter = "[_this select 0, true] call f_fnc_AnimButton";
            onMouseExit = "[_this select 0, false] call f_fnc_AnimButton";
        };
        class TracersButton: RscSpectButton
        {
            idc = 2236;
            x = 0.17 * safezoneW + safezoneX;
            y = 0 * safezoneH + safezoneY;
            w = 0.07 * safezoneW;
            h = 0.03 * safezoneH;
            text = "3D TRACERS (OFF)";
            tooltip = "Warning: May cause major lag";
            onButtonClick = "[_this select 0,5] call f_fnc_HandleMenu";
            onMouseEnter = "[_this select 0, true] call f_fnc_AnimButton";
            onMouseExit = "[_this select 0, false] call f_fnc_AnimButton";
        };
        class FirstPersonButton: RscSpectButton
        {
            idc = 2114;
            x = 0.22 * safezoneW + safezoneX;
            y = 0 * safezoneH + safezoneY;
            w = 0.05 * safezoneW;
            h = 0.03 * safezoneH;
            text = "VIEW (FIRST PERSON)";
            onButtonClick = "[_this select 0,3] call f_fnc_HandleMenu";
            onMouseEnter = "[_this select 0, true] call f_fnc_AnimButton";
            onMouseExit = "[_this select 0, false] call f_fnc_AnimButton";
        };
        class RespawnButton: RscSpectButton
        {
            idc = 5532;
            x = 0.25 * safezoneW + safezoneX;
            y = 0 * safezoneH + safezoneY;
            w = 0.05 * safezoneW;
            h = 0.03 * safezoneH;
            text = "REJOIN MISSION";
            tooltip = "Rejoin the mission as a new character";
            onButtonClick = "[_this select 0,4] call f_fnc_HandleMenu";
            onMouseEnter = "[_this select 0, true] call f_fnc_AnimButton";
            onMouseExit = "[_this select 0, false] call f_fnc_AnimButton";
        };
        class SpectMap : RscSpectMapControl
        {
            type = 100;
            idc = 1350;
            x = 0.00640556 * safezoneW + safezoneX;
            y = 0.772714 * safezoneH + safezoneY;
            w = 0.132213 * safezoneW;
            h = 0.21629 * safezoneH;
            onMouseZChanged = "[""MapZoom"",_this] call F_fnc_EventHandler;";
            //onMouseButtonClick = "_this call F_fnc_OnMapClick";
            onDraw = "_this call F_fnc_DrawMarkers";
        };
        class FullSpectMap : RscSpectMapControl
        {
            idc = 1360;
            type = 100;
            x = 0 * safezoneW + safezoneX;
            y = 0 * safezoneH + safezoneY;
            w = 1 * safezoneW;
            h = 1 * safezoneH;
            onDraw = "_this call F_fnc_DrawMarkers";
            //onMouseButtonClick = "_this call F_fnc_OnMapClick";
        };
    };
};