# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM=xterm-256color
# Path to your oh-my-zsh installation.
export ZSH=/home/$USER/.oh-my-zsh
export VISUAL="vim"
export EDITOR="vim"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=7

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git colored-man-pages python)

# User configuration
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
export LD_LIBRARY_PATH=/usr/local/lib
export VISUAL="nvim"
export WORKON_HOME=~/.virtualenvs
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python3/dist-packags:/usr/lib/python3.10/dist-packages
export POETRY_DEV_DEPS=$WORKON_HOME/dev_requirements.txt
export NODEJS_HOME=/usr/local/lib/node/nodejs
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin
export PATH=${HOME}/.local/bin:$NODEJS_HOME/bin:$PATH

source $ZSH/oh-my-zsh.sh
source $HOME/.cargo/env
source /usr/share/virtualenvwrapper/virtualenvwrapper_lazy.sh

alias cl="clear && ls -l"
alias ca="clear && ls -la"
alias todo="rg TODO ./"
alias vim="nvim"
alias la="ls -la"
alias ls="exa"
alias python="python3"
alias devpoet="poetry add -D `cat $POETRY_DEV_DEPS`"
alias docker-compose="docker compose"

DAY_SCHEME='night_owlish_light.yaml'
NIGHT_SCHEME='moonlight_ii_vscode.yaml'
alias daymode="alacritty-colorscheme -V apply $DAY_SCHEME"
alias nightmode="alacritty-colorscheme -V apply $NIGHT_SCHEME"
alias togglemode="alacritty-colorscheme -V toggle $DAY_SCHEME $NIGHT_SCHEME"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
