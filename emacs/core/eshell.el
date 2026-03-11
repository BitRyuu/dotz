(defun adviced:eshell/cat (orig-fun &rest args)
  "Like eshell/cat but with image support."
  (if (seq-every-p (lambda (arg)
                     (and (stringp arg)
                          (file-exists-p arg)
                          (image-supported-file-p arg)))
                   args)
      (with-temp-buffer
        (insert "\n")
        (dolist (path args)
          (let ((spec (create-image
                       (expand-file-name path)
                       (image-type-from-file-name path)
                       nil
                       :max-width 350)))
            (image-flush spec)
            (insert-image spec))
          (insert "\n"))
        (insert "\n")
        (buffer-string))
    (apply orig-fun args)))

(advice-add #'eshell/cat :around #'adviced:eshell/cat)
