local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Color themes
  -- use 'EdenEast/nightfox.nvim'
  --use 'navarasu/onedark.nvim'
  --use 'tjdevries/colorbuddy.nvim'
  --use 'Th3Whit3Wolf/onebuddy'
  --use {
  --  'mcchrish/zenbones.nvim',
  --  requires = "rktjmp/lush.nvim"
  --}
  -- use 'RRethy/vim-illuminate'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'norcalli/nvim-colorizer.lua'
  use 'nvim-lualine/lualine.nvim'
  -- Auto pairs
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  -- File icons 
  use 'kyazdani42/nvim-web-devicons'
  -- Language Server Protocol (LSP) 
  use 'L3MON4D3/LuaSnip'
  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  -- Installing LSPs 
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'glepnir/lspsaga.nvim'
  -- File browser 
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  -- Git 
  use 'lewis6991/gitsigns.nvim'
  --use 'dinhhuy258/git.nvim'
  -- Nvim Tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  -- Treesitter
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    indent = {
      enable = true
    },
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
end)

-- Since I change my theme all the time, 
-- might as well put this here
require("catppuccin").setup {
  flavour = "latte",
  integrations = {
    mason = true,
    illuminate = true,
    nvimtree = true,
    treesitter = true,
    lsp_saga = true
  },
  custom_highlights = function(colors)
    return {
      Comment = { fg = colors.flamingo },
      ["@constant.builtin"] = { fg = colors.peach, style = {} },
      ["@comment"] = { fg = colors.surface2, style = {"italic" } },
    }
  end
}
vim.cmd.colorscheme "catppuccin"

require('lualine').setup{
  options = {
    theme = "catppuccin"
  }
}

