@echo off

:menu
cls
echo ------------ MENU ------------
echo [1] Menu Aplikasi
echo [2] Menu Jaringan
echo [0] Keluar
echo ------------------------------
set /p pilih=Silakan pilih menu :

if %pilih%==1 goto aplikasi
if %pilih%==2 goto jaringan
if %pilih%==0 goto exit

rem MENU APLIKASI
    :aplikasi
    cls
    echo ------ MENU APLIKASI ------
    echo 1. Word
    echo 2. Excel
    echo 3. PowerPoint
    echo 0) Kembali ke Menu Utama
    echo ---------------------------
    set /p pilih=Silakan pilih aplikasi : 
    if %pilih%==1 goto word
    if %pilih%==2 goto excel
    if %pilih%==3 goto ppt
    if %pilih%==0 goto menu

    rem SUBMENU APLIKASI
        :word
        cls
        start winword
        goto aplikasi
        pause
        :excel
        cls
        start excel
        goto aplikasi
        pause
        :ppt
        cls
        start powerpnt
        goto aplikasi
        pause

rem MENU JARINGAN
    :jaringan
    cls
    echo ----- MENU JARINGAN -----
    echo 1. Cek IP
    echo 2. Ping Domain
    echo 3. Setting Network Koneksi
    echo 4. Registering
    echo 5. Diagnostic Tool
    echo 0) Kembali ke Menu Utama
    echo -------------------------
    set /p pilih=Silakan pilih opsi jaringan :
    if %pilih%==1 goto ip
    if %pilih%==2 goto ping
    if %pilih%==3 goto snk
    if %pilih%==4 goto regist
    if %pilih%==5 goto dx
    if %pilih%==0 goto menu

    rem SUBMENU APLIKASI
        :ip
        cls
        ipconfig
        goto jaringan
        pause
        :ping
        cls
        set /p domain=Masukkan nama domain: 
        ping %domain%
        goto jaringan
        pause
        :snk
        cls
        start ncpa.cpl
        goto jaringan
        pause
        :regist
        cls
        echo Melakukan registering...
        goto jaringan
        pause
        :dx
        cls
        start dxdiag
        goto jaringan
        pause

rem EXIT
    :exit
    exit