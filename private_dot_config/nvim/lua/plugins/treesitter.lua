return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",

    config = function()
      vim.filetype.add({
	  extension = {
	      shader = "glsl",
	  },
      })
      local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      parser_config.glsl = {
        install_info = {
          url = "https://github.com/theHamsta/tree-sitter-glsl",
          files = { "src/parser.c" },
          branch = "main",
        },
        filetype = {"glsl", "vert", "frag", "compute", "shader"},
      }

      require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "cpp", "lua", "glsl", "vim", "query", "c_sharp"},
        highlight = { enable = true, additional_vim_regex_highlighting = false },
        indent = { enable = true },
      })
      print("Treesitter loaded!")
    end,
}

