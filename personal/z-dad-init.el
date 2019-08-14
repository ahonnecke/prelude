(find-file "~/src/")
(pipenv-mode)

(bookmark-bmenu-list)

(use-package fzf
  ;; Quick way to jump to a given char.
  :bind ("H-f" . fzf-git))

;; (pipenv-activate)
