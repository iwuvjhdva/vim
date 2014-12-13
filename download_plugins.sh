#!/bin/sh

git clone https://github.com/hynek/vim-python-pep8-indent.git bundle/vim-python-pep8-indent
git clone https://github.com/vim-scripts/django.vim.git bundle/django.vim
git clone https://github.com/xolox/vim-notes.git bundle/notes
git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim
git clone https://github.com/scrooloose/syntastic.git bundle/syntastic.git
git clone https://github.com/vim-scripts/taglist.vim.git bundle/taglist.vim
git clone https://github.com/vim-scripts/vcscommand.vim.git bundle/vcscommand.vim
# git clone https://github.com/klen/python-mode.git bundle/python-mode
git clone https://github.com/Valloric/YouCompleteMe.git bundle/YouCompleteMe
git clone git://github.com/tpope/vim-unimpaired.git bundle/vim-unimpaired
git clone https://github.com/Lokaltog/vim-easymotion.git bundle/vim-easymotion
git clone https://github.com/othree/xml.vim.git bundle/xml.vim
git clone https://github.com/Raimondi/delimitMate.git bundle/delimitMate
git clone https://github.com/vim-scripts/Jinja.git bundle/Jinja
git clone https://github.com/msanders/snipmate.vim.git bundle/snipmate.vim
git clone https://github.com/xolox/vim-misc.git bundle/vim-misc
git clone https://github.com/kchmck/vim-coffee-script.git bundle/vim-coffee-script
git clone https://github.com/python-rope/ropevim bundle/ropevim
git clone https://github.com/tpope/vim-haml.git bundle/vim-haml
git clone https://github.com/tomtom/tcomment_vim.git bundle/tcomment
git clone https://github.com/editorconfig/editorconfig-vim.git bundle/editorconfig

# pathogen
mkdir -p autoload
curl -so autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# notes
hg clone https://hg.socio2.net/notes bundle/notes/misc/notes/user


# ropevim
echo
echo "Don't forget to run ropevim installer"
