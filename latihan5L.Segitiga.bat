@echo off
title Latihan 5 Perhitungan Luas Segitiga

rem setting variabel 
echo -------------------------------
echo  Inputan Nilai Alas dan Tinggi
echo -------------------------------
set /p alas=Masukan Nilai Alas     :
set /p tinggi=Masukan Nilai Tinggi :

rem seting perhitungan
set /a luas=alas*tinggi/2
if %luas% GEQ 500 (
    set grade=Kategori Besar
) else if %luas% GEQ 100 (
    set grade=Kategori Sedang
) else (
    set grade=Kategori Kecil
)
cls

rem outout
echo -------------------------------
echo    Perhitungan Luas Segitiga
echo -------------------------------
echo Alas   :%alas%
echo Tinggi :%tinggi%
echo -------------------------------
echo Luas Segitiga      :%luas%
echo Kategori Bangunan  :%grade%
pause >nul
