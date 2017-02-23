export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="/usr/lib64/qt5/bin/:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"

# Source OH MY ZSH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="nebirhos"
plugins=(git bundler rails rake ruby)

HYPHYEN_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMP="mm/dd/yyyy"
DISABLE_CORRECTION="true"

source "$ZSH/oh-my-zsh.sh"

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

chruby ruby-2.3.1

if [[ $TERM = "linux" ]]; then
  unicode_start
fi

# Use powerline in zsh
if [[ -r ~/.local/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
  source ~/.local/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh
fi

# aliases
alias zshconfig="vim ~/.zshrc"

export TERM="screen-256color"
DEFAULT_USER=`whoami`

export GIT_EDITOR=vim
export LESS="-RX"

# Add env.sh
. ~/.env.sh

# Show file contents and git status if git repo
function chpwd() {
  if [[ -a .git ]]; then
    git fetch && git status
  fi
  ls -a
}
