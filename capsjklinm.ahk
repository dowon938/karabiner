#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

*CapsLock:: sgn := 1
*CapsLock up:: sgn := 0
#if sgn
j::Key("left")
k::Key("down")
i::Key("up")
l::Key("right")
m::Del
n::BS
#if
Key(key)
{
SendInput {blind}{%key%}
}
Key_repeat(pfx, key)
{
SendInput {blind}%pfx%{%key%}
}
 
Ctrl::
GetKeyState, cstate, capslock, T
if cstate = U
SetCapslockState, On
if cstate = D
SetCapslockState, Off
return