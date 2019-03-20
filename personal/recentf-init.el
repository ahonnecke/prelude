(recentf-mode 1)
(setq recentf-max-menu-items 500)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'helm-recentf)

(recentf-mode 1)
(setq-default recent-save-file "~/.emacs.d/recentf")
