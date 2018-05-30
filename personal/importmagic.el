(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "Code/importmagic/importmagic.el")))
(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "Code/importmagic/importmagic.py")))

(use-package importmagic
  :ensure t
  :config
  (add-hook 'python-mode-hook 'importmagic-mode))
