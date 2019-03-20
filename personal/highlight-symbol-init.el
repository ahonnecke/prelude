(use-package highlight-symbol
  :bind (("C-x w ." . highlight-symbol-at-point)
         ("C-x w %" . highlight-symbol-query-replace)
         ("C-x w o" . highlight-symbol-occur)
         ("C-x w c" . highlight-symbol-remove-all)))
