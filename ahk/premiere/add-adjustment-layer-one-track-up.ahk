#NoEnv
#Warn
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
; SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^+a::
; test
; Click on 'new' button
; [signature] MouseClick , WhichButton, X, Y, ClickCount, Speed, DownOrUp, Relative
MouseClick, left, 900, 630
Sleep, 200

; menu is open, click 'New adjustment layer'
MouseClick, left, 900, 730
Sleep, 200

; Accept default params for new adjustment layer (matches current sequence)
Send, `n