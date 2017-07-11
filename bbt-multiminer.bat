@echo off
setlocal EnableDelayedExpansion 
rem **********************************************************************
rem *         BBT Multi-Miner Easy Batch File  v4 by BBT & Kunt Pukerd   *
rem *     Featuring Claymore, SGMiner, CCMiner, EBWF's Miner and more    *
rem *   Pre-Configured syntax, just update address/worker                *
rem *    Eth, Etc, Xmr, Lbry, Sia, Zcash, Pasc, Hush, DBIX, ubiq and more*
rem **********************************************************************
rem * BEST VIEWED IN FULL SCREEN 1920x1080
rem **********************************************************************
rem * Environment Setup                                         
rem echo on

SET ETH_WALLET_ADDRESS=0xF897EaFdb787AcD4Da5e2EB5003E42dc1Ef86d39
SET ETC_WALLET_ADDRESS=0x89b455cfd5adb8ba4a69fd6bd082b3d61efe160f
SET XMR_WALLET_ADDRESS=452eu5HWBcTEwQfwkRFHp9MgC39DhtAio5um8mEs6ZRgcyq9V3Gy3GbJfyASSxepSRQRe6SHcQ27xgorYzyZrn6DSVmWvuw.4d8ddccc40568d93
SET SIA_WALLET_ADDRESS=6ce3c1dc8444ce3dc362425124853e0f32e930eaae1dedc6e919a08d8b6664bf71bd744dda24
SET ZCASH_WALLET_ADDRESS=t1dBorBoRyznDaRyQzEEB4SkvmCFhmF2ZYk
SET PASCAL_WALLET_ADDRESS=86646-64.59e76e7d7a498fbc
SET HUSH_WALLET_ADDRESS=t1MmWWevkAxB282JqtpY4bK7njF7XPfcH2n
SET LBRY_WALLET_ADDRESS=bitsbetrippin
SET DECRED_WALLET_ADDRESS=bitsbetrippin
SET DBIX_WALLET_ADDRESS=0x4c04f53f3bf154aa68f78f45b75f0c9dec120796
SET UBIQ_WALLET_ADDRESS=0xb85150eb365e7df0941f0cf08235f987ba91506a

SET MINER_NAME=bbtworker01

SET EMAIL_ADDRESS=bitsbetrippin1@gmail.com

setx GPU_FORCE_64BIT_PTR 0 >nul 2>&1
setx GPU_MAX_HEAP_SIZE 100 >nul 2>&1
setx GPU_USE_SYNC_OBJECTS 1 >nul 2>&1
setx GPU_MAX_ALLOC_PERCENT 100 >nul 2>&1
setx GPU_SINGLE_ALLOC_PERCENT 100 >nul 2>&1

rem echo off
rem **Instructions******************************************************* 
rem **Replace the wallet & POOL addresses!!!!                           *
rem **Replace the miner name and the email address                      *
rem **Then run and choose :)                                            * 
rem *********************************************************************

rem **Available pools****************************************************
rem **You can change pool addresses to match your physical area         *
rem *********************************************************************

rem ** Ethereum *********************************************************
rem ******* Ethermine.org:
rem ************ North America (East): us1.ethermine.org:4444 or us1.ethermine.org:14444
rem ************ North America (West): us2.ethermine.org:4444 or us2.ethermine.org:14444
rem ************ Europe (France): eu1.ethermine.org:4444 or eu1.ethermine.org:14444
rem ************ Europe (Germany): eu2.ethermine.org:4444 or eu2.ethermine.org:14444
rem ************ Asia: asia1.ethermine.org:4444 or asia1.ethermine.org:14444
rem ******* Nanopool.org:
rem ** https://eth.nanopool.org/help
rem ************ Europe (1): eth-eu1.nanopool.org:9999
rem ************ Europe (2): eth-eu2.nanopool.org:9999
rem ************ North America (East): eth-us-east1.nanopool.org:9999
rem ************ North America (West): eth-us-west1.nanopool.org:9999
rem ************ Asia: eth-asia1.nanopool.org:9999

rem ** Ethereum Classic *************************************************
rem ******* Ethermine.org:
rem ************ North America: us1-etc.ethermine.org:4444 or us1-etc.ethermine.org:14444
rem ************ Europe: eu1-etc.ethermine.org:4444 or eu1-etc.ethermine.org:14444
rem ******* Nanopool.org:
rem ** https://etc.nanopool.org/help
rem ************ Europe (1): etc-eu1.nanopool.org:19999
rem ************ Europe (2): etc-eu2.nanopool.org:19999
rem ************ North America (East): etc-us-east1.nanopool.org:19999
rem ************ North America (West): etc-us-west1.nanopool.org:19999
rem ************ Asia: etc-asia1.nanopool.org:19999

rem ** Monero (XMR)  *****************************************************
rem ******* Nanopool.org:
rem ** https://xmr.nanopool.org/help
rem ************ Europe (1): xmr-eu1.nanopool.org:14444 or xmr-eu1.nanopool.org:14433
rem ************ Europe (2): xmr-eu2.nanopool.org:14444 or xmr-eu2.nanopool.org:14433
rem ************ North America (East): xmr-us-east1.nanopool.org:14444 or xmr-us-east1.nanopool.org:14433
rem ************ North America (West): xmr-us-west1.nanopool.org:14444 or xmr-us-west1.nanopool.org:14433
rem ************ Asia: xmr-asia1.nanopool.org:14444 or xmr-asia1.nanopool.org:14433

rem ** ZCash  ************************************************************
rem ******* Nanopool.org:
rem ** https://zec.nanopool.org/help
rem ************ Europe (1): zec-eu1.nanopool.org:6666 or zec-eu1.nanopool.org:6633 
rem ************ Europe (2): zec-eu2.nanopool.org:6666 or zec-eu2.nanopool.org:6633 
rem ************ North America (East): zec-us-east1.nanopool.org:6666 or zec-us-east1.nanopool.org:6633 
rem ************ North America (West): zec-us-west1.nanopool.org:6666 or zec-us-west1.nanopool.org:6633 
rem ************ Asia: zec-asia1.nanopool.org:6666 or zec-asia1.nanopool.org:6633 

rem ** SiaCoin  *********************************************************
rem ******* Nanopool.org:
rem ** https://sia.nanopool.org/help
rem ************ Europe (1): sia-eu1.nanopool.org:7777
rem ************ Europe (2): sia-eu2.nanopool.org:7777
rem ************ North America (East): sia-us-east1.nanopool.org:7777
rem ************ North America (West): sia-us-west1.nanopool.org:7777
rem ************ Asia: sia-asia1.nanopool.org:7777

rem ** PascalCoin  *********************************************************
rem ******* Nanopool.org:
rem ** https://pasc.nanopool.org/help
rem ************ Europe (1): pasc-eu1.nanopool.org:15555
rem ************ Europe (2): pasc-eu2.nanopool.org:15555
rem ************ North America (East): pasc-us-east1.nanopool.org:15555
rem ************ North America (West): pasc-us-west1.nanopool.org:15555
rem ************ Asia: pasc-asia1.nanopool.org:15555

rem ** Hush  ***************************************************************
rem ******* http://zdash.miningspeed.com:
rem ** http://zdash.miningspeed.com/getting_started
rem ************ mining.miningspeed.com:3092

rem ** Lbry  ***************************************************************
rem ******* http://zdash.miningspeed.com:
rem ** https://www2.coinmine.pl/lbc/
rem ************ lbc-us.coinmine.pl:8787

rem ** Dbix  ***************************************************************
rem ******* http://dbix.pool.sexy/#/:
rem ************ dbix.pool.sexy:7007
rem ******* http://dbix.hodlpool.com/#/:
rem ** http://dbix.hodlpool.com/#/
rem ************ dbix.hodlpool.com:8007

rem ** Ubiq  ***************************************************************
rem ******* ubiqpool.io:
rem ** http://ubiqpool.io/#/help
rem ************ us.ubiqpool.io:8888
rem ******* http://ubq.pool.sexy:
rem ************ ubq.pool.sexy:9009
rem ******* http://hodlpool.com/:
rem ** http://ubiq.hodlpool.com/
rem ************ ubiq.hodlpool.com:8009

SET miner=%1

IF NOT "%miner%"=="" (
    SET /A M=%miner%
    goto MinerSwitch
)

ECHO ====================================================
ECHO *                     ETHEREUM                     *
ECHO ====================================================
ECHO 1.  NVIDIA ONLY - Optimized Ethminer - Eth Ethermine.org Only
ECHO 2.  NVIDIA ONLY - Optimized Ethminer - Eth Nanopool Only
ECHO 3.  AMD and NVIDIA Claymore - Eth Only Ethermine.org
ECHO 4.  AMD and NVIDIA Claymore - Eth Ethermine.org and Siacoin to Nanopool
ECHO 5.  AMD and NVIDIA Claymore - Eth Ethermine.org and Decred to Suprnova.cc Pool
ECHO 6.  AMD and NVIDIA Claymore - Eth Ethermine.org and Lbry Credits to Coinmine.pl
ECHO 7.  AMD and NVIDIA Claymore - Eth Ethermine.org and PascalCoin to Nanopool
ECHO 8.  AMD and NVIDIA Claymore - Eth Nanopool Only
ECHO 9.  AMD and NVIDIA Claymore - Eth Nanopool and Siacoin to Nanopool
ECHO 10. AMD and NVIDIA Claymore - Eth Nanopool and Pascal to Nanopool
ECHO ====================================================
ECHO *                  ETHEREUM Classic                *
ECHO ====================================================
ECHO 11. NVIDIA ONLY - Optimized Ethminer - Etc nanopool
ECHO 12. AMD and NVIDIA Claymore - Etc (ethereum classic) to Nanopool
ECHO 13. AMD and NVIDIA Claymore - Etc (ethereum classic) and Siacoin both to Nanopool
ECHO 14. AMD and NVIDIA Claymore - Etc (ethereum classic) Nanopool and Decred to Suprnova.cc Pool
ECHO 15. AMD and NVIDIA Claymore - Etc (ethereum classic) and Pascal both to Nanopool
ECHO ====================================================
ECHO *                    Monero (XMR)                  *
ECHO ====================================================
ECHO 16.  AMD ONLY - Claymore - XMR to Nanopool
ECHO 17.  NVIDIA ONLY - TSIV CCMiner XMR to Nanopool
ECHO ====================================================
ECHO *                       ZCASH                      *
ECHO ====================================================
ECHO 18.  AMD ZCash Claymore - Zcash to Nanopool AMD Only
ECHO 19.  NVIDIA Excavator - Zcash to Nanopool NVIDIA Only
ECHO 20.  NVIDIA EWBF's CUDA Zcash Miner - Zcash to Nanopool NVIDIA Only
ECHO ====================================================
ECHO *                      SIACOIN                     *
ECHO ====================================================
ECHO 21.   AMD and NVIDIA Gominer - Siacoin to Nanopool Only
ECHO ====================================================
ECHO *                    PASCALCOIN                    *
ECHO ====================================================
ECHO 22.  AMD SGMiner PascalCoin (exchange address) - PascalCoin to Nanopool
ECHO 23.  NVIDIA Excavator - PascalCoin to Nanopool
ECHO ====================================================
ECHO *                       HUSH                       *
ECHO ====================================================
ECHO 24.  AMD HUSH Claymore - Hush to zdash.miningpseed.com AMD Only
ECHO 25.  NVIDIA EWBF's CUDA HUSH Miner - HUSH to zdash.miningspeed.com NVIDIA Only
ECHO ====================================================
ECHO *                       LBRY                       *
ECHO ====================================================
ECHO 26.  NVIDIA CCMiner Lbry Credits Miner - Lbry to coinmine.pl NVIDIA ONLY
ECHO 27.  AMD SGMiner Lbry Credits Miner - Lbry to coinmine.pl AMD ONLY
ECHO ====================================================
ECHO *                       DBIX                       *
ECHO ====================================================
ECHO 23.  AMD and NVIDIA Claymore - DBIX to Sexy.Pool Only
ECHO 24.  AMD and NVIDIA Claymore - DBIX to Sexy.Pool and Siacoin to Nanopool
ECHO 26.  AMD and NVIDIA Claymore - DBIX to Hodl.Pool Only
ECHO 27.  AMD and NVIDIA Claymore - DBIX to Hodl Pool and Siacoin to Nanopool
ECHO ====================================================
ECHO *                       UBIQ                       *
ECHO ====================================================
ECHO 25.  AMD and NVIDIA Claymore - Ubiq to UbiqPool Only
ECHO 25.  AMD and NVIDIA Claymore - Ubiq to Sexy.Pool Only
ECHO 28.  AMD and NVIDIA Claymore - Ubiq to Hodl Pool
ECHO 29.  AMD and NVIDIA Claymore - Ubiq to UbiqPool  and Siacoin to Nanopool
ECHO 30.  AMD and NVIDIA Claymore - Ubiq to Hodl Pool and Siacoin to Nanopool
ECHO 31.  AMD and NVIDIA Claymore - Ubiq to Sexy.Pool and Siacoin to Nanopool

ECHO 99 - EXIT
ECHO.

:: Get input from user
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
if %ERRORLEVEL% NEQ 0 goto EOF

:: Is choice a number?
SET "var="&for /f "delims=0123456789" %%i in ("%M%") do set var=%%i
if defined var goto EOF

:MinerSwitch
IF %M%==1 GOTO ethereum1
IF %M%==2 GOTO ethereum2
IF %M%==3 GOTO ethereum3
IF %M%==4 GOTO ethereum4
IF %M%==5 GOTO ethereum5
IF %M%==6 GOTO ethereum6
IF %M%==7 GOTO ethereum7
IF %M%==8 GOTO ethereum8
IF %M%==9 GOTO ethereum9
IF %M%==10 GOTO ethereum10
IF %M%==11 GOTO ethereumc1
IF %M%==12 GOTO ethereumc1
IF %M%==13 GOTO ethereumc1
IF %M%==14 GOTO ethereumc1
IF %M%==15 GOTO ethereumc1
IF %M%==16 GOTO monero1
IF %M%==17 GOTO monero2
IF %M%==18 GOTO zcash1
IF %M%==19 GOTO zcash2
IF %M%==20 GOTO zcash3
IF %M%==21 GOTO siacoin1
IF %M%==22 GOTO pascal1
IF %M%==23 GOTO pascal2
IF %M%==24 GOTO lbry1
IF %M%==25 GOTO lbry2
IF %M%==26 GOTO dbix1
IF %M%==27 GOTO dbix2
IF %M%==28 GOTO dbix3
IF %M%==29 GOTO dbix4
IF %M%==30 GOTO ubiq1
IF %M%==31 GOTO ubiq2
IF %M%==32 GOTO ubiq3
IF %M%==33 GOTO ubiq4
IF %M%==34 GOTO ubiq5
IF %M%==35 GOTO ubiq6
IF %M% GTR 35 GOTO EOF
IF %M% LSS 0 GOTO EOF


::
:: Ethereum miners
::
:ethereum1
ECHO NVIDIA ONLY - Optimized Ethminer - Eth Ethermine.org Only
ethminer-0.11.0.NvidiaOptimized\bin\ethminer.exe --farm-recheck 200 -G -S eu1.ethermine.org:4444 -FS us1.ethermine.org:4444 -O %ETH_WALLET_ADDRESS%.%MINER_NAME%
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum2
ECHO NVIDIA ONLY - Optimized Ethminer - Eth Nanopool Only
ethminer-0.11.0.NvidiaOptimized\bin\ethminer.exe --farm-recheck 200 -G -S eth-us-east1.nanopool.org:9999 -FS eth-eu1.nanopool.org:9999 -O %ETH_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS%
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum3
ECHO AMD and NVIDIA Claymore - Eth Only Ethermine.org
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS%.%MINER_NAME% -epsw x
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum4
ECHO AMD and NVIDIA Claymore - Eth Ethermine.org and Siacoin to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS%.%MINER_NAME% -epsw x -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum5
ECHO AMD and NVIDIA Claymore - Eth Ethermine.org and Decred to Suprnova.cc Pool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS%.%MINER_NAME% -epsw x -dpool stratum+tcp://dcr.suprnova.cc:3252 -dwal %DECRED_WALLET_ADDRESS%.%MINER_NAME% -dpsw x -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum6
ECHO AMD and NVIDIA Claymore - Eth Ethermine.org and Lbry Credits to Coinmine.pl
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS%.%MINER_NAME% -epsw x -dpool stratum+tcp://lbc-us.coinmine.pl:8787 -dwal %LBRY_WALLET_ADDRESS%.%MINER_NAME% -dpsw x -dcoin lbc
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum7
ECHO AMD and NVIDIA Claymore - Eth Ethermine.org and PascalCoin to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS%.%MINER_NAME% -epsw x -dpool stratum+tcp://pasc-us-east1.nanopool.org:15555 -dwal %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -dpsw x -dcoin pasc -ftime 10 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum8
ECHO AMD and NVIDIA Claymore - Eth Nanopool Only
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool eth-us-east1.nanopool.org:9999 -ewal %ETH_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -mode 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum9
ECHO AMD and NVIDIA Claymore - Nanopool and Siacoin to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool eth-us-east1.nanopool.org:9999 -ewal %ETH_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -epsw x -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereum10
ECHO AMD and NVIDIA Claymore - Eth Nanopool and Pascal to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool eth-us-east1.nanopool.org:9999 -ewal %ETH_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -epsw x -dpool stratum+tcp://pasc-us-east1.nanopool.org:15555 -dwal %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -dcoin pasc -ftime 10 
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Ethereum Classic miners
::
:ethereumc1
ECHO NVIDIA ONLY - Optimized Ethminer - Etc nanopool Only 
ethminer-0.11.0.NvidiaOptimized\bin\ethminer.exe --farm-recheck 200 -G -S etc-us-east1.nanopool.org:19999 -O %ETC_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS%
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereumc1
ECHO AMD and NVIDIA Claymore - Etc (ethereum classic) to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool etc-us-east1.nanopool.org:19999 -ewal %ETC_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -mode 1 -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereumc1
ECHO AMD and NVIDIA Claymore - Etc (ethereum classic) and Siacoin both to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool etc-us-east1.nanopool.org:19999 -ewal %ETC_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -epsw x -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereumc1
ECHO AMD and NVIDIA Claymore - Etc (ethereum classic) Nanopool and Decred to Suprnova.cc Pool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool etc-us-east1.nanopool.org:19999 -ewal %ETC_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -epsw x -dpool stratum+tcp://dcr.suprnova.cc:3252 -dwal %DECRED_WALLET_ADDRESS%.%MINER_NAME% -dpsw x -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ethereumc1
ECHO AMD and NVIDIA Claymore - Etc (ethereum classic) and Pascal both to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool etc-us-east1.nanopool.org:19999 -ewal %ETC_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -epsw x -dpool stratum+tcp://pasc-us-east1.nanopool.org:15555 -dwal %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -dcoin pasc -ftime 10 -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Monero Miners
::
:monero1
ECHO AMD ONLY - Claymore - XMR to Nanopool
Claymore_CryptoNote_GPU_Miner_v9.7\NsGpuCNMiner.exe -o ssl://xmr-eu1.nanopool.org:14433 -u %XMR_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -p z -ftime 1 -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:monero2
ECHO NVIDIA ONLY - TSIV CCMiner XMR to Nanopool
tsiv-xmr-nvidia\ccminer -q -o stratum+tcp://xmr-us-east1.nanopool.org:14444 -u %XMR_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -p x -l 4x84
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: ZCash Miners
::
:zcash1
ECHO ZCash Claymore - Zcash to Nanopool AMD Only
Claymore_ZCash_AMD_GPU_Miner_v12.4\ZecMiner64.exe -zpool ssl://zec-us-east1.nanopool.org:6633 -zwal %ZCASH_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -zpsw z -ftime 1 -allpools 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:zcash2
ECHO NVIDIA Excavator - Zcash to Nanopool NVIDIA Only
excavator_v1.1.0a_Win64\excavator -a equihash -s zec-us-east1.nanopool.org:6666 -u %ZCASH_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -p 0 -d 2 -ca -ca 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:zcash3
ECHO NVIDIA EWBF's CUDA Zcash Miner - Zcash to Nanopool NVIDIA Only
ZEC_M0.3.4b\miner --server zec-us-east1.nanopool.org --user %ZCASH_WALLET_ADDRESS%.%MINER_NAME%.%EMAIL_ADDRESS% --pass z --port 6666
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: SiaCoin Miners
::
:siacoin1
ECHO AMD and NVIDIA Gominer - Siacoin to Nanopool Only
gominer-windows-1.0.0\gominer.exe -I 28 -H sia-us-east1.nanopool.org:9980 -Q "address=%SIA_WALLET_ADDRESS%&worker=%MINER_NAME%&email=%EMAIL_ADDRESS%"
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: PascalCoin Miners
::
:pascal1
ECHO AMD SGMiner PascalCoin (exchange address) - PascalCoin to Nanopool
sg-miner-5.5.0\sgminer.exe -k pascal -o stratum+tcp://pasc-us-east1.nanopool.org:15555 -u %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -p x -I 21 -w 64 -g2 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:pascal2
ECHO NVIDIA Excavator - PascalCoin to Nanopool
excavator_v1.1.0a_Win64\excavator -a pascal -s pasc-us-east1.nanopool.org:15555 -u %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -d 2 -ca 
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Hush Miners
::
:hush1
ECHO AMD HUSH Claymore - Hush to zdash.miningpseed.com AMD Only
Claymore_ZCash_AMD_GPU_Miner_v12.4\ZecMiner64.exe
-zpool mining.miningspeed.com:3062
-zwal %HUSH_WALLET_ADDRESS%.%MINER_NAME%
-zpsw z
-allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:hush2
ECHO NVIDIA EWBF's CUDA HUSH Miner - HUSH to zdash.miningspeed.com NVIDIA Only
ZEC_M0.3.4b\miner --server mining.miningspeed.com --user %HUSH_WALLET_ADDRESS%.%MINER_NAME% --pass z --port 3092
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Lbry Miners
::
:lbry1
ECHO NVIDIA CCMiner Lbry Credits Miner - Lbry to coinmine.pl NVIDIA ONLY
ccminer-2.0-release-x64-cuda-8.0\ccminer-x64.exe -o stratum+tcp://lbc-us.coinmine.pl:8787 -u %LBRY_WALLET_ADDRESS%.%MINER_NAME% -a lbry
if %ERRORLEVEL% NEQ 0 goto exit
pause

:lbry2
:: Not working for now
ECHO AMD SGMiner Lbry Credits Miner - Lbry to coinmine.pl AMD ONLY
ccminer-2.0-release-x64-cuda-8.0\ccminer-x64.exe --kernel lbry -o stratum+tcp://lbc-us.coinmine.pl:8787 -u %LBRY_WALLET_ADDRESS%.%MINER_NAME% -p x -I 19 -w 64 -g 4
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Dbix Miners
::
:dbix1
ECHO AMD and NVIDIA Claymore - Dbix to Sexy.pool only
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://dbix.pool.sexy:7007 -ewal %DBIX_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -allpools 1 -allcoins 1 -mode 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:dbix2
ECHO AMD and NVIDIA Claymore - Dbix to Sexy.Pool and Siacoin to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://dbix.pool.sexy:7007 -ewal %DBIX_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:dbix3
ECHO AMD and NVIDIA Claymore - DBIX to Hodl.Pool Only
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://dbix.hodlpool.com:8007 -ewal %DBIX_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -allpools 1 -allcoins 1 -mode 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:dbix4
ECHO AMD and NVIDIA Claymore - DBIX to Hodl Pool and Siacoin to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://dbix.hodlpool.com:8007 -ewal %DBIX_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

::
:: Ubiq Miners
::

:ubiq1
ECHO AMD and NVIDIA Claymore - Ubiq to UbiqPool Only
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://eu.ubiqpool.io:8008 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -allpools 1 -allcoins 1 -mode 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ubiq2
ECHO AMD and NVIDIA Claymore - Ubiq to Hodl Pool Only
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://dbix.hodlpool.com:8007 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -allpools 1 -allcoins 1 -mode 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ubiq3
ECHO AMD and NVIDIA Claymore - Ubiq to Sexy.Pool Only
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://ubq.pool.sexy:9009 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -allpools 1 -allcoins 1 -mode 1 
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ubiq4
ECHO AMD and NVIDIA Claymore - Ubiq to UbiqPool and Siacoin to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://eu.ubiqpool.io:8008 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ubiq5
ECHO AMD and NVIDIA Claymore - Ubiq to Hodl Pool and Siacoin to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://dbix.hodlpool.com:8007 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:ubiq6
ECHO AMD and NVIDIA Claymore - Ubiq to Sexy.Pool and Siacoin to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://ubq.pool.sexy:9009 -ewal %UBIQ_WALLET_ADDRESS% -epsw x -eworker %MINER_NAME% -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:exit
ECHO Error while running miner
pause

:EOF
