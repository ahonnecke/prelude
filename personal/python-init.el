(use-package python
  :mode ("\\.py\\'" . python-mode)
        ("\\.wsgi$" . python-mode)
  :interpreter ("python" . python-mode)

  :init
  (setq-default indent-tabs-mode nil)

  :config
  (setq python-indent-offset 4)
  (add-hook 'python-mode-hook 'smartparens-mode)
  (add-hook 'python-mode-hook 'color-identifiers-mode)

  (global-set-key (kbd "C-c C-r") 'python-indent-shift-right)
  (global-set-key (kbd "C-c C-l") 'python-indent-shift-left)
  (define-key python-mode-map (kbd "C-c C-r") 'python-indent-shift-right)
  (define-key python-mode-map (kbd "C-c C-l") 'python-indent-shift-left)
  (define-key python-mode-map (kbd "M-l") 'goto-line)
  )

(setq python-shell-interpreter "python3")

(global-set-key (kbd "M-l") 'goto-line)
(global-set-key (kbd "C-l") 'recenter-top-bottom)

(add-hook 'python-mode-hook
          (lambda () (modify-syntax-entry ?_ "w" python-mode-syntax-table)))

;;Does not seem to be working for web mode
(add-hook 'web-mode-hook
          (lambda () (modify-syntax-entry ?_ "w" web-mode-syntax-table)))

(add-hook 'web-mode-hook
          (lambda () (modify-syntax-entry ?_ "w")))
