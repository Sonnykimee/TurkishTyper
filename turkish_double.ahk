#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

KeyDelay := 0.15			; wait for 0.15 seconds (default)

~*i::
    state := GetKeyState("CapsLock", "T") or GetKeyState("Shift", "P")
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
    if (GetKeyState("CapsLock", "T"))
        Send, {BS}O
    KeyWait, o
    KeyWait, o, D T%KeyDelay%
    if ErrorLevel
        Return
    Else
        if (GetKeyState("CapsLock", "T"))
            Send, {BS}{BS}Ö
        else
            Send, {BS}{BS}ö
Return

~+o::
    if (GetKeyState("CapsLock", "T"))
        Send, {BS}o
    KeyWait, o
    KeyWait, o, D T%KeyDelay%
    if ErrorLevel
        Return
    Else
        if (GetKeyState("CapsLock", "T"))
            Send, {BS}{BS}ö
        else
            Send, {BS}{BS}Ö
Return

~*u::
    if (GetKeyState("CapsLock", "T"))
        Send, {BS}U
    KeyWait, u
    KeyWait, u, D T%KeyDelay%
    if ErrorLevel
        Return
    Else
        if (GetKeyState("CapsLock", "T"))
            Send, {BS}{BS}Ü
        else
            Send, {BS}{BS}ü
Return

~+u::
    if (GetKeyState("CapsLock", "T"))
        Send, {BS}u
    KeyWait, u
    KeyWait, u, D T%KeyDelay%
    if ErrorLevel
        Return
    Else
        if (GetKeyState("CapsLock", "T"))
            Send, {BS}{BS}ü
        else
            Send, {BS}{BS}Ü
Return

~*g::
    if (GetKeyState("CapsLock", "T"))
        Send, {BS}G
    KeyWait, g
    KeyWait, g, D T%KeyDelay%
    if ErrorLevel
        Return
    Else
        if (GetKeyState("CapsLock", "T"))
            Send, {BS}{BS}Ğ
        else
            Send, {BS}{BS}ğ
Return

~+g::
    if (GetKeyState("CapsLock", "T"))
        Send, {BS}g
    KeyWait, g
    KeyWait, g, D T%KeyDelay%
    if ErrorLevel
        Return
    Else
        if (GetKeyState("CapsLock", "T"))
            Send, {BS}{BS}ğ
        else
            Send, {BS}{BS}Ğ
Return

~*c::
    if (GetKeyState("CapsLock", "T"))
        Send, {BS}C
    KeyWait, c
    KeyWait, c, D T%KeyDelay%
    if ErrorLevel
        Return
    Else
        if (GetKeyState("CapsLock", "T"))
            Send, {BS}{BS}Ç
        else
            Send, {BS}{BS}ç
Return

~+c::
    if (GetKeyState("CapsLock", "T"))
        Send, {BS}c
    KeyWait, c
    KeyWait, c, D T%KeyDelay%
    if ErrorLevel
        Return
    Else
        if (GetKeyState("CapsLock", "T"))
            Send, {BS}{BS}ç
        else
            Send, {BS}{BS}Ç
Return

~*s::
    if (GetKeyState("CapsLock", "T"))
        Send, {BS}S
    KeyWait, s
    KeyWait, s, D T%KeyDelay%
    if ErrorLevel
        Return
    Else
        if (GetKeyState("CapsLock", "T"))
            Send, {BS}{BS}Ş
        else
            Send, {BS}{BS}ş
Return

~+s::
    if (GetKeyState("CapsLock", "T"))
        Send, {BS}s
    KeyWait, s
    KeyWait, s, D T%KeyDelay%
    if ErrorLevel
        Return
    Else
        if (GetKeyState("CapsLock", "T"))
            Send, {BS}{BS}ş
        else
            Send, {BS}{BS}Ş
Return