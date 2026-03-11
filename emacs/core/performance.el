(setq read-process-output-max (* 1024 1024))

(setq native-comp-async-report-warnings-errors nil)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 2 1000 1000))))

(pixel-scroll-precision-mode 1)
