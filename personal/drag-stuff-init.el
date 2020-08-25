;;(require 'drag-define)

;; (stuff-key drag-stuff-mode-map (drag-stuff--kbd 'up) 'drag-stuff-up)
;; (define-key drag-stuff-mode-map (drag-stuff--kbd 'down) 'drag-stuff-down)

;; (drag-stuff-mode t)

;; (drag-stuff-global-mode 1)

;; (global-unset-key (kbd "<M-right>"))
;; (global-unset-key (kbd "<M-left>"))

(global-set-key [M-right]  'right-word)
(global-set-key [M-left]   'left-word)

(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(global-set-key [(super up)]  'move-line-up)
(global-set-key [(super down)]  'move-line-down)
