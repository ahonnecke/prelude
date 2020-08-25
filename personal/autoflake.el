(setenv "PYTHONIOENCODING" "utf8")

;; (add-hook 'python-mode-hook
;;  (lambda ()(add-hook 'before-save-hook 'elpy-autoflake8-fix-code nil 'local)))

;; (add-hook 'python-mode-hook
;;           (lambda () (global-set-key (kbd "H-f") 'py-autoflake8-buffer)))

;; (add-hook 'python-mode-hook 'py-autoflake8-enable-on-save)

;; ;; (add-hook 'python-mode-hook
;; ;;           (lambda ()(add-hook 'before-save-hook 'py-autoflake8-buffer nil 'local)))

;; (setq py-autoflake8-options '("--max-line-length=120"))
