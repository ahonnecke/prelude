(fset 'indent-block
      "\C-c>")

(fset 'unindent-block
      "\C-c<")

(global-set-key (kbd "H-i") 'indent-block)
(global-set-key (kbd "H-u") 'unindent-block)

(global-set-key (kbd "s->") 'indent-block)
(global-set-key (kbd "s-<") 'unindent-block)

;; (global-set-key [(meta right)] 'indent-block)
;; (global-set-key [(meta left)] 'unindent-block)

(global-set-key (kbd "<M-right>") 'indent-block)
(global-set-key (kbd "<M-left>") 'unindent-block)

(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-p") 'backward-paragraph)

(global-set-key (kbd "H--") 'string-inflection-underscore)
(global-set-key (kbd "H-c") 'string-inflection-camelcase)
