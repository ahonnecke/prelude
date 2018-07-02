(use-package string-inflection :ensure t)

(require 'string-inflection)

;;s
(global-set-key (kbd "M-s-ß") 'string-inflection-underscore)
;;c
(global-set-key (kbd "M-s-ç") 'string-inflection-all-cycle)
;;C
(global-set-key (kbd "M-s-c") 'string-inflection-camelcase)
