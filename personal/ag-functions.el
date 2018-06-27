;;; ag-functions -- Defuns for searchgin ag

;;; Commentary:
;;; Still a shitty process, no smart auto complete

;;; Code:

(require 'thingatpt)

(winner-mode 1)
(windmove-default-keybindings)
(setq windmove-wrap-around t)

;; these control the way ag uses buffers and the following functions rely on
;; these options being true
(setq ag-reuse-buffers 't)
(setq ag-reuse-window 't)

(fset 'open-ag-file-at-point
      [?\C-  ?\C-s ?. ?p ?h ?p ?\M-w ?\C-x ?f ?\C-y return])

;; These are the good guys
(defun open-ag-thing-at-point-vendor(thing)
  "find thing and open it"
  (interactive (list
                (read-string (format "Search for (%s): " (thing-at-point 'word))
                             nil nil (thing-at-point 'word))))
  (message "Finding %s!" thing)
  (if (ag thing (concat (projectile-project-root) "/vendor"))
      (message "Finding %s!" thing)
    )
  (open-ag-buffer)
  )

(defun open-ag-function-at-point()
  "search for a function name in project"
  (interactive)
  (ag-project (concat "function " (thing-at-point 'word) "("))
  (open-ag-buffer)
  )

(defun open-ag-method-at-point()
  "search for method usage in project"
  (interactive)
  (ag-project-at-point (concat "->" (thing-at-point 'word) "("))
  (open-ag-buffer)
  )

(defun open-ag-project-at-point()
  "search for method usage in project"
  (interactive)
  (ag-project-at-point (thing-at-point 'word))
  (open-ag-buffer)
  )

(defun open-ag-static-at-point()
  "search for method usage in project"
  (interactive)
  (ag-project-at-point (concat "::" (thing-at-point 'word) "("))
  (open-ag-buffer)
  )

(defun open-ag-thing-at-point(thing)
  "find thing and open it"
  (interactive (list
                (read-string (format "Search for (%s): " (thing-at-point 'symbol))
                             nil nil (thing-at-point 'word))))
  (message "Finding %s!" thing)
  (if (ag-project-at-point thing)
      (message "Finding %s!" thing)
    )
  (open-ag-buffer)
  )

(defun open-ag-regexp-at-point(regexp)
  "find class and open it"
  (interactive (list
                (read-string (format "RegExp (%s): " (thing-at-point 'symbol))
                             nil nil (thing-at-point 'word))))
  (message "Finding %s!" regexp)
  (if (ag-regexp-project-at-point regexp)
      (message "Finding %s!" regexp)
    )
  (open-ag-buffer)
  )

(defun open-ag-class-at-point()
  "find class and open it"
  (interactive)
  (message "searching for %s" (concat "((class)|(trait)|(interface)) " (thing-at-point 'word) "(\n| )"))
  (ag-regexp-project-at-point
   (concat "((class)|(trait)|(interface)) " (thing-at-point 'word) "(\n| )"))
  (open-ag-buffer)
  )

(defun open-ag-buffer()
  "open ag buffer in the same buffer that you are in now"
  (interactive)
  (if (get-buffer-create "*ag search*")
      (message "search buffer exists")
    (message "search buffer not exists"))
  (winner-undo)
  (switch-to-buffer "*ag search*")
  )


(defun remove-vowel (ξstring)
  "this is the description"
  (interactive
   (let ((bds (bounds-of-thing-at-point 'paragraph)) )
     (list nil (car bds) (cdr bds)) ))
  )



                                        ;(defun print-region-or-string (beg end)
                                        ;  "message region or \"empty string\" if none highlighted"
                                        ;  (message "%s" get-region-or-string(beg end)))


;;these are the supporting functions

;; (defun file-name-at-point ()
;;   (save-excursion
;;     (let* ((file-name-regexp "[./a-zA-Z0-9\-_~]")
;;            (start (progn
;;                     (while (looking-back file-name-regexp)
;;                       (forward-char -1))
;;                     (point)))
;;            (end (progn
;;                   (while (looking-at file-name-regexp)
;;                     (forward-char 1))
;;                   (point))))
;;       (buffer-substring start end))))

(defun jump-to-window (buffer-name)
  (interactive "bEnter buffer to jump to: ")
  (let ((visible-buffers (mapcar '(lambda (window) (buffer-name (window-buffer window))) (window-list)))
        window-of-buffer)
    (if (not (member buffer-name visible-buffers))
        (error "'%s' does not have visible window" buffer-name)
      (setq window-of-buffer
            (delq nil (mapcar '(lambda (window)
                                 (if (equal buffer-name (buffer-name (window-buffer window)))
                                     window nil)) (window-list))))
      (select-window (car window-of-buffer)))))


;;this is just leftovers

(defun switch-to-ag-buffer()
  "switch to the ag results buffer"
  (interactive)
  (switch-to-buffer "*ag search*" t t))

(defun say-word (word)
  (interactive (list
                (read-string (format "word (%s): " (thing-at-point 'word))
                             nil nil (thing-at-point 'word))))
  (message "The word is %s" word))

(defun open-ag-class(classname)
  "find class and open it"
  (interactive "sClass Name:")
  (message "Finding %s!" (concat "class " classname " "))
  (if (ag-project-at-point (concat "class " classname " "))
      (message "Finding %s!" classname)
    )
  (jump-to-window "*ag search*")
  )

(defun open-ag-file()
  "switch to the ag results buffer open the first result and then close list"
  (interactive)
  (if (switch-to-buffer "*ag search*" t t)
      (find-file (thing-at-point)))
  (kill-buffer "*ag search*"))

(defun open-ag-file-old()
  "switch to the ag results buffer open the first result"
  (interactive)
  (if (switch-to-buffer "*ag search*" t t)
      (find-file (file-name-at-point))))

;;this is the best one
;;TODO, allow you to type in a value if none selected
(defun ag-region (beg end)
  "Search project for region or thing at point"
  (interactive (if (use-region-p)
                   (list (region-beginning) (region-end))
                 (list nil nil)))
  (ag-project-at-point (if (and beg end)
                           (buffer-substring-no-properties beg end)
                         (thing-at-point 'word)))
  (winner-undo)
  (switch-to-buffer "*ag search*")
  )

(provide 'ag-functions)
;;; ag-functions.el ends here
