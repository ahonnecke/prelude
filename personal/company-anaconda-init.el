(use-package company-anaconda)
(use-package company)
(use-package jedi)

(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))

(add-hook 'after-init-hook 'global-company-mode)
