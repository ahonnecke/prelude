(use-package highlight-symbol
  :bind (("C-x w ." . highlight-symbol-at-point)
         ("C-x w %" . highlight-symbol-query-replace)
         ("C-x w o" . highlight-symbol-occur)
         ("H-C-n" . highlight-symbol-next)
         ("H-C-p" . highlight-symbol-prev)
         ("C-x w c" . highlight-symbol-remove-all)))
