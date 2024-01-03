
vim.o.termguicolors = true
vim.o.number = true
vim.o.shiftround = true
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.breakindent = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4

vim.o.clipboard = "unnamedplus"
vim.o.mouse = "a"
vim.o.completeopt = "preview"
vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'
vim.o.background = "dark"

-- let g:gruvbox_material_background = 'hard'
vim.cmd [[ 
set termguicolors
sign define DiagnosticSignError text=󰅚 linehl= texthl=DiagnosticSignError numhl= 
sign define DiagnosticSignWarn text=󰀪 linehl= texthl=DiagnosticSignWarn numhl= 
sign define DiagnosticSignInfo text=  linehl= texthl=DiagnosticSignInfo numhl= 
sign define DiagnosticSignHint text=󰌶 linehl= texthl=DiagnosticSignHint numhl= 
let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_better_performance = 1
colorscheme gruvbox-material
:hi BufferTabpageFill guibg=#32302f
:hi BufferCurrent guibg=#a89984 guifg=#282828
:hi BufferInactive guifg=#d4be98 guibg=#32302f
:hi BufferVisible guifg=#d4be98 guibg=#32302f
:hi BufferCurrentMod guibg=#a89984 guifg=#282828
:hi BufferInactiveMod guifg=#d4be98 guibg=#32302f
:hi BufferVisibleMod guifg=#d4be98 guibg=#32302f
:hi BufferCurrentSign guibg=#a89984 guifg=#a89984
:hi BufferInactiveSign guifg=#a89984 guibg=#32302f
:hi BufferVisibleSign guifg=#a89984 guibg=#32302f
:hi BufferCurrentERROR guibg=#a89984 guifg=#282828
:hi BufferInactiveERROR guibg=#32302f guifg=#ea6962
:hi BufferVisibleERROR guibg=#32302f guifg=#ea6962
:hi BufferCurrentWARN guibg=#a89984 guifg=#282828
:hi BufferInactiveWARN guibg=#32302f guifg=#d8a657
:hi BufferVisibleWARN guibg=#32302f guifg=#d8a657
]]

local signs = { Error = " ", Warning = "󰀪 ", Hint = "󰌶", Information = " " }
for type, icon in pairs(signs) do
  local hl = "LspDiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

