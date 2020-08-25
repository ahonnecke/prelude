(defun open-gnome-terminal ()
  (interactive)
  (shell-command "gnome-terminal"))

(global-set-key (kbd "C-H-s") (quote open-gnome-terminal))
