"auto-install vim-plug "
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'joshdick/onedark.vim'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}   
    " Status Line
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'        
    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " Startify
    Plug 'mhinz/vim-startify'
    " Signify
  	Plug 'mhinz/vim-signify'
		Plug 'tpope/vim-fugitive'
		Plug 'tpope/vim-rhubarb'
		Plug 'junegunn/gv.vim'
    " Which-key
    Plug 'liuchengxu/vim-which-key'
    " Vim tex
    Plug 'lervag/vimtex'
    " HTML+CSS | Vim
    Plug 'mattn/emmet-vim'    
    " Vim + Latex
    Plug 'sirver/ultisnips'
      let g:UltiSnipsExpandTrigger = '<tab>'
      let g:UltiSnipsJumpForwardTrigger = '<tab>'
      let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

    Plug 'lervag/vimtex'
      let g:tex_flavor='latex'
      let g:vimtex_view_method='zathura'
      let g:vimtex_quickfix_mode=0

    Plug 'KeitaNakamura/tex-conceal.vim'
      set conceallevel=1
      let g:tex_conceal='abdmg'
      hi Conceal ctermbg=none

    "Plug 'dylanaraps/wal'
    "colorscheme wal
    "set background=dark


    "Plugin 'honza/vim-snippets'






    setlocal spell
    set spelllang=en_us
    inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u     


call plug#end()
