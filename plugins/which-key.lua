return {
  -- Add bindings to the normal mode <leader> mappings
  register_n_leader = {
    ["N"] = { "<cmd>tabnew<cr>", "New Buffer" },
    ["."] = { "<cmd>NeoRoot<cr>", "Set Root" },
    ["q"] = { ":Bdelete!<cr>", "Quit Buffer" },
    ["j"] = { ":lua require('nvim-window').pick()<cr>", "Jump Win" },
    ["u"] = { ":MundoToggle<cr>", "Undo List" },
    ["w"] = { ":WinShift<cr>:set nocursoline<cr>", "WinShift" },
    ["c"] = { ":VCoolor<cr>", "Color" },
    f = {
      name = "Focus",
      t = { ":FocusToggle<cr>", "Toggle" },
      a = { ":FocusSplitNicely<cr>", "Auto" },
      m = { ":FocusSplitMaximise<cr>", "Max" },
      e = { ":FocusSplitEqualise<cr>", "Equal" },
      l = { ":FocusSplitRight<cr>", "Rigt" },
      j = { ":FocusSplitDown<cr>", "Down" },
      k = { ":FocusSplitUp<cr>", "Up" },
      h = { ":FocusSplitLeft<cr>", "Left" },
    },
    p = {
      C = { ":PackerClean<cr>", "Clean" },
    },
    b = {
      name = "BufferLine",
      b = { ":BufferLinePick<cr>", "Pick" },
      p = { ":BufferLineTogglePin<cr>", "Pin" },
      c = { ":BufferLinePickClose<cr>", "Close" },
    },
    s = {
      f = { "<cmd>Telescope find_files<CR>", "Files" },
      o = { "<cmd>Telescope oldfiles<CR>", "Old Files" },
      w = { "<cmd>Telescope live_grep<CR>", "Words" },
      b = { "<cmd>Telescope buffers<CR>", "Buffers" },
      c = { "<cmd>Telescope commands<CR>", "Commands" },
      k = { "<cmd>Telescope keymaps<CR>", "Keys" },
      h = { "<cmd>Telescope help_tags<CR>", "Help" },
      n = { "<cmd>Telescope notify<CR>", "Notification" },
      M = { "<cmd>Telescope man_pages<CR>", "Man" },
      r = { "<cmd>Telescope registers<CR>", "Registers" },
      s = { "<cmd>Telescope<cr>", "Telescope" },
      m = { "<cmd>Telescope marks<CR>", "Marks" },
    },
    d = {
      name = "Debugger",
      b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
      B = { "<cmd>lua require'dap'.clear_breakpoints()<cr>", "Clear Breakpoints" },
      c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
      i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
      l = { "<cmd>lua require'dapui'.float_element('breakpoints')<cr>", "List Breakpoints" },
      o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
      q = { "<cmd>lua require'dap'.close()<cr>", "Close Session" },
      Q = { "<cmd>lua require'dap'.terminate()<cr>", "Terminate" },
      r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "REPL" },
      s = { "<cmd>lua require'dapui'.float_element('scopes')<cr>", "Scopes" },
      t = { "<cmd>lua require'dapui'.float_element('stacks')<cr>", "Threads" },
      u = { "<cmd>lua require'dapui'.toggle()<cr>", "Toggle Debugger UI" },
      w = { "<cmd>lua require'dapui'.float_element('watches')<cr>", "Watches" },
      x = { "<cmd>lua require'dap.ui.widgets'.hover()<cr>", "Inspect" },
    },
    n = {
      name = "Notes",
      b = {
        function()
          require "zk.commands" "ZkBacklinks"()
        end,
        "Backlink Picker",
      },
      d = {
        function()
          require "zk.commands" "ZkCd"()
        end,
        "Change Directory",
      },
      r = {
        function()
          require "zk.commands" "ZkIndex"()
        end,
        "Refresh Index",
      },
      l = {
        function()
          require "zk.commands" "ZkLinks"()
        end,
        "Link Picker",
      },
      s = {
        function()
          require("zk.commands").get "ZkNotes" { sort = { "modified" } }
        end,
        "Search",
      },
      n = {
        function()
          require("zk.commands").get "ZkNew" { dir = "personal", title = vim.fn.input "Title: " }
        end,
        "New Personal Note",
      },
      N = {
        function()
          require("zk.commands").get "ZkNew" { dir = "work", title = vim.fn.input "Title: " }
        end,
        "New Work Note",
      },
      t = {
        function()
          require("zk.commands").get "ZkTags"()
        end,
        "Tags",
      },
      i = { "<Plug>(simple-todo-new-list-item)", "Insert Todo" },
      I = { "<Plug>(simple-todo-new-list-item-start-of-line)", "Convert to Todo" },
      o = { "<Plug>(simple-todo-below)", "Insert Todo Below" },
      O = { "<Plug>(simple-todo-above)", "Insert Todo Above" },
      x = { "<Plug>(simple-todo-mark-as-done)", "Mark Done" },
      X = { "<Plug>(simple-todo-mark-as-undone)", "Mark Undone" },
      ["<tab>"] = { "<Plug>(simple-todo-mark-switch)", "Toggle Todo" },
    },
  },
}
