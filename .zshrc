# NOTE
# for profiling
# zmodload zsh/zprof

# Path to your oh-my-zsh installation.
export ZSH=/Users/liyanze/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="pygmalion"
ZSH_THEME="minimalgit"

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
plugins=(
  history-substring-search
  # zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# make terminal support true color and italic
export TERM=xterm-24bit

export LC_ALL=en_US.UTF-8

# You may need to manually set your language environment
#
# alias for python
alias py3="python3"
alias py2="python2"

# alias for git
alias ga='git add'
alias gc='git commit'
alias gca='git add --all; git commit'
alias gp='git push'
alias gs='git status'
alias gd='git diff'
alias gpl='git pull'
alias gr='git reset'
alias gb='git branch'
alias gch='git checkout'
alias gm='git merge'
alias git-change-commit='sh ~/.config/github/change-commit-user.sh'

alias ssh="TERM=xterm-256color ssh"

# replace some default tools
alias diff="icdiff"
alias ls="exa"
alias cat="bat"

# alias di='docker images'
# alias dr='docker run -ti'
# alias docker-init="source /Applications/Docker/Docker\ Quickstart\ Terminal.app/Contents/Resources/Scripts/start.sh"

# python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"


# haskell
# stack
export PATH="$HOME/.local/bin:$PATH"

#rbenv
eval "$(rbenv init -)"
alias rh='rbenv rehash'

#nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" --no-use  # This loads nvm bash_completion
#
# lazy load nvm.sh to speedup shell startup
load_nvm() {
  unset -f nvm
  unset -f node
  unset -f npm
  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
}

nvm() {
  load_nvm
  nvm "$@"
}
 
node() {
  load_nvm
  node "$@"
}
 
npm() {
  load_nvm
  npm "$@"
}

#latex
# export PATH="/Library/Tex/texbin:$PATH"

#antlr lib for csce689
# export CLASSPATH="/usr/local/lib/javalib/antlr-4.5-complete.jar:$CLASSPATH"
alias antlr4='java -jar /usr/local/lib/javalib/antlr-4.5-complete.jar'
alias grun='java org.antlr.v4.runtime.misc.TestRig'

# java home path set
# export JAVA_HOME="$(/usr/libexec/java_home -v 1.7)"
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
# export JAVA_HOME="$(/usr/libexec/java_home -v 10)"
# export JAVA_HOME="$(/usr/libexec/java_home -v 11)"
# export JAVA_HOME="$(/usr/libexec/java_home -v 12)"

export PATH="$JAVA_HOME/bin:$PATH"


# add rust
source $HOME/.cargo/env
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

# OPAM configuration
. /Users/liyanze/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
export PATH="/usr/local/opt/llvm/bin:$PATH"

# direnv setup
eval "$(direnv hook zsh)"

# go lang setting
export GOPATH=$HOME/.go
export PATH=$GOPATH/bin:$PATH

# SML
export PATH="$PATH:/usr/local/smlnj/bin"

# fuzzy find
alias fopen='vim $(fzf --height 40%)'

# python virtual env
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh

# binutils
export PATH="/usr/local/opt/binutils/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/binutils/lib"
export CPPFLAGS="-I/usr/local/opt/binutils/include"

# NOTE
# for profiling
# zprof

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
