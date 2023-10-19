; stolen off somewhere and modified
; this script makes better use of caps lock as a magic key

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetCapsLockState, AlwaysOff

fallback_prevention := 0
caps := 0

;global toggle for caps-modifier (= Capslock key)
*Capslock::caps := 1
*Capslock Up::caps := 0


;=========================
; fallback prevention mode disables navigation keys that are far away from the home row
;=========================
#if fallback_prevention = 1
    Left::
    Right::
    Up::
    Down::
    PgUp::
    PgDn::
    Home::
    End::
    Del::
      MsgBox, Use Caps+hjkl for navigation!
    return


;=========================
; caps modifier enables different keybindings
;=========================
#if caps = 1
    ; fallback prevention mode
    $*F1::fallback_prevention := !fallback_prevention

    $*i::Send, {Blind}{Insert}
    $*d::Send, {Blind}{Del}
    $*q::Send, {Blind}{Esc}
    $*u::Send, {Blind}{Home}
    $*o::Send, {Blind}{End}
    $*w::Send, {Blind}{PgDn}
    $*e::Send, {Blind}{PgUp}
    $*p::Send, {Blind}{PrintScreen}

    ; browser
    $*a::Send, ^{PgUp}
    $*s::Send, ^{PgDn}

    ; vi hjkl navigation
    $*h::Send, {Blind}{Left}
    $*j::Send, {Blind}{Down}
    $*k::Send, {Blind}{Up}
    $*l::Send, {Blind}{Right}
