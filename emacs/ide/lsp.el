(use-package yasnippet
  :config
  (yas-global-mode 1))

(use-package lsp-mode
  :commands lsp
  :custom
  (lsp-clients-clangd-executable "clangd")
  (lsp-gopls-server-path "gopls")
  (lsp-rust-server 'rust-analyzer)
  (lsp-rust-analyzer-server-command '("rust-analyzer"))
  (lsp-idle-delay 0.5))

(provide 'lsp)
