;;This is a great example/template for executing arbitrary code on the current buffer from an external
;;executable, suitable for linting, formatting, any automated tools that will "fix" the file

;; Run isort against the current file and revert the buffer
(defun isort-imports ()
  "run isort on the current file and revert the buffer"
  (interactive)
  (shell-command
   (format "isort %s"
           (shell-quote-argument (buffer-file-name))))
  (revert-buffer t t t))

(require 'py-isort)
(add-hook 'before-save-hook 'py-isort-before-save)

;; Add a hook that auto runs isort on save for all python files
;; (add-hook 'python-mode-hook
;;           (lambda ()(add-hook 'before-save-hook 'isort-imports nil 'local)))

