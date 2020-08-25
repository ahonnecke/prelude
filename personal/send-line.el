;; send current line, with prefix print result
(defun python--send-line (arg)
  (interactive "P")
  (if (not arg)
      (python-shell-send-region (line-beginning-position) (line-end-position))
    (save-excursion
      (beginning-of-line)
      (if (looking-at-p "\\s-*print")
          (python-shell-send-region (line-beginning-position)
                                    (line-end-position))
        (python-shell-send-string
         (concat "print(" (buffer-substring (line-beginning-position)
                                            (line-end-position))
                 ")")))))
  (display-buffer (process-buffer (python-shell-get-process))))
