(defun apply-black ()
  "run black on the current file and revert the buffer"
  (interactive)
  (shell-command
   (format "black %s"
           (shell-quote-argument (buffer-file-name))))
  (revert-buffer t t t))

;; (add-hook 'python-mode-hook 'blacken-mode)

;; (defun my-python-mode-before-save-hook ()
;;   (when (eq major-mode 'python-mode)
;;     (message "Any color you like") (blacken-buffer)))

;; (add-hook 'before-save-hook #'my-python-mode-before-save-hook)
