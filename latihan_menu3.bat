@echo off

set paket1=Ayam Goreng
set paket2=Ayam Bakar
set paket3=Ayam Goreng Itali
set paket4=Nila Bakar
set paket5=Gurame Bakar

set hrg1=Rp20.000
set hrg2=Rp25.000
set hrg3=Rp27.000
set hrg4=Rp30.000
set hrg5=Rp40.000

:menu
cls
echo =======================
echo      Latihan Menu
echo =======================
echo 1. Paket 1 (%paket1%)
echo 2. Paket 2 (%paket2%)
echo 3. Paket 3 (%paket3%)
echo 4. Paket 4 (%paket4%)
echo 5. Paket 5 (%paket5%)
echo 5. Exit
echo .
set /p "pilihmenu=Masukkan Pilihan Paket Menu :"
if %pilihmenu%==1 goto paket1 
if %pilihmenu%==2 goto paket2
if %pilihmenu%==3 goto paket3
if %pilihmenu%==4 goto paket4
if %pilihmenu%==5 goto paket5
if %pilihmenu%==6 goto startup


:paket1
cls
echo ---------------------------------
echo      Paket 1 (%paket1%)
echo Harga   :%hrg1%
echo Benefit : Nasi + Es Teh + lalapan
echo ---------------------------------
pause
goto menu

:paket2
cls
echo ---------------------------------
echo      Paket 2 (%paket2%)
echo Harga   :%hrg2%
echo Benefit : Nasi + Es Teh + lalapan
echo ---------------------------------
pause
goto menu

:paket3
cls
echo ---------------------------------
echo      Paket 3 (%paket3%)
echo Harga   :%hrg3%
echo Benefit : Nasi + Es Jeruk + lalapan
echo ---------------------------------
pause
goto menu

:paket5
cls
echo ---------------------------------
echo      Paket 4 (%paket4%)
echo Harga   :%hrg4%
echo Benefit : Nasi + Es Jeruk + lalapan
echo ---------------------------------
pause
goto menu

:paket5
cls
echo ---------------------------------
echo      Paket 5 (%paket5%)
echo Harga   :%hrg5%
echo Benefit : Nasi + Es Jeruk + lalapan
echo ---------------------------------
pause
goto menu

:exit
exit
