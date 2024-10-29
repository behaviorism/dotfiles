return {
  "neovim/nvim-lspconfig",
  dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer", "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp" },
  config = function()
    -- Provide cmp capabilities to lsps
    local cmp_lsp = require("cmp_nvim_lsp")
    local capabilities = cmp_lsp.default_capabilities()

    -- Change goto definition keybind
    local on_attach = function(_, bufnr)
      local opts = { buffer = bufnr, silent = true }
      vim.keymap.set('n', '<C-]>', "<nop>", opts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    end

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
            capabilities = capabilities,
            on_attach = on_attach
          })
        end,
        -- Lua requires more setup for vim env
        ["lua_ls"] = function()
          local lspconfig = require("lspconfig")
          lspconfig.lua_ls.setup {
            capabilities = capabilities,
            on_attach = on_attach,
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
        -- Only autoformat buffers with client attached
        local clients = vim.lsp.get_active_clients()

        for _, client in ipairs(clients) do
          if client.attached_buffers[vim.api.nvim_get_current_buf()] and client.server_capabilities.documentFormattingProvider then
            vim.lsp.buf.format()
            break
          end
        end
      end,
    })

    -- Disable semantic tokens
    require("lspconfig").util.default_config.on_init = function(client, _)
      client.server_capabilities.semanticTokensProvider = nil
    end

    -- Autocompletion
    local cmp = require("cmp")

    cmp.setup({
      preselect = cmp.PreselectMode.Item,
      mapping = {
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      },
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
      }, {
        { name = "buffer" },
        { name = "path" },
        { name = "cmdline" },
      }),
    })

    -- Autopairs on completion
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )
  end,
}
