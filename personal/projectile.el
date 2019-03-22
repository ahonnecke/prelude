(setq projectile-indexing-method 'alien)
(setq projectile-enable-caching t)

(setq projectile-completion-system 'helm)
(helm-projectile-on)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "H-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
