set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Add plugins within this block
Plugin 'Quramy/tsuquyomi'
Plugin 'jpalardy/vim-slime'
Plugin 'tpope/vim-leiningen'
Plugin 'krisajenkins/vim-pipe'
Plugin 'leafgarland/typescript-vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'AndrewRadev/switch.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'ScrollColors'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/MatchTagAlways'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'elzr/vim-json'
Plugin 'flazz/vim-colorschemes'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/csapprox'
Plugin 'junegunn/vim-easy-align'
Plugin 'junegunn/limelight.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mkitt/tabline.vim'
Plugin 'matchit.zip'
Plugin 'changesqlcase.vim'
Plugin 'mattn/emmet-vim'
Plugin 'oblitum/rainbow'
Plugin 'sjl/gundo.vim'
Plugin 'tommcdo/vim-fugitive-blame-ext'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/dbext.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/denite.nvim'

call vundle#end()
filetype plugin indent on
set ffs=unix,dos,mac
syntax enable
set encoding=utf8
let mapleader = ","
let g:mapleader = ","
set history=700
set t_Co=256
set background=dark
"colo nazca
colo lilypink
set autoread
set cursorline
set so=7
set wildmenu
" wildignore
set wildignore=*.o,*~,*.pyc,*.class,*.class.*
set wildignore+=*.png,*.jpg,*.gif,*.ogg,*.webm,*.avi,*.mp3,*.mp4,*.wmv,*.wav,*.mov,*.jar,*.war,*.deb,*.min.js,*.min.css
set wildignore+=*/Godeps/*
set wildignore+=*/bower_components/*,*/node_modules/*,*/lib/*
set wildignore+=*/web-app/lib/*
set wildignore+=*/web-app/smartsToo/coverage/*
set wildignore+=*/web-app/smartsToo/lib/*
set wildignore+=*/web-reference/*
set wildignore+=*/dist/*
set wildignore+=*/target/*
"
set ruler
set cmdheight=1
set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set nobackup
set nowb
set noswapfile
set smarttab
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
" Treat long lines as break lines (useful when moving around in them)
nnoremap j gj
nnoremap k gk
" Toggle paste
nnoremap <silent> <leader>pp :setlocal paste!<cr>
" Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

if has("gui_running")
  if has("gui_gtk2")
    set guioptions -=m
    set guioptions -=T
    set guioptions -=r
    set guioptions +=c
    set guioptions -=e
    set guiheadroom=0
  endif
endif

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%


" Format the status line
set statusline=
set statusline+=%7*\[%n]

set statusline=\ %{HasPaste()}%F%m%r%h\ %w
set statusline+=%y
set statusline+=%{fugitive#statusline()}
set statusline+=%=
set statusline+=CWD:\ %r%{getcwd()}%h

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

nnoremap <leader>cc :botright cope<cr>
nnoremap <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
nnoremap <leader>n :cn<cr>
nnoremap <leader>p :cp<cr>


" Pressing ,ss will toggle and untoggle spell checking
nnoremap <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
nnoremap <leader>sn ]s
nnoremap <leader>sp [s
nnoremap <leader>sa zg
nnoremap <leader>s? z=


" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
nnoremap <Leader>nnn mmHmt:%s/\\n/\r/ge<cr>'tzt'm

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

set number
set guitablabel=\[%N\]\ %t\ %M

let g:colorizer_nomap = 1

set grepprg=ag\ --nocolor\ --nogroup\ --vimgrep\ $*

" Convert
" myFunction(){
" to
" myFunction()
" {
nnoremap <leader>{ [{i

" Open .vimrc
nnoremap <leader>et :tabnew $MYVIMRC<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>ex :vsplit ~/.Xresources<cr>
nnoremap <leader>ez :vsplit ~/.zshrc<cr>

" Source (reload) .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>J J

inoremap jk <esc>
inoremap jj <esc>

onoremap p i(
onoremap c i{
nnoremap ; :
nnoremap <c-w><Left> :vertical resize +15<cr>
nnoremap <c-w><Right> :vertical resize -15<cr>
nnoremap <c-w><Up> :resize +15<cr>
nnoremap <c-w><Down> :resize -15<cr>
nnoremap <leader># :set nu!<cr>

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>


" vim-easy-align
vmap <Enter> <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)

nnoremap <silent> - :Switch<cr>

au BufRead,BufNewFile *.gsp set filetype=html
au BufRead,BufNewFile *.gradle set filetype=groovy

map <SPACE> <Plug>(easymotion-s2)

nnoremap <F9> :VimuxRunCommand "gradle --project-dir ~/develop/spock/speckr -I ~/develop/spock/speckr/init.gradle test"<CR>

nnoremap <Leader><Leader><Enter> :Scratch<CR>

let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
au FileType c,cpp,objc,objcpp,groovy,gsp,js,sql call rainbow#load()

" Always show the status line
set laststatus=2
let g:airline_powerline_fonts = 1
highlight clear SignColumn

let g:airline_section_warning = ""

let g:tmuxline_preset = {
      \'a'    : '#(~/usefulscripts/batpercent.sh)',
      \'b'    : '#(~/usefulscripts/batterylife.sh)',
      \'c'    : [''],
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'y'    : '#(~/usefulscripts/timefmt.sh)',
      \'z'    : "#(date | awk '{print $4}')"}

let g:agformat="%f:%l:%m"


"Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_mode_map = { 'mode': 'active',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': ['java'] }
let g:syntastic_always_populate_loc_list=1
let g:syntastic_html_tidy_exec = 'tidy'
nnoremap <Leader>?? :SyntasticCheck<CR>

nnoremap <F8> :TagbarToggle<CR>

let g:dbext_default_history_size=1000
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>pm :!marked % \| bcat<CR>
let g:limelight_conceal_ctermfg = 240

let g:limelight_default_coefficient = 0.7
nnoremap <leader>ll :Limelight!!<CR>

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'gsp' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'tmpl' : 1,
    \ 'jinja' : 1,
    \}
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matchtag_color = 0
highlight MatchTag ctermfg=black ctermbg=lightgreen guifg=black guibg=lightgreen

nnoremap <leader>u :GundoToggle<CR>
let g:syntastic_eruby_ruby_exec = 'ruby'

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype htmlcheetah setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype eruby setlocal ts=2 sw=2 noexpandtab

function! EatChar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunction

nnoremap <F12> :Dispatch<CR>

if filereadable(expand('~/.vim/private/private.vim'))
    source ~/.vim/private/private.vim
    nnoremap <leader>ep :vsplit ~/.vim/private/private.vim<cr>
endif

nnoremap <Leader>z :LiteDFMToggle<CR>:silent !tmux set status > /dev/null 2>&1<CR>:redraw!<CR>

vmap <leader>uc :call ChangeSqlCase()<CR>

let g:golang_goroot = "~/develop/go"

let g:lite_dfm_normal_bg_cterm = 232
let g:syntastic_sh_checkers = ['shellcheck']
let g:syntastic_javascript_checkers = ['jshint']
nnoremap <leader>jm ^wdwIvar _<ESC>pa = <ESC>f{%A;<ESC>

let g:used_javascript_libs = 'underscore,angularjs,jasmine'

let g:vimpipe_silent=1
let maplocalleader = "\\"

inoreabbrev S** SELECT * FROM
inoreabbrev IJ INNER JOIN

inoremap \fn <C-R>=expand("%:t:r")<CR>

let g:slime_target = "tmux"

nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>

let g:YUNOcommit_after = 15

inoreabbrev nsproc DELIMITER $$<CR>DROP PROCEDURE IF EXISTS proc_ProcName $$<CR>CREATE PROCEDURE proc_ProcName()<CR>BEGIN<CR>END $$<CR>DELIMITER ;<CR>

set rtp+=~/.fzf

command! -nargs=1 Locate call fzf#run(
      \ {'source': 'locate <q-args>', 'sink': 'e', 'options': '-m'})

inoreabbrev SCT SHOW CREATE TABLE
nnoremap <F6> :exec '!'.getline('.')<CR>
nnoremap <F7> yyp!!sh<CR><Esc>

let $FZF_DEFAULT_COMMAND = 'ag -l --ignore-dir="*.class" --ignore-dir="*.jar" --ignore-dir="*min.js" --ignore-dir="*.otf" --ignore-dir="*.ttf" --ignore-dir="*.out" --ignore-dir="*.war" --ignore-dir="*.mp3" --ignore-dir="*.mp4" --ignore-dir="*.flac" --ignore-dir="*.wav" --ignore-dir="*.gif" --ignore-dir="*.png" --ignore-dir="*.jpg" --ignore-dir="*.avi" --ignore-dir="*node_modules*" --ignore-dir="*min.css" --ignore-dir="*.deb" -g ""'

nnoremap <silent> <Leader>C :call fzf#run({
            \   'source':
            \     map(split(globpath(&rtp, "colors/*.vim"), "\n"),
            \         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
            \   'sink':    'colo',
            \   'options': '+m',
            \   'left':    30
            \ })<CR>


function! s:line_handler(l)
    let keys = split(a:l, ':\t')
    exec 'buf' keys[0]
    exec keys[1]
    normal! ^zz
endfunction

function! s:buffer_lines()
    let res = []
    for b in filter(range(1, bufnr('$')), 'buflisted(v:val)')
        call extend(res, map(getbufline(b,0,"$"), 'b . ":\t" . (v:key + 1) . ":\t" . v:val '))
    endfor
    return res
endfunction

command! FZFLines call fzf#run({
            \   'source':  <sid>buffer_lines(),
            \   'sink':    function('<sid>line_handler'),
            \   'options': '--extended --nth=3..',
            \   'down':    '60%'
            \})

nnoremap <leader>l :FZFLines<CR>

command! -nargs=1 Locate call fzf#run(
      \ {'source': 'locate <q-args>', 'sink': 'e', 'options': '-m'})


nnoremap <leader>T :Locate /<CR>

" Fugitive bindings
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>

inoremap .serr .success(data => )<CR>.error(data => $log.error(data));<ESC>k$i

inoreabbrev ngdt table.table.table-full.table-fixed.table-striped.table-bordered>thead>tr>th{Heading $}*3^^tbody>tr[ng-repeat="x in data"]>td{Data $}*3^^tbody[ng-if="!data"]>tr>td.align-center.padding-t-slight.padding-b-slight[colspan=3]>h4{No Data}

inoremap <leader>aa <ESC>byiwPa, "No <ESC>A given."<ESC>Iassert params.<ESC>o

" XML formatter
function! DoFormatXML() range
    " Save the file type
    let l:origft = &ft

    " Clean the file type
    set ft=

    " Add fake initial tag (so we can process multiple top-level elements)
    exe ":let l:beforeFirstLine=" . a:firstline . "-1"
    if l:beforeFirstLine < 0
        let l:beforeFirstLine=0
    endif
    exe a:lastline . "put ='</prettyxml>'"
    exe l:beforeFirstLine . "put ='<prettyxml>'"
    exe ":let l:newLastLine=" . a:lastline . "+2"
    if l:newLastLine > line('$')
        let l:newLastLine=line('$')
    endif

    " Remove XML header
    exe ":" . a:firstline . "," . a:lastline . "s/<\?xml\\_.*\?>\\_s*//e"

    " Recalculate last line of the edited code
    let l:newLastLine=search('</prettyxml>')

    " Execute external formatter
    exe ":silent " . a:firstline . "," . l:newLastLine . "!tidy -config ~/.tidyconfig -"

    " Recalculate first and last lines of the edited code
    let l:newFirstLine=search('<prettyxml>')
    let l:newLastLine=search('</prettyxml>')

    " Get inner range
    let l:innerFirstLine=l:newFirstLine+1
    let l:innerLastLine=l:newLastLine-1

    " Remove extra unnecessary indentation
    exe ":silent " . l:innerFirstLine . "," . l:innerLastLine "s/^  //e"

    " Remove fake tag
    exe l:newLastLine . "d"
    exe l:newFirstLine . "d"

    " Put the cursor at the first line of the edited code
    exe ":" . l:newFirstLine

    " Restore the file type
    exe "set ft=" . l:origft
endfunction
command! -range=% FormatXML <line1>,<line2>call DoFormatXML()

vmap <silent> <leader>x :FormatXML<CR>w%=%

set colorcolumn=80
highlight ColorColumn ctermbg=0

inoreabbrev drfs div.row-fluid>div.span12

nnoremap gp `[v`]

let g:ackprg = 'ag --vimgrep --smart-case'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack


call denite#custom#var('file_rec', 'command',
\ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

" Ag command on grep source
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts',
        \ ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

call denite#custom#source(
            \ 'file_mru', 'matchers', ['matcher_fuzzy'])

call denite#custom#source(
	\ 'file_rec', 'sorters', ['sorter_rank'])

call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')

nnoremap <silent> <C-f> :<C-u>Denite -no-empty grep<CR>
nnoremap <silent> <C-t> :<C-u>Denite -no-empty file_rec<CR>
nnoremap <silent> <leader>t :<C-u>Denite -no-empty file_rec<CR>

autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
au FileType vue setl sw=2 sts=2 et

autocmd FileType java setlocal omnifunc=javacomplete#Complete

