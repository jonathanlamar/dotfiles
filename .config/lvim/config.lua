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
lvim.keys.normal_mode["<Up>"] = "<Nop>"
lvim.keys.normal_mode["<Down>"] = "<Nop>"
lvim.keys.normal_mode["<Left>"] = "<Nop>"
lvim.keys.normal_mode["<Right>"] = "<Nop>"
lvim.keys.normal_mode["<C-Up>"] = "<Nop>"
lvim.keys.normal_mode["<C-Down>"] = "<Nop>"
lvim.keys.normal_mode["<C-Left>"] = "<Nop>"
lvim.keys.normal_mode["<C-Right>"] = "<Nop>"
lvim.keys.insert_mode["<C-k>"] = "<Up>"
lvim.keys.insert_mode["<C-j>"] = "<Down>"
lvim.keys.insert_mode["<C-h>"] = "<Left>"
lvim.keys.insert_mode["<C-l>"] = "<Right>"

lvim.keys.normal_mode["<M-o>"] = "o<Esc>"

lvim.keys.normal_mode["M-j"] = ":resize -1<CR>"
lvim.keys.normal_mode["M-k"] = ":resize +1<CR>"
lvim.keys.normal_mode["M-h"] = ":vertical resize -1<CR>"
lvim.keys.normal_mode["M-l"] = ":vertical resize +1<CR>"

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
lvim.builtin.which_key.mappings["h"] = { "<cmd>split<CR>", "split" }
lvim.builtin.which_key.mappings["v"] = { "<cmd>vsplit<CR>", "vertical split" }
lvim.builtin.which_key.mappings["g"] = {
  name = "Git",
  A = { "<cmd>Git add .<CR>" , "add all"},
  a = { "<cmd>Git add %<CR>" , "add current"},
  b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
  -- c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
  -- c = {
  --   "<cmd>Telescope git_bcommits<cr>",
  --   "Checkout commit(for current file)",
  -- },
  B = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
  c = { "<cmd>Git commit<CR>" , "commit"},
  d = { "<cmd>Gdiffsplit<CR>" , "diff split"},
  j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
  k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
  p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
  r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
  R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
  s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
  S = {"<cmd>Gstatus<CR>" , "git status"},
  u = {
    "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
    "Undo Stage Hunk",
  },
  o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
  w = {"<cmd>GBrowse<CR>" , "view in browser"}
}
lvim.builtin.which_key.mappings["l"] = {
  name = "LSP",
  -- a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
  d = {
    "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()", "Line Diagnostics"
  },
  D = {
    "<cmd>Telescope lsp_document_diagnostics<cr>",
    "Document Diagnostics",
  },
  w = {
    "<cmd>Telescope lsp_workspace_diagnostics<cr>",
    "Workspace Diagnostics",
  },
  -- f = { "<cmd>silent FormatWrite<cr>", "Format" },
  f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" },
  g = {
    name = "GoTo",
    d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Definition" },
    r = { "<cmd>lua vim.lsp.buf.references()<CR>", "References"},
    t = { "<cmd>vim.lsp.buf.type_definition()<cr>", "Type Definition" },
  },
  h = {"<cmd>lua vim.lsp.buf.hover()<CR>", "Signature Help"},
  i = { "<cmd>LspInfo<cr>", "Info" },
  j = {
    "<cmd>lua vim.lsp.diagnostic.goto_next({popup_opts = {border = lvim.lsp.popup_border}})<cr>",
    "Next Diagnostic",
  },
  k = {
    "<cmd>lua vim.lsp.diagnostic.goto_prev({popup_opts = {border = lvim.lsp.popup_border}})<cr>",
    "Prev Diagnostic",
  },
  p = {
    name = "Peek",
    d = { "<cmd>lua require('lsp.peek').Peek('definition')<cr>", "Definition" },
    t = { "<cmd>lua require('lsp.peek').Peek('typeDefinition')<cr>", "Type Definition" },
    -- i = { "<cmd>lua require('lsp.peek').Peek('implementation')<cr>", "Implementation" },
  },
  q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
  r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
  s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
  S = {
    "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
    "Workspace Symbols",
  },
}
lvim.builtin.which_key.mappings["t"] = {
  name = "+Toggle",
  c = {"<cmd>TagbarToggle<cr>"           , "tagbar"},
  -- g = {"<cmd>call GoyoNoLines()<CR>"     , "goyo"},
  n = {"<cmd>set nonumber!<CR>"          , "line-numbers"},
  r = {"<cmd>set norelativenumber!<CR>"  , "relative line nums"},
  s = {"<cmd>let @/ = \"\"<CR>"          , "remove search highlight"},
  w = {"<cmd>set nowrap!<CR>"            , "wrap text"}
}

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
    args = {}
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
    },
    {"tpope/vim-fugitive"},
    {"tpope/vim-rhubarb"}
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
lvim.autocommands.custom_groups = {
  -- { "FileType", "python", "setlocal ts=4 sw=4" },
  -- { "FileType", "python", "setlocal expandtab" },
  { "FileType", "python", "setlocal autoindent" },
  { "FileType", "python", "setlocal colorcolumn=88" },
  { "FileType", "python", "setlocal foldmethod=indent" },
}
