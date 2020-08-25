(find-file "~/src/")
(pipenv-mode)

(bookmark-bmenu-list)

(define-key magit-process-mode-map  (kbd "<return>") 'find-line-hook-failure-at-point)

(use-package fzf
  ;; Quick way to jump to a given char.
  :bind ("H-f" . fzf-git))

(use-package fzf
  ;; Quick way to jump to a given char.
  :bind ("H-o" . fzf-git))

(global-set-key (kbd "C-H-l") 'goto-line)
;;(global-set-key (kbd "C-l") 'lower)

;; (pipenv-activate)
