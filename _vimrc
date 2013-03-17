syntax on
filetype plugin on
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	set 
""
set	cin							" C��ʸ��ǧ�����륤��ǥ�� 		
set ai
set backspace=indent,eol,start	" allow backspacing over everything in insert mode
set cinkeys="0{,0},0),:,0#,!^F,o,O,e"
set history=50					" ����˲��Ĥι��ܤ���¸����뤫�����
set hlsearch
set incsearch					" do incremental searching
set nocompatible
set nowrap						" �Ԥ��ޤ��֤���Ԥ�ʤ�
set number						" ���ֹ������
set ruler						" �������뤬�����ܤβ����ܤ��֤���Ƥ��뤫��ɽ��
set shiftwidth=4				" ����ǥ�Ȥγ��ʳ��˻Ȥ������ο�
set showcmd						" ���ޥ�� (�ΰ���) ����̤κǲ��Ԥ�ɽ������
set tabstop=4					" �ե�������� <Tab> ���б��������ο�
set nocp						" vi����ߴ��ˤ��롣
set visualbell
set nf=""						" ���󥯥���Ȥȥǥ�����ȤǾ��10�ʿ��Ȥ��ư���
set autochdir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	������ץ�
""
:runtime ftplugin/man.vim		" :Man��man
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	���ơ������Ԥ�����
""
set laststatus=2				" ���ơ������Ԥ���ɽ�� 
set statusline=%F%m%r%h%w\%=[FORMAT=%{&ff}]\[TYPE=%Y]\%{'[ENC='.(&fenc!=''?&fenc:&enc).']'}\[POS=%05l/%05L,%05v][%p%%]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	Align�������б�
""
let g:Align_xstrlen=3


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""  ���顼ɽ���Ѥ�����
""
colorscheme desert

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	�ϥ��饤�Ȼ���
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

" 2013/01/19 19:20�ǿ���README�Τ�Τ�ȿ��
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


" QuickFix���ѹ���ǽ�ˤ��롣
autocmd BufWinEnter quickfix setlocal modifiable


" �ե���������θ��Ф�̵���ˤ���
filetype off

" Vundle ����������
" Vundle ���Ȥ� Vundle �Ǵ���
set rtp+=~/vimfiles/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"" github �ˤ���ץ饰����
"Bundle 'Shougo/neocomplcache'
"Bundle 'Shougo/neosnippet'
"Bundle 'Shougo/vimshell'
"Bundle 'Shougo/vimproc'
"Bundle 'Shougo/unite.vim'
"Bundle 'banyan/recognize_charcode.vim'
"Bundle 'honza/snipmate-snippets'
"
"" vim-scripts �ץ饰����
"Bundle 'gtags.vim'
"Bundle 'Align.vim'
"Bundle 'a.vim'
"Bundle 'taglist.vim'
""Bundle 'templatefile.vim'
"Bundle 'CmdlineCompl.vim'


" github �ˤʤ��ץ饰����

" �ե�����������С��ץ饰���󡢥���ǥ�Ȥ� ON
filetype plugin indent on 

"//________________________________EOF________________________________
