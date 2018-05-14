(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("client\\/src\\/.*\\.js\\'" . rjsx-mode))

(defun my-rjsx-mode-hook ()
  "Hooks for Rjsx mode. Adjust indents"
  ;;; http://rjsx-mode.org/
  (setq rjsx-mode-markup-indent-offset 2)
  (setq rjsx-mode-css-indent-offset 2)
  (setq rjsx-mode-code-indent-offset 2))
(add-hook 'rjsx-mode-hook  'my-rjsx-mode-hook)

(defun my-js-mode-hook ()
  "Hooks for Js mode. Adjust indents"
  ;;; http://js-mode.org/
  (setq js-mode-markup-indent-offset 2)
  (setq js-mode-css-indent-offset 2)
  (setq js-mode-code-indent-offset 2))
(add-hook 'js-mode-hook  'my-js-mode-hook)

(add-hook 'rjsx-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil) ;;Use space instead of tab
            (setq js-indent-level 2) ;;space width is 2 (default is 4)
            (setq js2-strict-missing-semi-warning nil))) ;;disable the semicolon warning
