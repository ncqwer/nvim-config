local cmp = require'cmp'
local lspkind = require 'lspkind'
local luasnip = require 'luasnip'

 cmp.setup({
   snippet = {
     -- REQUIRED - you must specify a snippet engine
     expand = function(args)
       require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
     end,
   },
   mapping = cmp.mapping.preset.insert({
     ['<Tab>'] = cmp.mapping(function(fallback)
       if cmp.visible() then
         cmp.select_next_item()
       elseif luasnip.expand_or_jumpable() then
         luasnip.expand_or_jump()
       elseif has_words_before then
         cmp.complete()
       else
         fallback()
       end
     end,{'i','s'}),
     ['<S-Tab>'] = cmp.mapping(function(fallback)
       if cmp.visible() then
         cmp.select_next_item()
       elseif luasnip.jumpable(-1) then
         luasnip.jump(-1)
       else
         fallback()
       end
     end,{'i','s'}),
     ['<C-b>'] = cmp.mapping.scroll_docs(-4),
     ['<C-f>'] = cmp.mapping.scroll_docs(4),
     ['<C-Space>'] = cmp.mapping.complete(),
     ['<C-e>'] = cmp.mapping.abort(),
     ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
   }),
   sources = cmp.config.sources({
     { name = 'nvim_lsp' },
     { name = 'luasnip' }, -- For luasnip users.
   }, {
     { name = 'buffer' },
   }),
   formatting = {
     format = lspkind.cmp_format({ wirth_text=false, maxwidth=50})
   }
 })
