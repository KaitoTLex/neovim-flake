{
  globals = {
    mapleader = " ";
  };

  keymaps = [
    {
      # Unmap space (leader)
      action = "<nop>";
      key = "<Leader>";
      options = {
        noremap = true;
        silent = true;
      };
      mode = "n";
    }
    {
      action = "<cmd>ZenMode<CR>";
      key = "<Space>wz";
      options = {
        silent = true;
        noremap = true;
        desc = "Zen mode";
      };
    }
    {
      action = "<cmd>Telescope find_files<CR>";
      key = "<Leader>ff";
      options = {
        silent = true;
        noremap = true;
        desc = "Find files";
      };
    }
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<Leader>/";
      options = {
        silent = true;
        noremap = true;
        desc = "Live grep";
      };
    }
    {
      action = "<cmd>Telescope buffers<CR>";
      key = "<Leader>fb";
      options = {
        silent = true;
        noremap = true;
        desc = "List buffers";
      };
    }
    {
      action = "<cmd>Telescope help_tags<CR>";
      key = "<Leader>fh";
      options = {
        silent = true;
        noremap = true;
        desc = "Help tags";
      };
    }
    {
      action = "<cmd>lua require'telescope.builtin'.lsp_definitions{}<CR>";
      key = "gd";
      options = {
        silent = true;
        noremap = true;
        desc = "Go to definition";
      };
    }
    {
      action = "<cmd>lua require'telescope.builtin'.git_files{}<CR>";
      key = "<Leader> ";
      options = {
        silent = true;
        noremap = true;
        desc = "List Git files";
      };
    }
    {
      action = "<cmd>lua require'telescope.builtin'.find_files{}<CR>";
      key = "<Leader>ff";
      options = {
        silent = true;
        noremap = true;
        desc = "List all files";
      };
    }
    {
      action = "<C-\\><C-n>";
      key = "<C-Esc>";
      options = {
        silent = true;
        noremap = true;
        desc = "Go to normal mode in built-in terminal.";
      };
      mode = "t";
    }
    {
      action = ":resize +4<CR>";
      key = "<Leader>w=";
      options = {
        silent = true;
        noremap = true;
        desc = "Increase window height.";
      };
    }
    {
      action = ":resize -4<CR>";
      key = "<Leader>w-";
      options = {
        silent = true;
        noremap = true;
        desc = "Decrease window height.";
      };
    }
    {
      action = ":vertical resize +4<CR>";
      key = "<Leader>w]";
      options = {
        silent = true;
        noremap = true;
        desc = "Increase window width.";
      };
    }
    {
      action = ":vertical resize -4<CR>";
      key = "<Leader>w[";
      options = {
        silent = true;
        noremap = true;
        desc = "Decrease window width.";
      };
    }
    {
      action = ":Bdelete!<CR>";
      key = "<Leader>bd";
      options = {
        silent = true;
        noremap = true;
        desc = "Close buffer";
      };
    }
    {
      action = ":bprev<CR>";
      key = "H";
      options = {
        silent = true;
        noremap = true;
        desc = "Move to the previous buffer.";
      };
    }
    {
      action = ":bnext<CR>";
      key = "L";
      options = {
        silent = true;
        noremap = true;
        desc = "Move to the next buffer.";
      };
    }
    {
      action = ":Neogit<CR>";
      key = "<Leader>gg";
      options = {
        silent = true;
        noremap = true;
        desc = "Open Neogit";
      };
    }
    {
      action = ":Neogit commit<CR>";
      key = "<Leader>gc";
      options = {
        silent = true;
        noremap = true;
        desc = "Open commit menu";
      };
    }
    {
      mode = "n";
      key = "]c";
      action = {
        __raw = ''
          function()
            if vim.wo.diff then
              vim.cmd.normal({']c', bang = true})
            else
              require('gitsigns').nav_hunk('next')
            end
          end
        '';
      };
      options = {
        silent = true;
        noremap = true;
        desc = "Go to next hunk";
      };
    }
    {
      mode = "n";
      key = "[c";
      action = {
        __raw = ''
          function()
            if vim.wo.diff then
              vim.cmd.normal({'[c', bang = true})
            else
              require('gitsigns').nav_hunk('prev')
            end
          end
        '';
      };
      options = {
        silent = true;
        noremap = true;
        desc = "Go to previous hunk";
      };
    }
    {
      mode = "n";
      key = "<leader>gs";
      action = ":lua require('gitsigns').stage_hunk()<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Stage hunk";
      };
    }
    {
      mode = "n";
      key = "<leader>gr";
      action = ":lua require('gitsigns').reset_hunk()<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Reset hunk";
      };
    }
    {
      mode = "v";
      key = "<leader>gs";
      action = ":lua require('gitsigns').stage_hunk {vim.fn.line('.'), vim.fn.line('v')}<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Stage hunk";
      };
    }
    {
      mode = "v";
      key = "<leader>gr";
      action = ":lua require('gitsigns').reset_hunk {vim.fn.line('.'), vim.fn.line('v')}<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Reset hunk";
      };
    }
    {
      mode = "n";
      key = "<leader>gS";
      action = ":lua require('gitsigns').stage_buffer()<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Stage buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>gu";
      action = ":lua require('gitsigns').undo_stage_hunk()<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Undo stage hunk";
      };
    }
    {
      mode = "n";
      key = "<leader>gR";
      action = ":lua require('gitsigns').reset_buffer()<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Reset buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>gp";
      action = ":lua require('gitsigns').preview_hunk()<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Preview hunk";
      };
    }
    {
      mode = "n";
      key = "<leader>gb";
      action = ":lua require('gitsigns').blame_line{full=true}<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "View line blame";
      };
    }
    {
      mode = "n";
      key = "<leader>gB";
      action = ":lua require('gitsigns').toggle_current_line_blame()<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Toggle line blame";
      };
    }
    {
      mode = "n";
      key = "<leader>gd";
      action = ":lua require('gitsigns').diffthis()<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Git diff";
      };
    }
    {
      mode = "n";
      key = "<leader>gD";
      action = ":lua require('gitsigns').diffthis('~')<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Git diff";
      };
    }
    {
      mode = "n";
      key = "<leader>gtd";
      action = ":lua require('gitsigns').toggle_deleted()<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Toggle git deleted";
      };
    }
    {
      action = ":split | wincmd j | resize 15 | term<CR>";
      key = "<Leader>tt";
      options = {
        silent = true;
        noremap = true;
        desc = "Open a half-size horizontal terminal split";
      };
      mode = "n";
    }
    {
      action = ":split | wincmd j | term<CR>";
      key = "<Leader>te";
      options = {
        silent = true;
        noremap = true;
        desc = "Open a horizontal terminal split";
      };
      mode = "n";
    }
    {
      action = ":vsplit | wincmd l | term<CR>";
      key = "<Leader>tv";
      options = {
        silent = true;
        noremap = true;
        desc = "Open a vertical terminal split";
      };
      mode = "n";
    }
    {
      action = ":Trouble diagnostics<CR>";
      key = "<Leader>xx";
      options = {
        silent = true;
        noremap = true;
        desc = "View trouble diagnostics";
      };
      mode = "n";
    }
    {
      action = ":Trouble symbols<CR>";
      key = "<Leader>xs";
      options = {
        silent = true;
        noremap = true;
        desc = "View symbols";
      };
      mode = "n";
    }
    {
      action = "<Plug>(YankyPutAfter)";
      key = "p";
      mode = [
        "n"
        "x"
      ];
    }
    {
      action = "<Plug>(YankyPutBefore)";
      key = "P";
      mode = [
        "n"
        "x"
      ];
    }
    {
      action = "<Plug>(YankyGPutAfter)";
      key = "gp";
      mode = [
        "n"
        "x"
      ];
    }
    {
      action = "<Plug>(YankyGPutBefore)";
      key = "gP";
      mode = [
        "n"
        "x"
      ];
    }
    {
      action = ":Telescope yank_history<CR>";
      key = "<Leader>p";
      mode = "n";
      options.desc = "Look through yank history with telescope.";
    }
    {
      action = '':Oil<CR>'';
      key = "<Leader>e";
      options = {
        desc = "Open oil file explorer in current nvim working directory";
        noremap = true;
        silent = true;
      };
    }
    {
      action = '':Oil<CR>'';
      key = "<Leader>e";
      options = {
        desc = "Open oil file explorer in current nvim working directory";
        noremap = true;
        silent = true;
      };
    }
    {
      action = '':lua vim.lsp.buf.code_action()<CR>'';
      key = "<Leader>ca";
      options = {
        desc = "View available code actions";
        noremap = true;
        silent = true;
      };
    }
    {
      action = '':lua vim.lsp.buf.rename()<CR>'';
      key = "<Leader>cr";
      options = {
        desc = "Rename symbol";
        noremap = true;
        silent = true;
      };
    }
    {
      action = '':lua require("lsp_lines").toggle()<CR>'';
      key = "<Leader>cd";
      options = {
        desc = "Toggle lsp lines";
        noremap = true;
        silent = true;
      };
    }
    {
      action = '':lua vim.lsp.codelens.run()'';
      key = "<Leader>cl";
      options = {
        desc = "Run codelens";
        noremap = true;
        silent = true;
      };
    }
    {
      action = '':Telescope ht hoogle_signature<CR>'';
      key = "<Leader>fg";
      options = {
        desc = "Search hoogle for under cursor";
        noremap = true;
        silent = true;
      };
    }
    {
      action = {
        __raw = ''
          function() require('conform').format() end
        '';
      };
      key = "<Leader>cf";
      options = {
        silent = true;
        noremap = true;
        desc = "Format buffer";
      };
    }
    {
      action = {
        __raw = ''
          function()
            -- we do this instead of `not vim.g.disable_autoformat` so that we
            -- can handle when `vim.g.disable_autoformat` has not yet been defined
            if (vim.g.disable_autoformat) then
              vim.g.disable_autoformat = false
            else
              vim.g.disable_autoformat = true
            end
          end
        '';
      };
      key = "<Leader>ctf";
      options = {
        silent = true;
        noremap = true;
        desc = "Toggle autoformat globally";
      };
    }
    {
      action = {
        __raw = ''
            -- we do this instead of `not vim.g.disable_autoformat` so that we
            -- can handle when `vim.g.disable_autoformat` has not yet been defined
          function()
            if (vim.b[0].disable_autoformat) then
              vim.b[0].disable_autoformat = false
            else
              vim.b[0].disable_autoformat = true
            end
          end
        '';
      };
      key = "<Leader>cbf";
      options = {
        silent = true;
        noremap = true;
        desc = "Toggle autoformat in buffer";
      };
    }
  ];
}
