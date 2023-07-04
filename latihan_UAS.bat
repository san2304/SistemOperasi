@echo off
color 7

:login
echo *********************************************
echo          Login User
echo *********************************************
echo .
echo ---------------------------------------------
set /p user=     User    :
set /p password= Pasword :
if "%user%"=="san123" (
    if "%password%"=="san123" (
    goto begin
    ) else (
    echo Password salah
    pause
    goto login
    )
) else (
    echo User tidak valid
    pause
    goto login
)

:begin
cls
echo =========================================
echo                 MENU
echo =========================================
echo 1. Menu Setting
echo 2. Menu Makanan
echo 0. Exit
echo =========================================
echo .
set /p "pilihmenu=Masukkan Pilihan Paket Menu :"
if %pilihmenu%==1 goto setting 
if %pilihmenu%==2 goto restoran
if %pilihmenu%==0 goto exit

REM MENU SETTING
    :setting
    color b5
    cls
    echo ==============================
    echo        SETTING KOMPUTER
    echo ==============================
    echo [1] Setting Keyboard
    echo [2] Setting Language
    echo [3] Setting Date 
    echo [4] Add user
    echo [5] Sound Control
    echo [6] Open Startup
    echo [7] chrome
    echo .
    echo [8] Kembali        [0] Keluar
    echo .
    set /p "pilihmenu=Masukkan Pilihan Menu :"
    if %pilihmenu%==1 goto keyboard
    if %pilihmenu%==2 goto Language
    if %pilihmenu%==3 goto Date
    if %pilihmenu%==4 goto User
    if %pilihmenu%==5 goto sound
    if %pilihmenu%==6 goto startup
    if %pilihmenu%==7 goto chrome
    if %pilihmenu%==8 goto back
    if %pilihmenu%==0 goto exit

    REM SUBMENU SETTING
        :keyboard
        cls
        start control keyboard
        goto setting 
        pause
        :Language
        cls
        start intl.cpl
        goto setting
        pause 
        :Date
        cls
        start timedate.cpl
        goto setting 
        :User
        cls
        start Netplwiz.exe
        goto setting
        pause
        :sound
        cls
        start SndVol.exe
        goto setting
        pause
        :startup
        start msconfig
        goto setting
        pause
        :chrome
        "C:\Program Files\Google\Chrome\Application\chrome.exe"
        goto setting
        :back
        goto begin
        :exit
        exit

REM MENU RESTAURANT
    :restoran
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
    echo [1] Paket 1 (%paket1%)
    echo [2] Paket 2 (%paket2%)
    echo [3] Paket 3 (%paket3%)
    echo [4] Paket 4 (%paket4%)
    echo [5] Paket 5 (%paket5%)
    echo .
    echo [8] Kembali    [0] Keluar
    echo .
    set /p "pilihmenu=Masukkan Pilihan Paket Menu :"
    if %pilihmenu%==1 goto paket1 
    if %pilihmenu%==2 goto paket2
    if %pilihmenu%==3 goto paket3
    if %pilihmenu%==4 goto paket4
    if %pilihmenu%==5 goto paket5
    if %pilihmenu%==8 goto back
    if %pilihmenu%==8 goto exit

    REM SUBMENU MAKANAN
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
        :back
        goto begin
        :exit
        exit

REM EXIT
    :exit
    exit
