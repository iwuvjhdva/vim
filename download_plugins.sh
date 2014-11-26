#!/bin/sh

git clone https://github.com/hynek/vim-python-pep8-indent.git bundle/vim-python-pep8-indent
git clone https://github.com/vim-scripts/django.vim.git bundle/django.vim
git clone https://github.com/xolox/vim-notes.git bundle/notes
git clone https://github.com/hrp/EnhancedCommentify.git bundle/EnhancedCommentify
git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim
git clone https://github.com/scrooloose/syntastic.git bundle/syntastic.git
git clone https://github.com/vim-scripts/taglist.vim.git bundle/taglist.vim
git clone https://github.com/vim-scripts/vcscommand.vim.git bundle/vcscommand.vim
# git clone https://github.com/klen/python-mode.git bundle/python-mode
git clone https://github.com/Valloric/YouCompleteMe.git bundle/YouCompleteMe
git clone git://github.com/tpope/vim-unimpaired.git bundle/vim-unimpaired
hg clone https://bitbucket.org/agr/ropevim bundle/ropevim
git clone https://github.com/Lokaltog/vim-easymotion.git bundle/vim-easymotion
git clone https://github.com/othree/xml.vim.git bundle/xml.vim
git clone https://github.com/Raimondi/delimitMate.git bundle/delimitMate
git clone https://github.com/vim-scripts/Jinja.git bundle/Jinja
git clone https://github.com/msanders/snipmate.vim.git bundle/snipmate.vim

# pathogen
mkdir -p autoload
curl -so autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# notes
#git clone git@hooky.ru:notes.git bundle/notes/misc/notes/user


# ropevim
echo
echo "Don't forget to run ropevim installer"
