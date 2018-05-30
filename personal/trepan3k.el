(fset 'insert-breakpoint
      "from trepan.api import debug; debug()")

(add-hook 'python-mode-hook
          (lambda () (global-set-key (kbd "H-d") 'insert-breakpoint)))
