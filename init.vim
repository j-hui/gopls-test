set nocompatible
filetype plugin indent on
syntax enable

set runtimepath+=$PWD/nvim-lspconfig
set runtimepath+=$PWD/fidget.nvim

lua <<EOF
  -- Assumes gopls is already installed and on PATH
  require"lspconfig".gopls.setup {}
  require"fidget".setup { debug = { logging = true, enable = true } }
EOF
