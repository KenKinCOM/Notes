"autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)

"Point
autocmd Filetype markdown inoremap <buffer> ;m - [ ] 
"Code
autocmd Filetype markdown inoremap <buffer> ;d `` <++><Esc>F`i
autocmd Filetype markdown inoremap <buffer> ;c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
"Pic
autocmd Filetype markdown inoremap <buffer> ;p ![](<++>) <++><Esc>F[a
"Link
autocmd Filetype markdown inoremap <buffer> ;a [](<++>) <++><Esc>F[a
"Strikethrough
autocmd Filetype markdown inoremap <buffer> ;s ~~~~ <++><Esc>F~hi
"Cuttng line
autocmd Filetype markdown inoremap <buffer> ;n ---<Enter><Enter>
"Find
autocmd Filetype markdown inoremap <buffer> ;f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype markdown inoremap <buffer> ;n <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap <buffer> ;w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd Filetype markdown inoremap <buffer> <c-e> <Esc>/<++><CR>:nohlsearch<CR>"_c4l

"Topic
"1)
autocmd Filetype markdown inoremap <buffer> ;1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ;2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ;3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ;4 ####<Space><Enter><++><Esc>kA
"2)
autocmd Filetype markdown inoremap <buffer> ;l --------<Enter>
autocmd Filetype markdown inoremap <buffer> ;o ========<Enter>

"Font
"italic
autocmd Filetype markdown inoremap <buffer> ;i ** <++><Esc>F*i
"bold
autocmd Filetype markdown inoremap <buffer> ;b **** <++><Esc>F*hi

