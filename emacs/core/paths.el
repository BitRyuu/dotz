(defun add-to-path (path)
  (setenv "PATH" (concat (getenv "PATH") ":" path))
  (add-to-list 'exec-path path))

(add-to-path "~/n/bin")
(add-to-path "~/go/bin")
