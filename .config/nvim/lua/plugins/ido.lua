return {
  -- "behaviorism/ido.nvim",
  -- dev
  dir = "~/.config/nvim/lua/ido",
  config = function()
    require("ido").setup({ return_submits_commands = { ":buffer", ":e" } })
  end,
}
