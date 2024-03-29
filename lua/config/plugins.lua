   
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  --vim.notify("that didnt work")
  return
end
--another way is:
--local packer = require("packer")


-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)

   -- My plugins here
   use "wbthomason/packer.nvim" -- Have packer manage itself
   use "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins

   use "akinsho/toggleterm.nvim"

   -- testing this one
      use "folke/zen-mode.nvim"

   -- themes
   use(
      { "EdenEast/nightfox.nvim"} -- commit = "59c3dbcec362eff7794f1cb576d56fd8a3f2c8bb" }
   )    
   use 'joshdick/onedark.vim'
   use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
   use "lunarvim/darkplus.nvim"

   -- aspect relative
   use 'norcalli/nvim-colorizer.lua' -- show the color of color-codes like #56b6c2 
   use 'xiyaowong/nvim-transparent'  -- for make some colorschemes background transparent 

   
   -- cmp plugins
   use "hrsh7th/nvim-cmp" -- The completion plugin
   use "hrsh7th/cmp-buffer" -- buffer completions
   use "hrsh7th/cmp-path" -- path completions
   use "hrsh7th/cmp-cmdline" -- cmdline completions
   use "saadparwaiz1/cmp_luasnip" -- snippet completions
   use "hrsh7th/cmp-nvim-lsp"
   -- autopairs
   use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter   

   -- snippets
   use "L3MON4D3/LuaSnip" --snippet engine
   -- use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

   -- LSP
   --use {
   --   "williamboman/mason.nvim", 
   --   "williamboman/mason-lspconfig.nvim", 
   --   "neovim/nvim-lspconfig",
   --}
   use(
   { "neovim/nvim-lspconfig", commit = "148c99bd09b44cf3605151a06869f6b4d4c24455" }
   ) -- enable LSP
   use(
   { "williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6" }
   ) 
  
   -- Telescope
   use "nvim-telescope/telescope.nvim"
   --use "nvim-telescope/telescope-media-files.nvim"

   -- Treesitter
   --   use {
   --      "nvim-treesitter/nvim-treesitter",
   --      run = ":TSUpdate",
   --   }

   -- GIT
   use "lewis6991/gitsigns.nvim"

   -- NvimTree
   use 'kyazdani42/nvim-web-devicons'
   use 'kyazdani42/nvim-tree.lua'

   -- identation 
      use "lukas-reineke/indent-blankline.nvim"

   -- Para usar el cursor multiple
   use "mg979/vim-visual-multi"

   -- Markdown
   -- run the next command for fix and issue
   --:call mkdp#util#install()
--   use {
--      "iamcco/markdown-preview.nvim",
--      run = "cd app && npm install",
--      ft = "markdown",
--   }
   use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

   -- Automatically set up your configuration after cloning packer.nvim
   -- Put this at the end after all plugins
   if PACKER_BOOTSTRAP then
      require("packer").sync()
   end
end)
