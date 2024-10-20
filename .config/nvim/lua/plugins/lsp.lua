return {
  "neovim/nvim-lspconfig",
  dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer", "hrsh7th/cmp-path", "hrsh7th/cmp-cmdline", "hrsh7th/nvim-cmp" },
  config = function()
    -- Provide cmp capabilities to lsps
    local cmp_lsp = require("cmp_nvim_lsp")
    local capabilities = cmp_lsp.default_capabilities()

    require("mason").setup()
    require("mason-lspconfig").setup {
      -- Fix js, ts
      ensure_installed = { "lua_ls", "pyright", "gopls", "rust_analyzer",
        -- "tsserver"
      },
      handlers = {
        -- Generic setup for lsps
        function(server_name)
          require("lspconfig")[server_name].setup({
            capabilities = capabilities
          })
        end,
        -- Lua requires more setup for vim env
        ["lua_ls"] = function()
          local lspconfig = require("lspconfig")
          lspconfig.lua_ls.setup {
            capabilities = capabilities,
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" },
                }
              }
            }
          }
        end,
      }
    }


    -- Autoformat
    vim.api.nvim_create_autocmd("BufWritePre", {
      callback = function()
        -- TODO: check if needs to be set to sync format
        vim.lsp.buf.format()
      end,
    })

    -- Disable semantic tokens
    require('lspconfig').util.default_config.on_init = function(client, _)
      client.server_capabilities.semanticTokensProvider = nil
    end

    -- Autocompletion
    local cmp = require("cmp")

    cmp.setup({
      mapping = {
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      },
      sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        { name = "cmdline" },
      },
    })
  end,
}
