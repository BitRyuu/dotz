(use-package company
  :config
  (global-company-mode 1))

(use-package company-box
  :hook (company-mode . company-box-mode))

(use-package yasnippet
  :config
  (yas-global-mode 1))

(use-package lsp-mode
  :commands lsp
  :hook ((python-mode . lsp)
         (go-mode . lsp)
         (rust-mode . lsp)
         (c-mode . lsp)
         (c++-mode . lsp)
         (swift-mode . lsp))
  :custom
  (lsp-clients-clangd-executable "clangd")
  (lsp-gopls-server-path "gopls")
  (lsp-rust-server 'rust-analyzer)
  (lsp-rust-analyzer-server-command '("rust-analyzer"))
  (lsp-idle-delay 0.5))

(use-package lsp-ui)

(provide 'lsp)
