local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
  return
end

local b = null_ls.builtins

null_ls.setup {
  sources = {
    b.formatting.prettierd,
    b.formatting.stylua,
    b.diagnostics.eslint,
    b.completion.spell,
  },
}
