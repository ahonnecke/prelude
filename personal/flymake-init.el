(use-package flymake)

;; Nope, I want my copies in the system temp dir.
(setq flymake-run-in-place nil)

;; This lets me say where my temp dir is.
(setq temporary-file-directory "~/.emacs.d/tmp/")

(defun cwebber/safer-flymake-find-file-hook ()
  "Don't barf if we can't open this flymake file"
  (let ((flymake-filename
         (flymake-create-temp-inplace (buffer-file-name) "flymake")))
    (if (file-writable-p flymake-filename)
        (flymake-find-file-hook)
      (message
       (format
        "Couldn't enable flymake; permission denied on %s" flymake-filename)))))

(add-hook 'find-file-hook 'cwebber/safer-flymake-find-file-hook)
