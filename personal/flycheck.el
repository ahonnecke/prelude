(defun flycheck-python-setup ()
  (flycheck-mode))
(add-hook 'python-mode-hook 'flycheck-python-setup)

(setq-default flycheck-flake8-maximum-line-length 119)
