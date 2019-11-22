if [ -d "$HOME/.local/lib" ]; then
  tmux source-file "$HOME/.local/lib/python2.7/site-packages/powerline/bindings/tmux/powerline.conf"
fi

if [ -r "$HOME/.local/lib64/python2.7/site-packages/powerline/bindings/tmux/powerline.conf" ]; then
  tmux source-file  "$HOME/.local/lib64/python2.7/site-packages/powerline/bindings/tmux/powerline.conf"
fi

if [[ -r /usr/share/powerline/bindings/zsh/powerline.zsh ]]; then
  tmux source-file /usr/share/powerline/bindings/tmux/powerline.zsh
fi
