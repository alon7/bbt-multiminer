#/ Script Name: bbt-multiminer.sh
#/ Author: alon7
#  Date:   2017-07-19
#/
#/ Description:
#/   BBT Multi-Miner Easy Batch File v1.1 by BBT & alon7
#/   Featuring Claymore, SGMiner, CCMiner, EBWF's Miner and more
#/   Pre-Configured syntax, just update address/worker
#/   Eth, Etc, Xmr, Lbry, Sia, Zcash, Pasc, Hush, DBIX, ubiq and more
#/
#/ Error Log:
#/   Any errors or output associated with
#/   the script can be found in /tmp/bbt-multiminer.sh.log
#/
#/ Usage: bbt-multiminer.sh
#/ Or: bbt-multimner <coin_index> <miner_index>
#/
#/ Options:
#/   --help, -h display this help

#
# Wallets
#
./wallets.sh

# suprnova.cc pool login
readonly MINER_WEBLOGIN=nighthawk
readonly MINER_PASSWORD=x

readonly MINER_NAME=MinerTest

readonly EMAIL_ADDRESS=inquiry@wongke.net

export GPU_FORCE_64BIT_PTR=0 
export GPU_MAX_HEAP_SIZE=100 
export GPU_USE_SYNC_OBJECTS=1 
export GPU_MAX_ALLOC_PERCENT=100 
export GPU_SINGLE_ALLOC_PERCENT=100 

readonly MAX_MENU_OPTIONS=37

readonly ETHMINER_NVIDIA_OPTIMIZED=./Miners/ethminer/v0.11.0_Nvidia_Optimized/Linux/ethminer
readonly CLAYMORE_DUAL_ETHEREUM=./Miners/Claymore/Dual_Ethereum/v9.7/Linux/ethdcrminer64
readonly CLAYMORE_CRYPTONOTE=./Miners/Claymore/CryptoNote_GPU/v9.1/Linux/miner
readonly CLAYMORE_ZCASH_AMD_GPU=./Miners/Claymore/Claymore_ZCash_AMD_GPU/v12.5/Linux/zecminer64
readonly ZEC_MINER=./Miners/Zec_Miner/v0.3.4b/Linux/miner
readonly CCMINER=./Miners/ccminer/v7.04/Linux/ccminer

usage() {
  grep "^#/" "$0" | cut -c4-
  exit 0
}

# read-only globals
readonly NOCOL="\033[0m"                      # No Color
readonly BLACK="\033[0;30m"                   # Black
readonly WHITE="\033[1;37m"                   # White
readonly LOG_FILE="/tmp/$(basename "$0").log" # temp log file

# colored output
_grey()         { local c="\033[1;30m"; echo -e "${c}$*${NOCOL}"; }
_light_grey()   { local c="\033[0;37m"; echo -e "${c}$*${NOCOL}"; }
_red()          { local c="\033[0;31m"; echo -e "${c}$*${NOCOL}"; }
_light_red()    { local c="\033[1;31m"; echo -e "${c}$*${NOCOL}"; }
_green()        { local c="\033[0;32m"; echo -e "${c}$*${NOCOL}"; }
_light_green()  { local c="\033[1;32m"; echo -e "${c}$*${NOCOL}"; }
_orange()       { local c="\033[0;33m"; echo -e "${c}$*${NOCOL}"; }
_yellow()       { local c="\033[1;33m"; echo -e "${c}$*${NOCOL}"; }
_blue()         { local c="\033[0;34m"; echo -e "${c}$*${NOCOL}"; }
_light_blue()   { local c="\033[1;34m"; echo -e "${c}$*${NOCOL}"; }
_purple()       { local c="\033[0;35m"; echo -e "${c}$*${NOCOL}"; }
_light_purple() { local c="\033[1;35m"; echo -e "${c}$*${NOCOL}"; }
_cyan()         { local c="\033[0;36m"; echo -e "${c}$*${NOCOL}"; }
_light_cyan()   { local c="\033[1;36m"; echo -e "${c}$*${NOCOL}"; }

# log output
_date()    { date +"%Y-%m-%d %H:%M:%S"; }
_info()    { echo "$(_date) [INFO]    $*" | tee -a "$LOG_FILE"; }
_warning() { echo "$(_date) [WARNING] $*" | tee -a "$LOG_FILE"; }
_error()   { echo "$(_date) [ERROR]   $*" | tee -a "$LOG_FILE"; }
_fatal()   { echo "$(_date) [FATAL]   $*" | tee -a "$LOG_FILE"; exit 1 ; }

# cleanup triggered on bad exit code
cleanup() {
    echo ""
    _light_red "Exit"
    exit -1
}

parse_input() {
    local input=$1
    local second_input=$2
    re='^[0-9]+$'
    if ! [[ $input =~ $re ]] ; then
        _light_red "$(_error "Input is not a number")"
        sleep 1
    # elif ! [[ $second_input =~ $re ]] ; then
    #     _light_red "$(_error "Second input is not a number")"
    #     sleep 1
    elif [ "$input" -gt 0 -a "$input" -le "$MAX_MENU_OPTIONS" ]; then
        case $input in
        1 | eth | ethereum)
            ethereum_menu $second_input
        ;;
        2 | etc | ethereumc)
            ethereumc_menu $second_input
        ;;
        3 | xmr | monero)
            monero_menu $second_input
        ;;
        4 | zec | zcash)
            zcash_menu $second_input
        ;;
        5 | sia | siacoin)
            siacoin_menu $second_input
        ;;
        6 | pasc | pascalcoin)
            pascalcoin_menu $second_input
        ;;
        7 | hush)
            hush_menu $second_input
        ;;
        8 | lbc | lbry)
            lbry_menu $second_input
        ;;
        9 | dbix | Dbix)
            dbix_menu $second_input
        ;;
        10 | ubq | ubiq)
            ubiq_menu $second_input
        ;;
        11 | exp | expanse)
            expanse_menu $second_input
        ;;
        12 | chc | chaincoin)
            chaincoin_menu $second_input
        ;;
        13 | digi | digibyte)
            digibyte_menu $second_input
        ;;
        14 | ftc | feathercoin)
            feathercoin_menu $second_input
        ;;
        *)
            _light_red "$(_error "No such option")"
        ;;
        esac
    fi
    # exit 0
}

ethereum_menu() {
    local choice=$1

    if [ -z $choice ]; then
        clear
        echo "===================================================="
        echo "*                     ETHEREUM                     *"
        echo "===================================================="
        echo "1.  NVIDIA ONLY - Optimized Ethminer - Eth Ethermine.org Only"
        echo "2.  NVIDIA ONLY - Optimized Ethminer - Eth Nanopool Only"
        echo "3.  AMD and NVIDIA Claymore - Eth Only Ethermine.org"
        echo "4.  AMD and NVIDIA Claymore - Eth Ethermine.org and Siacoin to Nanopool"
        echo "5.  AMD and NVIDIA Claymore - Eth Ethermine.org and Decred to Suprnova.cc Pool"
        echo "6.  AMD and NVIDIA Claymore - Eth Ethermine.org and Lbry Credits to Coinmine.pl"
        echo "7.  AMD and NVIDIA Claymore - Eth Ethermine.org and PascalCoin to Nanopool"
        echo "8.  AMD and NVIDIA Claymore - Eth Nanopool Only"
        echo "9.  AMD and NVIDIA Claymore - Eth Nanopool and Siacoin to Nanopool"
        echo "10. AMD and NVIDIA Claymore - Eth Nanopool and Pascal to Nanopool"

        read -p "Enter choice [ 1 - 10 ] " choice
    fi

    case $choice in
        1)
            echo "Ethereum: NVIDIA ONLY - Optimized Ethminer - Eth Ethermine.org Only"
            $ETHMINER_NVIDIA_OPTIMIZED --farm-recheck 200 -G -S eu1.ethermine.org:4444 -FS us1.ethermine.org:4444 -O $ETH_WALLET_ADDRESS.$MINER_NAME
        ;;
        2)
            echo "Ethereum: NVIDIA ONLY - Optimized Ethminer - Eth Nanopool Only"
            $ETHMINER_NVIDIA_OPTIMIZED --farm-recheck 200 -G -S eth-us-east1.nanopool.org:9999 -FS eth-eu1.nanopool.org:9999 -O $ETH_WALLET_ADDRESS.$MINER_NAME/$EMAIL_ADDRESS
        ;;
        3)
            echo "Ethereum: AMD and NVIDIA Claymore - Eth Only Ethermine.org"
            $CLAYMORE_DUAL_ETHEREUM -epool us1.ethermine.org:4444 -ewal $ETH_WALLET_ADDRESS.$MINER_NAME -epsw x
        ;;
        4)
            echo "Ethereum: AMD and NVIDIA Claymore - Eth Ethermine.org and Siacoin to Nanopool"
            $CLAYMORE_DUAL_ETHEREUM -epool us1.ethermine.org:4444 -ewal $ETH_WALLET_ADDRESS.$MINER_NAME -epsw x -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/$MINER_NAME/$EMAIL_ADDRESS -dcoin sia
        ;;
        5)
            echo "Ethereum: AMD and NVIDIA Claymore - Eth Ethermine.org and Decred to Suprnova.cc Pool"
            $CLAYMORE_DUAL_ETHEREUM -epool us1.ethermine.org:4444 -ewal $ETH_WALLET_ADDRESS.$MINER_NAME -epsw x -dpool stratum+tcp://dcr.suprnova.cc:3252 -dwal %DECRED_WALLET_ADDRESS%.$MINER_NAME -dpsw x -allpools 1 
        ;;
        6)
            echo "Ethereum: AMD and NVIDIA Claymore - Eth Ethermine.org and Lbry Credits to Coinmine.pl"
            $CLAYMORE_DUAL_ETHEREUM -epool us1.ethermine.org:4444 -ewal $ETH_WALLET_ADDRESS.$MINER_NAME -epsw x -dpool stratum+tcp://lbc-us.coinmine.pl:8787 -dwal %LBRY_WALLET_ADDRESS%.$MINER_NAME -dpsw x -dcoin lbc
        ;;
        7)
            echo "Ethereum: AMD and NVIDIA Claymore - Eth Ethermine.org and PascalCoin to Nanopool"
            $CLAYMORE_DUAL_ETHEREUM -epool us1.ethermine.org:4444 -ewal $ETH_WALLET_ADDRESS.$MINER_NAME -epsw x -dpool stratum+tcp://pasc-us-east1.nanopool.org:15555 -dwal %PASCAL_WALLET_ADDRESS%.$MINER_NAME/$EMAIL_ADDRESS -dpsw x -dcoin pasc -ftime 10 
        ;;
        8)
            echo "Ethereum: AMD and NVIDIA Claymore - Eth Nanopool Only"
            $CLAYMORE_DUAL_ETHEREUM -epool eth-us-east1.nanopool.org:9999 -ewal $ETH_WALLET_ADDRESS/$MINER_NAME/$EMAIL_ADDRESS -mode 1
        ;;
        9)
            echo "Ethereum: AMD and NVIDIA Claymore - Eth Nanopool and Siacoin to Nanopool"
            $CLAYMORE_DUAL_ETHEREUM -epool eth-us-east1.nanopool.org:9999 -ewal $ETH_WALLET_ADDRESS/$MINER_NAME/$EMAIL_ADDRESS -epsw x -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/$MINER_NAME/$EMAIL_ADDRESS -dcoin sia
        ;;
        10)
            echo "Ethereum: AMD and NVIDIA Claymore - Eth Nanopool and Pascal to Nanopool"
            $CLAYMORE_DUAL_ETHEREUM -epool eth-us-east1.nanopool.org:9999 -ewal $ETH_WALLET_ADDRESS/$MINER_NAME/$EMAIL_ADDRESS -epsw x -dpool stratum+tcp://pasc-us-east1.nanopool.org:15555 -dwal %PASCAL_WALLET_ADDRESS%.$MINER_NAME/$EMAIL_ADDRESS -dcoin pasc -ftime 10 
        ;;        
        *)
            _light_red "$(_error "No such option")"
        ;;
    esac
    exit 0
}

ethereumc_menu() {
    local choice=$1

    if [ -z $choice ]; then
        clear
        echo "===================================================="
        echo "*                  ETHEREUM Classic                *"
        echo "===================================================="
        echo "1. NVIDIA ONLY - Optimized Ethminer - Etc nanopool"
        echo "2. AMD and NVIDIA Claymore - Etc to Nanopool"
        echo "3. AMD and NVIDIA Claymore - Etc and Siacoin both to Nanopool"
        echo "4. AMD and NVIDIA Claymore - Etc Nanopool and Decred to Suprnova.cc Pool"
        echo "5. AMD and NVIDIA Claymore - Etc and Pascal both to Nanopool"

        read -p "Enter choice [ 1 - 5 ] " choice
    fi


    case $choice in
        1)
            echo "Ethereum Classic: NVIDIA ONLY - Optimized Ethminer - Etc nanopool"
            $ETHMINER_NVIDIA_OPTIMIZED --farm-recheck 200 -G -S eu1.ethermine.org:4444 -FS us1.ethermine.org:4444 -O $ETH_WALLET_ADDRESS.$MINER_NAME
        ;;
        2)
            echo "Ethereum Classic: AMD and NVIDIA Claymore - Etc  to Nanopool"
            $ETHMINER_NVIDIA_OPTIMIZED --farm-recheck 200 -G -S eth-us-east1.nanopool.org:9999 -FS eth-eu1.nanopool.org:9999 -O $ETH_WALLET_ADDRESS.$MINER_NAME/$EMAIL_ADDRESS
        ;;
        3)
            echo "Ethereum Classic: AMD and NVIDIA Claymore - Etc and Siacoin both to Nanopool"
            $CLAYMORE_DUAL_ETHEREUM -epool us1.ethermine.org:4444 -ewal $ETH_WALLET_ADDRESS.$MINER_NAME -epsw x
        ;;
        4)
            echo "Ethereum Classic: AMD and NVIDIA Claymore - Etc Nanopool and Decred to Suprnova.cc Pool"
            $CLAYMORE_DUAL_ETHEREUM -epool us1.ethermine.org:4444 -ewal $ETH_WALLET_ADDRESS.$MINER_NAME -epsw x -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal %SIA_WALLET_ADDRESS%/$MINER_NAME/$EMAIL_ADDRESS -dcoin sia
        ;;
        5)
            echo "Ethereum Classic: AMD and NVIDIA Claymore - Etc and Pascal both to Nanopool"
            $CLAYMORE_DUAL_ETHEREUM -epool us1.ethermine.org:4444 -ewal $ETH_WALLET_ADDRESS.$MINER_NAME -epsw x -dpool stratum+tcp://dcr.suprnova.cc:3252 -dwal %DECRED_WALLET_ADDRESS%.$MINER_NAME -dpsw x -allpools 1 
        ;;       
        *)
            _light_red "$(_error "No such option")"
        ;;
    esac
    exit 0
}

monero_menu() {
    local choice=$1

    if [ -z $choice ]; then
        clear
        echo "===================================================="
        echo "*                    Monero (XMR)                  *"
        echo "===================================================="
        echo " --- Currently cannot mine on linux platform ---"
        echo " --- Support will be added in the near future ---"
        # read -p "Enter choice [ 1 - 2 ] " choice
    fi

    # case $choice in
    #     1)
    #         echo "Monero: AMD ONLY - Claymore - XMR to Nanopool"
    #         $CryptoNote_GPU_Miner -o ssl://xmr-eu1.nanopool.org:14433 -u $XMR_WALLET_ADDRESS.$MINER_NAME/$EMAIL_ADDRESS -p z -ftime 1 -allpools 1 
    #     ;;
    #     2)
    #         echo "Monero: NVIDIA ONLY - TSIV CCMiner XMR to Nanopool"
    #         $ETHMINER_NVIDIA_OPTIMIZED --farm-recheck 200 -G -S eth-us-east1.nanopool.org:9999 -FS eth-eu1.nanopool.org:9999 -O $ETH_WALLET_ADDRESS.$MINER_NAME/$EMAIL_ADDRESS
    #     ;;
    #     *)
    #         _light_red "$(_error "No such option")"
    #     ;;
    # esac
    exit 0
}

zcash_menu() {
    local choice=$1

    if [ -z $choice ]; then
        clear
        echo "===================================================="
        echo "*                       Zcash                      *"
        echo "===================================================="
        echo "1.  AMD ZCash Claymore - Zcash to Nanopool AMD Only"
        echo "2.  NVIDIA EWBF's CUDA Zcash Miner - Zcash to Nanopool NVIDIA Only"

        read -p "Enter choice [ 1 - 2 ] " choice
    fi

    case $choice in
        1)
            echo "Zcash: AMD ZCash Claymore - Zcash to Nanopool AMD Only"
            $CLAYMORE_ZCASH_AMD_GPU -zpool ssl://zec-us-east1.nanopool.org:6633 -zwal $ZCASH_WALLET_ADDRESS.$MINER_NAME/$EMAIL_ADDRESS -zpsw z -ftime 1 -allpools 1 
        ;;
        2)
            echo "Zcash: NVIDIA EWBF's CUDA Zcash Miner - Zcash to Nanopool NVIDIA Only"
            $ZEC_MINER --server zec-us-east1.nanopool.org --user $ZCASH_WALLET_ADDRESS.$MINER_NAME.$EMAIL_ADDRESS --pass z --port 6666
        ;;     
        *)
            _light_red "$(_error "No such option")"
        ;;
    esac
    exit 0
}

siacoin_menu() {
    local choice=$1

    if [ -z $choice ]; then
        clear
        echo "===================================================="
        echo "*                      SiaCoin                     *"
        echo "===================================================="
        echo "1.   AMD and NVIDIA CCMiner - Siacoin to Nanopool Only"

        read -p "Enter choice [ 1 - 1 ] " choice
    fi

    case $choice in
        1)
            echo "SiaCoin: AMD and NVIDIA CCMiner - Siacoin to Nanopool Only"
            $CCMINER -a sia -e --url=stratum+tcp://eth-us-east1.nanopool.org:9999 -u $SIA_WALLET_ADDRESS.$MINER_NAME -i 28  
        ;;
        *)
            _light_red "$(_error "No such option")"
        ;;
    esac
    exit 0
}

pascalcoin_menu() {
    local choice=$1

    if [ -z $choice ]; then
        clear
        echo "===================================================="
        echo "*                    PascalCoin                    *"
        echo "===================================================="
        echo " --- Currently cannot mine on linux platform ---"
        echo " --- Support will be added in the near future ---"

        # read -p "Enter choice [ 1 - 2 ] " choice
    fi

    # case $choice in
    #     1)
    #         echo "PascalCoin: AMD SGMiner PascalCoin (exchange address) - PascalCoin to Nanopool"
    #         $ETHMINER_NVIDIA_OPTIMIZED --farm-recheck 200 -G -S eu1.ethermine.org:4444 -FS us1.ethermine.org:4444 -O $ETH_WALLET_ADDRESS.$MINER_NAME
    #     ;;
    #     2)
    #         echo "PascalCoin: NVIDIA Excavator - PascalCoin to Nanopool"
    #         $ETHMINER_NVIDIA_OPTIMIZED --farm-recheck 200 -G -S eth-us-east1.nanopool.org:9999 -FS eth-eu1.nanopool.org:9999 -O $ETH_WALLET_ADDRESS.$MINER_NAME/$EMAIL_ADDRESS
    #     ;;     
    #     *)
    #         _light_red "$(_error "No such option")"
    #     ;;
    # esac
    exit 0
}

hush_menu() {
    local choice=$1

    if [ -z $choice ]; then
        clear
        echo "===================================================="
        echo "*                       Hush                       *"
        echo "===================================================="
        echo "1.  AMD HUSH Claymore - Hush to zdash.miningpseed.com AMD Only"
        echo "2.  NVIDIA EWBF's CUDA HUSH Miner - HUSH to zdash.miningspeed.com NVIDIA Only"

        read -p "Enter choice [ 1 - 2 ] " choice
    fi

    case $choice in
        1)
            echo "Hush: AMD HUSH Claymore - Hush to zdash.miningpseed.com AMD Only"
            $CLAYMORE_ZCASH_AMD_GPU -zpool mining.miningspeed.com:3062 -zwal $HUSH_WALLET_ADDRESS.$MINER_NAME -zpsw z
-allpools 1
        ;;
        2)
            echo "Hush: NVIDIA EWBF's CUDA HUSH Miner - HUSH to zdash.miningspeed.com NVIDIA Only"
            $ZEC_MINER --server mining.miningspeed.com --user $HUSH_WALLET_ADDRESS.$MINER_NAME --pass z --port 3092
        ;;     
        *)
            _light_red "$(_error "No such option")"
        ;;
    esac
    exit 0
}

lbry_menu() {
    local choice=$1

    if [ -z $choice ]; then
        clear
        echo "===================================================="
        echo "*                       LBRY                       *"
        echo "===================================================="
        echo " --- Currently cannot mine on linux platform ---"
        echo " --- Support will be added in the near future ---"

        # read -p "Enter choice [ 1 - 2 ] " choice
    fi

    # case $choice in
    #     1)
    #         echo "LBRY: NVIDIA CCMiner Lbry Credits Miner - Lbry to coinmine.pl NVIDIA ONLY"
    #         $ETHMINER_NVIDIA_OPTIMIZED --farm-recheck 200 -G -S eu1.ethermine.org:4444 -FS us1.ethermine.org:4444 -O $ETH_WALLET_ADDRESS.$MINER_NAME
    #     ;;
    #     2)
    #         echo "LBRY: AMD SGMiner Lbry Credits Miner - Lbry to coinmine.pl AMD ONLY"
    #         $ETHMINER_NVIDIA_OPTIMIZED --farm-recheck 200 -G -S eth-us-east1.nanopool.org:9999 -FS eth-eu1.nanopool.org:9999 -O $ETH_WALLET_ADDRESS.$MINER_NAME/$EMAIL_ADDRESS
    #     ;;     
    #     *)
    #         _light_red "$(_error "No such option")"
    #     ;;
    # esac
    exit 0
}

dbix_menu() {
    local choice=$1

    if [ -z $choice ]; then
        clear
        echo "===================================================="
        echo "*                       Dbix                       *"
        echo "===================================================="
        echo "1.  AMD and NVIDIA Claymore - DBIX to Sexy.Pool Only"
        echo "2.  AMD and NVIDIA Claymore - DBIX to Sexy.Pool and Siacoin to Nanopool"
        echo "3.  AMD and NVIDIA Claymore - DBIX to Hodl.Pool Only"
        echo "4.  AMD and NVIDIA Claymore - DBIX to Hodl Pool and Siacoin to Nanopool"

        read -p "Enter choice [ 1 - 4 ] " choice
    fi

    case $choice in
        1)
            echo "Dbix: AMD and NVIDIA Claymore - DBIX to Sexy.Pool Only"
            $CLAYMORE_DUAL_ETHEREUM -epool stratum+tcp://dbix.pool.sexy:7007 -ewal $DBIX_WALLET_ADDRESS -epsw x -eworker $MINER_NAME -allpools 1 -allcoins 1 -mode 1 
        ;;
        2)
            echo "Dbix: AMD and NVIDIA Claymore - DBIX to Sexy.Pool and Siacoin to Nanopool"
            $CLAYMORE_DUAL_ETHEREUM -epool stratum+tcp://dbix.pool.sexy:7007 -ewal $DBIX_WALLET_ADDRESS -epsw x -eworker $MINER_NAME -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal $SIA_WALLET_ADDRESS/$MINER_NAME/$EMAIL_ADDRESS -dcoin sia -allpools 1
        ;;
        3)
            echo "Dbix: AMD and NVIDIA Claymore - DBIX to Hodl.Pool Only"
            $CLAYMORE_DUAL_ETHEREUM -epool stratum+tcp://dbix.hodlpool.com:8007 -ewal $DBIX_WALLET_ADDRESS -epsw x -eworker $MINER_NAME -allpools 1 -allcoins 1 -mode 1 
        ;;
        4)
            echo "Dbix: AMD and NVIDIA Claymore - DBIX to Hodl Pool and Siacoin to Nanopool"
            $CLAYMORE_DUAL_ETHEREUM -epool stratum+tcp://dbix.hodlpool.com:8007 -ewal $DBIX_WALLET_ADDRESS -epsw x -eworker $MINER_NAME -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal $SIA_WALLET_ADDRESS/$MINER_NAME/$EMAIL_ADDRESS -dcoin sia -allpools 1
        ;;  
        *)
            _light_red "$(_error "No such option")"
        ;;
    esac
    exit 0
}

ubiq_menu() {
    local choice=$1

    if [ -z $choice ]; then
        clear
        echo "===================================================="
        echo "*                       Ubiq                       *"
        echo "===================================================="
        echo "1.  AMD and NVIDIA Claymore - Ubiq to UbiqPool Only"
        echo "2.  AMD and NVIDIA Claymore - Ubiq to Hodl Pool"
        echo "3.  AMD and NVIDIA Claymore - Ubiq to Sexy.Pool Only"
        echo "4.  AMD and NVIDIA Claymore - Ubiq to UbiqPool and Siacoin to Nanopool"
        echo "5.  AMD and NVIDIA Claymore - Ubiq to Hodl Pool and Siacoin to Nanopool"
        echo "6.  AMD and NVIDIA Claymore - Ubiq to Sexy.Pool and Siacoin to Nanopool"

        read -p "Enter choice [ 1 - 6 ] " choice
    fi

    case $choice in
        1)
            echo "Ubiq: AMD and NVIDIA Claymore - Ubiq to UbiqPool Only"
            $CLAYMORE_DUAL_ETHEREUM -epool stratum+tcp://eu.ubiqpool.io:8008 -ewal $UBIQ_WALLET_ADDRESS -epsw x -eworker $MINER_NAME -allpools 1 -allcoins 1 -mode 1 
        ;;
        2)
            echo "Ubiq: AMD and NVIDIA Claymore - Ubiq to Hodl Pool"
            $CLAYMORE_DUAL_ETHEREUM -epool stratum+tcp://ubiq.hodlpool.com:8009 -ewal $UBIQ_WALLET_ADDRESS -epsw x -eworker $MINER_NAME -allpools 1 -allcoins 1 -mode 1 
        ;;
        3)
            echo "Ubiq: AMD and NVIDIA Claymore - Ubiq to Sexy.Pool Only"
            $CLAYMORE_DUAL_ETHEREUM -epool stratum+tcp://ubq.pool.sexy:9009 -ewal $UBIQ_WALLET_ADDRESS -epsw x -eworker $MINER_NAME -allpools 1 -allcoins 1 -mode 1 
        ;;
        4)
            echo "Ubiq: AMD and NVIDIA Claymore - Ubiq to UbiqPool and Siacoin to Nanopool"
            $CLAYMORE_DUAL_ETHEREUM -epool stratum+tcp://eu.ubiqpool.io:8008 -ewal $UBIQ_WALLET_ADDRESS -epsw x -eworker $MINER_NAME -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal $SIA_WALLET_ADDRESS/$MINER_NAME/$EMAIL_ADDRESS -dcoin sia -allpools 1
        ;;
        5)
            echo "Ubiq: AMD and NVIDIA Claymore - Ubiq to Hodl Pool and Siacoin to Nanopool"
            $CLAYMORE_DUAL_ETHEREUM -epool stratum+tcp://dbix.hodlpool.com:8007 -ewal $UBIQ_WALLET_ADDRESS -epsw x -eworker $MINER_NAME -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal $SIA_WALLET_ADDRESS/$MINER_NAME/$EMAIL_ADDRESS -dcoin sia -allpools 1
        ;;
        6)
            echo "Ubiq: AMD and NVIDIA Claymore - Ubiq to Sexy.Pool and Siacoin to Nanopool"
            $CLAYMORE_DUAL_ETHEREUM -epool stratum+tcp://ubq.pool.sexy:9009 -ewal $UBIQ_WALLET_ADDRESS -epsw x -eworker $MINER_NAME -dpool stratum+tcp://sia-us-east1.nanopool.org:7777 -dwal $SIA_WALLET_ADDRESS/$MINER_NAME/$EMAIL_ADDRESS -dcoin sia -allpools 1
        ;;            
        *)
            _light_red "$(_error "No such option")"
        ;;
    esac
    exit 0
}

expanse_menu() {
    local choice=$1

    if [ -z $choice ]; then
        clear
        echo "===================================================="
        echo "*                      Expanse                     *"
        echo "===================================================="
        echo "1.  AMD and NVIDIA Claymore - Expanse to Hodl Pool"

        read -p "Enter choice [ 1 - 1 ] " choice
    fi

    case $choice in
        1)
            echo "Expanse: AMD and NVIDIA Claymore - Expanse to Hodl Pool"
            $CLAYMORE_DUAL_ETHEREUM -epool stratum+tcp://exp.hodlpool.com:8003 -ewal $EXP_WALLET_ADDRESS -eworker $MINER_NAME -epsw x -esm 0 -allcoins exp -allpools 1 
        ;;         
        *)
            _light_red "$(_error "No such option")"
        ;;
    esac
    exit 0
}

ubiq_menu4() {
    local choice=$1

    if [ -z $choice ]; then
        clear
        echo "===================================================="
        echo "*                     Chaincoin                    *"
        echo "===================================================="
        echo "1.  AMD - Chaincoin to Suprnova.cc"
        echo "1.  Nvidia - Chaincoin to Suprnova.cc"

        read -p "Enter choice [ 1 - 2 ] " choice
    fi

    case $choice in
        1)
            echo "Ubiq: AMD and NVIDIA Claymore - Ubiq to UbiqPool Only"
            $CLAYMORE_DUAL_ETHEREUM -epool stratum+tcp://eu.ubiqpool.io:8008 -ewal $UBIQ_WALLET_ADDRESS -epsw x -eworker $MINER_NAME -allpools 1 -allcoins 1 -mode 1 
        ;;         
        *)
            _light_red "$(_error "No such option")"
        ;;
    esac
    exit 0
}

ubiq_menu3() {
    local choice=$1

    if [ -z $choice ]; then
        clear
        echo "===================================================="
        echo "*                     Digibyte                     *"
        echo "===================================================="
        echo "1.  AMD - Digibyte to Suprnova.cc"
        echo "1.  Nvidia - Digibyte to Suprnova.cc"

        read -p "Enter choice [ 1 - 2 ] " choice
    fi

    case $choice in
        1)
            echo "Ubiq: AMD and NVIDIA Claymore - Ubiq to UbiqPool Only"
            $CLAYMORE_DUAL_ETHEREUM -epool stratum+tcp://eu.ubiqpool.io:8008 -ewal $UBIQ_WALLET_ADDRESS -epsw x -eworker $MINER_NAME -allpools 1 -allcoins 1 -mode 1 
        ;;         
        *)
            _light_red "$(_error "No such option")"
        ;;
    esac
    exit 0
}

ubiq_menu2() {
    local choice=$1

    if [ -z $choice ]; then
        clear
        echo "===================================================="
        echo "*                    Feathercoin                   *"
        echo "===================================================="
        echo "1.  Nvidia - Feathercoin to F2Pool"

        read -p "Enter choice [ 1 - 1 ] " choice
    fi

    case $choice in
        1)
            echo "Ubiq: AMD and NVIDIA Claymore - Ubiq to UbiqPool Only"
            $CLAYMORE_DUAL_ETHEREUM -epool stratum+tcp://eu.ubiqpool.io:8008 -ewal $UBIQ_WALLET_ADDRESS -epsw x -eworker $MINER_NAME -allpools 1 -allcoins 1 -mode 1 
        ;;         
        *)
            _light_red "$(_error "No such option")"
        ;;
    esac
    exit 0
}

ubiq_menu1() {
    local choice=$1

    if [ -z $choice ]; then
        clear
        echo "===================================================="
        echo "*                       Ubiq                       *"
        echo "===================================================="
        echo "1.  AMD and NVIDIA Claymore - Ubiq to UbiqPool Only"

        read -p "Enter choice [ 1 - 6 ] " choice
    fi

    case $choice in
        1)
            echo "Ubiq: AMD and NVIDIA Claymore - Ubiq to UbiqPool Only"
            $CLAYMORE_DUAL_ETHEREUM -epool stratum+tcp://eu.ubiqpool.io:8008 -ewal $UBIQ_WALLET_ADDRESS -epsw x -eworker $MINER_NAME -allpools 1 -allcoins 1 -mode 1 
        ;;         
        *)
            _light_red "$(_error "No such option")"
        ;;
    esac
    exit 0
}

main() {
  parse_input $1 $2
}

main_menu() {
    clear
    echo "===================================================="
    echo "*     Bits Be Trippin' Multi-Miner by @alon7       *"
    echo "===================================================="
    echo "1.  Ethereum:              press 1, eth, or ethereum"
    echo "2.  Ethereum Classic:      press 2, etc or ethereumc"
    echo "3.  Monero:                press 3, xmr or monero"
    echo "4.  Zcash:                 press 4, zec, or zcash"
    echo "5.  Siacoin:               press 5, sia, or siacoin"
    echo "6.  Pascalcoin:            press 6, pasc, or pascalcoin"
    echo "7.  Hush:                  press 7 or hush"
    echo "8.  LBRY Credits:          press 8, lbc or lbry"
    echo "9.  Dbix:                  press 9, dbix or Dbix"
    echo "10. Ubiq:                  press 10, ubq, or ubiq"
    echo "11. Expanse:               press 11, exp, or expanse"
    echo "12. Chaincoin:             press 12, chc, or chaincoin"
    echo "13. Digibyte:              press 13, digi, or digibyte"
    echo "14. Feathercoin:           press 14, ftc, or feathercoin"

    local choice
    read -p "Enter choice [ 1 - 14 ] " choice
    parse_input $choice
}

interactive_menu() {
    while true
    do
        main_menu
        read_options
    done
}

# executes only when executed directly not sourced
if [[ "${BASH_SOURCE[0]}" = "$0" ]]; then
  trap cleanup SIGHUP SIGINT SIGTERM
  [[ "$*" =~ .*--help ]] > /dev/null || [[ "$*" =~ .*-h ]] > /dev/null && usage
  #[[ $# -lt 1 ]] && usage
    if  [[ $# -ge 1 ]]; then
        main "$@"
    else
        interactive_menu
    fi
fi
