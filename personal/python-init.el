(add-hook 'python-mode-hook
          (lambda () (modify-syntax-entry ?_ "w" python-mode-syntax-table)))

;;Does not seem to be working for web mode
(add-hook 'web-mode-hook
          (lambda () (modify-syntax-entry ?_ "w" web-mode-syntax-table)))

(add-hook 'web-mode-hook
          (lambda () (modify-syntax-entry ?_ "w")))
