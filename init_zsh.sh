workdir=`pwd`

# ncurses
#wget ftp://ftp.gnu.org/gnu/ncurses/ncurses-6.1.tar.gz
cp resource/ncurses-6.1.tar.gz ./
tar xf ncurses-6.1.tar.gz
mkdir ncurses-6.1/build && cd ncurses-6.1/build
../configure --prefix=$HOME/.local CXXFLAGS="-fPIC" CFLAGS="-fPIC"
make -j && make install

# zsh
cd $workdir
#wget -O zsh.tar.xz https://sourceforge.net/projects/zsh/files/latest/download
cp resource/zsh-5.8.tar.xz ./
tar xf zsh-5.8.tar.xz
cd zsh* && mkdir build && cd build
../configure --prefix="$HOME/.local" \
    CPPFLAGS="-I$HOME/.local/include" \
    LDFLAGS="-L$HOME/.local/lib"
make -j && make install
echo 'export PATH=$HOME/.local/bin:$PATH
export SHELL=`which zsh`
[ -f "$SHELL" ] && exec "$SHELL" -l' >> $HOME/.bash_profile

# clean
rm -rf $workdir/ncurses* $workdir/zsh*

# source
source $HOME/.bash_profile
