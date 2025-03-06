require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "lua", "bash", "comment", "cpp", "latex", "erlang", "java", "c", "lua", "vim", "vimdoc", "query", "cuda"},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	highlight = {
		enable = true,
	}
}
