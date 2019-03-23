export TERM=xterm-256color
# Path to your oh-my-zsh installation.
  export ZSH=/home/$USER/.oh-my-zsh
  export VISUAL="vim"
  export EDITOR="vim"

ZSH_THEME="af-magic"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=7

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git autopep8 colored-man-pages python vagrant)

# User configuration
  export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/rdcampbell/.cargo/bin:/home/rdcampbell/ninja:/home/rdcampbell/gcc-arm-none-eabi-5_4-2016q2/bin:${HOME}/.local/bin
  export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
source $ZSH/oh-my-zsh.sh
source $HOME/.cargo/env

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

alias cl="clear && ls -l"
alias ca="clear && ls -la"
alias todo="rg TODO ./"
alias vim="nvim"
alias ls="exa"
alias la="ls -la"

export LD_LIBRARY_PATH=/usr/local/lib
export VISUAL="nvim"
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper_lazy.sh
