if [ -d "$HOME/.local/lib" ]; then
	echo "LIB EXISTS"
	tmux source-file "$HOME/.local/lib/python2.7/site-packages/powerline/bindings/tmux/powerline.conf"
else
	echo "LIB DON'T EXIST"
	tmux source-file  "$HOME/.local/lib64/python2.7/site-packages/powerline/bindings/tmux/powerline.conf"
fi
