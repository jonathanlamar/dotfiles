-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "gruvbox-material"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = ""
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>lua require'telescope'.extensions.project.project{}<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- set a formatter if you want to override the default lsp one (if it exists)
lvim.lang.python.formatters = {
  {
    exe = "black",
    args = {}
  }
}
-- set an additional linter
lvim.lang.python.linters = {
  {
    exe = "flake8",
    args = {"--max-line-length=88"}
  }
}

-- Additional Plugins
lvim.plugins = {
    {
        "ray-x/lsp_signature.nvim",
        config = function()
          -- I don't get this whole on_attach thing.
          require"lsp_signature".on_attach({
            bind = true, -- This is mandatory, otherwise border config won't get registered.
                       -- If you want to hook lspsaga or other signature handler, pls set to false
            doc_lines = 2, -- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
                         -- set to 0 if you do not want any API comments be shown
                         -- This setting only take effect in insert mode, it does not affect signature help in normal
                         -- mode
            hint_prefix = "▸ ",
            handler_opts = {
                border = "single"   -- double, single, shadow, none
            },
            decorator = {"`", "`"},  -- decoractor can be `decorator = {"***", "***"}`  `decorator = {"**", "**"}` `decorator = {"**_", "_**"}`
                                     -- `decorator = {"*", "*"} see markdown help for more details
                                     -- <u></u> ~ ~ does not supported by nvim

            hint_enable = true, -- virtual hint enable
            use_lspsaga = false,  -- set to true if you want to use lspsaga popup
          })
        end,
        event = "InsertEnter"
    },
    {"sainnhe/gruvbox-material"},
    {"christoomey/vim-tmux-navigator"},
    {"godlygeek/tabular"}, -- dependency for vim-markdown
    {
        'plasticboy/vim-markdown',
        ft = {"markdown", "MARKDOWN"},
        config = function()
          vim.cmd("set conceallevel=2")
          -- Syntax fencing for mathjax
          vim.cmd("let g:vim_markdown_math=1")
          -- ge follows link anchors
          vim.cmd("let g:vim_markdown_follow_anchor = 1")
        end
    },
    {
        "majutsushi/tagbar",
        ft = "python"
    }
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
lvim.autocommands.custom_groups = {
  -- { "FileType", "python", "setlocal ts=4 sw=4" },
  -- { "FileType", "python", "setlocal expandtab" },
  { "FileType", "python", "setlocal autoindent" },
  { "FileType", "python", "setlocal colorcolumn=88" },
  { "FileType", "python", "setlocal foldmethod=indent" },
}
