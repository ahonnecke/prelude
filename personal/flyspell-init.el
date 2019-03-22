(add-hook 'python-mode-hook
          (lambda ()
            (flyspell-prog-mode)
            ; ...
            ))

;; (defun ispell-get-word (following)
;;   (when following
;;     (camelCase-forward-word 1))
;;   (let* ((start (progn (camelCase-backward-word 1)
;;                        (point)))
;;          (end (progn (camelCase-forward-word 1)
;;                      (point))))
;;     (list (buffer-substring-no-properties start end)
;;           start end)))

