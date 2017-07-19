Claymore's XMR/QCN/FCN/BCN GPU Miner.
=========================

This is POOL version.

Catalyst 13.12 is required for best performance and compatibility. Catalyst 14.x is supported as well.

Set "GPU_MAX_ALLOC_PERCENT" environment variable as "100".

For multi-GPU systems, set Virtual Memory size in Windows at least 16 GB:
"Computer Properties / Advanced System Settings / Performance / Advanced / Virtual Memory".

This miner is free-to-use, however, current developer fee is 2.5%, miner mines 39 rounds for you and 1 round for developer.
If you don't agree with dev fee - don't use this miner, or use "-nofee" option.
Attempts to cheat and remove dev fee will cause a bit slower mining speed (same as "-nofee 1") though miner will show same hashrate.

This version is for recent AMD videocards only: 7xxx and 2xx, also 6xxx and 5xxx. No nVidia support.

This version is for Windows x64 and Linux x64 only. No 32-bit support. 

Linux version also requires AMD APP SDK installed. Linux version has been tested in Cent 6.5 and Ubuntu 14.04.

Miner has built-in GPU temperature management.



COMMAND LINE OPTIONS:

-o 	pool address. Both HTTP and Stratum protocol are supported. You can specify several "-o" parameters to use several pools, or use "pools.txt" file, or use both. 
	First pool specified via "-o" option is main pool: miner will switch to main pool every 30 minutes.

-u 	your wallet address.

-p 	password, use "x" as password.

-di 	GPU indexes, default is all available GPUs. For example, if you have four GPUs "-di 02" will enable only first and third GPUs.

-a	Select algorithm:
	"-a 0" (default) means autoselection.
	"-a 1" fastest mining mode for 290/290x and 270/270x cards.
	"-a 2" low power consumption mode for 290/290x cards. A bit less speed (1%) but less power consumption (10-15%).
	"-a 3" fastest mining for old cards (6xxx and 5xxx). 
	"-a 4" fastest mining for recent cards (280x, 270/270x etc). 
	You can also specify mode for every card separately, for example, "-a 1234".
	It is very important for good mining speed to select correct "-a" and "-h" values for your cards.
	For old cards 5xxx and 6xxx use "-a 3" mode only, otherwise you can get "LowDifficultyShare" errors from pool.

-wd 	watchdog option. Use "-wd 1" to enable watchdog, miner will be closed if any thread is not responding for 1 minute or OpenCL call failed, 
	so you can restart it from some script if some GPU does not respond.

-ee 	close miner if no more pools are available in the list. By default, miner tries all pools one by one, after last pool it tries first pool again and so on. 
Use "-ee 1" to close miner when it tried all pools, so you can restart it from some script and do some additional actions related to internet connectins if necessary.

-dbg	debug log and messages. "-dbg 0" (default) - create log file but don't show debug messages. 
	"-dbg 1" - create log file and show debug messages. "-dbg -1" - no log file and no debug messages.

-r	Restart miner mode. "-r 0" (default) - restart miner if something wrong with GPU. "-r -1" - disable automatic restarting. -r >0 - restart miner if something 
	wrong with GPU or by timer. For example, "-r 60" - restart miner every hour or when some GPU failed.

-li	Low intensity mode. Specify "-li 1" if you don't want Windows to freeze.

-nofee: set "1" to cancel my developer fee at all. In this mode some recent optimizations are disabled so mining speed will be slower by about 5%. 
	By enabling this mode, I will lose 100% of my earnings, you will lose only 2.5% of your earnings.
	So you have a choice: "fastest miner" or "completely free miner but a bit slower".
	If you want both "fastest" and "completely free" you should find some other miner that meets your requirements, just don't use this miner instead of claiming that I need 
	to cancel/reduce developer fee, saying that 2.5% developer fee is too much for this miner and so on.

-tt	set target GPU temperature. For example, "-tt 80" means 80C temperature. This option enables temperature management for all installed cards.

-h	number of hashes that GPU processes during one round (HashCnt). If not specified, default value is used. For many cases you can increase performance by adjusting this parameter value. 
	For example, "-h 832" means HashCnt=832 for all cards. You can also specify values for every card, for example "-h 640,832,1376,0", zero value means autoselection. 
	Values must be divisible by 32, otherwise near value that is divisible by 32 will be selected.
	Use "m", "+" and "-" keys to find the best value. One hash takes about 2MB of GPU memory, too big value may cause unstable mining and in many cases max value is not the best. 
	For example, for 280x card the best value is 832. For 290x card the best value is 1376.
	For most popular cards miner sets the best value automatically, but there are many cards and I don't have them all, so you can find the best "-h" value by yourself.
	Press "m" key to see current hashrate for every GPU round, then use "+" and "-" keys to increase/reduce "-h" value. You can also press "0"..."9" keys to select active card.
	Sometimes changing "HashCnt" by "+" and "-" keys causes problems with OpenCL, in this case you need to restart miner and change "-h" values in command line directly.



SAMPLE USAGE

NsGpuCNMiner.exe -o stratum+tcp://mine.moneropool.org:80 -u 449TGay4WWJPwsXrWZfkMoPtDbJp8xoSzFuyjRt3iaM4bRHdzw4qoDu26FdcGx67BMDS1r2bnp7f5hF6xdPWWrD3Q3Wf7G6 -p x

Do not forget to specify your wallet address!



FAILOVER

Use "-o" option or "pools.txt" file to specify several pools. Every pool has 3 connection attempts. "pools.txt" file has text format, one address per line. 
If the first character of a line is ";" this line will be ignored. 
After pool address you can also specify login and password, use space as separator, for example:

mro.pool.minergate.com:5556 yourmail@gmail.com !

or

stratum+tcp://mine.moneropool.org:80 449TGay4WWJPwsXrWZfkMoPtDbJp8xoSzFuyjRt3iaM4bRHdzw4qoDu26FdcGx67BMDS1r2bnp7f5hF6xdPWWrD3Q3Wf7G6 x

If login or password are not specified, "-u" and "-p" parameters will be used.



PERFORMANCE

About 810 h/s on stock 290X (Hynix memory).
About 710 h/s on stock 290X (Elpida memory).
About 690 h/s on stock 290  (Elpida memory).
About 550 h/s on stock 280X (Hynix memory).
About 440 h/s on stock 270X (Elpida memory).
About 410 h/s on stock 270  (Elpida memory).


TROUBLESHOOTING

1. Install Catalyst v13.12.
2. Disable overclocking.
3. Set GPU_MAX_ALLOC_PERCENT 100.
4. Set Virtual Memory 16 GB.
5. Reboot computer.



TUNING

For 290X/290/280X/270X/270 you can leave default parameters, i.e. do not specify "-a" and "-h", miner will apply best settings automatically.

For other cards, guide how to get maximal speed:

1. Try "-a 1", "-a 3", "-a 4" and select best mode, press "m" key to see immediate hashrate.
2. Remember "HashCnt" value when miner starts, then specify "-h" parameter with this value, remember hashrate and change "-h" parameter step by step by 32 in both directions (less and more). 
   Select best value based on immediate hashrate.

