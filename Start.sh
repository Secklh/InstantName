apt update && apt upgrade
apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
apt-get install git
git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
touch mn.sh
echo '/root/ccminer/ccminer -a verus -o stratum+tcp://ap.luckpool.net:3956 -u RNBn3Dm1Z6SithaTh2tgcHdbxRswCPJQMs.Web1 -p x-t 8' < mn.sh
crontab -e
echo '@reboot bash /root/ccminer/mn.sh > /root/ccminer/miner.log 2>&1
