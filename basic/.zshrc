# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(archlinux thefuck colorize  extract git tmux jump z zsh-navigation-tools)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias hpcssh="ssh -l zhaowenqiang 202.117.54.133"
alias xx=xelatex
alias em="emacsclient -t"
alias nv="nvim"
alias emc="emacsclient -c"
alias ever="nohup emacs --daemon>/dev/null 2>&1 &"
alias fran="nohup franz>/dev/null 2>&1 &"
alias xdg="xdg-open"
alias tmux2="systemd-run --scope --user tmux"


#pandoc configure for shortcut
alias pandoc-reveal-self-contained="pandoc -t revealjs --self-contained -s" 
alias pandoc-reveal="pandoc -t revealjs -s"
alias pandoc-Kaiti="pandoc --latex-engine=xelatex -V CJKmainfont='STKaiti'" 
alias pandoc-wqy-mono="pandoc --latex-engine=xelatex -V CJKmainfont='WenQuanYi Zen Hei Mono'"
alias pandoc-SimSun="pandoc --latex-engine=xelatex -V CJKmainfont='SimSun'"


export TERM=xterm-256color
alias please="sudo pacman -Syu"
unalias gm

alias -s pdf=zathura
alias -s txt=vim
alias -s c=vim
alias -s s=vim
alias -s i=vim
alias -s pdf=zathura
alias -s o=objdump
alias gccp="gcc -pthread"
alias clangp="clang -pthread"
#alias mc=mocp

alias cap="setxkbmap -option 'ctrl:nocaps'"
alias pad=mousepad
alias silence="sudo rmmod pcspkr"
alias anaconda="source /opt/anaconda/bin/activate"
alias deanaconda="source /opt/anaconda/bin/deactivate"
#source /opt/anaconda/bin/activate

export github="https://github.com/sworther"
export oschina="https://git.oschina.net/sworther"
export VISUAL='vim'

# openfoam
#source /opt/openfoam4/etc/bashrc
source /opt/OpenFOAM/OpenFOAM-4.1/etc/bashrc

export CLASSPATH=$CLASSPATH:~/algs4/algs4.jar
setxkbmap -option 'ctrl:nocaps'

# pyenv configure 
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


#export PATH=$PATH:/opt/mgiza/bin
export PATH=$PATH:/opt/giza-pp/bin
#export PATH=~/.cabal/bin:$PATH

# tmux config
#set -g default-terminal $ZSH_TMUX_TERM
#source $HOME/.tmux.conf

#
#my zsh configure
bindkey -e
source ~/.fzf/key-bindings.zsh
source ~/.fzf/completion.zsh
export PATH=$PATH:/home/i3/.gem/ruby/2.4.0/bin


export lantern=127.0.0.1:35259
#exec fish

# If not running interactively, do not do anything
#[[ $- != *i* ]] && return
#[[ -z "$TMUX" ]] && exec tmux

# plugin specific
set _Z_NO_RESOLVE_SYMLINKS


