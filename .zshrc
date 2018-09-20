# Path to your oh-my-zsh installation.
export ZSH=/Users/brianhanson/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="spaceship"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z sublime wp-cli xcode bundler composer git-flow docker-compose)

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

alias gitpurge="git branch --merged | grep -v '\*' | grep -v master | grep -v dev | xargs -n 1 git branch -d"
alias cdev="cd ~/Developmen"
alias reloadconfig=". ~/.zshrc"
alias vhost="subl /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf"
alias editvhosts="subl /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf"
# alias theme="cd wp-content/themes"
alias gbl="git branch --sort=committerdate"
alias mamp="/Applications/MAMP/bin/"
alias t2="tree -L 2 -I node_modules"
alias t3="tree -L 3 -I node_modules"
alias t1="tree -L 1 -I node_modules"
# https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
# Remap cat to bat
alias cat="bat"

######################
# My Stuff
######################
# ZSH nicer paths
DEFAULT_USER=brianhanson

EDITOR="/usr/bin/vim"

# Homebrew PHP path
export PATH="$HOME/.composer/vendor/bin:/usr/local/sbin:$HOME/.fastlane/bin:$PATH"
# MAMP PPHP path
export PATH="/Applications/MAMP/bin/php/php7.1.12/bin:$PATH"
# MAMP libraries path
export PATH="/Applications/MAMP/Library/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# =============================================================================
# Spaceship theme customization
# =============================================================================

source "/Users/brianhanson/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
SPACESHIP_BATTERY_SHOW=false

# ORDER
SPACESHIP_PROMPT_ORDER=(
  time          # Time stampts section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  aws           # Amazon Web Services section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  exit_code     # Exit code section
  char          # Prompt character
)

# USER
# SPACESHIP_USER_PREFIX="" # remove `with` before username
# SPACESHIP_USER_SUFFIX="" # remove space before host

# DIR
SPACESHIP_DIR_PREFIX='' # disable directory prefix, cause it's not the first section
SPACESHIP_DIR_TRUNC='1' # show only last directory

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
