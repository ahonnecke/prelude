(defun apply-black ()
  "run black on the current file and revert the buffer"
  (interactive)
  (shell-command
   (format "black %s"
           (shell-quote-argument (buffer-file-name))))
  (revert-buffer t t t))

(add-hook 'before-save-hook 'blacken-buffer)
(add-hook 'python-mode-hook 'blacken-mode)
