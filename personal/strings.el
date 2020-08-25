(use-package string-inflection :ensure t)

(require 'string-inflection)

(global-set-key (kbd "C-c m") 'string-inflection-lower-camelcase)
(global-set-key (kbd "C-c M") 'string-inflection-camelcase)
(global-set-key (kbd "C-c -") 'string-inflection-underscore)
