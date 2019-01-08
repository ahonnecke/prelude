;;(require 'py-isort)

;; (add-hook 'python-mode-hook
;;  (lambda ()(add-hook 'before-save-hook 'py-isort-before-save nil 'local)))

(defun isort-imports ()
  "run a command on the current file and revert the buffer"
  (interactive)
  (shell-command
   (format "pipenv run isort %s"
           (shell-quote-argument (buffer-file-name))))
  (revert-buffer t t t))
(global-set-key (kbd "M-s-^") 'isort-imports)
