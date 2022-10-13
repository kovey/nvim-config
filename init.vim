lua require('core.init')

set clipboard^=unnamed,unnamedplus

if has('unix')
	set thesaurus+=/usr/share/dict/words
endif

if exists("g:neovide")
    " Neovide config
	let g:neovide_refresh_rate=24	" come on it's just a text editor
	let g:neovide_transparency=1.0
	let g:neovide_scroll_animation_length = 0.3
	let g:neovide_remember_window_size = v:true
	let g:neovide_input_use_logo=v:true	" the super/command/win key
	let g:neovide_input_macos_alt_is_meta=v:false
	let g:neovide_touch_deadzone=0.0
	let g:neovide_cursor_animation_length=0.05
	let g:neovide_cursor_trail_length=0.8
	let g:neovide_cursor_antialiasing=v:false	" i dont need it
	let g:neovide_cursor_vfx_mode = "wireframe"
	let g:neovide_remember_window_size = v:true
endif

set hlsearch                  "高亮度反白
set backspace=2               "可随时用倒退键删除
set autoindent                 "自动缩排
set cindent
set ruler                      "可显示最后一行的状态
set showmode                 "左下角那一行的状态
set wrap                      "自动折行
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab                  "将tab替换为相应数量空格
set smartindent
set fileencodings=uft8-bom,utf8,gbk,gb2312,big5   "打开支持编码的文件

cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-a> <C-o>^
cnoremap <C-e> <C-o>$
autocmd FileType markdown setlocal spell
