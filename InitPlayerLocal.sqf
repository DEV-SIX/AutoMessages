waitUntil {!isNull (findDisplay 46)};

{
    _x params [["_function",""],["_file",""]];
    _code = compileFinal (preprocessFileLineNumbers _file);
    missionNamespace setVariable [_function,_code];
} 
forEach
[
    ['EXP_AutoMessages','EXPClient/Addons/EXP_AutoMessages.sqf']
];

[60,EXP_AutoMessages,[],true] call ExileClient_System_Thread_AddTask;
