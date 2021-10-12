config = {
    cmd = { "bash-language-server", "start" },
    cmd_env = { GLOB_PATTERN = "*@(.sh|.inc|.bash|.command)" },
    filetypes = { "sh" }
}

require('lspconfig').bashls.setup{config}
