(column-number-mode 1)
(global-display-line-numbers-mode)
(tool-bar-mode 0)
(scroll-bar-mode 0)

(setq inhibit-startup-screen t)

(set-face-attribute 'default nil
                    :font "JetBrains Mono"
                    :height 170)

(set-frame-parameter (selected-frame) 'alpha '(95 . 95))
(add-to-list 'default-frame-alist '(alpha . (95 . 90)))

(load-theme 'dracula t)

(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :custom
  (doom-modeline-height 25))

(use-package which-key
  :config
  (which-key-mode))

(setq treesit-font-lock-level 4)
