private _faction = param [0, "blufor"];
private _category = param [1, "uniforms"];
private _items = getArray (missionConfigFile >> "CfgARCMF" >> "ai" >> "gear" >> _faction >> _category);

if (_items isEqualTo []) exitWith {[]};

private _itemarr = [];
private _result = [];
private _proarr = [];
private _proportion = [];
private _total = 0;
private _probl = 0;
private _probu = 0;

if (count _items > 0) then {
    _rand = random 1;

    {_proportion pushBack (_x select 1)} forEach _items;
    {_total = _total + _x} forEach _proportion;
    
    if (count _items > 1) then {
        {
            if (_total != 0) then {
                _proarr pushBack (_x / _total);
            } else {
                _proarr pushBack _x;
            };
        } forEach _proportion;
    } else {
        _proarr = _proportion;
    };

    {
        _class = _x select 0;
        
        if (_forEachIndex == 0) then {
            _probl = 0;
            _probu = _proarr select 0;
        } else {
            if (_forEachIndex == ((count _items) - 1)) then {  
                _probu = 1;
                _probl = _probu - (_proarr select _forEachIndex);
            } else {
                _probl = _probu;
                _probu = _probl + (_proarr select _forEachIndex);
            };
        };

        if (_rand > _probl && _rand <= _probu) then {
            _itemarr pushBack _class;
        };
    } forEach _items;
};

if (count _itemarr > 0) then {
    _result = [(_itemarr call BIS_fnc_selectRandom)];
};

_result