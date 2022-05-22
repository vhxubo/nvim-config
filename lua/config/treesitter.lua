local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = { "vue", "lua", "vim", "html", "css", "scss", "javascript", "typescript", "tsx", "python", "json" },
  sync_install = false,
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
}
