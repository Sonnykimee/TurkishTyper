#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

KeyDelay := 0.10			; wait for 0.10 seconds (default)

~*i::
    state := (GetKeyState("CapsLock", "T") != GetKeyState("Shift", "P"))
    if (state)
        Send, {BS}İ
    else
        Send, {BS}i
    KeyWait, i			; wait for i to be released
    KeyWait, i, D T%KeyDelay%	; and pressed again within KeyDelay seconds
    if ErrorLevel 			; timed-out (only a single press)
        Return
    Else
        if (state)
            Send, {BS}{BS}I
        else
            Send, {BS}{BS}ı		; change i to ı
Return

~*o::
    state := (GetKeyState("CapsLock", "T") != GetKeyState("Shift", "P"))
    KeyWait, o
    KeyWait, o, D T%KeyDelay%
    if ErrorLevel
        Return
    Else
        if (state)
            Send, {BS}{BS}Ö
        else
            Send, {BS}{BS}ö
Return

~*u::
    state := (GetKeyState("CapsLock", "T") != GetKeyState("Shift", "P"))
    KeyWait, u
    KeyWait, u, D T%KeyDelay%
    if ErrorLevel
        Return
    Else
        if (state)
            Send, {BS}{BS}Ü
        else
            Send, {BS}{BS}ü
Return

~*g::
    state := (GetKeyState("CapsLock", "T") != GetKeyState("Shift", "P"))
    KeyWait, g
    KeyWait, g, D T%KeyDelay%
    if ErrorLevel
        Return
    Else
        if (state)
            Send, {BS}{BS}Ğ
        else
            Send, {BS}{BS}ğ
Return

~*c::
    state := (GetKeyState("CapsLock", "T") != GetKeyState("Shift", "P"))
    KeyWait, c
    KeyWait, c, D T%KeyDelay%
    if ErrorLevel
        Return
    Else
        if (state)
            Send, {BS}{BS}Ç
        else
            Send, {BS}{BS}ç
Return

~*s::
    state := (GetKeyState("CapsLock", "T") != GetKeyState("Shift", "P"))
    KeyWait, s
    KeyWait, s, D T%KeyDelay%
    if ErrorLevel
        Return
    Else
        if (state)
            Send, {BS}{BS}Ş
        else
            Send, {BS}{BS}ş
Return