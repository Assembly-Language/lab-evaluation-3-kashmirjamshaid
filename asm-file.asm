

INCLUDE Irvine32.inc
.data
;public asmfunc
msg db "assebly procedure end now",0


.code
asmfunc PROC p1:PTR DWORD, p2:PTR DWORD , p3:PTR DWORD ; for definning the parametrs that is in c-file 
mov esi , p1      ; set esi for p1 -ARRAY
mov ecx , p2      ; set esi for p2 - Sum 
mov ebx , p3      ; set ebx for p3 - count
mov eax ,0
mov edi , 0
mov edx , 8
Find_Negative:            ; USED Jmp for our task
mov eax , DWORD PTR [esi]
test eax , 80000h                 ; for test for neagative each digit
jz Skip
 add DWORD PTR [ecx], eax          ; adding neagtive into eax 
 inc edi 
 Skip:
 add esi , 4
 dec edx 
 jnz Find_Negative                 ; back to jmp if non zero 

mov DWORD PTR [ebx], edi
    ret
asmfunc ENDP
end