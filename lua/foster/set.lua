vim.opt.guicursor = ""
vim.o.guicursor = 'n-v-c:block-Cursor,i-ci-ve:ver25-Cursor2,r-cr-o:hor20'

vim.api.nvim_set_hl(0, "Cursor2", { fg = "#F28C28", bg = "#F28C28" })
vim.api.nvim_set_hl(0, "Cursor", { fg = "#CC5500", bg = "#CC5500" })



vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.timeoutlen = 500
vim.opt.colorcolumn = "80"

