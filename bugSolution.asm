mov ecx, someValue ;Ensure ecx is multiple of 4, if needed
mov eax, someValue ;Ensure ebx is multiple of 4, if needed
mov edx, ecx ;copy to edx for alignment check
and edx, 3 ;check for alignment
cmp edx, 0;check for alignment
je aligned ;jump if aligned
;Add alignment code here: (example if ecx is not aligned)
;push ecx
;and ecx, ~3 ;adjust ecx
;add ecx, 4 ;adjust to the next 4-byte boundary
;mov eax, [ebx+ecx*4]
;pop ecx
;jmp done
aligned:
mov eax, [ebx+ecx*4]
done: