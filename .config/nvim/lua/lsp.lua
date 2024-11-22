
local map = vim.keymap.set
local opts = { noremap=true, silent=true }
local lsp_zero = require('lsp-zero')
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.diagnostic.config({signs=true})

local servers = {
  -- clangd = {},
  -- gopls = {},
  pyright = {},
  -- rust_analyzer = {},
  ts_ls = {},

  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
    },
  },
}

-- Setup mason so it can manage external tooling
require('mason').setup()

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      -- capabilities = capabilities,
      -- on_attach = on_attach,
      settings = servers[server_name],
    }
  end,
}

map('n', '<space>D', vim.diagnostic.open_float, opts)
map('n', '<space>k', vim.diagnostic.goto_prev, opts)
map('n', '<space>j', vim.diagnostic.goto_next, opts)


lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
    local bufopts = { noremap=true, silent=true, buffer=bufnr }

    map('n', 'gD', vim.lsp.buf.declaration, bufopts)
    map('n', 'gd', vim.lsp.buf.definition, bufopts)
    map('n', 'I', vim.lsp.buf.hover, bufopts)
    map('n', '<space>r', vim.lsp.buf.rename, bufopts)
    map('n', '<space>a', vim.lsp.buf.code_action, bufopts)
end)

cmp.setup({
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
    },
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
        documentation = {
            winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,Search:StatusLine'
        }
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-j>'] = cmp_action.luasnip_supertab(),
        ['<C-k>'] = cmp_action.luasnip_shift_supertab(),
        ['<CR>'] = cmp.mapping.confirm({select = false}),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-w>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
        ['<C-p>'] = cmp.mapping.scroll_docs(-4),
        ['<C-n>'] = cmp.mapping.scroll_docs(4),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
    })
})

