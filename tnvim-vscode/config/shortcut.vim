silent! call repeat#set("\<Plug>surround", v:count)
let g:tmux_navigator_no_mappings = 1 " Disable default mappings

let g:EasyMotion_do_mapping = 0 " Disable default mappings

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>t <Plug>(easymotion-t2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>w <Plug>(easymotion-w)
" map <Leader>e <Plug>(easymotion-iskeyword-e)
map <Leader>b <Plug>(easymotion-iskeyword-b)

" Gif config
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)

" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

" noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
" noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
" noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

" noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())

" clipboard
map <Leader>y "*y
map <Leader>p "*p
map <Leader>Y "+y
map <Leader>P "+p

map <Leader>n :nohl<CR>
101
" vim surround
autocmd FileType php let b:surround_45 = "<?php \r ?>"
