# zimfw
#wget -nv -O - https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
zsh resource/install.zsh

# z.lua
git clone https://github.com/skywind3000/z.lua.git $HOME/.z.lua
grep -w "z.lua --init zsh" $HOME/.zshrc >/dev/null || echo 'eval "$(lua $HOME/.z.lua/z.lua --init zsh)"' >> $HOME/.zshrc

# pure
# sed -i 's#zmodule steeef#zmodule sindresorhus/pure --source async.zsh --source pure.zsh#g' ~/.zimrc
# source $HOME/.zshrc
# zimfw install

