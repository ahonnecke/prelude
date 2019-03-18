;; (add-hook 'python-mode-hook
;;  (lambda ()(add-hook 'before-save-hook 'elpy-autopep8-fix-code nil 'local)))

(add-hook 'python-mode-hook
          (lambda () (global-set-key (kbd "H-f") 'py-autopep8-buffer)))

;; (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

;; (add-hook 'python-mode-hook
;;           (lambda ()(add-hook 'before-save-hook 'py-autopep8-buffer nil 'local)))

(setq py-autopep8-options '("--max-line-length=120"))
