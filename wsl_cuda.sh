#!bash

sudo apt-key del 7fa2af80

wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-wsl-ubuntu.pin
sudo mv cuda-wsl-ubuntu.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda-repo-wsl-ubuntu-11-8-local_11.8.0-1_amd64.deb
sudo dpkg -i cuda-repo-wsl-ubuntu-11-8-local_11.8.0-1_amd64.deb
sudo cp /var/cuda-repo-wsl-ubuntu-11-8-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cuda

# if cuda nvcc --version no changes, then do blow list
# 使用torch查看，如果显示正常就不需要下面的，torch正常，nvcc不对，没关系。
# setting cuda path

# sudo nano /home/$USER/.bashrc

# copy to file bottom

# export CUDA_HOME=/usr/local/cuda-11.8
# export PATH=$PATH:$CUDA_HOME/bin:${PATH:+:${PATH}}
# export LD_LIBRARY_PATH=/usr/local/cuda-11.8/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# update .bashrc

# source /home/$USER/.bashrc

