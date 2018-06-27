;;I don't know why the regular python indenting stopped working, so I'm faking
;;don't judge me

(fset 'indent-region-four
      (lambda (&optional arg)
        "Keyboard macro."
        (interactive "p")
        (kmacro-exec-ring-item
         (quote ([?\C-4 ?\C-x tab] 0 "%d")) arg)))

(fset 'unindent-region-four
      (lambda (&optional arg)
        "Keyboard macro."
        (interactive "p")
        (kmacro-exec-ring-item
         (quote ([?\M-x ?i ?n ?d ?e ?n ?t ?  ?r ?i ?g ?i ?d ?l ?y ?  ?l ?e ?f ?t return ?\M-x ?i ?n ?d ?e ?n ?t ?  ?r ?i ?g ?i ?d ?l ?y ?  ?l ?e ?f ?t return ?\M-x ?i ?n ?d ?e ?n ?t ?  ?r ?i ?g ?i ?d ?l ?y ?  ?l ?e ?f ?t return ?\M-x ?i ?n ?d ?e ?n ?t ?  ?r ?i ?g ?i ?d ?l ?y ?  ?l ?e ?f ?t return] 0 "%d")) arg)))

;; (fset 'python-indent-shift-right
;;       "\C-c>")

;; (fset 'python-indent-shift-left
;;       "\C-c<")

(global-set-key (kbd "H-i") 'indent-region-four)
(global-set-key (kbd "H-u") 'unindent-region-four)

(global-set-key (kbd "H-i") 'indent-region-four)
(global-set-key (kbd "H-u") 'unindent-region-four)

(global-set-key (kbd "s->") 'indent-region-four)
(global-set-key (kbd "s-<") 'unindent-region-four)

(global-set-key [(meta right)] 'python-indent-shift-right)
(global-set-key [(meta left)] 'python-indent-shift-left)

(global-set-key (kbd "<M-right>") 'indent-region-four)
(global-set-key (kbd "<M-left>") 'unindent-region-four)

(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-p") 'backward-paragraph)

;;i
(global-set-key (kbd "M-s-^") 'python-indent-shift-right)
;;u
(global-set-key (kbd "M-s-¨") 'python-indent-shift-left)


(global-set-key (kbd "M-s->") 'python-indent-shift-right)
(global-set-key (kbd "M-s-<") 'python-indent-shift-left)
