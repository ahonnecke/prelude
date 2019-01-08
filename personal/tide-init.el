;; https://github.com/ananthakumaran/tide

;; (use-package tide
;;   :ensure t
;;   :init
;;   (defun setup-tide-mode ()
;;     (interactive)
;;     (tide-setup)
;;     (flycheck-mode +1)
;;     (setq flycheck-check-syntax-automatically '(save mode-enabled))
;;     (setq-default flycheck-disabled-checkers (append flycheck-disabled-checkers '(tsx-tide)))
;;     (flycheck-add-next-checker 'javascript-eslint 'jsx-tide 'append)
;;     (eldoc-mode +1)
;;     (tide-hl-identifier-mode +1)
;;     ;; company is an optional dependency. You have to
;;     ;; install it separately via package-install
;;     ;; `M-x package-install [ret] company`
;;     (company-mode +1))
;;   (add-hook 'rjsx-mode-hook 'setup-tide-mode)
;;   (add-hook 'js2-mode-hook 'setup-tide-mode))
