(use-package ace-window
  :ensure t
  :defer t
      :init (global-set-key (kbd "C-x o") 'ace-window))

(global-unset-key (kbd "M-o"))
(global-set-key (kbd "M-o") 'ace-window)

(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
