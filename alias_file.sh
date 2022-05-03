
## alias & env
alias cd..="cd .."
alias cd...="cd ../.."
alias gi="grep -i"
alias l="ls -al"
alias lm="ls -al | more"
alias lf="ls -FG"
alias h='history'
alias hm="history | more"
# alias hotspot="sudo create_ap -m nat wlo1 eno1 qwerty789 123456890"
# alias apkinstall="for file in *.apk; do adb install $file; done"
alias px="export http_proxy=http://172.16.24.3:3128 && export https_proxy=http://172.16.24.3:3128 &&  echo Proxy set to 172.16.20.2:3128"
alias npx="export http_proxy="" && export https_proxy="" "
alias gitpx="git config --global http.proxy 172.16.20.2:3128 && git config --global --get http.proxy"
alias gitnpx="git config --global --unset http.proxy"
alias pinst="sudo apt install"
alias premv="sudo apt remove --purge"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
alias ns=nvidia-smi
alias vrc='vim ~/.bashrc'
alias src="source ~/.bashrc"
git config --global user.email "zxcxzcz@qq.com"
git config --global user.name "yixin"
alias submit="git add . && git commit -m 'update' && git push"
alias remake="git checkout . && git pull"
export GIT_SSL_NO_VERIFY=1
