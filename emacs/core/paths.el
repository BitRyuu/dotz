(defun add-to-path (path)
  (let ((expanded (expand-file-name path)))
    (setenv "PATH" (concat (getenv "PATH") ":" expanded))
    (add-to-list 'exec-path expanded)))

(add-to-path "~/n/bin")
(add-to-path "~/go/bin")
