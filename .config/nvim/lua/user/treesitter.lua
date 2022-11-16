local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup({
    ensure_installed = "all", -- one of "all" or a list of languages
    ignore_install = { "" }, -- List of parsers to ignore installing
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = true,
    },
    autopairs = {
        enable = true,
    },
    indent = {
        enable = true,
        -- disable = { "" }
    },
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },
    textobjects = {
        select = {
            enable = true,
            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
            },
        },
    },
})
