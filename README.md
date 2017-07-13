## Bits Be Trippin' & alon7 Multi-miner

Bits Be Trippin' is a youtube channel for cryptocurrencies mining.   
They created the initial multiminer to enable easy switch between miners.  
I took the script a step further and added more pools, coins and made it more configurable.  

### Available mining configurations

1.  NVIDIA ONLY - Optimized Ethminer - Eth Ethermine.org Only
2.  NVIDIA ONLY - Optimized Ethminer - Eth Nanopool Only
3.  AMD and NVIDIA Claymore - Eth Only Ethermine.org
4.  AMD and NVIDIA Claymore - Eth Ethermine.org and Siacoin to Nanopool
5.  AMD and NVIDIA Claymore - Eth Ethermine.org and Decred to Suprnova.cc Pool
6.  AMD and NVIDIA Claymore - Eth Ethermine.org and Lbry Credits to Coinmine.pl
7.  AMD and NVIDIA Claymore - Eth Ethermine.org and PascalCoin to Nanopool
8.  AMD and NVIDIA Claymore - Eth Nanopool Only
9.  AMD and NVIDIA Claymore - Eth Nanopool and Siacoin to Nanopool
10. AMD and NVIDIA Claymore - Eth Nanopool and Pascal to Nanopool
11. NVIDIA ONLY - Optimized Ethminer - Etc nanopool
12. AMD and NVIDIA Claymore - Etc (ethereum classic) to Nanopool
13. AMD and NVIDIA Claymore - Etc (ethereum classic) and Siacoin both to Nanopool
14. AMD and NVIDIA Claymore - Etc (ethereum classic) Nanopool and Decred to Suprnova.cc Pool
15. AMD and NVIDIA Claymore - Etc (ethereum classic) and Pascal both to Nanopool
16.  AMD ONLY - Claymore - XMR to Nanopool
17.  NVIDIA ONLY - TSIV CCMiner XMR to Nanopool
18.  AMD ZCash Claymore - Zcash to Nanopool AMD Only
19.  NVIDIA Excavator - Zcash to Nanopool NVIDIA Only
20.  NVIDIA EWBF's CUDA Zcash Miner - Zcash to Nanopool NVIDIA Only
21.   AMD and NVIDIA Gominer - Siacoin to Nanopool Only
22.  AMD SGMiner PascalCoin (exchange address) - PascalCoin to Nanopool
23.  NVIDIA Excavator - PascalCoin to Nanopool
24.  AMD HUSH Claymore - Hush to zdash.miningpseed.com AMD Only
25.  NVIDIA EWBF's CUDA HUSH Miner - HUSH to zdash.miningspeed.com NVIDIA Only
26.  NVIDIA CCMiner Lbry Credits Miner - Lbry to coinmine.pl NVIDIA ONLY
27.  AMD SGMiner Lbry Credits Miner - Lbry to coinmine.pl AMD ONLY
28.  AMD and NVIDIA Claymore - DBIX to Sexy.Pool Only
29.  AMD and NVIDIA Claymore - DBIX to Sexy.Pool and Siacoin to Nanopool
30.  AMD and NVIDIA Claymore - DBIX to Hodl.Pool Only
31.  AMD and NVIDIA Claymore - DBIX to Hodl Pool and Siacoin to Nanopool
32.  AMD and NVIDIA Claymore - Ubiq to UbiqPool Only
33.  AMD and NVIDIA Claymore - Ubiq to Sexy.Pool Only
34.  AMD and NVIDIA Claymore - Ubiq to Hodl Pool
35.  AMD and NVIDIA Claymore - Ubiq to UbiqPool  and Siacoin to Nanopool
36.  AMD and NVIDIA Claymore - Ubiq to Hodl Pool and Siacoin to Nanopool
37.  AMD and NVIDIA Claymore - Ubiq to Sexy.Pool and Siacoin to Nanopool


## Setup

1. Right click on bbt-multiminer.bat -> edit 
2. Under "Wallets", according to the coin you want to mine, change the wallet address to yours
3. You can name your miner if you change the MINER_NAME variable
4. Change the EMAIL_ADDRESS to receieve updates from supported pools (nanopool for now)

## How to 

1. Go to Setup before starting
2. Double click the bbt-multiminer.bat
3. Chose the miner and the coin you want to mine from the options.
4. Profit.

## Contributors

If you want to add more miners, you are more than welcome to send a merge request. 
Notice that to add a binary for a miner, you would have to send us the link to the miner, instead of commiting it yourself.  
We want to be sure the miners are untouched and do not contain malware or trying to take over on people mining
