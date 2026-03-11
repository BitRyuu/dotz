;;; navigation.el --- completion, search, navigation

(use-package vertico
  :init
  (vertico-mode))

(use-package consult
  :bind (("C-s" . consult-line)
         ("C-c s" . consult-ripgrep)
         ("C-x b" . consult-buffer)
         ("C-x C-r" . consult-recent-file)
         ("C-c f" . consult-find)))

(use-package consult-projectile
  :after (consult projectile))

(setq consult-preview-key '(:debounce 0.2 any))

(use-package ripgrep)

(use-package treemacs
  :bind (("C-x t t" . treemacs))
  :config
  (setq treemacs-width 35))

(use-package orderless
  :init
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides
        '((file (styles partial-completion)))))

(use-package embark
  :bind (("C-." . embark-act)
         ("C-;" . embark-dwim)
         ("C-h B" . embark-bindings)))

(use-package embark-consult
  :after (embark consult))

(use-package marginalia
  :init
  (marginalia-mode))

(provide 'navigation)
