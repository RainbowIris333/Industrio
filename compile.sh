echo welcome to the Industrio installer...

get_input() {
  echo I to Install, R to Remove, and RI to Reinstall:
  read varname
}
open=1
while [ open == 1 ]

do

  if [ varname == I ]
  then
  {
    mkdir "~/RainbowGames"
    cd "~/RainbowGames"
    git clone https://github.com/RainbowIris333//Industrio.git
    cd "~/RainbowGames/Industrio"
    gcc main.c
    rm main.c
    mv a.out ~/RainbowGames/Industrio/IndustrioMain.out
    echo INDUSTRIO has been Installed
    open=0
  }
  
  elif [ varname == R ]
  then
    cd "~/RainbowGames"
    rm -r ~/RainbowGames/Industrio/
    echo INDUSTRIO removed
    open=0
  elif [ varname == RI ]
  then
    cd "~/RainbowGames"
    rm -r ~/RainbowGames/Industrio/
    mkdir "~/RainbowGames"
    cd "~/RainbowGames"
    git clone https://github.com/RainbowIris333//Industrio.git
    cd "~/RainbowGames/Industrio"
    gcc main.c
    rm main.c
    mv a.out ~/RainbowGames/Industrio/IndustrioMain.out
    echo INDUSTRIO has been Reinstalled
    open=0
  else
    echo invalid input please retry
    get_input
  fi

done

if [ varname == I ] || [ varname == RI]
then
cp RUN.sh ~/Desktop/Industrio.sh
chmod +x ~/Desktop/Industrio.sh
~/Desktop/Industrio.sh
else
echo process finished...
echo Have A Great Day!
fi