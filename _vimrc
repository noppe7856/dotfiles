syntax on
filetype plugin on
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	set 
""
set	cin							" C構文を認識するインデント 		
set ai
set backspace=indent,eol,start	" allow backspacing over everything in insert mode
set cinkeys="0{,0},0),:,0#,!^F,o,O,e"
set history=50					" 履歴に何個の項目が保存されるかを指定
set hlsearch
set incsearch					" do incremental searching
set nocompatible
set nowrap						" 行の折り返しを行わない
set number						" 行番号を設定
set ruler						" カーソルが何行目の何列目に置かれているかを表示
set shiftwidth=4				" インデントの各段階に使われる空白の数
set showcmd						" コマンド (の一部) を画面の最下行に表示する
set tabstop=4					" ファイル内の <Tab> が対応する空白の数
set nocp						" viと非互換にする。
set visualbell
set nf=""						" インクリメントとデクリメントで常に10進数として扱う
"set autochdir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	スクリプト
""
:runtime ftplugin/man.vim		" :Manでman
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	ステータス行の設定
""
set laststatus=2				" ステータス行を常時表示 
set statusline=%F%m%r%h%w\%=[FORMAT=%{&ff}]\[TYPE=%Y]\%{'[ENC='.(&fenc!=''?&fenc:&enc).']'}\[POS=%05l/%05L,%05v][%p%%]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	Alignの幅広対応
""
let g:Align_xstrlen=3


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""  カラー表示用の設定
""
colorscheme desert

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	ハイライト指定
""
hi	Comment ctermfg=LightCyan cterm=NONE
hi	Search NONE
hi	NonText NONE


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	map
""
nmap bb :ls<CR>:buf
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

command! Big wincmd _ | wincmd |

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	template
""
:let g:load_templates="yes"
" for snippets
":let g:neosnippet#snippets_directory='$VIM/vimfiles/bundle/snipmate-snippets/snippets'

" 2013/01/19 19:20最新のREADMEのものを反映
" Plugin key-mappings.
:let g:neocomplcache_enable_at_startup = 1
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
"imap <expr><TAB> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" nkn_setting
map <C-n> :cn<CR>
map <C-p> :cp<CR>
map <F8> :GtagsCursor<CR>
map <F7> :Gtags -r <CR>
map <F6> :Gtags -f %<CR>
map <F5> :Gtags

" windows
map <F2> :r !date /t<CR>
map <F3> :r !time /t<CR>
"

" QuickFixを変更可能にする。
autocmd BufWinEnter quickfix setlocal modifiable


" ファイル形式の検出を無効にする
filetype off

" Vundle を初期化して
" Vundle 自身も Vundle で管理
if executable('git') 
	if exists("*rc")
		set rtp+=~/vimfiles/vundle.git/
		"set rtp+=C:\vim\vimfiles\bundle\vundle
		call vundle#rc()
		Bundle 'gmarik/vundle'

		"" github にあるプラグイン
		"Bundle 'Shougo/neocomplcache'
		"Bundle 'Shougo/neosnippet'
		"Bundle 'Shougo/vimshell'
		"Bundle 'Shougo/vimproc'
		"Bundle 'Shougo/unite.vim'
		Bundle 'banyan/recognize_charcode.vim'
		"Bundle 'honza/snipmate-snippets'
		"
		"" vim-scripts プラグイン
		Bundle 'gtags.vim'
		Bundle 'Align.vim'
		Bundle 'a.vim'
		Bundle 'taglist.vim'
		""Bundle 'templatefile.vim'
		Bundle 'CmdlineCompl.vim'


		" github にないプラグイン

	endif
endif
" ファイル形式検出、プラグイン、インデントを ON
filetype plugin indent on 

"//________________________________EOF________________________________
3