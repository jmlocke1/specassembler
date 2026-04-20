; Dirección donde carga el programa
org $8000

; HL = dir memoria mensaje
ld  hl, msg
; A = primer carácter
ld  a, (hl)
; Imprime el carácter
rst $10
; HL = dir carácter siguiente
inc hl
; A = siguiente carácter
ld  a, (hl)
; Imprime el carácter
rst $10
; HL = dir carácter siguiente
inc hl
; A = siguiente carácter
ld  a, (hl)
; Imprime el carácter
rst $10

ret

msg:
defm   'Hola ensamblador ZX Spectrum'

end $8000