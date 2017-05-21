ml /c /coff /Zi %1.asm
ml /c /coff /Zi %2.asm
cl /c /GS- %3.c
link /subsystem:console /entry:init /nodefaultlib /out:smart1.exe /base:0x2E0000 %1.obj %2.obj %3.obj