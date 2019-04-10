(fset 'triple-screen
      (lambda (&optional arg)
        "Split the screen into three screens"
        (interactive "p")
        (kmacro-exec-ring-item
         (quote ([?\C-x ?1 ?\C-x ?3 ?\C-x ?3 ?\C-x ?+ ] 0 "%d")) arg)))

(fset 'quad-screen
      (lambda (&optional arg)
        "Split the screen into four bufers"
        (interactive "p")
        (kmacro-exec-ring-item
         (quote ([?\C-x ?1 ?\C-x ?3 ?\C-x ?3 ?\C-x ?3 ?\C-x ?+ ] 0 "%d")) arg)))

(quad-screen)

(global-set-key (kbd "C-c +") 'quad-screen)
