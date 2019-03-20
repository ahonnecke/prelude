;; (defun contextual:find-file ()
;;   (interactive)
;;   (call-interactively (if (projectile-project-p)
;;                           'projectile-find-file
;;                         'helm-find-files)))
(define-key global-map (kbd "C-x f") 'helm-find-files)

;;(define-key projectile-mode-map (kbd "C-x f") 'helm-find-files)
;;(define-key global-map (kbd "C-x C-f") 'contextual:find-file)
;; (define-key projectile-mode-map (kbd "M-r a") 'ag-regexp-project-at-point)
;; (define-key projectile-mode-map (kbd "M-r r") 'ag-project-regexp)

;; (global-set-key (kbd "C-c h") 'dash-at-point)
;; ;(global-set-key (kbd "C-M-d") 'dash-at-point)

;; ;;(setq switch-to-ag-buffer
;; ;;      [?\C-x ?b ?* ?a ?g ?  ?s ?e ?a ?r ?c ?h ?* return])
;; ;(define-key projectile-mode-map [?\s-c] 'switch-to-ag-buffer)
;; ;;(global-set-key (kbd "C-c p") 'switch-to-ag-buffer)

;; ;(global-set-key (kbd "M-<return>") 'hippie-expand)

(global-set-key (kbd "C-c c") 'comment-region)
;;(global-set-key (kbd "H-c") 'comment-region)

(global-set-key (kbd "M-<return>") 'hippie-expand)

;; ;(global-set-key (kbd "M-<return>") 'company-complete)
;; ;(global-set-key (kbd "TAB") 'company-complete)

;; ;;(define-key c-mode-map "\C-j" 'newline-and-indent)

;; ;;(define-key js-mode-map (kbd "C-c c") 'comment-region)
;; ;;(define-key js-mode-map (kbd "C-c u") 'uncomment-region)

(global-set-key (kbd "C-c m") 'string-inflection-lower-camelcase)
(global-set-key (kbd "C-c M") 'string-inflection-camelcase)
(global-set-key (kbd "C-c -") 'string-inflection-underscore)

;; CTL shift l, why didn't I do this sooner?
(global-set-key (kbd "C-L") 'goto-line)
;;(global-set-key (kbd "C-G") 'magit-status)

;;e
;;(global-set-key (kbd "M-s-´") 'er/expand-region)
(global-set-key (kbd "C-c r") 'replace-string)
(global-set-key (kbd "C-c q") 'query-replace)

;;(global-set-key (kbd "C-c p a") 'ag-project-at-point)
(global-set-key (kbd "S-p a") 'ag-project-at-point)
;;a
(global-set-key (kbd "M-s-å") 'ag-project-at-point)

;;s
(global-set-key (kbd "M-s-ß") 'swiper)
(global-set-key (kbd "C-s") 'isearch-forward)


(global-set-key (kbd "s-a") 'avy-goto-char)

;;l
(global-set-key (kbd "M-s-¬") 'avy-goto-line)

;;p
(global-set-key (kbd "M-s-π") 'pre-commit)

;;f
(global-set-key (kbd "s-f") 'forward-sexp)
(global-set-key (kbd "s-b") 'backward-sexp)

(global-set-key (kbd "M-s-÷") 'comment-region)
(global-set-key (kbd "M-s-?") 'uncomment-region)

;; ;(fset 'switch-to-sql-buffer
;;       ;(switch-to-buffer "*SQL*"))

;; ;(key-chord-define-global "AA" 'switch-to-ag-buffer)

;; (global-set-key (kbd "C-<f8>")
;;                 (lambda ()
;;                   (interactive)
;;                   (kmacro-end-and-call-macro 0)))

;; ;(setq mac-command-modifier 'meta)
(setq mac-escape-modifier 'super)

;; ;(key-chord-define-global "MM" 'switch-to-sql-buffer)

;; (global-unset-key (kbd "C-c d"))
;; (local-unset-key (kbd "C-c d"))
;; (global-set-key (kbd "C-c d") 'crux-duplicate-current-line-or-region)

;; (global-unset-key (kbd "E-RET"))
;; (global-set-key (kbd "E-RET") 'hippie-expand)

(define-key prelude-mode-map (kbd "M-o") (quote ace-window))
