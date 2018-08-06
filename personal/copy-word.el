(defun copy-word (&optional arg)
  "Copy words at point into kill-ring"
  (interactive "P")
  (copy-thing 'backward-word 'forward-word arg)
  ;;(paste-to-mark arg)
  )

(global-set-key (kbd "C-c w") (quote copy-word))

(define-key prelude-mode-map (kbd "C-c w") (quote copy-word))

(global-set-key (kbd "M-s-…") 'er/expand-region)
