(setq projectile-indexing-method 'alien)
(setq projectile-enable-caching t)

(setq projectile-completion-system 'helm)
(helm-projectile-on)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "H-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(define-key projectile-mode-map (kbd "H-p p") 'projectile-switch-open-project)

(setq projectile-switch-project-action #'projectile-dired)

;; purports to run magit status after switch
;; didn't work for me
;; (defun modi/projectile-switch-project-magit-status ()
;;   "Switch to other project and open Magit status there."
;;   (interactive)
;;   (let ((projectile-switch-project-action #'magit-status))
;;     (call-interactively #'projectile-switch-project)))
