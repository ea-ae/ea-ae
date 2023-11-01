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
    
    ; toggle Capslock
    ; $*F2::
    ;   if GetKeyState("Capslock", "T") = 0
    ;     SetCapsLockState, On
    ;   else
    ;     SetCapsLockState, AlwaysOff
    ; return

    ; media control
    $*F5::Send, {Blind}{Media_Stop}
    $*F6::Send, {Blind}{Media_Play_Pause}
    $*F7::Send, {Blind}{Media_Prev}
    $*F8::Send, {Blind}{Media_Next}

    $*i::Send, {Blind}{Insert}
    $*d::Send, {Blind}{Del}
    $*q::Send, {Blind}{Esc}
    $*u::Send, {Blind}{Home}
    $*o::Send, {Blind}{End}
    $*w::Send, {Blind}{PgDn}
    $*e::Send, {Blind}{PgUp}
    $*p::Send, {Blind}{PrintScreen}

    ; caps + x closes a window through ctrl+f4
    $*x::Send, ^{F4}

    ; browser
    $*a::Send, ^{PgUp}
    $*s::Send, ^{PgDn}

    ; show expose (requires switcher)
    $*Tab::Send, #{Tab}

    ; resize windows (requires winsplit revolution)
    $*1::Send, ^!{NumPad1}
    $*2::Send, ^!{NumPad2}
    $*3::Send, ^!{NumPad3}
    $*4::Send, ^!{NumPad4}
    $*5::Send, ^!{NumPad5}
    $*6::Send, ^!{NumPad6}
    $*7::Send, ^!{NumPad7}
    $*8::Send, ^!{NumPad8}
    $*9::Send, ^!{NumPad9}

    ; vi hjkl navigation
    $*h::Send, {Blind}{Left}
    $*j::Send, {Blind}{Down}
    $*k::Send, {Blind}{Up}
    $*l::Send, {Blind}{Right}
