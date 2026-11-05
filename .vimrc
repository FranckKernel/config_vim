" === Plugin manager ===

source $HOME/.config/vim/pre_config.vim

call plug#begin('$HOME/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdcommenter'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }   " 

" Telescope Equivalent
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 


" Optional: File icons
" Plug 'ryanoasis/vim-devicons'

Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'sheerun/vim-polyglot'

Plug 'puremourning/vimspector'
Plug 'dense-analysis/ale'

call plug#end()



source $HOME/.config/vim/keymaps.vim
source $HOME/.config/vim/options.vim
source $HOME/.config/vim/plugins/comments.vim
source $HOME/.config/vim/plugins/buffer_airline.vim
source $HOME/.config/vim/plugins/telescope_equivalent.vim
source $HOME/.config/vim/plugins/lsp.vim
source $HOME/.config/vim/plugins/lsp_autocomplete.vim

" New Features, Linting, dap, and pseudo dap
source $HOME/.config/vim/plugins/ale_linting.vim
source $HOME/.config/vim/plugins/pseudo_debug.vim
source $HOME/.config/vim/plugins/vimspector_debuger.vim



