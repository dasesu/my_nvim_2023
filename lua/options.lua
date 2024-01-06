local options = {
   syntax="enable",                        -- Enable syntax highlighing
   backup = false,                         -- creates a backup file
   clipboard = "unnamedplus",              -- Allow nvim to access the system clipboard
   cmdheight=2,                            -- More space for display messages
   completeopt = {"menuone","noselect"},   -- Mostly just for cmp
   conceallevel = 0,                       -- So that I can see in markdown files
   fileencoding = "utf-8",                 -- the encoding displayed
   encoding = "utf-8",                     -- the encoding displayed
   hlsearch = true,                        -- hightlight all matches on previous search patter
   ignorecase = true,                      -- ignore case in search pattern
   foldcolumn="3",                         -- left margin
   colorcolumn = "80",                     -- limit line set to 80 for better coding
   mouse = "a",                            -- mouse modes: a, v or r for remove
   ruler = true,                           -- show the position of the cursor all the time
   pumheight = 10,                         -- Make the popup menu smaller
   --tabstop = 3  overwrited by softtabstop-- display the width of tab as 3 spaces but the tab char remain as a tab
                                           -- (cont) in other programas the tab is displayed as usual
                                           -- (cont) for example 8 "spaces".
   softtabstop = 3,                        -- change tab into spaces and affect the backspace character too
                                           -- (cont) deleting 3 if it change
   shiftwidth = 3,                         -- governs indentation via >> and friends.
                                           -- (cont) usually must set at the same number of tabstop or sts   
   showtabline=3,                          -- always show tabs
   expandtab = true,                       -- act just like a tab but inserting spaces, 
                                           -- (cont) for insert a real tab press ctrl + v first
   smartindent = true,                     -- reacts to the syntax/style of the code you are editing (especially for C)
   autoindent = true,                      -- essentially tells vim to apply the indentation of the current line
                                           -- (cont) to the next (created by pressing enter in insert mode 
   showmatch=true,                         -- nos muestra donde terminan parentesis
   smarttab = true,                        -- Makes tabbing smarter will realize you have 2 vs 4
   hidden = false,                          -- Requered to keep multiple buffers open
   termguicolors = true,                   -- required by colorized  
   signcolumn="yes",                       --
   splitbelow=true,                        -- Horizontal split will automatically be bellow
   splitright=true,                        -- Vertical split will automatically be to the right
   laststatus=0,                           -- Always display the status line
   swapfile= false,
   showmode=true,                          -- no need to see the current mode INSERT
   cursorline=false,                       --  
   updatetime=300,                         -- faster completition
   timeoutlen=400,                         -- this is set by default in 1000 
   number = true,                          -- Show line number
   guifont = "monospace:h17",
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

