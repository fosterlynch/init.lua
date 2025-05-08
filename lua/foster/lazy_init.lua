-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
-- local plugins  = {
-- 	{
-- 		'nvim-telescope/telescope.nvim', version= '0.1.8',
-- 		-- or                            , branch = '0.1.x',
-- 		dependencies = { {'nvim-lua/plenary.nvim'} }
-- 	},
-- 	-- {
-- 	-- 	"rose-pine/neovim",
-- 	-- 	name = "rose-pine",
-- 	-- 	-- config = function()
-- 	-- 	-- 	vim.cmd("colorscheme rose-pine")
-- 	-- 	-- end
-- 	-- },
-- 	{ 'nvim-treesitter/nvim-treesitter', build= ':TSUpdate'},
-- 	{ 'nvim-treesitter/playground'},
-- 	{ 'theprimeagen/harpoon2',dependencies={"nvim-lua/plenary.nvim"}},
-- 	{ 'mbbill/undotree'},
-- 	{ 'tpope/vim-fugitive'},
-- 	{ 'williamboman/mason.nvim'},
-- 	{ 'williamboman/mason-lspconfig.nvim'},
-- 	{ 'hrsh7th/cmp-buffer'},
-- 	{ 'saadparwaiz1/cmp_luasnip'},
-- 	{ 'L3MON4D3/LuaSnip'},
-- 	{ 'neovim/nvim-lspconfig'},
-- 	{ 'hrsh7th/nvim-cmp'},
-- 	{ 'hrsh7th/cmp-nvim-lsp'},
-- }

-- Setup lazy.nvim

require("lazy").setup({
  spec = {import="foster.lazy"},
  -- automatically check for plugin updates
  checker = { enabled = true }
})

-- require("lazy").init({
--
--     -- old way of importing plugin
-- spec = {
--   -- import your plugins

--   { import = "plugins" },
-- },
--   -- Configure any other settings here. See the documentation for more details.
--   -- colorscheme that will be used when installing plugins.
--   install = { colorscheme = { "habamax" } },
--   -- automatically check for plugin updates
--   checker = { enabled = true },
-- })
