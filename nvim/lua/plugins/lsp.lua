return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config("clangd", {
                capabilities = capabilities,
                cmd = {
                    "clangd",
                    "--background-index",
                    "--clang-tidy",
                    "--completion-style=detailed",
                    "--header-insertion=iwyu",
                    "--offset-encoding=utf-16",
                },
            })
            vim.lsp.config("vtsls", {
                capabilities = capabilities,
                settings = {
                    typescript = {
                        tsserver = {
                            maxTsServerMemory = 8192,
                        },
                    },
                },
            })
            vim.lsp.config("pyrefly", {
                capabilities = capabilities,
                settings = {
                    python = {
                        analysis = {
                            autoImportCompletions = false,
                        },
                        pyrefly = {
                            diagnosticMode = "openFilesOnly",
                            typeCheckingMode = "basic",
                        },
                    },
                },
            })
            vim.lsp.enable({ "lua_ls", "clangd", "pyrefly", "ruff", "vtsls" })
        end,
    }
}
