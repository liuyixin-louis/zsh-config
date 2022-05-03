# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
if [ -f ~/.zshInsulter/zsh.command-not-found ]; then
    . ~/.zshInsulter/zsh.command-not-found
fi
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export USE_CCACHE=1
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="clean"
# POWERLEVEL9K_DISABLE_RPROMPT=true
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶"
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
 export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
 HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
#  zsh-completions
)

# reloading the completion:
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
# else
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# See also https://github.com/Falkor/dotfiles/blob/master/oh-my-zsh/
# Font taken from https://github.com/stefano-meschiari/dotemacs/blob/master/SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf
#

POWERLEVEL9K_MODE='awesome-patched'

# Disable dir/git icons
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''

DISABLE_AUTO_TITLE="true"

POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
#POWERLEVEL9K_VCS_UNTRACKED_ICON='?'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status os_icon context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs history time)

POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4


POWERLEVEL9K_STATUS_VERBOSE=false 
export DEFAULT_USER="$USER"
POWERLEVEL9K_MODE='nerdfont-complete'
#source  ~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme

source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# export EDITOR="/Applications/TextEdit.app/Contents/MacOS/TextEdit"
# export EDITOR=code
# My custom funstions

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
#############################################################
export EDITOR=vim

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
