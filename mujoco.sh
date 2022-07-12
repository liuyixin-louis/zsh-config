# Get the prereqs
if [ ! -d ~/.mujoco/mjpro131/ ]; then
#    apt-get -qq update
#    apt-get -qq install -y libosmesa6-dev libgl1-mesa-glx libglfw3 libgl1-mesa-dev libglew-dev patchelf
  # Get Mujoco
  if [ ! -d ~/.mujoco/ ];then
  mkdir ~/.mujoco
  fi
  cd ~/.mujoco
  wget -q https://roboti.us/download/mjpro131_linux.zip -O mjpro131_linux.zip
  unzip mjpro131_linux.zip
  rm mjpro131_linux.zip
  if [ ! -f "mjkey.txt" ];then
    wget https://roboti.us/file/mjkey.txt
  fi
  cp mjkey.txt ~/.mujoco/mjpro131/bin
fi

if [ ! -d ~/.mujoco/mujoco210/ ]; then
#    apt-get -qq update
#    apt-get -qq install -y libosmesa6-dev libgl1-mesa-glx libglfw3 libgl1-mesa-dev libglew-dev patchelf
  # Get Mujoco
  if [ ! -d ~/.mujoco/ ];then
  mkdir ~/.mujoco
  fi
  wget -q https://mujoco.org/download/mujoco210-linux-x86_64.tar.gz -O ~/.mujoco/mujoco.tar.gz
#    tar -vxzf ~/.mujoco/mujoco.tar.gz -d "$HOME/.mujoco"

  cd ~/.mujoco/
  tar zxvf ~/.mujoco/mujoco.tar.gz
  rm ~/.mujoco/mujoco.tar.gz
  if [ ! -f "mjkey.txt" ];then
    wget https://roboti.us/file/mjkey.txt
  fi
  cp mjkey.txt ~/.mujoco/mujoco210/bin
fi

if [ ! -d ~/.mujoco/mujoco200/ ]; then
#    apt-get -qq update
#    apt-get -qq install -y libosmesa6-dev libgl1-mesa-glx libglfw3 libgl1-mesa-dev libglew-dev patchelf
  # Get Mujoco
  if [ ! -d ~/.mujoco/ ];then
    mkdir ~/.mujoco
  fi
  cd ~/.mujoco/
  wget -q https://roboti.us/download/mujoco200_linux.zip
  unzip mujoco200_linux.zip
  mv mujoco200_linux mujoco200
  rm mujoco200_linux.zip
  if [ ! -f "mjkey.txt" ];then
    wget https://roboti.us/file/mjkey.txt
  fi
  cp mjkey.txt ~/.mujoco/mujoco200/bin

fi

#cat "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.mujoco/mujoco210/bin" >> ~/.zshrc
#cat "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.mujoco/mujoco210/bin" >> ~/.bashrc