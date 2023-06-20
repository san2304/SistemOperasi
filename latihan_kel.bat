@echo off
title isan-isa-mansyur

set /p a=Masukan Nilai A :
set /p b=Masukan Nilai B :

set /a hitung =((a*a+b*b)-(a+b))/(b*a)
set /a aa =((a*a+b*b)-(a+b))
set /a bb =(b*a)


rem output
echo -------------------------------
echo       Data Hasil Hitung
echo -------------------------------
echo Nilai A :%a%
echo Nilai B :%b%
echo ((a**2+b**2)-(a+b))/(b*a) = 
echo = ((%a%**2+%b%**2))-(%a%+%b%))/(%b%*%a%)
echo = (%aa%)/(%bb%)
echo = %hitung%
pause
