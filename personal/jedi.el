;; Standard Jedi.el setting
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:complete-on-dot 't)

;; ;; Type:
;; ;;     M-x el-get-install RET jedi RET
;; ;;     M-x jedi:install-server RET
;; ;; Then open Python file.

;; ;; (setq jedi:environment-root "jedi")  ; or any other name you like

;; ;; (setq venv-location "/Users/ahonnecke/.pyenv/versions/web-6EpGRwxA")
;; ;; (setq python-environment-directory venv-location)

;; ;; (setq jedi:server-args
;; ;;       '("--virtual-env" "/Users/ahonnecke/.pyenv/versions/web-6EpGRwxA/"
;; ;; ))

;; ;; (setq jedi:environment-virtualenv
;; ;;        (append python-environment-virtualenv
;; ;;                '("--python" "/Users/ahonnecke/.pyenv/versions/web-6EpGRwxA/bin/python3")))

;; ;; (setq jedi:environment-virtualenv
;; ;;        (list "virtualenv"))

;; ;; (setq jedi:server-args
;; ;;       '("--virtual-env" "/Users/ahonnecke/.pyenv/versions/web-6EpGRwxA/"))

;; (setq jedi:environment-virtualenv "/Users/ahonnecke/.pyenv/versions/web-6EpGRwxA/")
;; (setq jedi:environment-root "/Users/ahonnecke/.pyenv/versions/web-6EpGRwxA/")
