local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer()

vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use("wbthomason/packer.nvim")
  
  use("nvim-lua/plenary.nvim")
  
  use{"catppuccin/nvim", as = "catppuccin"} -- theme
  
  use("christoomey/vim-tmux-navigator")
  
  use("nvim-tree/nvim-tree.lua") -- file explorer
  use("nvim-tree/nvim-web-devicons") -- icons for file explorer
  
  use("nvim-lualine/lualine.nvim") -- statusline
  
  use("tpope/vim-surround")
  use("tpope/vim-sleuth")
  use("tpope/vim-fugitive")
  
  use("akinsho/toggleterm.nvim") -- terminal
  
  use("nvim-treesitter/nvim-treesitter") -- highlighting
  
  use("nvim-telescope/telescope.nvim") -- fuzzy finder
  
  use("stevearc/dressing.nvim") -- improved ui for input and select

  use("hrsh7th/nvim-cmp") -- completion plugin
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path") -- source for file system paths
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-cmdline")
  
  use("L3MON4D3/LuaSnip") -- snippet engine
  
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  
  use("rafamadriz/friendly-snippets") -- useful snippets

  use {'neoclide/coc.nvim', branch = 'release'}

  if packer_bootstrap then
    require("packer").sync()
  end
end)

