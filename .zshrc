# Path to your oh-my-zsh installation.
export ZSH=/Users/brianhanson/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

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
plugins=(git z sublime wp-cli xcode bundler brew composer git-flow docker-compose)

# User configuration

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

######################
# My Stuff
######################
# ZSH nicer paths
DEFAULT_USER=brianhanson

EDITOR="/usr/bin/vim"

# Homebrew PHP path
export PATH="$HOME/.composer/vendor/bin:/usr/local/sbin:$HOME/.fastlane/bin:$PATH"
export PATH="$HOME:/Applications/MAMP/bin/php/php7.1.12/bin:$PATH"

alias gitpurge="git branch --merged | grep -v '\*' | grep -v master | grep -v dev | xargs -n 1 git branch -d"
alias cdev="cd ~/Development"
alias reload=". ~/.zshrc"
alias vhost="subl /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf"
alias editvhosts="subl /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf"
alias zshconfig="subl ~/.zshrc"
# alias theme="cd wp-content/themes"
alias gbl="git branch --sort=committerdate"
alias mamp="/Applications/MAMP/bin/"
alias t2="tree -L 2 -I node_modules"
alias t3="tree -L 3 -I node_modules"
alias t1="tree -L 1 -I node_modules"

fucntion branch() {
    git checkout -b $1_$(date +'%Y.%m.%d')_bhanson dev
}

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

source "/Users/brianhanson/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
SPACESHIP_BATTERY_SHOW=false

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
