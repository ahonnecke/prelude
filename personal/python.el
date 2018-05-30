(fset 'indent-block
      "\C-c>")

(fset 'unindent-block
      "\C-c<")

(global-set-key (kbd "H-i") 'indent-block)
(global-set-key (kbd "H-u") 'unindent-block)

(global-set-key (kbd "s->") 'indent-block)
(global-set-key (kbd "s-<") 'unindent-block)

(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-p") 'backward-paragraph)

(global-set-key (kbd "H--") 'string-inflection-underscore)
(global-set-key (kbd "H-c") 'string-inflection-camelcase)

(setq py-python-command "ipython")
(setq python-shell-interpreter "python3")

(defun flycheck-python-setup ()
  (flycheck-mode))
(add-hook 'python-mode-hook 'flycheck-python-setup)

;; (when (require 'flycheck nil t)
;;   (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
;;   (add-hook 'elpy-mode-hook 'flycheck-mode))

(add-hook 'python-mode-hook
          (lambda () (modify-syntax-entry ?_ "w" python-mode-syntax-table)))

(add-hook 'python-mode-hook
          (lambda () (global-set-key (kbd "H-f") 'elpy-autopep8-fix-code)))
