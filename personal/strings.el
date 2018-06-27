(use-package string-inflection :ensure t)

(require 'string-inflection)

;;Meta Super Shift -
(global-set-key (kbd "M-s-_") 'string-inflection-underscore)
;;s
(global-set-key (kbd "M-s-ß") 'string-inflection-cycle)
;;c
(global-set-key (kbd "M-s-ç") 'string-inflection-camelcase)
