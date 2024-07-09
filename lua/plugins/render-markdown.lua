return {
	"MeanderingProgrammer/markdown.nvim",
	enabled = true,
	latex_enabled = false,
	name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	ft = "markdown",
	config = function()
		require("render-markdown").setup({
			heading = {
        enabled = true,
				-- Replaces '#+' of 'atx_h._marker'
				-- The number of '#' in the heading determines the 'level'
				-- The 'level' is used to index into the array using a cycle
				-- The result is left padded with spaces to hide any additional '#'
				icons = { "☶ ", "☴ ", "☱ ", "☳ ", "☲ ", "☷ " },
				-- Added to the sign column
				-- The 'level' is used to index into the array using a cycle
				signs = { "󰫎 " },
				-- The 'level' is used to index into the array using a clamp
				-- Highlight for the heading icon and extends through the entire line
				backgrounds = { "titleH1", "titleH2", "titleH3", "titleH4", "titleH5", "titleH6" },
				-- The 'level' is used to index into the array using a clamp
				-- Highlight for the heading and sign icons
				foregrounds = { "markdownH1", "markdownH2", "markdownH3", "markdownH4", "markdownH5", "markdownH6" },
			},
			code = {
        enabled = true,
				-- Determines how code blocks & inline code are rendered:
				--  none: disables all rendering
				--  normal: adds highlight group to code blocks & inline code
				--  language: adds language icon to sign column and icon + name above code blocks
				--  full: normal + language
				style = "language",
				-- Highlight for code blocks & inline code
				highlight = "ColorColumn",
			},
			bullet = {
				highlight = "Boolean",
			},
		})
	end,
}
