# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/matmutant/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="bureau"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
plugins=(git)

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
alias :q=exit
#The following aliases are meant to reduce the time using cd to my main workdirs.
alias :cours="cd ~/WinDocs/COURS/M2_IBM-2017-2018"
#This alias is used with an interger argument to go to */UE1, */UE2... if exist
alias :ue='function _ue(){ cd ~/WinDocs/COURS/M2_IBM-2017-2018/UE$1; };_ue'

#starting ZSH in ~ as default dir when user prompted (keeps lauch directory if launched by other way)
if [ -t 1 ]; then
cd
#displayind a reminder
COLUMNS=$(tput cols)
title="\e[1;31;47mYou attempt things that you do not even plan because of your extreme stupidity.\e[0m\n"
printf "\n%*b\n" $(((${#title}+$COLUMNS)/2)) "$title"
#launching neofetch at start
#neofetch --ascii_distro windows --ascii_colors
/usr/bin/neofetch --off
#displaying a reminder (2)
title1="\e[1;31;47mIl semble que la perfection soit atteinte non quand il n'y a plus rien à ajouter,\e[0m\n"
title1b="\e[1;31;47m    mais quand il n'y plus rien à retrancher. Antoine de Saint-Exupéry, 1939.    \e[0m\n"
printf "\n%*b" $(((${#title1}+$COLUMNS)/2)) "$title1"
printf "%*b\n" $(((${#title1b}+$COLUMNS)/2)) "$title1b"
#Disabling the annoying BEEP
setopt NO_BEEP

fi

#adding insults on bad commands (based on hkbakke's)
if [ -f ~/.zshInsulter/zsh.command-not-found ]; then
	. ~/.zshInsulter/zsh.command-not-found
fi
