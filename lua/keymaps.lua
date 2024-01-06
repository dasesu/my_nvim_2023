local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap
--vim.g.mapleader = "\\"
--vim.maplocalleader = "\\"
--print(vim.inspect(vim.g.mapleader))

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- set spell check for spanish
keymap('n', '<leader>s', ':setlocal spell spelllang=es<CR>', opts)
keymap('n', '<leader>so', ':set nospell<CR>', opts)
-- word suggets with telescope
keymap('n', 'z-', ':Telescope spell_suggest<CR>', opts)


-- Better window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-l>', '<C-w>l', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-j>', '<C-w>j', opts)

-- remove keys actions
keymap('n', "<Space>", "<Nop>", opts)
keymap('n', '-', '<NOP>', opts )



-- sessions
-- map <F2> :mksession! ~/vim_session <cr> " Quick write session with F2
keymap('n', '<F2>', ':mksession! ~/vim_session/vim_session  <cr>', opts)
keymap('n', '<F3>', ':source ~/vim_session/vim_session  <cr>', opts)

-- BufferlineMaps
keymap('n', '<Leader>,', ':bprevious<CR>', opts)
keymap('n', '<Leader>.', ':bnext<CR>', opts)

-- AlternateTabs
keymap('n', '<Leader>;', 'gT', opts)
keymap('n', '<Leader>\'', 'gt', opts)


-- classic save shortcut
keymap('n', '<C-s>', ':w<CR>', opts)

-- for multicursor
-- keymap('n', '<C-d>', ':VM_maps[\'Find Under\']<CR>', opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":horizontal resize -2<CR>", opts) -- sobreescrita por multiple cursor
keymap("n", "<C-Down>", ":horizontal resize +2<CR>", opts) -- sobreescrita por multiple cursor
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Buffer navigation
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- keymap("n", "<RightMouse>", ":Alpha<CR>", opts)

-- Move text up and down
-- keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
-- keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
--keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- better paste
keymap("v", "p", '"_dP', opts)

-- file explore
keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', opts)
-- keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', opts)

-- Tab switch buffer
-- vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<S-TAB>', 'bprevious<CR>', { noremap = true, silent = true })

-- classic copy, cut, and paste shortcuts
keymap('v', '<C-c>', '"+yi', term_opts)
keymap('v', '<C-x>', '"+c', term_opts)
keymap('v', '<C-v>', 'c<ESC>"+p', term_opts)
keymap('i', '<C-v>', '<C-r><C-o>+', term_opts)




-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Indent 
keymap('n', '<TAB>', '>>_', opts)
keymap('n', '<S-TAB>', '<<_', opts)
keymap('i', '<S-TAB>', '<C-D>', opts)
keymap('v', '<TAB>', '>gv', opts)
keymap('v', '<S-TAB>', '<gv', opts)


-- transparency toggle
keymap('n', '<Leader>t', ':TransparentToggle<CR>', opts)

-- Colorize toggle
keymap('n', '<Leader>c', ':ColorizerToggle<CR>', opts)

-- MarkdownToggle
keymap('n', '<Leader>m', ':MarkdownPreviewToggle<CR>', opts)

-- ZenMode
keymap('n', '<Leader>z', ':ZenMode<CR>', opts)


keymap("n", "<esc><esc>", "<cmd>nohlsearch<cr>", opts)

keymap("n", "Q", "<cmd>Bdelete!<CR>", opts)
keymap("n", "<F4>", "<cmd>Telescope resume<cr>", opts)
keymap("n", "<F5>", "<cmd>Telescope commands<CR>", opts)

keymap("n", "<F7>", "<cmd>TSHighlightCapturesUnderCursor<cr>", opts)
keymap("n", "<F11>", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "<F12>", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)

keymap("n", "<Leader>p", ":Telescope <cr>", opts)

keymap(
  "n",
  "<C-p>",
  "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
  opts
)

keymap("n", "-", ":lua require('luasnip.loaders').edit_snippet_files()<cr>", opts)

--keymap(
--     "n",
--  "<F6>",
--  [[:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>]],
--  opts
--)

-- keymap("n", "<F8>", "<cmd>TSPlaygroundToggle<cr>", opts)

-- keymap("v", "//", [[y/\V<C-R>=escape(@",'/\')<CR><CR>]], opts)

-- keymap("n", "<C-t>", "<cmd>lua vim.lsp.buf.document_symbol()<cr>", opts)

-- keymap("n", "<C-\\>", "<cmd>vsplit<cr>", opts)

-- vim.cmd[[nnoremap c* /\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn]]

-- vim.cmd[[nnoremap c# ?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN]]

-- keymap("n", "c*", [[/\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgn]], opts)

-- keymap("n", "c#", [[?\<<C-R>=expand('<cword>')<CR>\>\C<CR>``cgN]], opts)

-- keymap("n", "gx", [[:execute '!brave ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)

-- keymap("n", "gx", [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)

-- Change '<CR>' to whatever shortcut you like :)

-- vim.api.nvim_set_keymap("n", "<CR>", "<cmd>NeoZoomToggle<CR>", { noremap = true, silent = true, nowait = true })

-- vim.api.nvim_set_keymap(
--  "n",
--  "=",
--  "<cmd>JABSOpen<cr>",
--  { noremap = true, silent = true, nowait = true }
-- )




