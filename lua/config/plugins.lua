vim.cmd [[packadd packer.nvim]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
	use "wbthomason/packer.nvim"
  -- dependencies
	use "kyazdani42/nvim-web-devicons"
  use "nvim-lua/plenary.nvim"
  use "tpope/vim-repeat"

	use "nvim-telescope/telescope.nvim"
	use "kyazdani42/nvim-tree.lua"
	use "akinsho/bufferline.nvim"
  -- use "moll/vim-bbye"
  -- depend tpope/vim-repeat
  use "ggandor/lightspeed.nvim"
  use "akinsho/toggleterm.nvim"

	use "machakann/vim-sandwich"
	use "numToStr/Comment.nvim"
  use "windwp/nvim-autopairs"

  use "ellisonleao/gruvbox.nvim"
  use "goolord/alpha-nvim"
	use "nvim-lualine/lualine.nvim"
	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate"
	}

  -- lsp
  use	"williamboman/nvim-lsp-installer"
  use	"neovim/nvim-lspconfig"
  -- depend plenary
  use "jose-elias-alvarez/null-ls.nvim"

  -- snippets
  use "rafamadriz/friendly-snippets"
  use "~/.config/nvim/vhxubo/snippets"
  use "L3MON4D3/LuaSnip"

  -- cmp
  use	"hrsh7th/nvim-cmp"
  use	"hrsh7th/cmp-nvim-lsp"
  use	"hrsh7th/cmp-buffer"
  use	"hrsh7th/cmp-path"
  use	"hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"

  use "folke/which-key.nvim"

end)
