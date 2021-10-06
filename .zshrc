export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="/usr/lib64/qt5/bin/:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"
export HISTSIZE=10
export SAVEHIST=10
# export PATH="/usr/share:$PATH"

export TERM="screen-256color"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if [[ $TERM = "linux" ]]; then
  unicode_start
fi

# # Buggy behavior with zprezto's themes, have to manually set prompt here
# promptinit
# prompt skwp

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby ruby-2.6.5

# # Use powerline in zsh
# if [[ -r ~/.local/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
#   source ~/.local/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh
# fi

# # Use powerline in zsh
# if [[ -r /usr/share/powerline/bindings/zsh/powerline.zsh ]]; then
#   source /usr/share/powerline/bindings/zsh/powerline.zsh
# fi

# aliases
alias zshconfig="vim ~/.zshrc"

DEFAULT_USER=`whoami`

export GIT_EDITOR=vim
export LESS="-RX"

# Add env.sh
. ~/.env.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/scriptonaut/tmp/google_sdk/google-cloud-sdk/path.zsh.inc' ]; then . '/home/scriptonaut/tmp/google_sdk/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/scriptonaut/tmp/google_sdk/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/scriptonaut/tmp/google_sdk/google-cloud-sdk/completion.zsh.inc'; fi
