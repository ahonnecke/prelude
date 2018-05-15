(setq python-shell-interpreter "pipenv run python"
      python-shell-interpreter-args "-i /Users/ahonnecke/Code/repos/web/server/manage.py shell_plus")

(require 'browse-url)
(require 'elpy-django)

;;(setq 'elpy-django-always-prompt 'nil)

(defun django-runopen ()
  "Starts django and opens localhost in a browser"
  (interactive)
  (elpy-django-runserver-quiet)
  (browse-url "http://localhost:8000/api/admin")
  )

(defun elpy-django-runserver-quiet ()
  "Start the server and automatically add the ipaddr and port.
Also create it's own special buffer so that we can have multiple
servers running per project.

When called with a prefix (C-u), it will prompt for additional args."
  (interactive)
  (let* ((cmd (concat elpy-django-command " " elpy-django-server-command))
         (proj-root (file-name-base (directory-file-name (elpy-project-root))))
         (buff-name (format "*runserver[%s]*" proj-root)))
    ;; Kill any previous instance of runserver since we might be doing something new
    (when (get-buffer buff-name)
      (kill-buffer buff-name))
    (setq cmd (concat cmd " " elpy-django-server-ipaddr ":" elpy-django-server-port))
    (compile cmd)
    (with-current-buffer "*compilation*"
      (rename-buffer buff-name))))


(global-set-key (kbd "H-s") 'django-runopen)
