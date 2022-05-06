
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
#alias qns="sudo fuser -v /dev/nvidia* |awk '{for(i=1;i<=NF;i++)print "kill -9 " $i;}' | sudo sh"

function extract () {
if [ -f $1 ] ; then
case $1 in
*.tar.bz2) tar xvjf $1 ;;
*.tar.gz) tar xvzf $1 ;;
*.tar.xz) tar Jxvf $1 ;;
*.bz2) bunzip2 $1 ;;
*.rar) rar x $1 ;;
*.gz) gunzip $1 ;;
*.tar) tar xvf $1 ;;
*.tbz2) tar xvjf $1 ;;
*.tgz) tar xvzf $1 ;;
*.zip) unzip -d `echo $1 | sed 's/\(.*\)\.zip/\1/'` $1;;
*.Z) uncompress $1 ;;
*.7z) 7z x $1 ;;
*) echo "don't know how to extract '$1'" ;;
esac
else
echo "'$1' is not a valid file!"
fi
}

alias tnew="tmux new"
alias t0="tmux a -t 0"
alias t1="tmux a -t 1"
alias t2="tmux a -t 2"
alias t3="tmux a -t 3"
alias t4="tmux a -t 4"
alias t5="tmux a -t 5"
alias t6="tmux a -t 6"
alias t7="tmux a -t 7"
alias t8="tmux a -t 8"
alias t9="tmux a -t 9"