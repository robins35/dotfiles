export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="/usr/lib64/qt5/bin/:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"
# export PATH="/usr/share:$PATH"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

chruby ruby-2.6.5

if [[ $TERM = "linux" ]]; then
  unicode_start
fi

# Use powerline in zsh
if [[ -r ~/.local/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
  source ~/.local/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh
fi

# Use powerline in zsh
if [[ -r /usr/share/powerline/bindings/zsh/powerline.zsh ]]; then
  source /usr/share/powerline/bindings/zsh/powerline.zsh
fi

# aliases
alias zshconfig="vim ~/.zshrc"

export TERM="screen-256color"
DEFAULT_USER=`whoami`

export GIT_EDITOR=vim
export LESS="-RX"

# Add env.sh
. ~/.env.sh
