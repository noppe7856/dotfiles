syntax on
filetype plugin on
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	set 
""
set	cin							" C�\����F������C���f���g 		
set ai
set backspace=indent,eol,start	" allow backspacing over everything in insert mode
set cinkeys="0{,0},0),:,0#,!^F,o,O,e"
set history=50					" �����ɉ��̍��ڂ��ۑ�����邩���w��
set hlsearch
set incsearch					" do incremental searching
set nocompatible
set nowrap						" �s�̐܂�Ԃ����s��Ȃ�
set number						" �s�ԍ���ݒ�
set ruler						" �J�[�\�������s�ڂ̉���ڂɒu����Ă��邩��\��
set shiftwidth=4				" �C���f���g�̊e�i�K�Ɏg����󔒂̐�
set showcmd						" �R�}���h (�̈ꕔ) ����ʂ̍ŉ��s�ɕ\������
set tabstop=4					" �t�@�C������ <Tab> ���Ή�����󔒂̐�
set nocp						" vi�Ɣ�݊��ɂ���B
set visualbell
set nf=""						" �C���N�������g�ƃf�N�������g�ŏ��10�i���Ƃ��Ĉ���
"set autochdir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	�X�N���v�g
""
:runtime ftplugin/man.vim		" :Man��man
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	�X�e�[�^�X�s�̐ݒ�
""
set laststatus=2				" �X�e�[�^�X�s���펞�\�� 
set statusline=%F%m%r%h%w\%=[FORMAT=%{&ff}]\[TYPE=%Y]\%{'[ENC='.(&fenc!=''?&fenc:&enc).']'}\[POS=%05l/%05L,%05v][%p%%]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	Align�̕��L�Ή�
""
let g:Align_xstrlen=3


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""  �J���[�\���p�̐ݒ�
""
colorscheme desert

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
""	�n�C���C�g�w��
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

" 2013/01/19 19:20�ŐV��README�̂��̂𔽉f
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

" QuickFix��ύX�\�ɂ���B
autocmd BufWinEnter quickfix setlocal modifiable


" �t�@�C���`���̌��o�𖳌��ɂ���
filetype off

" Vundle ������������
" Vundle ���g�� Vundle �ŊǗ�
if executable('git') 
	if exists("*rc")
		set rtp+=~/vimfiles/vundle.git/
		"set rtp+=C:\vim\vimfiles\bundle\vundle
		call vundle#rc()
		Bundle 'gmarik/vundle'

		"" github �ɂ���v���O�C��
		"Bundle 'Shougo/neocomplcache'
		"Bundle 'Shougo/neosnippet'
		"Bundle 'Shougo/vimshell'
		"Bundle 'Shougo/vimproc'
		"Bundle 'Shougo/unite.vim'
		Bundle 'banyan/recognize_charcode.vim'
		"Bundle 'honza/snipmate-snippets'
		"
		"" vim-scripts �v���O�C��
		Bundle 'gtags.vim'
		Bundle 'Align.vim'
		Bundle 'a.vim'
		Bundle 'taglist.vim'
		""Bundle 'templatefile.vim'
		Bundle 'CmdlineCompl.vim'


		" github �ɂȂ��v���O�C��

	endif
endif
" �t�@�C���`�����o�A�v���O�C���A�C���f���g�� ON
filetype plugin indent on 

"//________________________________EOF________________________________
3