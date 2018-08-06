(use-package string-inflection :ensure t)

(require 'string-inflection)

;;c
(global-set-key (kbd "M-s-ç") 'string-inflection-all-cycle)
;;C
(global-set-key (kbd "M-s-c") 'string-inflection-camelcase)
