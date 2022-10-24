vim.g.mapleader = ";"

local keymap = vim.keymap

keymap.set("n", "qq", "<Cmd>q<CR>")
keymap.set("n", "ww", "<Cmd>w<CR>")

keymap.set("n","<C-a", "gg<S-v>G")


keymap.set('n','<C-j>', '5j')
keymap.set('n','<C-k>', '5k')

keymap.set("n","sh",":vsplit<Return><C-w>w",{silent=true})
keymap.set("n","sv","<C-w>s",{silent=true})

keymap.set("n","<space>wh","<C-w>h")
keymap.set("n","<space>wj","<C-w>j")
keymap.set("n","<space>wl","<C-w>l")
keymap.set("n","<space>wk","<C-w>k")
keymap.set("n","<space>ww","<C-w>w")

keymap.set("n","<space>w<left>","<C-w>>")
keymap.set("n","<space>w<right>","<C-w><")
keymap.set("n","<space>w<up>","<C-w>+")
keymap.set("n","<space>w<down>","<C-w>-")

keymap.set('i','<Esc>j','<Esc>',{noremap=true})
keymap.set('i','<Esc>k','<Esc>',{noremap=true})
keymap.set('i','<Esc>h','<Esc>',{noremap=true})
keymap.set('i','<Esc>l','<Esc>',{noremap=true})
