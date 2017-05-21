@echo off
ml /c /coff /Zi %2.asm
cl /Fa %1.c %2.obj /link /DYNAMICBASE:NO