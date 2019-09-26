" this file goes in in ~/.config/nvim/init.vim
set runtimepath+=~/.vim_runtime
let &packpath=&runtimepath

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/vimrcs/vimplugrc.vim

" in case i want my own config file
" source ~/.vim_runtime/my_configs.vim
