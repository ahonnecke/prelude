(custom-set-variables
 '(flycheck-python-flake8-executable "python3")
 '(flycheck-python-pycompile-executable "python3")
 '(flycheck-python-pylint-executable "python3"))

(defun flycheck-python-setup ()
  (flycheck-mode))
(add-hook 'python-mode-hook 'flycheck-python-setup)

(setq-default flycheck-flake8-maximum-line-length 100)

(add-hook 'after-init-hook #'global-flycheck-mode)

(add-hook 'flycheck-mode-hook 'abbrev-mode)

(add-hook 'flycheck-mode-hook
          (lambda () (global-set-key (kbd "H-; n") 'flycheck-next-error)))
