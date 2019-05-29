;;(setq gnutls-log-level 1)

;;Bindings
(global-set-key (kbd "H-g") 'magit-status)
(global-set-key (kbd "H-h") 'browse-at-remote)

(remove-hook 'server-switch-hook 'magit-commit-diff)

;; I'm convinced that this is "furious fap"
(require 'ffap)

(defun find-file-at-point-with-line (&optional filename)
  "Opens file at point and moves point to line specified next to file name."
  (interactive)
  (let* ((filename (or filename (if current-prefix-arg (ffap-prompter) (ffap-guesser))))
         (line-number
          (and (or (looking-at ".* line \\(\[0-9\]+\\)")
                   (looking-at "[^:]*:\\(\[0-9\]+\\)"))
               (string-to-number (match-string-no-properties 1))))
         (column-number
          (or
           (and (looking-at "[^:]*:\[0-9\]+:\\(\[0-9\]+\\)")
                (string-to-number (match-string-no-properties 1)))
           (let 'column-number 0))))
    (message "%s --> %s:%s" filename line-number column-number)
    (cond ((ffap-url-p filename)
           (let (current-prefix-arg)
             (funcall ffap-url-fetcher filename)))
          ((and line-number
                (file-exists-p filename))
           (progn (find-file-other-window filename)
                  ;; goto-line is for interactive use
                  (goto-char (point-min))
                  (forward-line (1- line-number))
                  (forward-char column-number)))
          ((and ffap-pass-wildcards-to-dired
                ffap-dired-wildcards
                (string-match ffap-dired-wildcards filename))
           (funcall ffap-directory-finder filename))
          ((and ffap-dired-wildcards
                (string-match ffap-dired-wildcards filename)
                find-file-wildcards
                ;; Check if it's find-file that supports wildcards arg
                (memq ffap-file-finder '(find-file find-alternate-file)))
           (funcall ffap-file-finder (expand-file-name filename) t))
          ((or (not ffap-newfile-prompt)
               (file-exists-p filename)
               (y-or-n-p "File does not exist, create buffer? "))
           (funcall ffap-file-finder
                    ;; expand-file-name fixes "~/~/.emacs" bug sent by CHUCKR.
                    (expand-file-name filename)))
          ;; User does not want to find a non-existent file:
          ((signal 'file-error (list "Opening file buffer"
                                     "no such file or directory"
                                     filename))))))
;;o
;;(global-set-key (kbd "M-s-ø") 'find-file-at-point-with-line)

;;makes magit open stuff in the same buffer, perfect
;; except for the commit action, that opens the process instead of commit
;; bffer
;; (setq magit-display-buffer-function
;;       (lambda (buffer)
;;         (display-buffer
;;          buffer (if (and (derived-mode-p 'magit-mode)
;;                          (memq (with-current-buffer buffer major-mode)
;;                                '(magit-process-mode
;;                                  magit-revision-mode
;;                                  magit-diff-mode
;;                                  magit-stash-mode
;;                                  )))
;;                     nil
;;                   '(display-buffer-same-window)))))

;; this didn't work
;; (setq magit-display-buffer-function
;;       (lambda (buffer)
;;         (display-buffer
;;          buffer (if (and (derived-mode-p 'magit-mode)
;;                          (memq (with-current-buffer buffer major-mode)
;;                                '(magit-revision-mode
;;                                  magit-stash-mode
;;                                  magit-status-mode)))
;;                     nil
;;                   '(display-buffer-same-window)))))
