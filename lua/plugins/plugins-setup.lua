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

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  use 'folke/tokyonight.nvim' -- theme
  use {
  'nvim-lualine/lualine.nvim', -- Status bar
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
  'nvim-tree/nvim-tree.lua', -- file tree
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use("christoomey/vim-tmux-navigator") -- using ctl-hjkl to local the windows
  use("nvim-treesitter/nvim-treesitter") -- hightlight of grammar
  use("p00f/nvim-ts-rainbow")
  -- LSP config
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim", --bridges mason.nvim with the lspconfig plugin - making it easier to use both plugins together
    "neovim/nvim-lspconfig",
    "jose-elias-alvarez/null-ls.nvim",

  }
  -- AUTO completement
  use ("hrsh7th/nvim-cmp") --The Completion Plugin
  use ("hrsh7th/cmp-nvim-lsp") -- 
  use ("hrsh7th/cmp-path") -- path completions
  use ("hrsh7th/cmp-buffer")
  use ("L3MON4D3/LuaSnip") --snippet engine
  use ("saadparwaiz1/cmp_luasnip") --snippet completions
  use ("rafamadriz/friendly-snippets") --a bunch of snippets to use

  use ("numToStr/Comment.nvim") -- gcc and gc Comment
  use ("windwp/nvim-autopairs") -- autopairs

  use ("akinsho/bufferline.nvim")
  use ("lewis6991/gitsigns.nvim")

  -- telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
