(defun find-sourcekit-lsp ()
  (or (executable-find "sourcekit-lsp")
      (and (eq system-type 'darwin)
           (string-trim
            (shell-command-to-string "xcrun -f sourcekit-lsp")))))

(use-package swift-mode
  :mode "\\.swift\\'"
  :hook (swift-mode . lsp))

(use-package lsp-sourcekit
  :after lsp-mode
  :custom
  (lsp-sourcekit-executable (find-sourcekit-lsp)))
