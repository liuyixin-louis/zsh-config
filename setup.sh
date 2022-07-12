# update apt source
cd $(cd $(dirname $0);pwd)
# pip install apt-select
# apt-select
# cp sources.list /etc/apt/sources.list
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install build-essential -y
sudo apt install zsh -y
if [[ "$1" = "china" ]]; then
# config zsh
# apt install zsh
git clone https://hub.fastgit.xyz/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# cp .oh-my-zsh  ~/.oh-my-zsh -r
cp .zshrc ~/.zshrc
sudo apt-get install powerline fonts-powerline
git clone https://hub.fastgit.xyz/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
chsh -s /bin/zsh
git clone https://hub.fastgit.xyz/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://hub.fastgit.xyz/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# vscode setting
# cp settings.json /root/.local/share/code-server/User/settings.json
else
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# cp .oh-my-zsh  ~/.oh-my-zsh -r
cp .zshrc ~/.zshrc
sudo apt-get install powerline fonts-powerline
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
chsh -s /bin/zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
fi
# alias cat
#cat alias_file.sh >> ~/.bashrc
cat alias_file.sh >> ~/.zshrc
#cat alias_file.sh >> ~/.bashrc
#cp id_ed25519.pub ~/.ssh
