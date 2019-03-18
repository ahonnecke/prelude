;; whitespace-mode
;; free of trailing whitespace and to use 100-column width, standard indentation

(use-package whitespace
  :diminish (global-whitespace-mode
             whitespace-mode
             whitespace-newline-mode)
  :config
  (progn
    (setq whitespace-style '(trailing tabs tab-mark face lines space-before-tab indentation space-after-tab) whitespace-line-column 100)
    (global-whitespace-mode)))

