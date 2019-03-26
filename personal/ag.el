;(fset 'switch-to-ag-buffer 'switch-to-ag-buffer-2)

(define-key projectile-mode-map (kbd "C-M-u") 'open-ag-function-at-point)
(define-key projectile-mode-map (kbd "C-M-r") 'open-ag-regexp-at-point)
(define-key projectile-mode-map (kbd "C-M-c") 'open-ag-class-at-point)
;(define-key projectile-mode-map (kbd "C-M-t") 'open-ag-thing-at-point)
;(define-key projectile-mode-map (kbd "C-M-k") 'open-ag-thing-at-point)
(define-key projectile-mode-map (kbd "C-M-m") 'open-ag-method-at-point)
(define-key projectile-mode-map (kbd "C-M-s") 'open-ag-static-at-point)
(define-key projectile-mode-map (kbd "C-M-v") 'open-ag-thing-at-point-vendor)
(define-key projectile-mode-map (kbd "C-M-j") 'ag-region)


;;(define-key projectile-mode-map (kbd "H-a") 'ag-project)
;;(define-key projectile-mode-map (kbd "M-a") 'ag)
(define-key projectile-mode-map (kbd "H-a") 'ag-project-at-point)
;;(define-key projectile-mode-map (kbd "H-j") 'ag-region)
;;(define-key projectile-mode-map (kbd "H-r") 'ag-project-regexp)
;; (define-key projectile-mode-map (kbd "S-p a") 'ag-project-regexp)
;; (define-key projectile-mode-map (kbd "C-c p a") 'ag-project-regexp)
;; (define-key projectile-mode-map (kbd "C-M k") 'ag-project-regexp)
;;(define-key projectile-mode-map (kbd "M-s-∆") 'open-ag-thing-at-point)
;;(define-key projectile-mode-map (kbd "M-s-®") 'ag-regexp-project-at-point)


; (key-chord-define-global "FF" 'ag-function-search)
; (key-chord-define-global "FC" 'ag-class-search)
; (key-chord-define-global "FV" 'ag-variable-search)
; (key-chord-define-global "FM" 'ag-member-search)
; (key-chord-define-global "FS" 'ag-static-search)
; (key-chord-define-global "xx" nil)


;(key-chord-define-global "gr" 'ag-regexp-project-at-point)
;(key-chord-define-global "gf" 'ag-project-files)
;(key-chord-define-global "gd" 'ag-project-dired)

; (key-chord-mode +1)

;; (setq ag-reuse-window 't)
(setq ag-highlight-search t)
