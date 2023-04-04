local ok, null_ls = pcall(require, "null-ls")

if not ok then
   return
end

local sources = {
   null_ls.builtins.formatting.clang_format,
   null_ls.builtins.formatting.rustfmt,
   null_ls.builtins.formatting.shfmt,
   null_ls.builtins.formatting.prettierd.with {
      filetypes = { "html", "json", "markdown", "scss", "css", "typescript" },
   },
   null_ls.builtins.diagnostics.eslint.with {
      command = "eslint_d",
   },
}

local M = {}
M.setup = function(on_attach)
   null_ls.config {
      sources = sources,
   }
   require("lspconfig")["null-ls"].setup { on_attach = on_attach }
end

return M
