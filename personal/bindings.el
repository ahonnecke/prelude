(use-package key-chord :ensure t)
(require 'key-chord)
(key-chord-mode 1)

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

;; Go to line number
;;(global-set-key (kbd "C-L") 'goto-line)

;; Go to visible line with home row keys
(global-set-key (kbd "H-l") 'avy-goto-line)

;;e
(global-set-key (kbd "C-c r") 'replace-string)
(global-set-key (kbd "C-c q") 'query-replace)

(global-set-key (kbd "H-s") 'swiper)
(global-set-key (kbd "M-u") 'string-inflection-python-style-cycle)
(global-set-key (kbd "H-M-u") 'string-inflection-all-cycle)

(global-set-key (kbd "C-s") 'isearch-forward)


(key-chord-define-global ";j" 'avy-goto-char)

;;p
;;(global-set-key (kbd "M-s-π") 'pre-commit)

;;f
(global-set-key (kbd "s-f") 'forward-sexp)
(global-set-key (kbd "s-b") 'backward-sexp)

(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "C-x C-k") 'kill-buffer)
(global-set-key (kbd "s-b") 'backward-sexp)

(global-set-key (kbd "H-y") 'ace-window)
(global-set-key (kbd "H-u") 'ace-swap-window)
(key-chord-define-global ";a" 'ace-window)
(key-chord-define-global ";s" 'ace-swap-window)

(key-chord-define-global ";u" 'undo)
(key-chord-define-global ";k" 'kill-buffer)
(key-chord-define-global "'." 'ace-jump-mode) ;; select characters to jump to
;;(key-chord-define-global "''" 'save-buffer)
(key-chord-define-global ";c" 'string-inflection-all-cycle)

(global-set-key (kbd "H-; .") 'end-of-buffer)
(global-set-key (kbd "H-; ,") 'beginning-of-buffer)

(global-set-key (kbd "H-.") 'end-of-buffer)
(global-set-key (kbd "H-,") 'beginning-of-buffer)

(global-unset-key (kbd "C-c d"))
;; (local-unset-key (kbd) "C-c d"
(global-set-key (kbd "C-c d") 'crux-duplicate-current-line-or-region)

(define-key prelude-mode-map (kbd "M-o") (quote ace-window))
(define-key shell-mode-map (kbd "M-o") (quote ace-window))

(define-key shell-mode-map (kbd "C-x o") (quote ace-window))
(global-set-key (kbd "C-x o") (quote ace-window))

(define-key prelude-mode-map (kbd "H-o") (quote ace-window))

(define-key prelude-mode-map (kbd "H-r") 'crux-recentf-find-file)
(global-set-key (kbd "H-r") 'crux-recentf-find-file)
(define-key prelude-mode-map (kbd "H-j") 'crux-top-join-line)
(define-key prelude-mode-map (kbd "H-k") 'crux-kill-whole-line)
(define-key prelude-mode-map (kbd "H-m m") 'magit-status)
(define-key prelude-mode-map (kbd "H-m l") 'magit-log)
(define-key prelude-mode-map (kbd "H-m f") 'magit-log-buffer-file)
(define-key prelude-mode-map (kbd "H-m b") 'magit-blame)
(define-key prelude-mode-map (kbd "H-o") 'crux-smart-open-line-above)
(define-key projectile-mode-map (kbd "H-g") 'projectile-grep)

(define-key prelude-mode-map (kbd "H-C-f") 'find-file)
(global-set-key (kbd "H-f") 'fzf)
(define-key prelude-mode-map (kbd "H-o") 'browse-url-at-point)

(global-set-key (kbd "C-w") 'kill-region)

;;(global-set-key (kbd "M-l") 'goto-line)
(global-set-key (kbd "C-l") 'recenter-top-bottom)

(global-set-key (kbd "H-; l") 'flycheck-list-errors)

(global-set-key (kbd "C-;") 'er/expand-region)
(define-key flyspell-mode-map (kbd "C-;") 'er/expand-region)

(global-set-key (kbd "C-<next>") 'windmove-right)
(global-set-key (kbd "C-<prior>") 'windmove-left)
