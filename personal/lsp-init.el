;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
;;(setq lsp-keymap-prefix "C-l")

(use-package lsp-mode
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (python-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp
  :init
  (setq lsp-keep-workspace-alive nil
        lsp-signature-doc-lines 5
        lsp-idle-delay 0.5
        lsp-prefer-capf t
        lsp-client-packages nil)
  :config
  (define-key lsp-mode-map (kbd "M-l") lsp-command-map)
  ;; was mapped to (lsp-signature-next)
  (define-key lsp-mode-map (kbd "M-n") 'forward-paragraph)
  ;; was mapped to (lsp-signature-prev)
  (define-key lsp-mode-map (kbd "M-p") 'backward-paragraph)
  :custom
  (lsp-diagnostic-package :none)
  (lsp-enable-symbol-highlighting nil)
  (lsp-enable-on-type-formatting nil)
  (lsp-signature-auto-activate nil)
  )

(setq lsp-enable-symbol-highlighting nil)
(setq lsp-enable-on-type-formatting nil)
(setq lsp-signature-auto-activate nil)

;; optionally
;; (use-package lsp-ui :commands lsp-ui-mode)
;; if you are helm user
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
;; if you are ivy user
;; (use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
;; (use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
;; (use-package dap-mode)
;; (use-package dap-python) ;; to load the dap adapter for your language

;; optional if you want which-key integration
(use-package which-key
  :config
  (which-key-mode))

;; Fix tab to insert a tab
(global-set-key (kbd "C-H-i") 'completion-at-point)
(global-set-key (kbd "TAB") 'python-indent-shift-right)
