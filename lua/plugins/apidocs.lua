return {
  "emmanueltouzery/apidocs.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim", -- or, 'folke/snacks.nvim'
  },
  cmd = { "ApidocsSearch", "ApidocsInstall", "ApidocsOpen", "ApidocsSelect", "ApidocsUninstall" },
  config = function()
    require("apidocs").setup()
    require("apidocs").ensure_install "python~3.12"
    -- Picker will be auto-detected. To select a picker of your choice explicitly you can set picker by the configuration option 'picker':
    -- require('apidocs').setup({picker = "snacks"})
    -- Possible options are 'ui_select', 'telescope', and 'snacks'
    -- You can change the keymap for following "local://" links by setting the configuration option 'follow_link_keymap' (default is "<C-]>"):
    -- require('apidocs').setup({follo[118;1:3uw_link_keymap = "<C-]>"})
  end,
  keys = {
    { "<leader>sad", "<cmd>ApidocsOpen<cr>", desc = "Search Api Doc" },
  },
}
