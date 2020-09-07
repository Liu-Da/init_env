# zimfw
#wget -nv -O - https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
zsh resource/install.zsh

# z.lua
git clone https://github.com/skywind3000/z.lua.git $HOME/.z.lua
grep -w "z.lua --init zsh" $HOME/.zshrc >/dev/null || echo 'eval "$(lua $HOME/.z.lua/z.lua --init zsh)"' >> $HOME/.zshrc

# pure
grep -w "zmodule sindresorhus/pure" $HOME/.zimrc >/dev/null || echo 'zmodule sindresorhus/pure --source async.zsh --source pure.zsh' >> $HOME/.zimrc
source $HOME/.zshrc
zimfw install

