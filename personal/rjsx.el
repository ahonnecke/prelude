(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("client\\/src\\/.*\\.js\\'" . rjsx-mode))

;; http://www.flycheck.org/manual/latest/index.html
(require 'flycheck)

;; turn on flychecking globally
(add-hook 'after-init-hook #'global-flycheck-mode)

;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint)))

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)

;; customize flycheck temp file prefix
(setq-default flycheck-temp-prefix ".flycheck")

;; disable json-jsonlist checking for json files
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(json-jsonlist)))

;; https://github.com/purcell/exec-path-from-shell
;; only need exec-path-from-shell on OSX
;; this hopefully sets up path and other vars better
;;(when (memq window-system '(mac ns))
;;  (exec-path-from-shell-initialize))

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

;; use local eslint from node_modules before global
;; http://emacs.stackexchange.com/questions/21205/flycheck-with-file-relative-eslint-executable
(defun my/use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))
(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)
