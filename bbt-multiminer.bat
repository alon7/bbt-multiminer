echo off
rem **********************************************************************
rem *         BBT Multi-Miner Easy Batch File  v4 by BBT & Kunt Pukerd   *
rem *     Featuring Claymore, SGMiner, CCMiner, EBWF's Miner and more    *
rem *   Pre-Configured syntax, just update address/worker                *
rem *    Eth, Etc, Xmr, Lbry, Sia, Zcash, Pasc, Hush, DBIX, ubiq and more*
rem **********************************************************************
rem * BEST VIEWED IN FULL SCREEN 1920x1080
rem **********************************************************************
rem * Environment Setup                                         
echo on
setx GPU_FORCE_64BIT_PTR 0
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100
echo off
rem **Instructions******************************************************* 
rem **Replace the wallet & POOL addresses!!!!                           *
rem **Replace the miner name and the email address                      *
rem **Then run and choose :)                                            * 
rem *********************************************************************

SET ETH_WALLET_ADDRESS = 0xF897EaFdb787AcD4Da5e2EB5003E42dc1Ef86d39
SET ETC_WALLET_ADDRESS = 0x89b455cfd5adb8ba4a69fd6bd082b3d61efe160f
SET XMR_WALLET_ADDRESS = 452eu5HWBcTEwQfwkRFHp9MgC39DhtAio5um8mEs6ZRgcyq9V3Gy3GbJfyASSxepSRQRe6SHcQ27xgorYzyZrn6DSVmWvuw.4d8ddccc40568d93
SET SIA_WALLET_ADDRESS = 6ce3c1dc8444ce3dc362425124853e0f32e930eaae1dedc6e919a08d8b6664bf71bd744dda24
SET ZCASH_WALLET_ADDRESS = t1dBorBoRyznDaRyQzEEB4SkvmCFhmF2ZYk
SET PASCAL_WALLET_ADDRESS = 86646-64.59e76e7d7a498fbc
SET HUSH_WALLET_ADDRESS = t1MmWWevkAxB282JqtpY4bK7njF7XPfcH2n
SET LBRY_WALLET_ADDRESS = bitsbetrippin
SET DECRED_WALLET_ADDRESS = bitsbetrippin
SET DBIX_WALLET_ADDRESS = 0x7681629aF4D657B462590fB0BdF82c76D7fC6878
SET UBIQ_WALLET_ADDRESS = 0x21b75D1b449bd7dAE9B2C8730C7bEC8854409Cfb

SET MINER_NAME = bbtworker01

SET EMAIL_ADDRESS = bitsbetrippin1@gmail.com


ECHO.
ECHO ...............................................
ECHO PRESS 1, 2 etc to select miner, or 99 to EXIT.
ECHO ...............................................
ECHO.
ECHO 1 - NVIDIA ONLY - Optimized Ethminer - Eth Ethermine.org Only 			
ECHO 2 - NVIDIA ONLY - Optimized Ethminer - Etc nanopool
ECHO 3 - AMD ONLY - Claymore - XMR to Nanopool
ECHO 4 - NVIDIA ONLY - TSIV CCMiner XMR to Nanopool
ECHO 5 - AMD and NVIDIA Claymore - Eth Only Ethermine.org
ECHO 6 - AMD and NVIDIA Claymore - Eth Ethermine.org and Siacoin to Nanopool
ECHO 7 - AMD and NVIDIA Gominer - Siacoin to Nanopool Only
ECHO 8 - AMD and NVIDIA Claymore - Eth Ethermine.org and Decred to Suprnova.cc Pool
ECHO 9 - AMD and NVIDIA Claymore - Eth Ethermine.org and Lbry Credits to Coinmine.pl
ECHO 10 - AMD and NVIDIA Claymore - Etc (ethereum classic) to Nanopool
ECHO 11 - AMD and NVIDIA Claymore - Etc (ethereum classic) and Siacoin both to Nanopool
ECHO 12 - AMD and NVIDIA Claymore - Etc (ethereum classic) Nanopool and Decred to Suprnova.cc Pool
ECHO 13 - AMD ZCash Claymore - Zcash to Nanopool AMD Only
ECHO 14 - NVIDIA Excavator - Zcash to Nanopool NVIDIA Only
ECHO 15 - NVIDIA EWBF's CUDA Zcash Miner - Zcash to Nanopool NVIDIA Only
ECHO 16 - AMD and NVIDIA Claymore - Eth Ethermine.org and PascalCoin to Nanopool
ECHO 17 - AMD SGMiner PascalCoin (exchange address) - PascalCoin to Nanopool
ECHO 18 - NVIDIA Excavator - PascalCoin to Nanopool
ECHO 19 - AMD HUSH Claymore - Hush to zdash.miningpseed.com AMD Only
ECHO 20 - NVIDIA EWBF's CUDA HUSH Miner - HUSH to zdash.miningspeed.com NVIDIA Only
ECHO 21 - NVIDIA CCMiner Lbry Credits Miner - Lbry to coinmine.pl NVIDIA ONLY
ECHO 22 - AMD SGMiner Lbry Credits Miner - Lbry to coinmine.pl AMD ONLY
ECHO 23 - AMD and NVIDIA Claymore - DBIX to Sexy.Pool Only
ECHO 24 - AMD and NVIDIA Claymore - DBIX to Sexy.Pool and Siacoin to Nanopool
ECHO 25 - AMD and NVIDIA Claymore - Ubiq to Sexy.Pool Only
ECHO 26 - AMD and NVIDIA Claymore - DBIX to Hodl.Pool Only
ECHO 27 - AMD and NVIDIA Claymore - DBIX to Hodl Pool and Siacoin to Nanopool
ECHO 28 - AMD and NVIDIA Claymore - Ubiq to Hodl Pool
ECHO 29 - AMD and NVIDIA Claymore - Ubiq to ubiqpool and Siacoin to Nanopool
ECHO 30 - AMD and NVIDIA Claymore - Ubiq to Hodl pool and Siacoin to Nanopool
ECHO 31 - AMD and NVIDIA Claymore - Ubiq to pool sexy and Siacoin to Nanopool
ECHO 99 - EXIT
ECHO.

SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO ethminer1
IF %M%==2 GOTO ethminer2
IF %M%==3 GOTO Claymore
IF %M%==4 GOTO TSIV
IF %M%==5 GOTO Claymore2
IF %M%==6 GOTO ClaymoreSia
IF %M%==7 GOTO Siacoin
IF %M%==8 GOTO ETHDEC
IF %M%==9 GOTO ETHLBRY
IF %M%==10 GOTO ETC
IF %M%==11 GOTO ETCSIA
IF %M%==12 GOTO ETCDEC
IF %M%==13 GOTO Zcash
IF %M%==14 GOTO ZcashN
IF %M%==15 GOTO ZcashEWBF
IF %M%==16 GOTO EthPascal
IF %M%==17 GOTO Pascal
IF %M%==18 GOTO NPascal
IF %M%==19 GOTO AMDHUSH
IF %M%==20 GOTO NEWBF
IF %M%==21 GOTO NCCLBRY
IF %M%==22 GOTO AMDLBRY
IF %M%==23 GOTO ClaymoreDBIX
IF %M%==24 GOTO ClaymoreDBIXSia
IF %M%==25 GOTO ClaymoreUBIQ
IF %M%==26 GOTO ClaymoreDBIX2
IF %M%==27 GOTO ClaymoreDBIXSia2
IF %M%==28 GOTO ClaymoreUBIQ2
IF %M%==29 GOTO ClaymoreUBIQSia
IF %M%==30 GOTO ClaymoreUBIQSia2
IF %M%==31 GOTO ClaymoreUBIQSia3
IF %M%==99 GOTO EOF

:ethminer1
rem NVIDIA ONLY - Optimized Ethminer - Eth Ethermine.org Only
ethminer-0.11.0.NvidiaOptimized\bin\ethminer.exe -U -S us1.ethermine.org:4444 -O %ETH_WALLET_ADDRESS%.%MINER_NAME%
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ethminer2
rem NVIDIA ONLY - Optimized Ethminer - Etc nanopool Only 
ethminer-0.11.0.NvidiaOptimized\bin\ethminer.exe -U -S etc-us-east1.nanopool.org:19999 -O %ETC_WALLET_ADDRESS%.%MINER_NAME%
if %ERRORLEVEL% NEQ 0 goto exit
pause
:Claymore
rem AMD ONLY - Claymore - XMR to Nanopool
Claymore_CryptoNote_GPU_Miner_v9.7\NsGpuCNMiner.exe -o ssl://xmr-us-east1.nanopool.org:14444 -u  %XMR_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -p z -ftime 1
if %ERRORLEVEL% NEQ 0 goto exit
pause
:TSIV
rem NVIDIA ONLY - TSIV CCMiner XMR to Nanopool
tsiv-xmr-nvidia\ccminer -q -o stratum+tcp://xmr-us-east1.nanopool.org:14444 -u  %XMR_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -p x -l 4x84
if %ERRORLEVEL% NEQ 0 goto exit
pause
:Claymore2
rem AMD & NVIDIA Claymore - Eth Only Ethermine.org
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS% -epsw x
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ClaymoreSia
rem AMD & NVIDIA Claymore - Eth Ethermine.org & Siacoin to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool us1.ethermine.org:4444 -ewal %ETC_WALLET_ADDRESS% -epsw x -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal  %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia
if %ERRORLEVEL% NEQ 0 goto exit
pause
:Siacoin
rem AMD & NVIDIA Gominer - Siacoin to Nanopool Only
gominer-windows-1.0.0\gominer.exe -I 28 -H sia-us-east1.nanopool.org:9980 -Q "address=%SIA_WALLET_ADDRESS%&worker=%MINER_NAME%&email=%EMAIL_ADDRESS%"
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ETHDEC
rem AMD & NVIDIA Claymore - Eth Ethermine.org & Decred to Suprnova.cc Pool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool us1.ethermine.org:4444 -ewal %ETC_WALLET_ADDRESS% -epsw x -dpool stratum+tcp://dcr.suprnova.cc:3252 -dwal %DECRED_WALLET_ADDRESS%.%MINER_NAME% -dpsw x
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ETHLBRY
rem AMD & NVIDIA Claymore - Eth Ethermine.org & Lbry Credits to Coinmine.pl
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS% -epsw x -dpool stratum+tcp://lbc-us.coinmine.pl:8787 -dwal %LBRY_WALLET_ADDRESS%.%MINER_NAME% -dpsw x -dcoin lbc
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ETC
rem AMD & NVIDIA Claymore - Etc (ethereum classic) to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool etc-us-east1.nanopool.org:19999 -ewal %ETC_WALLET_ADDRESS% -epsw x
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ETCSIA
rem AMD & NVIDIA Claymore - Etc (ethereum classic) & Siacoin both to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool etc-us-east1.nanopool.org:19999 -ewal %ETC_WALLET_ADDRESS% -epsw x -dpool stratum +tcp://sia-rem us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ETCDEC
rem AMD & NVIDIA Claymore - Etc (ethereum classic) Nanopool & Decred to Suprnova.cc Pool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool etc-us-east1.nanopool.org:19999 -ewal %ETC_WALLET_ADDRESS% -epsw x -dpool stratum +tcp://dcr.suprnova.cc:3252 -dwal %DECRED_WALLET_ADDRESS%.%MINER_NAME% -dpsw x
if %ERRORLEVEL% NEQ 0 goto exit
pause
:Zcash
rem AMD ZCash Claymore - Zcash to Nanopool AMD Only
Claymore_ZCash_AMD_GPU_Miner_v12.4\ZecMiner64.exe
-zpool ssl://zec-us-east1.nanopool.org:6633
-zwal %ZCASH_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS%
-zpsw z
-ftime 1
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ZcashN
rem NVIDIA Excavator - Zcash to Nanopool NVIDIA Only
excavator_v1.1.0a_Win64\excavator -a equihash -s zec-us-east1.nanopool.org:6666 -u %ZCASH_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -p 0 -d rem 2 -ca rem -ca
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ZcashEWBF
rem NVIDIA EWBF's CUDA Zcash Miner - Zcash to Nanopool NVIDIA Only
ZEC_M0.3.4b\miner --server zec-us-east1.nanopool.org --user %ZCASH_WALLET_ADDRESS%.%MINER_NAME% --pass z --port 6666
if %ERRORLEVEL% NEQ 0 goto exit
pause
:EthPascal
rem AMD & NVIDIA Claymore - Eth Ethermine.org & PascalCoin to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool us1.ethermine.org:4444 -ewal %ETH_WALLET_ADDRESS% -epsw x -dpool stratum+tcp://pasc-us-east1.nanopool.org:15555 -dwal %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -dpsw x -dcoin pasc -ftime 10
if %ERRORLEVEL% NEQ 0 goto exit
pause
:Pascal
rem AMD SGMiner PascalCoin (exchange address) - PascalCoin to Nanopool
sg-miner-5.5.0\sgminer.exe -k pascal -o stratum+tcp://pasc-us-east1.nanopool.org:15555 -u %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -p x -I 21 rem -w 64 rem -g2
if %ERRORLEVEL% NEQ 0 goto exit
pause
:NPascal
rem NVIDIA Excavator - PascalCoin to Nanopool
excavator_v1.1.0a_Win64\excavator -a pascal -s pasc-us-east1.nanopool.org:15555 -u %PASCAL_WALLET_ADDRESS%.%MINER_NAME%/%EMAIL_ADDRESS% -p 0 -d 2 -ca -ca
if %ERRORLEVEL% NEQ 0 goto exit
pause
:AMDHUSH
rem AMD HUSH Claymore - Hush to zdash.miningpseed.com AMD Only
Claymore_ZCash_AMD_GPU_Miner_v12.4\ZecMiner64.exe
-zpool mining.miningspeed.com:3062
-zwal %HUSH_WALLET_ADDRESS%.%MINER_NAME%
-zpsw z
-allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause
:NEWBF
rem NVIDIA EWBF's CUDA HUSH Miner - HUSH to zdash.miningspeed.com NVIDIA Only
ZEC_M0.3.4b\miner --server mining.miningspeed.com --user %HUSH_WALLET_ADDRESS%.%MINER_NAME% --pass z --port 3092
if %ERRORLEVEL% NEQ 0 goto exit
pause
:NCCLBRY
rem NVIDIA CCMiner Lbry Credits Miner - Lbry to coinmine.pl NVIDIA ONLY
ccminer-2.0-release-x64-cuda-8.0\ccminer-x64.exe -o stratum+tcp://lbc-us.coinmine.pl:8787 -u %LBRY_WALLET_ADDRESS%.%MINER_NAME% -a lbry
if %ERRORLEVEL% NEQ 0 goto exit
pause
:AMDLBRY
rem AMD SGMiner Lbry Credits Miner - Lbry to coinmine.pl AMD ONLY
ccminer-2.0-release-x64-cuda-8.0\sgminer.exe --kernel lbry -o stratum+tcp://lbc-us.coinmine.pl:8787 -u %LBRY_WALLET_ADDRESS%.%MINER_NAME% -p x -I 19 -w 64 -g 4
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ClaymoreDBIX
rem AMD & NVIDIA Claymore - Dbix to Sexy.pool only
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://dbix.pool.sexy:7007 -ewal %DBIX_WALLET_ADDRESS% -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ClaymoreDBIXSia
rem AMD & NVIDIA Claymore - Dbix to Sexy.Pool & Siacoin to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://dbix.pool.sexy:7007 -ewal %DBIX_WALLET_ADDRESS% -epsw x -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ClaymoreUBIQ
rem AMD & NVIDIA Claymore - ubiq to Sexy.Pool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://ubq.pool.sexy:9009 -ewal %UBIQ_WALLET_ADDRESS% -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ClaymoreDBIX2
rem AMD & NVIDIA Claymore - Dbix to hodl only
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://dbix.hodlpool.com:8007 -ewal %DBIX_WALLET_ADDRESS%.%MINER_NAME% -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ClaymoreDBIXSia2
rem AMD & NVIDIA Claymore - Dbix to hodl & Siacoin to Nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://dbix.hodlpool.com:8007 -ewal %DBIX_WALLET_ADDRESS% -epsw x -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ClaymoreUBIQ2
rem AMD & NVIDIA Claymore - ubiq to hodl
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://ubiq.hodlpool.com:8009 -ewal %UBIQ_WALLET_ADDRESS% -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ClaymoreUBIQSia
rem AMD & NVIDIA Claymore - ubiq to ubiqpool and siacoin to nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://eu.ubiqpool.io:8008 -ewal %UBIQ_WALLET_ADDRESS% -dpool stratum+tcp://sia-eu1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ClaymoreUBIQSia2
rem AMD & NVIDIA Claymore - ubiq to hodl pool and siacoin to nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://ubiq.hodlpool.com:8009 -ewal %UBIQ_WALLET_ADDRESS% -dpool stratum+tcp://sia-eu1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause
:ClaymoreUBIQSia3
rem AMD & NVIDIA Claymore - ubiq to pool sexy and siacoin to nanopool
Claymore_Dual_Ethereum_v9.7\EthDcrMiner64.exe -epool stratum+tcp://ubq.pool.sexy:9009 -ewal %UBIQ_WALLET_ADDRESS% -eworker %MINER_NAME% -dpool stratum+tcp://sia-eu1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/%MINER_NAME%/%EMAIL_ADDRESS% -dcoin sia -allpools 1
if %ERRORLEVEL% NEQ 0 goto exit
pause

:exit
ECHO Error while running miner
pause
