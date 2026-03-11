;;; key-helper.el --- which-key configuration

(use-package which-key
  :init
  (which-key-mode)
  :custom
  (which-key-idle-delay 0.5)
  (which-key-max-description-length 32))

(provide 'key-helper)
