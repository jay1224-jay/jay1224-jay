map zz :w <CR>
map Z :wq <CR>
map ff :%y+ <CR> :echo "copied all line to clipbroad" <CR>
syntax on
set number
set tabstop=4
set cindent
set shiftwidth=4
set t_Co=256
set history=80 

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
hi LineNr ctermfg=237

set cursorline
hi cursorline cterm=none ctermbg=234
set mouse=a

set scrolloff=10
set ruler
set hlsearch
set backspace=indent,eol,start
"set laststatus=2


nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==


hi file       ctermbg=17    ctermfg=247
hi path       ctermbg=235   ctermfg=247
hi user1      ctermbg=35   ctermfg=black
hi unsaved    ctermbg=162 ctermfg=220
hi saved      ctermbg=35  ctermfg=black
hi modified   ctermbg=162 ctermfg=black


hi tablinefill cterm=none ctermfg=white ctermbg=245
hi tabline ctermbg=239 cterm=none ctermfg=248
hi tablinesel cterm=none ctermfg=white ctermbg=20


function GetPWD()
    return system("pwd")
endfunction

set laststatus=2

set statusline=
"set statusline+=%#PmenuSel#
set statusline+=%#file#%F
set statusline+=\ 
set statusline+=%#path#
set statusline+=\ 
set statusline+=WorkDirectory: 
set statusline+=%{GetPWD()}

"set statusline+=%#statusline#
set statusline+=%= 
set statusline+=\ 
set statusline+=%#modified#
set statusline+=%{&modified?'[un-saved]':'[saved]'}
set statusline+=\ 
set statusline+=\ 
set statusline+=%1*
set statusline+=FileType: 
set statusline+=%y


