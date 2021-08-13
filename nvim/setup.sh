set +e
mkdir -p ~/.local/share/nvim/bundle
mkdir -p ~/.config/nvim/
git clone -q https://github.com/VundleVim/Vundle.vim.git ~/.local/share/nvim/bundle/Vundle.vim
cp $PWD/nvim/init.vim ~/.config/nvim/
python -m pip install --user --upgrade pynvim

