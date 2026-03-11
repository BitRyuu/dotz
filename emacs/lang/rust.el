(use-package rust-mode
  :mode "\\.rs\\'"
  :hook (rust-mode . lsp)
  :config
  (setq rust-format-on-save t))

(use-package cargo
  :hook (rust-mode . cargo-minor-mode))
