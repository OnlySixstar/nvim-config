local opt = vim.opt
-- Line Number
opt.relativenumber = true
opt.number = true

-- Tab config
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- prevent line to wrap
opt.wrap = false

-- cursorline
opt.cursorline = true

-- mouse
opt.mouse:append("a")

--clipboard
opt.clipboard:append("unnamedplus")

-- default window split
opt.splitright = true
opt.splitbelow = true

-- search config
opt.ignorecase = true
opt.smartcase = true

--appearance config
opt.termguicolors = true
opt.signcolumn = "yes"

--theme
vim.cmd[[colorscheme tokyonight-night]]

