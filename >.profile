alias dot='bash ~/bin/dot.sh git@github.com:eZanmoto/dotfiles $HOME'

export EDITOR="vi"
export PATH="$HOME/bin:$PATH"

eval $(keychain --quiet --agents ssh --eval id_rsa)
