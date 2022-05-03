# update apt source
cd $(cd $(dirname $0);pwd)
#pip install apt-select
#apt-select
cp sources.list /etc/apt/sources.list
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install build-essential -y
# config zsh
# apt install zsh
sudo apt install zsh -y
git clone https://hub.fastgit.xyz/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# cp .oh-my-zsh  ~/.oh-my-zsh -r
cp .zshrc ~/.zshrc # my config
sudo apt-get install powerline fonts-powerline
git clone https://hub.fastgit.xyz/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
chsh -s /bin/zsh
git clone https://hub.fastgit.xyz/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://hub.fastgit.xyz/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# vscode setting
#cp settings.json /root/.local/share/code-server/User/settings.json

# alias cat
cat alisa_file.sh >> ~/.bashrc