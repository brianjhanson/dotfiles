# Path to your oh-my-zsh installation.
export ZSH=/Users/brianhanson/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="spaceship"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse) # Add wisely, as too many plugins slow down shell startup.  plugins=(git z sublime wp-cli xcode bundler composer git-flow docker-compose)
plugins=(git z composer git-flow docker-compose rbenv)

source $ZSH/oh-my-zsh.sh

######################
# My Stuff
######################

# =============================================================================
# Homebrew
# =============================================================================
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# =============================================================================
# ZSH Config
# =============================================================================
DEFAULT_USER=brianhanson
EDITOR="/usr/local/bin/nvim"

# =============================================================================
# HUB
# =============================================================================
eval "$(hub alias -s)"

# =============================================================================
# Aliases
# =============================================================================
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias gitpurge="git branch --merged | grep -v '\*' | grep -v master | grep -v dev | xargs -n 1 git branch -d"
alias cdev="cd ~/Development"
alias reloadconfig=". ~/.zshrc"
alias theme="cd wp-content/themes"
alias gbl="git branch --sort=committerdate"
alias t2="tree -L 2 -I node_modules"
alias t3="tree -L 3 -I node_modules"
alias t1="tree -L 1 -I node_modules"

# Replace vim with nvim
alias vim="nvim"

# https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git --work-tree=$HOME'

# Remap cat to bat
alias cat="bat"

# Kill camera
alias resetcamera="sudo killall VDCAssistant"

# =============================================================================
# NVM
#
# call nvm use automatically whenever you enter a directory that contains an 
# .nvmrc file with a string telling nvm which node to use
# =============================================================================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# =============================================================================
# Homestead
# =============================================================================
function homestead() {
    ( cd ~/Homestead && vagrant $* )
}

# =============================================================================
# VVV
# =============================================================================
function vvv() {
    ( cd ~/Development/vagrant-local && vagrant $* )
}

# =============================================================================
# Path
# =============================================================================
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# =============================================================================
# Spaceship
# =============================================================================
eval "$(starship init zsh)"
