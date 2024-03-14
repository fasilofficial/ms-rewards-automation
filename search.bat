@echo off

set URL_START="https://www.bing.com/search?q="
set URL_END="&qs=n&form=QBRE&sp=-1&lq=0&pq=asdsfzcxredsfssdfcdfcdfx&sc=1-24&sk=&cvid=10F60398AD114CF19709C09928B799E6&ghsh=0&ghacc=0&ghpl="

for /l %%i in (1,1,4) do (
    set RANDOM_STRING=%random% %random% %random% %random% %random%
    set RANDOM_STRING=%RANDOM_STRING: =%
    set URL="%URL_START%%RANDOM_STRING%%URL_END%"
    start microsoft-edge %URL%
    timeout /t 8 /nobreak >nul
)
