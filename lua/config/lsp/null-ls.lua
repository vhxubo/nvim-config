local status_ok, null_ls = pcall(require, "null_ls")
if not status_ok then
  return
end

null_ls.setup {
  sources = {
    require("null-ls").builtins.formatting.stylua,
    require("null-ls").builtins.diagnostics.eslint,
    require("null-ls").builtins.completion.spell,
  },
}
