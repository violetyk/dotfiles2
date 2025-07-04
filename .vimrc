" vim:set ts=4 sts=2 sw=2 tw=0 ft=vim fdm=marker:

" Plugins {{{
let s:plugin_dir = expand('~/.vim/plugged/')

if !filereadable(expand('~/.vim/autoload/plug.vim'))
  call system('curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
  if v:shell_error
    echoerr 'could not install vim-plug.'
    exit
  end
endif

if !isdirectory(s:plugin_dir)
  call mkdir(s:plugin_dir, 'p')
endif

call plug#begin(s:plugin_dir)

" base
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'vim-jp/vimdoc-ja'
Plug 'kana/vim-gf-user'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-metarw'
Plug 'mattn/webapi-vim'
Plug 'vim-jp/vital.vim'
Plug 'thinca/vim-quickrun'
Plug 'thinca/vim-localrc'

" unite
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'Shougo/unite.vim'
Plug 'ujihisa/unite-colorscheme'
Plug 'ujihisa/unite-locate'
Plug 'tacroe/unite-mark'
Plug 'zhaocai/unite-scriptnames'
Plug 'thinca/vim-unite-history'
Plug 'ujihisa/unite-launch'
Plug 'Shougo/neomru.vim'
Plug 'tsukkee/unite-tag'
Plug 'sorah/unite-ghq'

" editing
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/Align'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise', { 'for' : 'ruby' }
Plug 'vim-scripts/Modeliner'
Plug 'editorconfig/editorconfig-vim'
" Plug 'cohama/lexima.vim'
Plug 'osyo-manga/vim-over'
Plug 'AndrewRadev/switch.vim'

" completion
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
Plug 'github/copilot.vim'

" template
Plug 'mattn/vim-sonictemplate'

" snippet
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" filer
Plug 'scrooloose/nerdtree'

" outliner
Plug 'preservim/tagbar'

" ctags support
Plug 'vim-php/tagbar-phpctags.vim'
" Plug 'jszakmeister/markdown2ctags', {'rtp': ''}
Plug 'jszakmeister/markdown2ctags'

" database
Plug 'vim-scripts/dbext.vim'
Plug 'vim-scripts/SQLUtilities'

" navigation
Plug 'sgur/vim-gf-autoload'
Plug 't9md/vim-choosewin'

" sign
Plug 'airblade/vim-gitgutter'

" search
Plug 'osyo-manga/vim-anzu'
Plug 'rking/ag.vim'

" git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tyru/open-browser-github.vim'
Plug 'tyru/open-browser.vim'
Plug 'takahirojin/gbr.vim'
Plug 'mattn/vim-gist'

" reference
Plug 'rizzatti/dash.vim'

" Vim script
Plug 'thinca/vim-prettyprint', { 'for' : 'vim' }

" php
" Plug 'vim-vdebug/vdebug', {'for' : 'php'}
Plug 'Rican7/php-doc-modded', {'for' : 'php'}

" twig
Plug 'lumiliet/vim-twig', {'for' : 'html.twig'}

" ruby
Plug 'vim-ruby/vim-ruby', {'for' : 'ruby'}
Plug 'tpope/vim-rails', {'for' : 'ruby'}
Plug 'tpope/vim-bundler', {'for' : 'ruby'}
Plug 'tpope/vim-rake', {'for' : 'ruby'}
Plug 'slim-template/vim-slim', {'for' : 'slim'}
Plug 'tpope/vim-dispatch', {'for' : 'ruby'}
Plug 'thoughtbot/vim-rspec', {'for' : 'ruby'}

" golang
Plug 'mattn/vim-goimports'

" toml
Plug 'cespare/vim-toml',  {'for' : 'toml'}

" markdown
Plug 'godlygeek/tabular', {'for' : ['markdown', 'md']}
Plug 'previm/previm', {'for' : ['markdown', 'md']}

" javascript
Plug 'marijnh/tern_for_vim', {'for' : 'javascript'}
Plug 'pangloss/vim-javascript', {'for' : 'javascript'}
Plug 'jelera/vim-javascript-syntax', {'for' : 'javascript'}
Plug 'othree/javascript-libraries-syntax.vim', {'for' : 'javascript'}
Plug 'elzr/vim-json', {'for' : 'javascript'}

" typescript
Plug 'leafgarland/typescript-vim', {'for' : 'typescript'}
" Plug 'clausreinke/typescript-tools', {'for' : 'typescript'}
Plug 'clausreinke/typescript-tools.vim', { 'do': 'npm install' }

" python
Plug 'davidhalter/jedi-vim', {'for' : 'python'}
Plug 'sophacles/vim-bundle-mako', {'for' : 'mako'}
Plug 'hynek/vim-python-pep8-indent', {'for' : 'python'}
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }

" syntax checking
" Plug 'scrooloose/syntastic'

" statusline
Plug 'itchyny/lightline.vim'

" colorscheme
"Plug 'mrkn/mrkn256.vim'
"Plug 'w0ng/vim-hybrid'
"Plug 'tomasr/molokai'
" Plug 'altercation/vim-colors-solarized'
Plug 'nanotech/jellybeans.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'nordtheme/vim'

" html
Plug 'othree/html5.vim'

" css
Plug 'hail2u/vim-css3-syntax'

" pug
Plug 'digitaltoad/vim-pug', {'for' : 'pug'}

" nginx
Plug 'chr4/nginx.vim', {'for' : 'nginx'}

" jinja2
Plug 'Glench/Vim-Jinja2-Syntax'

" vue
Plug 'posva/vim-vue'

" fish
Plug 'dag/vim-fish', {'for' : 'fish'}

" system
Plug 'mopp/autodirmake.vim'

" local
Plug '~/src/github.com//violetyk/cake.vim'
Plug '~/src/github.com//violetyk/iikanji-markdown.vim'
Plug '~/src/github.com//violetyk/scratch-utility'

call plug#end()

" }}}

" Basics: {{{

" ビープ音を鳴らさない
set vb t_vb=

" バックスペースキーで削除できるものを指定
" indent  : 行頭の空白
" eol     : 改行
" start   : 挿入モード開始位置より手前の文字
set backspace=indent,eol,start

"<Leader>の設定
let mapleader = ","

" ヘルプファイルの検索順
set helplang=ja,en

" 保存していないバッファでも切り替えられる
set hidden

" 起動時のメッセージを表示しない
set shortmess+=I

"スクロール時の余白
set scrolloff=3

" splitしたときに下に出す。
set splitbelow

" vsplitしたときに右に出す。
set splitright

" 補完時、現在選択中の候補の付加情報を表示しない。
" set completeopt-=menu,preview
set completeopt=menuone,noselect

" pasteモードの切り替えマッピング
set pastetoggle=<Leader>p

let $LANG = 'en'
" }}}

" Encoding {{{

" Vim内部で使われる文字エンコーディング
set encoding=utf-8

" ターミナルで使われるエンコーディング
set termencoding=utf-8

" カレントバッファのファイルの文字エンコーディング
set fileencoding=utf-8

" 読めなかったときに試される順番。
set fileencodings=utf-8,ucs-bom,euc-jp,cp932,sjis

" 改行コードの自動認識
set fileformats=unix,dos,mac

" □とか○の文字があってもカーソル位置がずれないようにする
set ambiwidth=double

" }}}

" Mouse: {{{
set mouse=
" }}}

" Indent & Tab (Base) {{{

" オートインデントを無効にする
"set noautoindent

" タブが対応する空白の数
set tabstop=2

" タブやバックスペースの使用等の編集操作をするときに、タブが対応する空白の数
set softtabstop=2

" インデントの各段階に使われる空白の数
set shiftwidth=2

" タブはハードタブとして入力する
" set noexpandtab
" タブは空白として入力する（実際にTABを入力したい場合は<C-V><TAB>）
set expandtab

" }}}

" Backup & Swap {{{

" バックアップをとらない
set nobackup

" ファイルの上書きの前にバックアップを作る
" (backup がオフの場合、バックアップは上書きに成功した後削除される)
" set writebackup

" バックアップを作成しないファイルパターン
" set backupskip = escape(expand('$HOME'), '\') . '/tmp/*'

" バックアップ名の最後に文字列を追加
augroup vimrc-backup
  autocmd!
  autocmd BufWritePre * let &backupext = '-' . strftime("%Y%m%d_%H%M")
augroup END

" バックアップファイルを作るディレクトリ
set backupdir=$HOME/backup

" スワップファイルをつくる
set swapfile

" スワップファイルを作るディレクトリ
set directory=$HOME/swap

" スワップファイルの更新間隔文字数
set updatecount=500

" }}}

" Undo & Redo {{{
set noundofile
" set undodir=$HOME/undo
" }}}

" Clipboard {{{
" クリップボードの共有
 set clipboard&
 set clipboard^=unnamed,unnamedplus
" }}}

" Search & Completion {{{

" コマンド、検索パターンをn個まで履歴に残す
set history=1000

" 検索の時に大文字小文字を区別しない
set ignorecase

" 検索altercation / solarized の時に大文字が含まれている場合は区別して検索する
set smartcase

" 最後altercation / solarized まで検索したら先頭に戻る
set wrapscan

" インクリメンタルサーチの使用
set incsearch

" コマンドライン補完を拡張モードにする
set wildmenu

" 複数のマッチがあるときは、全てのマッチを羅列する。
set wildmode=full

" コマンドラインの補完キー
set wildchar=<Tab>

set showfulltag
" }}}

" Window {{{

" 行番号
set number

" タブ文字を CTRL-I（デフォルト） で表示し、行末に $ で表示する
set list
" タブ文字を次の文字列で視覚化(Listモード (訳注: オプション 'list' がオンのとき) に使われる文字を設定する。
" cが一文字で、xyが2文字。
" eol:c     行末の改行文字
" tab:c     タブ
" trail:xy  行末のスペース
" extends:c 折り返した行の表末
" precedes:c 折り返してきた表の行頭
" nbsp:c    ノンブレーカブルスペース（？）
set listchars=tab:>-,extends:<,trail:-

" 括弧入力時の対応する括弧を表示
set showmatch

" 対応する括弧の表示時間を2にする
set matchtime=2

" 検索結果文字列のハイライトを有効にする
set hlsearch

" 入力されているテキストの最大幅
" (行がそれより長くなると、この幅を超えないように空白の後で改行される)を無効にする
set textwidth=0

" ウィンドウの幅より長い行でも折り返さない
set nowrap

" マクロ/レジスタの内容/キーボードから打ち込まれないコマンド を実行する管は再描画しない
set lazyredraw

" 高速ターミナル接続を行う
set ttyfast

" }}}

" Status Line {{{

" 入力中のコマンドをステータスに表示する
set showcmd

" ステータスラインを常に表示
set laststatus=2

" ステータスラインの行数
set cmdheight=2

" ステータスラインに表示する情報の指定
" set statusline=%n\:%y%F\ %m%r%=%{fugitive#statusline()}[%{(&fenc!=''?&fenc:&enc).']['.&ff.']'}[%l/%L(%p%%),%v]

" }}}

" Syntax highlighting {{{

syntax enable

" TrueColor対応
set termguicolors
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" カラースキーマの指定
" let ayucolor="light"
" let ayucolor="mirage"
" let ayucolor="dark"
" silent! colorscheme ayu
silent! colorscheme jellybeans
" silent! colorscheme mrkn256
" silent! colorscheme nord

" }}}

" Keybind {{{

"
"   調べる方法
"   :map
"
"   それぞれのモードだけ表示
"   :nmap
"   :imap
"   :vmap
"
"   ショートカットキーの定義元ファイル情報も表示
"   :verbose nmap
"
" |-----------------|--------|--------|---------|--------|
" | mode / no remap | normal | insert | command | visual |
" |-----------------|--------|--------|---------|--------|
" | map  / noremap  | o      | -      | -       | o      |
" | nmap / nnoremap | o      | -      | -       | -      |
" | imap / inoremap | -      | o      | -       | -      |
" | cmap / cnoremap | -      | -      | o       | -      |
" | vmap / vnoremap | -      | -      | -       | o      |
" | map! / noremap! | -      | o      | o       | -      |
" |-----------------|--------|--------|---------|--------|


" 移動操作 {{{
nnoremap <silent>bf :bf<CR>
nnoremap <silent>bp :bprevious<CR>
nnoremap <silent>bn :bnext<CR>
nnoremap <silent>bl :bl<CR>
nnoremap <silent>bb :b#<CR>
nnoremap <silent>bm :bm<CR>
nnoremap <silent>bd :bdelete<CR>
nnoremap <silent>bs :split #<CR>
nnoremap <silent>bv :vsplit #<CR>
nnoremap <silent>bt :tabedit #<CR>

" 分割幅を広く
noremap <PageUp> 3<C-w>+
" 分割幅を狭く
noremap <PageDown> 3<C-w>-

noremap <C-j> :<C-u>cnext<CR>
noremap <C-k> :<C-u>cprevious<CR>

" タブ移動
nnoremap gl gt
nnoremap gh gT

" 縦分割版gf
nnoremap gs :vertical wincmd f<CR>

" タグジャンプで複数ある時は一覧表示 -> unite.vimへ移管
" nnoremap <C-]> g<C-]><Space>

" 移動量の調節
" nnoremap <C-e> 10<C-e>
" nnoremap <C-y> 10<C-y>
" }}}

" 検索操作 {{{

" ハイライトを消す。
noremap <silent> <Esc><Esc> :<C-u>set nohlsearch<Return>

" 新しく別の単語を検索するときだけハイライトして、nやNでの移動はハイライトしたくない
nnoremap / :<C-u>set hlsearch<Return>/
nnoremap ? :<C-u>set hlsearch<Return>?
nnoremap * :<C-u>set hlsearch<Return>*
nnoremap # :<C-u>set hlsearch<Return>#

" ビジュアルモードで選択した範囲を検索
vnoremap / <ESC>/\%V
vnoremap ? <ESC>?\%V

" 検索時に/をエスケープ
cnoremap <expr>/ getcmdtype() == '/' ? '\/' : '/'

" }}}

" 編集操作 {{{

" ～まで、を少し便利にする。
onoremap ) t)
onoremap ( t(
onoremap ; t;
onoremap , t,
vnoremap ) t)
vnoremap ( t(
vnoremap ; t;
vnoremap , t,

" 貼り付けの後「=」でフォーマッティングは面倒なので、いつでもカレント行のインデントにあわせた貼り付けをする。
nnoremap p ""]p
nnoremap P ""]P

" カーソル位置の単語を置換 s* と打鍵してから置き換え文字を打って /g エンターで発動。
nnoremap <expr> s* ':%substitute/\<' . expand('<cword>') . '\>/'

" レジスタやマークを確認しやすくする。
nnoremap <Space>m :<C-u>marks<Space>
nnoremap <Space>r :<C-u>registers<Space>

" 行末に;を追加する。
function! s:is_endof_line(char) " {{{
  return getline(".")[col("$")-2] == a:char
endfunction " }}}
inoremap <expr>;; <SID>is_endof_line(";") ? "<C-O>$" : "<C-O>$;"
nnoremap <expr>;; <SID>is_endof_line(";") ? "$" : "$a;<Esc>"

" 行末に,を追加する。
inoremap <expr>,, <SID>is_endof_line(";") ? "<C-O>$" : "<C-O>$,"
nnoremap <expr>,, <SID>is_endof_line(";") ? "$" : "$a,<Esc>"


" 最後に編集したテキストを選択。
nnoremap gc `[v`]
vnoremap gc :<C-u>normal gc<CR>
onoremap gc :<C-u>normal gc<CR>

" 行末までヤンク
nnoremap Y y$

" w!! でsudoしつつ保存
cnoremap w!! w !sudo tee > /dev/null %
" }}}

" その他の操作 {{{

" ヘルプを引きやすくする
nnoremap <C-h> :<C-u>help<Space>
nnoremap <C-h><C-h> :<C-u>help<Space><C-r><C-w><CR>

" ev / eg ですぐに.vimrcを開けるようにする。rv / rg で反映させる。
nnoremap <silent> <Space>ev :<C-u>edit $MYVIMRC<CR>
nnoremap <silent> <Space>rv :<C-u>source $MYVIMRC<CR>

" }}}

"}}}

" Auto Commands {{{

" 色のチェック方法
" :source $VIMRUNTIME/syntax/colortest.vim

augroup vimrc-highlight
  autocmd!
  autocmd ColorScheme * :call s:define_my_highlights()
  autocmd VimEnter,BufEnter,WinEnter * nested call <SID>highlight_zenkaku_space()

  function! s:define_my_highlights() abort
    highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
    highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
    highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
    highlight DiffText   cterm=bold ctermfg=10 ctermbg=21
  endfunction

  function! s:highlight_zenkaku_space() abort
    if has('syntax')
      " エラーと同じ色
      highlight link ZenkakuSpace Error
      "highlight ZenkakuSpace cterm=underline ctermfg=red guibg=red

      "全角スペースを明示的に表示する。
      silent! match ZenkakuSpace /　/
    endif
  endfunction
augroup END

" https://thinca.hatenablog.com/entry/20090530/1243615055
augroup vimrc-auto-cursorline
  autocmd!
  autocmd CursorMoved,CursorMovedI * call s:auto_cursorline('CursorMoved')
  autocmd CursorHold,CursorHoldI * call s:auto_cursorline('CursorHold')
  autocmd WinEnter * call s:auto_cursorline('WinEnter')
  autocmd WinLeave * call s:auto_cursorline('WinLeave')

  let s:cursorline_lock = 0
  function! s:auto_cursorline(event) abort
    if get(b:, 'cursorline_disable', 0)
      return
    endif
    if a:event ==# 'WinEnter'
      setlocal cursorline
      let s:cursorline_lock = 2
    elseif a:event ==# 'WinLeave'
      setlocal nocursorline
    elseif a:event ==# 'CursorMoved'
      if s:cursorline_lock
        if 1 < s:cursorline_lock
          let s:cursorline_lock = 1
        else
          setlocal nocursorline
          let s:cursorline_lock = 0
        endif
      endif
    elseif a:event ==# 'CursorHold'
      setlocal cursorline
      let s:cursorline_lock = 1
    endif
  endfunction
augroup END

augroup vimrc-misc
  autocmd!

  " カーソル位置を記憶する
  autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal g`\"" |
     \ endif

  autocmd FileType js setlocal ft=javascript
  autocmd FileType md setlocal ft=markdown

  " autoreadに加え、外部で変更のあったファイルを自動的に読み直す
  autocmd WinEnter,FocusGained * checktime

augroup END


" }}}

" Commands {{{

command! -nargs=0 Yankfilename let @" = expand("%:t") | echo printf('yank: %s', @")
command! -nargs=0 Yankfilepath let @" = expand("%:p") | echo printf('yank: %s', @")


function! s:Copy() range " {{{
  let l:tmp = @@
  silent normal gvy
  let l:selected = @@
  let b64 = webapi#base64#b64encode(l:selected)
  if $TMUX != ""
    let cmd = printf('printf "\x1bPtmux;\x1b\x1b]52;;%s\x1b\x1b\\\\\x1b\\" > /dev/tty', b64)
  elseif $TERM == "screen"
    let cmd = printf('printf "\x1bP\x1b]52;;%s\x07\x1b\\" > /dev/tty', b64)
  else
    let cmd = printf('printf "\x1b]52;;%s\x1b\\" > /dev/tty', b64)
  endif
  call system(cmd)
  redraw!
  let @@ = l:tmp
endfunction " }}}
command! -range Copy :call s:Copy()

" アプリケーションでファイルを開く
function! s:open_file_in(app, file) " {{{
  let f = len(a:file) > 0 ? fnamemodify(a:file, ':p') : expand('%:p')
  if has("win32") || has("win64")
    silent exec "!start cmd /c call " . a:app . " " . shellescape(f)
  else
    silent exec "!" . a:app . " " . shellescape(f) " &"
  endif
endfunction "}}}
command! -nargs=? -complete=file OpenAtom call s:open_file_in('atom', <q-args>)

" }}}

" Plugin Settings {{{
function! s:is_plugged(name)
  if exists('g:plugs') && has_key(g:plugs, a:name) && isdirectory(g:plugs[a:name].dir)
    return 1
  else
    return 0
  endif
endfunction

if s:is_plugged('vim-lsp') " {{{
  let g:lsp_diagnostics_enabled = 1
  let g:lsp_diagnostics_signs_enabled = 1
  let g:lsp_diagnostics_virtual_text_enabled = 0
  let g:lsp_diagnostics_float_cursor = 1
  let g:lsp_diagnostics_echo_cursor = 1

  set omnifunc=lsp#complete
  if exists('+tagfunc') | set tagfunc=lsp#tagfunc | endif

  nmap gd <plug>(lsp-peek-definition)
  nmap gD <plug>(lsp-definition)
  nmap g<Return> <plug>(lsp-hover)
  nmap gr <plug>(lsp-references)
  nmap gt <plug>(lsp-peek-type-definition)
  nmap gT <plug>(lsp-type-definition)
  nmap gq <plug>(lsp-document-diagnostics)
endif
" }}}
if s:is_plugged('nerdcommenter') " {{{
  "未対応ファイルタイプのエラーメッセージを表示しない
  let NERDShutUp=1
  " /**/をスペース空けて/* */
  let NERDSpaceDelims = 1
endif " }}}
if s:is_plugged('nerdtree') " {{{
  " カラー表示するか
  let NERDChristmasTree = 1
  " 起動時に隠しファイルを表示するか（あとで切り替えられる）
  let NERDTreeShowHidden = 0
  " カーソル行を強調する場合1
  let NERDTreeHighlightCursorline = 1
  " NERDTreeウィンドウのサイズ
  let NERDTreeWinSize = 50
  " NERDTreeウィンドウを横に表示するか上に表示するか
  let NERDTreeWinPos = "left"

  nnoremap <silent> <Leader>e :<C-u>NERDTreeToggle<CR>
  nnoremap <silent> <Leader>f :<C-u>NERDTreeFind<CR>

  let NERDTreeHijackNetrw = 0
  let NERDTreeAutoCenter = 0
endif " }}}
if s:is_plugged('asyncomplete.vim') " {{{
  let g:asyncomplete_auto_popup = 1

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction

  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ asyncomplete#force_refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
endif " }}}
if s:is_plugged('asyncomplete-ultisnips.vim') " {{{
  call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        \ 'name': 'ultisnips',
        \ 'whitelist': ['*'],
        \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        \ }))
endif " }}}
if s:is_plugged('ultisnips') " {{{
  let g:UltiSnipsExpandTrigger="<tab>"
  " let g:UltiSnipsJumpForwardTrigger="<c-e>"
  " let g:UltiSnipsJumpBackwardTrigger="<c-y>"

  " If you want :UltiSnipsEdit to split your window.
  let g:UltiSnipsEditSplit="vertical"

endif " }}}
if s:is_plugged('fzf.vim') " {{{
  " An action can be a reference to a function that processes selected lines
  function! s:build_quickfix_list(lines)
    call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
    copen
    cc
  endfunction

  let g:fzf_action = {
        \ 'ctrl-q': function('s:build_quickfix_list'),
        \ 'ctrl-t': 'tab split',
        \ 'ctrl-x': 'split',
        \ 'ctrl-v': 'vsplit' }
endif " }}}
if s:is_plugged('unite.vim') " {{{
  " To track long mru history.
  let g:unite_source_file_mru_long_limit = 3000
  let g:unite_source_directory_mru_long_limit = 3000
  let g:unite_prompt = '» '

  let g:unite_source_history_yank_enable = 1
  let g:unite_source_tag_max_name_length  = 30
  let g:unite_source_tag_max_fname_length = 150


  function! s:unite_my_settings()
    " Overwrite settings.

    nmap <buffer> <ESC>    <Plug>(unite_exit)
    imap <buffer> jj       <Plug>(unite_insert_leave)

    imap <buffer><expr> j  unite#smart_map('j', '')
    imap <buffer> <TAB>    <Plug>(unite_select_next_line)
    imap <buffer> <C-w>    <Plug>(unite_delete_backward_path)
    imap <buffer> '        <Plug>(unite_quick_match_default_action)
    imap <buffer><expr> x  unite#smart_map('x', "\<Plug>(unite_quick_match_choose_action)")
    nmap <buffer> x        <Plug>(unite_quick_match_choose_action)
    imap <buffer> <C-z>    <Plug>(unite_toggle_transpose_window)
    imap <buffer> <C-y>    <Plug>(unite_narrowing_path)
    nmap <buffer> <C-y>    <Plug>(unite_narrowing_path)
    nmap <buffer> <C-j>    <Plug>(unite_toggle_auto_preview)
    imap <buffer> <C-r>    <Plug>(unite_narrowing_input_history)
    nnoremap <silent><buffer><expr> a unite#smart_map('a', unite#do_action('above'))
    nnoremap <silent><buffer><expr> b unite#smart_map('b', unite#do_action('below'))
    nnoremap <silent><buffer><expr> l unite#smart_map('l', unite#do_action('left'))
    nnoremap <silent><buffer><expr> r unite#smart_map('r', unite#do_action('right'))
    nnoremap <silent><buffer><expr> t unite#smart_map('t', unite#do_action('tabsplit'))
    nnoremap <silent><buffer><expr> v unite#smart_map('v', unite#do_action('vsplit'))

    " let unite = unite#get_current_unite()
    " if unite.buffer_name =~# '^search'
      " nnoremap <silent><buffer><expr> r     unite#do_action('replace')
    " else
      " nnoremap <silent><buffer><expr> r     unite#do_action('rename')
    " endif

    nnoremap <silent><buffer><expr> cd     unite#do_action('lcd')
    nnoremap <buffer><expr> S      unite#mappings#set_current_filters(
          \ empty(unite#mappings#get_current_filters()) ? ['sorter_reverse'] : [])
  endfunction

  augroup PluginUnite
    autocmd!
    autocmd FileType unite call s:unite_my_settings()
    autocmd BufEnter *
          \   if empty(&buftype)
          \|      nnoremap <buffer> <C-]> :<C-u>UniteWithCursorWord -immediately tag<CR>
          \|  endif
  augroup END


  nnoremap [unite] :<C-u>Unite<Space>
  nmap f [unite]

  nnoremap [unite]A   :<C-u>Unite output:autocmd<CR>
  nnoremap [unite]b   :<C-u>Unite bookmark<CR>
  nnoremap [unite]c   :<C-u>Unite cake_controller cake_model cake_config cake_component cake_behavior cake_helper cake_shell cake_task cake_fixture cake_core cake_lib -start-insert<CR>
  nnoremap [unite]C   :<C-u>Unite change<CR>
  nnoremap [unite]d   :<C-u>UniteWithBufferDir -buffer-name=files file -start-insert<CR>
  nnoremap [unite]e   :<C-u>Unite output:echo\ system('set')<CR>
  " nnoremap [unite]f   :<C-u>UniteWithInputDirectory file_rec/async -start-insert<CR>
  nnoremap [unite]f   :<C-u>UniteWithCurrentDir file_rec/async -start-insert<CR>

  if executable('ag')
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nocolor --nogroup'
    let g:unite_source_grep_recursive_opt = ''
    let g:unite_source_rec_async_command = ['ag', '-S', '--follow', '--nocolor', '--nogroup', '--ignore-dir', '.vagrant', '-g', '']
  " let g:unite_source_grep_max_candidates = 200
    nnoremap [unite]g   :<C-u>Unite -no-quit grep<CR>
    nnoremap [unite]G   :<C-u>Unite -no-quit grep<CR><CR><C-r><C-w><CR>
  else
    nnoremap [unite]g   :<C-u>Unite -no-quit grep<CR>
  endif

  " nnoremap [unite]h   :<C-u>Unite history/command<CR>
  nnoremap [unite]j   :<C-u>Unite buffer file_mru bookmark -start-insert<CR>
  nnoremap [unite]J   :<C-u>Unite jump<CR>
  nnoremap [unite]l   :<C-u>Unite line -start-insert -auto-preview -previewheight=50<CR>
  nnoremap [unite]L   :<C-u>UniteWithCursorWord line -start-insert -auto-preview -previewheight=50 -direction=belowright<CR>
  " nnoremap [unite]L   :<C-u>Unite launcher<CR>
  nnoremap [unite]M   :<C-u>Unite output:messages<CR>
  " nnoremap [unite]M   :<C-u>Unite mapping -start-insert<CR>
  " nnoremap [unite]o   :<C-u>Unite outline -buffer-name=outline -vertical -winwidth=45 -no-quit<CR>
  " nnoremap [unite]o   :<C-u>Unite -buffer-name=outline -auto-preview -vertical -no-quit outline<CR>
  " nnoremap [unite]p   :<C-u>Unite process -start-insert<CR>
  nnoremap [unite]p   :<C-u>Unite file_rec/async:! -start-insert<CR>
  " nnoremap [unite]q   :<C-u>Unite qfixhowm:nocache<CR>
  " nnoremap [unite]r   :<C-u>Unite ref/phpmanual -start-insert<CR>
  " nnoremap [unite]r   :<C-u>Unite ref/refe -start-insert -default-action=tabopen<CR>
  nnoremap [unite]r   :<C-u>Unite -buffer-name=register register<CR>
  nnoremap [unite]R   :<C-u>UniteWithCursorWord ref/refe -start-insert -default-action=tabopen<CR>
  nnoremap [unite].   :<C-u>UniteResume<CR>
  nnoremap [unite]/   :<C-u>Unite history/search -start-insert<CR>=
  nnoremap [unite]s   :<C-u>Unite ghq -start-insert -default-action=lcd<CR>
  nnoremap [unite]S   :<C-u>Unite ghq -start-insert -default-action=cd<CR>
  " nnoremap [unite]S   :<C-u>Unite output:scriptnames<CR>
  nnoremap [unite]t   :<C-u>Unite tag -start-insert<CR>
  " nnoremap [unite]v   :<C-u>Unite output:version -start-insert<CR>
  nnoremap [unite]v   :<C-u>Unite variable -auto-preview -start-insert<CR>

  nnoremap [unite]y   :<C-u>Unite history/yank -start-insert<CR>

endif " }}}
if s:is_plugged('scratch-utility') " {{{
  nmap <silent> <Leader>b <Plug>ShowScratchBuffer

  " スクラッチバッファを開くマッピングを定義しない
  let no_plugin_maps = 1

  " vim終了時にスクラッチの内容を保存しておく。
  let g:scratchBackupFile=$HOME . "/scratch.txt"

  let g:scratchSplitOption =
        \ {
        \   'vertical'           : 1,
        \   'take_over_filetype' : 1
        \ }
endif "}}}
if s:is_plugged('emmet.vim') " {{{
  " デフォルトは<C-Y>
  " let g:user_emmet_leader_key = '<C-Space>'

  " タグやスニペットの入力補完を使う
  let g:user_emmet_complete_tag = 1

  " filterについて -> http://code.google.com/p/zen-coding/wiki/Filters
  let g:user_emmet_settings = {
        \  'lang' : 'ja',
        \  'html' : {
        \    'filters' : 'html',
        \    'indentation' : ' '
        \  },
        \  'php' : {
        \    'extends' : 'html',
        \    'filters' : 'html,c',
        \  },
        \  'css' : {
        \    'filters' : 'fc',
        \  },
        \  'javascript' : {
        \    'snippets' : {
        \      'jq' : "$(function() {\n\t${cursor}${child}\n});",
        \      'jq:each' : "$.each(arr, function(index, item)\n\t${child}\n});",
        \      'fn' : "(function() {\n\t${cursor}\n})();",
        \      'tm' : "setTimeout(function() {\n\t${cursor}\n}, 100);",
        \    },
        \  },
        \}
endif "}}}
if s:is_plugged('cake.vim') " {{{
  let g:cakephp_gf_fallback_n = "normal \<Plug>(gf-user-gf)"
  let g:cakephp_gf_fallback_s = "normal \<Plug>(gf-user-\<C-w>f)"
  let g:cakephp_gf_fallback_t = "normal \<Plug>(gf-user-\<C-w>gf)"
  let g:cakephp_test_window_vertical = 1
  let g:cakephp_test_window_width = 70

  nnoremap <Space>cc :<C-u>Ccontroller
  nnoremap <Space>cm :<C-u>Cmodel
  nnoremap <Space>cv :<C-u>Cview
  nnoremap <Space>cl :<C-u>Clog
  nnoremap <Space>ccm :<C-u>Ccomponent
  nnoremap <Space>ccf :<C-u>Cconfig
  nnoremap <Space>cb :<C-u>Cbehavior
  nnoremap <Space>ch :<C-u>Chelper
  nnoremap <Space>ct :<C-u>Ctest
  nnoremap <Space>cf :<C-u>Cfixture
  nnoremap <Space>cs :<C-u>Cshell
  nnoremap <Space>cd :<C-u>Cdesc
  " nnoremap <Leader>t :<C-u>Ctestrunmethod<CR>

  " プロジェクト切り替えコマンド
  " let g:my_cakephp_projects = {
    " \ 'project' : '/path/to/app',
    " \ }
  let g:my_cakephp_projects = get(g:, 'my_cakephp_projects', {})
  command! -n=1  -complete=customlist,s:GetCakePHPProjectList C :call s:SetCakePHPProject(<f-args>)
  function! s:GetCakePHPProjectList(ArgLead, CmdLine, CursorPos) "{{{
    if exists("g:my_cakephp_projects") && len(g:my_cakephp_projects)
      return filter(sort(keys(g:my_cakephp_projects)), 'v:val =~ "^'. fnameescape(a:ArgLead) . '"')
    else
      return []
    endif
  endfunction "}}}

  " プロジェクト切り替え
  function! s:SetCakePHPProject(app) " {{{
    if isdirectory(g:my_cakephp_projects[a:app])
      silent exec ":Cakephp " . g:my_cakephp_projects[a:app]
      echo "CakePHP project changed: ". a:app
    endif
  endfunction " }}}

endif "}}}
if s:is_plugged('vim-surround') " {{{
  let g:surround_{char2nr("p")} = "<?php \r ?>"
endif " }}}
if s:is_plugged('Modeliner') " {{{
  let g:Modeliner_format='ft= et ff= fenc= sts= sw= ts='
endif " }}}
if s:is_plugged('vim-fugitive') " {{{
  " nnoremap <Space>gd :<C-u>Gdiff<Enter>
  " nnoremap <Space>gs :<C-u>Gstatus<Enter>
  " nnoremap <Space>gl :<C-u>Glog<Enter>
  " nnoremap <Space>ga :<C-u>Gwrite<Enter>
  " nnoremap <Space>gc :<C-u>Gcommit<Enter>
  " nnoremap <Space>gC :<C-u>Git commit --amend<Enter>
  " nnoremap <Space>gb :<C-u>Gblame<Enter>
endif " }}}
if s:is_plugged('dbext.vim') " {{{
  " let g:dbext_default_profile_xxxx      = 'type=MYSQL:user=mysql:passwd=mysql:dbname=hoge:host=localhost:port=3306:buffer_lines=50'
  " let g:dbext_default_window_use_horiz = 0  " Use vertical split
  let g:dbext_default_window_use_horiz = 1  " Use horizontal split
  let g:dbext_default_window_use_bottom = 1  " Bottom
  " let g:dbext_default_window_use_bottom = 0  " Top
  " let g:dbext_default_window_use_right = 1   " Right
  " let g:dbext_default_window_use_right = 1   " Left
  let g:dbext_default_window_width = 100

  " 接続切り替えコマンド
  " let g:my_db_profiles = {
  "   \ 'table': 'type=MYSQL:user=mysqluser:passwd=mysqlpasswd:dbname=dbname:host=localhost:port=3306',
  "   \ }
  command! -n=1  -complete=customlist,s:GetDBProfileList DB :call s:ConnectDB(<f-args>)
  function! s:GetDBProfileList(ArgLead, CmdLine, CursorPos) "{{{
    return filter(sort(keys(g:my_db_profiles)), 'v:val =~ "^'. fnameescape(a:ArgLead) . '"')
  endfunction "}}}
  function! s:ConnectDB(profile)
    call dbext#DB_setMultipleOptions(g:my_db_profiles[a:profile])
    silent exec ":DBCompleteTables"
    silent exec ":DBCompleteProcedures"
    silent exec ":DBCompleteViews"
    echo "Connect Database : " . a:profile
  endfunction
endif " }}}
if s:is_plugged('vim-localrc') " {{{
  " ディレクトリごとにvimの設定を用意するファイル名
  let g:localrc_filename = '.local.vimrc'
  silent! call localrc#load('.init.vimrc', $HOME)
endif " }}}
if s:is_plugged('vim-anzu') " {{{
  nmap n <Plug>(anzu-n)zv
  nmap N <Plug>(anzu-N)zv
  nmap * <Plug>(anzu-star)zv
  nmap # <Plug>(anzu-sharp)zv
  augroup PluginAuzu
    autocmd!
    autocmd CursorHold,CursorHoldI,WinLeave,TabLeave * call anzu#clear_search_status()
  augroup END
endif " }}}
if s:is_plugged('vim-precious') " {{{
  let g:precious_enable_switchers = {
        \ "*" : {
        \   "setfiletype" : 0
        \ },
        \ "markdown" : {
        \   "setfiletype" : 1
        \ },
        \}
endif " }}}
if s:is_plugged('lightline.vim') " {{{
  " let g:lightline = {
        " \ 'colorscheme': 'jellybeans',
        " \ 'mode_map': {'c': 'NORMAL'},
        " \ 'active': {
        " \   'left': [ ['mode', 'paste'], ['fugitive', 'filename', 'cakephp', 'currenttag', 'anzu'] ]
        " \ },
        " \ 'component': {
        " \   'lineinfo': '⭡ %3l:%-2v',
        " \ },
        " \ 'component_function': {
        " \   'modified': 'MyModified',
        " \   'readonly': 'MyReadonly',
        " \   'fugitive': 'MyFugitive',
        " \   'filename': 'MyFilename',
        " \   'fileformat': 'MyFileformat',
        " \   'filetype': 'MyFiletype',
        " \   'fileencoding': 'MyFileencoding',
        " \   'mode': 'MyMode',
        " \   'anzu': 'anzu#search_status',
        " \   'currenttag': 'MyCurrentTag',
        " \   'cakephp': 'MyCakephp',
        " \ }
        " \ }

  function! MyModified()
    return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
  endfunction

  function! MyReadonly()
    return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '⭤' : ''
  endfunction

  function! MyFilename()
    return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
          \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
          \  &ft == 'unite' ? unite#get_status_string() :
          \  &ft == 'vimshell' ? vimshell#get_status_string() :
          \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
          \ ('' != MyModified() ? ' ' . MyModified() : '')
  endfunction

  function! MyFugitive()
    try
      if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head') && strlen(fugitive#head())
        return '⭠ ' . fugitive#head()
      endif
    catch
    endtry
    return ''
  endfunction

  function! MyFileformat()
    return winwidth(0) > 70 ? &fileformat : ''
  endfunction

  function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
  endfunction

  function! MyFileencoding()
    return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
  endfunction

  function! MyMode()
    return winwidth(0) > 60 ? lightline#mode() : ''
  endfunction

  function! MyCurrentTag()
    " return tagbar#currenttag('%s', '')
  endfunction

  function! MyCakephp()
    return exists('*cake#buffer') ? cake#buffer('type') : ''
  endfunction

endif " }}}
if s:is_plugged('tern_for_vim') " {{{
  " let g:tern_show_argument_hints = 'on_hold'
endif " }}}
if s:is_plugged('vim-gitgutter') " {{{
  let g:gitgutter_enabled = 1
  let g:gitgutter_realtime = 0
  nmap gj <Plug>(GitGutterNextHunk)
  nmap gk <Plug>(GitGutterPrevHunk)
  nnoremap <Leader>gg :<C-u>GitGutterToggle<CR>
  nnoremap <Leader>gh :<C-u>GitGutterLineHighlightsToggle<CR>
endif " }}}
if s:is_plugged('tagbar') " {{{
  let g:tagbar_type_markdown = {
      \ 'ctagstype': 'markdown',
      \ 'ctagsbin' : $HOME . '/.vim/plugged/markdown2ctags/markdown2ctags.py',
      \ 'ctagsargs' : '-f - --sort=yes',
      \ 'kinds' : [
          \ 's:sections',
          \ 'i:images'
      \ ],
      \ 'sro' : '|',
      \ 'kind2scope' : {
          \ 's' : 'section',
      \ },
      \ 'sort': 0,
  \ }
endif " }}}
if s:is_plugged('tagbar-phpctags.vim') " {{{
  let g:tagbar_phpctags_bin = $HOME . '/src/github.com/techlivezheng/phpctags/build/phpctags.phar'
  let g:tagbar_phpctags_memory_limit = '512M'
endif " }}}
if s:is_plugged('vim-json') " {{{
  let g:vim_json_syntax_conceal = 0
endif " }}}
if s:is_plugged('syntastic') " {{{
  let g:syntastic_mode_map = {
        \ 'map' : 'active',
        \ 'active_filetypes' : ['javascript', 'php'],
        \ }
  let g:syntastic_html_tidy_ignore_errors=[ 
        \ 'proprietary attribute "v-',
        \ 'is not recognized',
        \ 'discarding unexpected',
        \ 'missing <li>',
        \ 'trimming empty <ol>'
        \] 

  nnoremap <silent> <C-d> :lclose<CR>:bdelete<CR>
  cabbrev <silent> bd lclose\|bdelete
endif " }}}
if s:is_plugged('vim-quickrun') " {{{

  let g:quickrun_config = {}
  let g:quickrun_config._ = {
        \ 'outputter/error/success': 'buffer',
        \ 'outputter/error/error': 'quickfix',
        \ 'outputter/quickfix/open_cmd': 'copen',
        \ 'runner': 'vimproc',
        \ 'runner/vimproc/updatetime': 60,
        \ 'hook/time/enable': 1
        \ }

  let g:quickrun_config.python = {
        \ 'command': '~/.pyenv/shims/python',
        \ 'cmdopt': '-u'
        \ }

  let g:quickrun_config.cpp = {
        \ 'command': 'g++',
        \ 'cmdopt': '-std=c++20',
        \ 'input': 'input',
        \ 'runner': 'system'
        \ }

  nnoremap <silent><leader>r :QuickRun<CR>
  nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"
endif " }}}
if s:is_plugged('vim-choosewin') " {{{
  nmap  <C-w><CR>  <Plug>(choosewin)

  " オーバーレイを使う
  let g:choosewin_overlay_enable = 1

  " マルチバイトバッファでオーバーレイフォントを崩さないように
  let g:choosewin_overlay_clear_multibyte = 1

  let g:choosewin_blink_on_land      = 0 " 頼むから着地時にカーソル点滅をさせないでくれ！
  let g:choosewin_statusline_replace = 0 " どうかステータスラインリプレイスしないで下さい!
  let g:choosewin_tabline_replace    = 0 " どうかタブラインもリプレイスしないでいただきたい！
endif " }}}
if s:is_plugged('jedi.vim') " {{{
  let g:jedi#completions_enabled = 0
  let g:jedi#auto_vim_configuration = 0
endif " }}}
if s:is_plugged('previm') " {{{
  let g:previm_show_header = 0
endif " }}}
if s:is_plugged('vdebug') " {{{
  let g:vdebug_keymap = {
  \    "run" : "<F5>",
  \    "run_to_cursor" : "<F9>",
  \    "step_over" : "<F2>",
  \    "step_into" : "<F3>",
  \    "step_out" : "<F4>",
  \    "close" : "<F6>",
  \    "detach" : "<F7>",
  \    "set_breakpoint" : "<F10>",
  \    "get_context" : "<F11>",
  \    "eval_under_cursor" : "<F12>",
  \    "eval_visual" : "<Leader>e",
  \}

  " let g:vdebug_options = {
        " \   'path_maps': {
        " \       "/path/to/vagrant": "/path/to/local",
        " \   },
        " \}
endif



let g:rspec_command = "Dispatch spring rspec {spec}"
let g:rspec_runner = "os_x_iterm"
nnoremap <silent><leader>s :<C-u>call Run
nnoremap <silent><leader>t :<C-u>call RunNearestSpec()<CR>
" }}}
if s:is_plugged('vim-over') "{{{
  nnoremap <expr> s* ':<C-u>OverCommandLine %s/\<' . expand('<cword>') . '\>/<CR>'
  vnoremap <expr> s ":<C-u>OverCommandLine '<,'>s/<CR>"
endif
" }}}
if s:is_plugged('switch.vim') "{{{
  let g:switch_mapping = "-"
endif
" }}}
if s:is_plugged('php-doc-modded') "{{{
  nnoremap <Leader>d :<C-u>call PhpDocSingle()<CR>a 
  let g:pdv_cfg_autoEndClass = 0
  let g:pdv_cfg_autoEndFunction = 0
  let g:pdv_cfg_annotation_Package = 0
  let g:pdv_cfg_annotation_Version = 0
  let g:pdv_cfg_annotation_Author = 0
  let g:pdv_cfg_annotation_Copyright = 0
  let g:pdv_cfg_annotation_License = 0
endif
" }}}
if s:is_plugged('vim-pydocstring') "{{{
  let g:pydocstring_formatter = 'google'
endif
" }}}

" }}}

filetype plugin indent on
" }}}
