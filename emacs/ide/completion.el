;;; completion.el --- modern completion stack

(use-package corfu
  :init
  (global-corfu-mode)
  :custom
  (corfu-auto t)
  (corfu-cycle t)
  (corfu-preview-current nil)
  (corfu-auto-delay 0.2)
  (corfu-auto-prefix 2))

(use-package kind-icon
  :after corfu
  :custom
  (kind-icon-default-face 'corfu-default)
  :config
  (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter))

(use-package consult-lsp
  :after (consult lsp-mode)
  :bind
  (("C-c l s" . consult-lsp-symbols)
   ("C-c l d" . consult-lsp-diagnostics)))

(provide 'completion)
