apt update
apt upgrade -y

### install nvim 
apt install software-properties-common -y
apt-add-repository ppa:neovim-ppa/stable -y
apt update
apt install neovim -y

## config alternatives
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi --skip-auto
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim --skip-auto
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor --skip-auto

## setup python envs for nvim

#install zsh
apt install zsh -y

# install terminator
apt install terminator -y