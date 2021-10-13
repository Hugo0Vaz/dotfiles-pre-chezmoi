local cmp = require('cmp')

config = {
    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
    }
}

-- setup of cmp
require('cmp').setup(config)

-- setup of lspconfig for cmp
require('lspconfig').pyright.setup{
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

-- setup of autopairs from within cmp
require("nvim-autopairs.completion.cmp").setup({
    map_cr = true,       -- map <CR> on insert mode
    map_complete = true, -- it will auto insert `(` (map_char) after select function or method item
    auto_select = true,  -- automatically select the first item
    insert = false,      -- use insert confirm behavior instead of replace
    map_char = {         -- modifies the function or method delimiter by filetypes
        all = '(',
        tex = '{'
    }
})
