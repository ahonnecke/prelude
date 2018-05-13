(add-to-list 'load-path "~/Code/repos/web")
(require 'py-isort)
(add-hook 'before-save-hook 'py-isort-before-save)
