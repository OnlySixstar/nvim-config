require'nvim-treesitter.configs'.setup {
  -- add different language
  ensure_installed = {"vim","help","bash","c","cpp","lua","python","java","make","cmake"},

  highlight = { enable = true },
  indent = { enable = true },

  -- different brackets color
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,

  }

}
