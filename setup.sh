# update apt source
cd $(cd $(dirname $0);pwd)
pip install apt-select
apt-select
cp sources.list /etc/apt/sources.list
apt update
# config zsh
# apt install zsh
sudo apt install zsh -y
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# cp .oh-my-zsh  ~/.oh-my-zsh -r
cp .zshrc ~/.zshrc # my config
sudo apt-get install powerline fonts-powerline
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
chsh -s /bin/zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# vscode setting
cp settings.json /root/.local/share/code-server/User/settings.json
