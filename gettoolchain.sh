if [ "$1" = "clean" -o "$1" = "refresh" ]
then
	rm -rf toolchain
	if [ "$1" = "clean" ]
	then
		exit
	fi
fi
git clone https://github.com/Nibble-Knowledge/toolchain.git
cd toolchain
git checkout plr4
./update.sh
