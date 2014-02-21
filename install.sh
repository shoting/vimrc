git clone https://github.com/shoting/vimrc.git  ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim
mkdir bundle
git clone https://github.com/Shougo/neobundle.vim bundle/neobundle.vim
