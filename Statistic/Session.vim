let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <C-R>	 <Plug>snipMateShow
imap <S-Tab> <Plug>snipMateBack
inoremap <C-C> 
inoremap <silent> <Plug>snipMateShow =snipMate#ShowAvailableSnips()
inoremap <silent> <Plug>snipMateBack =snipMate#BackwardsSnippet()
inoremap <silent> <Plug>snipMateTrigger =snipMate#TriggerSnippet(1)
inoremap <silent> <Plug>snipMateNextOrTrigger =snipMate#TriggerSnippet()
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
inoremap <C-Space> 
imap <C-;> 
nmap v <Plug>SlimeConfig
nmap  <Plug>SlimeParagraphSend
xmap  <Plug>SlimeRegionSend
xmap 	 <Plug>snipMateVisual
smap 	 <Plug>snipMateNextOrTrigger
nmap 	 "wy
xnoremap <silent>  :call multiple_cursors#new("v", 0)
nnoremap <silent>  :call multiple_cursors#new("n", 1)
map  :bd 	   " CTRL+Q - закрыть текущий буффер
map Ъ }
map я z
map ч x
map ц w
map м v
map е t
map ы s
map к r
map й q
map з p
map щ o
map т n
map д l
map л k
map о j
map ш i
map р h
map пА gF
map па gf
map пЪ g}
map пъ g]
map п g
map А F
map а f
map в d
map с c
map и b
map ъ ]
map Ц W
map Е T
map Ы S
map К R
map З P
map Д L
map Л K
map О J
map Р H
map Ю >
map Б <
nmap  :!/home/max/scrCATALOG/bash/trunkMaxSql.sh
xmap S <Plug>VSurround
nnoremap <silent> \mt :MinimapToggle
nnoremap <silent> \mc :MinimapClose
nnoremap <silent> \mu :MinimapUpdate
nnoremap <silent> \mm :Minimap
map \t <Plug>TaskList
nnoremap \Td :set ft=django
nnoremap \Tc :set ft=css
nnoremap \Tj :set ft=javascript
nnoremap \Tp :set ft=python
nnoremap \Th :set ft=htmljinja
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xnoremap <silent> g<M-n> :call multiple_cursors#select_all("v", 0)
xnoremap <silent> gî :call multiple_cursors#select_all("v", 0)
nnoremap <silent> g<M-n> :call multiple_cursors#select_all("n", 0)
nnoremap <silent> gî :call multiple_cursors#select_all("n", 0)
xnoremap <silent> g<C-N> :call multiple_cursors#new("v", 0)
xnoremap <silent> g :call multiple_cursors#new("v", 0)
nnoremap <silent> g<C-N> :call multiple_cursors#new("n", 0)
nnoremap <silent> g :call multiple_cursors#new("n", 0)
xmap gS <Plug>VgSurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <F8> :call conque_term#set_mappings("toggle")
nnoremap <silent> <F10> :call conque_term#send_file()
vnoremap <silent> <F9> :call conque_term#send_selected(visualmode())
nnoremap <SNR>124_: :=v:count ? v:count : ''
noremap <silent> <Plug>AirlineSelectNextTab :exe repeat(':tabn|', v:count1)
noremap <silent> <Plug>AirlineSelectPrevTab gT
noremap <silent> <Plug>AirlineSelectTab9 :9tabn
noremap <silent> <Plug>AirlineSelectTab8 :8tabn
noremap <silent> <Plug>AirlineSelectTab7 :7tabn
noremap <silent> <Plug>AirlineSelectTab6 :6tabn
noremap <silent> <Plug>AirlineSelectTab5 :5tabn
noremap <silent> <Plug>AirlineSelectTab4 :4tabn
noremap <silent> <Plug>AirlineSelectTab3 :3tabn
noremap <silent> <Plug>AirlineSelectTab2 :2tabn
noremap <silent> <Plug>AirlineSelectTab1 :1tabn
vnoremap <Right> <Nop>
vnoremap <Left> <Nop>
vnoremap <Down> <Nop>
vnoremap <Up> <Nop>
nnoremap <SNR>128_: :=v:count ? v:count : ''
smap <S-Tab> <Plug>snipMateBack
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nmap <C-C>v <Plug>SlimeConfig
nmap <C-C><C-C> <Plug>SlimeParagraphSend
xmap <C-C><C-C> <Plug>SlimeRegionSend
noremap <SNR>61_Operator :call slime#store_curpos():set opfunc=slime#send_opg@
nnoremap <Plug>CtrlSFQuickfixPrompt :CtrlSFQuickfix 
nnoremap <Plug>CtrlSFPrompt :CtrlSF 
xnoremap <silent> <M-n> :call multiple_cursors#select_all("v", 0)
nnoremap <silent> <M-n> :call multiple_cursors#select_all("n", 1)
xnoremap <silent> <C-N> :call multiple_cursors#new("v", 0)
nnoremap <silent> <C-N> :call multiple_cursors#new("n", 1)
snoremap <silent> <Plug>snipMateBack a=snipMate#BackwardsSnippet()
snoremap <silent> <Plug>snipMateNextOrTrigger a=snipMate#TriggerSnippet()
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <F11> :call conque_term#exec_file()
map <C-W>Ъ }
map <C-W>я z
map <C-W>ч x
map <C-W>ц w
map <C-W>м v
map <C-W>е t
map <C-W>ы s
map <C-W>к r
map <C-W>й q
map <C-W>з p
map <C-W>щ o
map <C-W>т n
map <C-W>д l
map <C-W>л k
map <C-W>о j
map <C-W>ш i
map <C-W>р h
map <C-W>пА gF
map <C-W>па gf
map <C-W>пЪ g}
map <C-W>пъ g]
map <C-W>п g
map <C-W>А F
map <C-W>а f
map <C-W>в d
map <C-W>с c
map <C-W>и b
map <C-W>ъ ]
map <C-W>Ц W
map <C-W>Е T
map <C-W>Ы S
map <C-W>К R
map <C-W>З P
map <C-W>Д L
map <C-W>Л K
map <C-W>О J
map <C-W>Р H
map <C-W>Ю >
map <C-W>Б <
nnoremap <F6> :exe "ConqueTermSplit ipython " . expand("%")
nnoremap <F5> :ConqueTermSplit ipython
map <C-Q> :bd 	   " CTRL+Q - закрыть текущий буффер
map <F2> :TaskList 	   " отобразить список тасков на F2
map <F3> :NERDTreeToggle
map <F4> :TagbarToggle
nmap <C-Bslash> :!/home/max/scrCATALOG/bash/trunkMaxSql.sh
nmap <C-I> "wy
nmap <C-Down> :b 
nmap <C-Right> :bp
nmap <C-Left> :bn
nmap <C-Up> :set number!
nmap <Down> :tabnew 
nmap <Left> :tabp
nmap <Right> :tabn
nmap <Up> :set relativenumber! number
onoremap <Right> <Nop>
onoremap <Left> <Nop>
onoremap <Down> <Nop>
onoremap <Up> <Nop>
inoremap  
imap S <Plug>ISurround
imap s <Plug>Isurround
imap 	 <Plug>snipMateNextOrTrigger
imap 	 <Plug>snipMateShow
imap  <Plug>Isurround
xnoremap <silent> î :call multiple_cursors#select_all("v", 0)
nnoremap <silent> î :call multiple_cursors#select_all("n", 1)
map пЁ g~
map пч gx
map пц gw
map пм gv
map пг gu
map пе gt
map пы gs
map пк gr
map пй gq
map пз gp
map пщ go
map пь gm
map пт gn
map пл gk
map по gj
map пш gi
map пр gh
map пп gg
map пА gF
map па gf
map пу ge
map пв gd
map пф ga
map пъ g]
map пМ gV
map пГ gU
map пЕ gT
map пК gR
map пЙ gQ
map пЗ gP
map пТ gN
map пО gJ
map пШ gI
map пР gH
map пУ gE
map пВ gD
map пБ g<
map Эя "z
map Эн "y
map Эч "x
map Эц "w
map Эм "v
map Эг "u
map Эе "t
map Эы "s
map Эк "r
map Эй "q
map Эз "p
map Эщ "o
map Эт "n
map Эь "m
map Эд "l
map Эл "k
map Эо "j
map Эш "i
map Эр "h
map Эп "g
map Эа "f
map Эу "e
map Эв "d
map Эс "c
map Эи "b
map Эф "a
map ЭЯ "Z
map ЭН "Y
map ЭЧ "X
map ЭЦ "W
map ЭМ "V
map ЭГ "U
map ЭЕ "T
map ЭЫ "S
map ЭК "R
map ЭЙ "Q
map ЭЗ "P
map ЭЩ "O
map ЭТ "N
map ЭЬ "M
map ЭД "L
map ЭЛ "K
map ЭО "J
map ЭШ "I
map ЭР "H
map ЭП "G
map ЭА "F
map ЭУ "E
map ЭВ "D
map ЭС "C
map ЭИ "B
map ЭФ "A
map Эю ".
map ЭЖ ":
map ЭЭ ""
map пэя g'z
map пёя g`z
map пэн g'y
map пён g`y
map пэч g'x
map пёч g`x
map пэц g'w
map пёц g`w
map пэм g'v
map пём g`v
map пэг g'u
map пёг g`u
map пэе g't
map пёе g`t
map пэы g's
map пёы g`s
map пэк g'r
map пёк g`r
map пэй g'q
map пёй g`q
map пэз g'p
map пёз g`p
map пэщ g'o
map пёщ g`o
map пэт g'n
map пёт g`n
map пэь g'm
map пёь g`m
map пэд g'l
map пёд g`l
map пэл g'k
map пёл g`k
map пэо g'j
map пёо g`j
map пэш g'i
map пёш g`i
map пэр g'h
map пёр g`h
map пэп g'g
map пёп g`g
map пэа g'f
map пёа g`f
map пэу g'e
map пёу g`e
map пэв g'd
map пёв g`d
map пэс g'c
map пёс g`c
map пэи g'b
map пёи g`b
map пэф g'a
map пёф g`a
map пэЯ g'Z
map пёЯ g`Z
map пэН g'Y
map пёН g`Y
map пэЧ g'X
map пёЧ g`X
map пэЦ g'W
map пёЦ g`W
map пэМ g'V
map пёМ g`V
map пэГ g'U
map пёГ g`U
map пэЕ g'T
map пёЕ g`T
map пэЫ g'S
map пёЫ g`S
map пэК g'R
map пёК g`R
map пэЙ g'Q
map пёЙ g`Q
map пэЗ g'P
map пёЗ g`P
map пэЩ g'O
map пёЩ g`O
map пэТ g'N
map пёТ g`N
map пэЬ g'M
map пёЬ g`M
map пэД g'L
map пёД g`L
map пэЛ g'K
map пёЛ g`K
map пэО g'J
map пёО g`J
map пэШ g'I
map пёШ g`I
map пэР g'H
map пёР g`H
map пэП g'G
map пёП g`G
map пэА g'F
map пёА g`F
map пэУ g'E
map пёУ g`E
map пэВ g'D
map пёВ g`D
map пэС g'C
map пёС g`C
map пэИ g'B
map пёИ g`B
map пэФ g'A
map пёФ g`A
map й, q?
map й. q/
map йЖ q:
map ЯЙ ZQ
map ЯЯ ZZ
map Ю >
map Б <
map Ь M
map Т N
map И B
map М V
map С C
map Ч X
map Я Z
map Є "
map Э "
map Ж :
map Д L
map Л K
map О J
map Р H
map П G
map А F
map В D
map І S
map Ы S
map Ф A
map Ї }
map Ъ }
map Х {
map З P
map Щ O
map Ш I
map Г U
map Н Y
map Е T
map К R
map У E
map Ц W
map Й Q
map Ё ~
map б ,
map и b
map м v
map ж ;
map д l
map л k
map о j
map п g
map а f
map в d
map з p
map г u
map н y
map е t
map к r
map й q
map шЪ i}
map фЪ a}
map шХ i{
map фХ a{
map шц iw
map фц aw
map ше it
map фе at
map шы is
map фы as
map шз ip
map фз ap
map ши ib
map фи ab
map шё i`
map фё a`
map шъ i]
map фъ a]
map шх i[
map фх a[
map шЦ iW
map фЦ aW
map шИ iB
map фИ aB
map шЮ i>
map фЮ a>
map шБ i<
map фБ a<
map шэ i'
map фэ a'
map шЭ i"
map фЭ a"
map яя zz
map яч zx
map яц zw
map ям zv
map яе zt
map яы zs
map як zr
map ящ zo
map ят zn
map яь zm
map яд zl
map ял zk
map яо zj
map яш zi
map яр zh
map яп zg
map яа zf
map яу ze
map яв zd
map яс zc
map яи zb
map яф za
map яЧ zX
map яЦ zW
map яК zR
map яЩ zO
map яТ zN
map яЬ zM
map яД zL
map яР zH
map яП zG
map яА zF
map яУ zE
map яВ zD
map яС zC
map яФ zA
map яю z.
map эя 'z
map ёя `z
map ья mz
map эн 'y
map ён `y
map ьн my
map эч 'x
map ёч `x
map ьч mx
map эц 'w
map ёц `w
map ьц mw
map эм 'v
map ём `v
map ьм mv
map эг 'u
map ёг `u
map ьг mu
map эе 't
map ёе `t
map ье mt
map эы 's
map ёы `s
map ьы ms
map эк 'r
map ёк `r
map ьк mr
map эй 'q
map ёй `q
map ьй mq
map эз 'p
map ёз `p
map ьз mp
map эщ 'o
map ёщ `o
map ьщ mo
map эт 'n
map ёт `n
map ьт mn
map эь 'm
map ёь `m
map ьь mm
map эд 'l
map ёд `l
map ьд ml
map эл 'k
map ёл `k
map ьл mk
map эо 'j
map ёо `j
map ьо mj
map эш 'i
map ёш `i
map ьш mi
map эр 'h
map ёр `h
map ьр mh
map эп 'g
map ёп `g
map ьп mg
map эа 'f
map ёа `f
map ьа mf
map эу 'e
map ёу `e
map ьу me
map эв 'd
map ёв `d
map ьв md
map эс 'c
map ёс `c
map ьс mc
map эи 'b
map ёи `b
map ьи mb
map эф 'a
map ёф `a
map ьф ma
map эЯ 'Z
map ёЯ `Z
map ьЯ mZ
map эН 'Y
map ёН `Y
map ьН mY
map эЧ 'X
map ёЧ `X
map ьЧ mX
map эЦ 'W
map ёЦ `W
map ьЦ mW
map эМ 'V
map ёМ `V
map ьМ mV
map эГ 'U
map ёГ `U
map ьГ mU
map эЕ 'T
map ёЕ `T
map ьЕ mT
map эЫ 'S
map ёЫ `S
map ьЫ mS
map эК 'R
map ёК `R
map ьК mR
map эЙ 'Q
map ёЙ `Q
map ьЙ mQ
map эЗ 'P
map ёЗ `P
map ьЗ mP
map эЩ 'O
map ёЩ `O
map ьЩ mO
map эТ 'N
map ёТ `N
map ьТ mN
map эЬ 'M
map ёЬ `M
map ьЬ mM
map эД 'L
map ёД `L
map ьД mL
map эЛ 'K
map ёЛ `K
map ьЛ mK
map эО 'J
map ёО `J
map ьО mJ
map эШ 'I
map ёШ `I
map ьШ mI
map эР 'H
map ёР `H
map ьР mH
map эП 'G
map ёП `G
map ьП mG
map эА 'F
map ёА `F
map ьА mF
map эУ 'E
map ёУ `E
map ьУ mE
map эВ 'D
map ёВ `D
map ьВ mD
map эС 'C
map ёС `C
map ьС mC
map эИ 'B
map ёИ `B
map ьИ mB
map эФ 'A
map ёФ `A
map ьФ mA
map ъХ ]{
map ъя ]z
map ъы ]s
map ъз ]p
map ъь ]m
map ъш ]i
map ъа ]f
map ъв ]d
map ъс ]c
map ъъ ]]
map ъх ][
map ъЗ ]P
map ъШ ]I
map ъВ ]D
map ъё ]`
map ъэ ]'
map хХ [{
map хя [z
map хы [s
map хз [p
map хь [m
map хш [i
map ха [f
map хв [d
map хс [c
map хъ []
map хх [[
map хЗ [P
map хШ [I
map хВ [D
map хё [`
map хэ ['
map эЪ '}
map эХ '{
map эъ ']
map эх '[
map эЮ '>
map эБ '<
map ээ ''
map ёЪ `}
map ёХ `{
map ёъ `]
map ёх `[
map ёЮ `>
map ёБ `<
map ёё ``
map ю .
map ь m
map т n
map с c
map ч x
map я z
map є '
map э '
map р h
map і s
map ы s
map ф a
map ї ]
map ъ ]
map х [
map щ o
map ш i
map у e
map ц w
map ё `
map ’ `
cabbr <expr> цй getcmdtype()==':' && getcmdline()=="цй"	? "wq"	: "цй"
cabbr <expr> ц getcmdtype()==':' && getcmdline()=="ц"	? "w"	: "ц"
cabbr <expr> йф getcmdtype()==':' && getcmdline()=="йф"	? "qa"	: "йф"
cabbr <expr> й getcmdtype()==':' && getcmdline()=="й"	? "q"	: "й"
cabbr <expr> ит getcmdtype()==':' && getcmdline()=="ит"	? "bn"	: "ит"
cabbr <expr> ив getcmdtype()==':' && getcmdline()=="ив"	? "bd"	: "ив"
let &cpo=s:cpo_save
unlet s:cpo_save
set autoread
set background=dark
set backspace=indent,eol,start
set completeopt=menu
set fileencodings=ucs-bom,utf-8,default,latin1
set guicursor=a:blinkon0
set guioptions=aegiLt
set helplang=ru
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nomodeline
set mousemodel=popup
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/plugged/vim-log-highlighting,~/.vim/plugged/anderson.vim,~/.vim/plugged/vim-plugin-ruscmd,~/.vim/plugged/nerdtree,~/.vim/plugged/tagbar,~/.vim/plugged/FixedTaskList.vim,~/.vim/plugged/conque-term,~/.vim/plugged/vim-surround,~/.vim/plugged/vim-kalisi,~/.vim/plugged/gruvbox,~/.vim/plugged/vim-snipmate,~/.vim/plugged/vim-addon-mw-utils,~/.vim/plugged/tlib_vim,~/.vim/plugged/vim-snippets,~/.vim/plugged/python-mode,~/.vim/plugged/jedi-vim,~/.vim/plugged/vim-jinja,~/.vim/plugged/vim-python-combined,~/.vim/plugged/vim-ipython,~/.vim/plugged/vim-fugitive,~/.vim/plugged/vim-repeat,~/.vim/plugged/vim-airline,~/.vim/plugged/vim-airline-themes,~/.vim/plugged/vim-minimap,~/.vim/plugged/vim-multiple-cursors,~/.vim/plugged/ag.vim,~/.vim/plugged/ctrlsf.vim,~/.vim/plugged/vim-slime,/var/lib/vim/addons,/etc/vim,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,/etc/vim/after,/var/lib/vim/addons/after,~/.vim/plugged/vim-snipmate/after,~/.vim/plugged/python-mode/after,~/.vim/plugged/jedi-vim/after,~/.vim/plugged/ctrlsf.vim/after,~/.vim/after
set scrolloff=5
set shiftround
set showmatch
set showtabline=2
set sidescroll=1
set smarttab
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set switchbuf=useopen
set tabline=%!airline#extensions#tabline#get()
set updatetime=50
set wildignore=*.pyc
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/scrCATALOG/Python/potential-enigma/Statistic
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd test.py
tabnew
tabnew
tabrewind
edit analizys/db_data/postgresqlQuery.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <C-Space> jedi#complete_string(0)
imap <buffer> <Nul> <C-Space>
onoremap <buffer> C :call pymode#motion#select('^\s*class\s', 0)
nnoremap <buffer> <silent> K :call jedi#show_documentation()
onoremap <buffer> M :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> [C :call pymode#motion#move('\v^(class|def)\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('\v^(class|def)\s', 'b')
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('\v^(class|def)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('\v^(class|def)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('\v^(class|def)\s', 'b')
map <buffer> \8 :PymodeLint
vnoremap <buffer> \r :call jedi#rename_visual()
nnoremap <buffer> \r :call jedi#rename()
nnoremap <buffer> \n :call jedi#usages()
nnoremap <buffer> \s :call jedi#goto_stubs()
nnoremap <buffer> \g :call jedi#goto_assignments()
nnoremap <buffer> \d :call jedi#goto()
nnoremap <buffer> <silent> \b :call pymode#breakpoint#operate(line('.'))
onoremap <buffer> ]C :call pymode#motion#move('\v^(class|def)\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('\v^(class|def)\s', '')
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('\v^(class|def)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
onoremap <buffer> ]] :call pymode#motion#move('\v^(class|def)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('\v^(class|def)\s', '')
vnoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
vnoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
snoremap <buffer> <expr> <C-Space> 'c'.jedi#complete_string(0)
smap <buffer> <Nul> <C-Space>
inoremap <buffer> <silent> . .=jedi#complete_string(1)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class,with
setlocal colorcolumn=+1
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=^s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=pymode#indent#get_indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=jedi#completions
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext
edit analizys/db_data/collect_data.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <C-Space> jedi#complete_string(0)
imap <buffer> <Nul> <C-Space>
onoremap <buffer> C :call pymode#motion#select('^\s*class\s', 0)
nnoremap <buffer> <silent> K :call jedi#show_documentation()
onoremap <buffer> M :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> [C :call pymode#motion#move('\v^(class|def)\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('\v^(class|def)\s', 'b')
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('\v^(class|def)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('\v^(class|def)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('\v^(class|def)\s', 'b')
map <buffer> \8 :PymodeLint
vnoremap <buffer> \r :call jedi#rename_visual()
nnoremap <buffer> \r :call jedi#rename()
nnoremap <buffer> \n :call jedi#usages()
nnoremap <buffer> \s :call jedi#goto_stubs()
nnoremap <buffer> \g :call jedi#goto_assignments()
nnoremap <buffer> \d :call jedi#goto()
nnoremap <buffer> <silent> \b :call pymode#breakpoint#operate(line('.'))
onoremap <buffer> ]C :call pymode#motion#move('\v^(class|def)\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('\v^(class|def)\s', '')
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('\v^(class|def)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
onoremap <buffer> ]] :call pymode#motion#move('\v^(class|def)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('\v^(class|def)\s', '')
vnoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
vnoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
snoremap <buffer> <expr> <C-Space> 'c'.jedi#complete_string(0)
smap <buffer> <Nul> <C-Space>
inoremap <buffer> <silent> . .=jedi#complete_string(1)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class,with
setlocal colorcolumn=+1
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=^s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=pymode#indent#get_indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=jedi#completions
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext
edit calculate.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <C-Space> jedi#complete_string(0)
imap <buffer> <Nul> <C-Space>
onoremap <buffer> C :call pymode#motion#select('^\s*class\s', 0)
nnoremap <buffer> <silent> K :call jedi#show_documentation()
onoremap <buffer> M :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> [C :call pymode#motion#move('\v^(class|def)\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('\v^(class|def)\s', 'b')
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('\v^(class|def)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('\v^(class|def)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*def\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('\v^(class|def)\s', 'b')
map <buffer> \8 :PymodeLint
vnoremap <buffer> \r :call jedi#rename_visual()
nnoremap <buffer> \r :call jedi#rename()
nnoremap <buffer> \n :call jedi#usages()
nnoremap <buffer> \s :call jedi#goto_stubs()
nnoremap <buffer> \g :call jedi#goto_assignments()
nnoremap <buffer> \d :call jedi#goto()
nnoremap <buffer> <silent> \b :call pymode#breakpoint#operate(line('.'))
onoremap <buffer> ]C :call pymode#motion#move('\v^(class|def)\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('\v^(class|def)\s', '')
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('\v^(class|def)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
onoremap <buffer> ]] :call pymode#motion#move('\v^(class|def)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*def\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('\v^(class|def)\s', '')
vnoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select('^\s*class\s', 0)
vnoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select('^\s*class\s', 1)
snoremap <buffer> <expr> <C-Space> 'c'.jedi#complete_string(0)
smap <buffer> <Nul> <C-Space>
inoremap <buffer> <silent> . .=jedi#complete_string(1)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class,with
setlocal colorcolumn=+1
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=^s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=pymode#indent#get_indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=jedi#completions
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=4
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 3
badd +0 test.py
badd +1 analizys/db_data/postgresqlQuery.py
badd +1 analizys/db_data/collect_data.py
badd +1 maxtestlib/db_save/parse_save.py
badd +1 calculate.py
badd +6 ipython\ calculate.py\ -\ 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
