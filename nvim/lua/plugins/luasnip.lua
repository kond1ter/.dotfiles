require("luasnip").setup()
require("luasnip.loaders.from_vscode").load {
    paths = {'~/.local/share/nvim/site/pack/packer/start/friendly-snippets'}
}

require("luasnip.loaders.from_vscode").lazy_load()
