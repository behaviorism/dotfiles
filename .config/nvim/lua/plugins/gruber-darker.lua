return {
  {
    "blazkowolf/gruber-darker.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      italic = {
        strings = false,
        comments = false,
        folds = false
      }
    },
    config = function(_, opts)
      vim.opt.termguicolors = true
      require("gruber-darker").setup(opts)
      vim.cmd.colorscheme("gruber-darker")
      vim.cmd("highlight CursorLine cterm=NONE ctermbg=NONE guibg=NONE")
    end
  }
}
