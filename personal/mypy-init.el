(require 'flycheck-mypy)
(add-hook 'python-mode-hook 'flycheck-mode)

;;If you want to use mypy you probably don't want pylint or
;; flake8. To disable those checkers, add the following to your
;; init.el:

;; (add-to-list 'flycheck-disabled-checkers 'python-flake8)
;; (add-to-list 'flycheck-disabled-checkers 'python-pylint)

;; (require 'sdev-mypy)

(flycheck-define-checker
    python-mypy ""
    :command ("mypy"
              "--ignore-missing-imports" "--fast-parser"
              "--python-version" "3.6"
              source-original)
    :error-patterns
    ((error line-start (file-name) ":" line ": error:" (message) line-end))
    :modes python-mode)

;; (flycheck-define-checker
;;     python-black ""
;;     :command ("black"
;;               "--check"
;;               source-original)
;;     :error-patterns
;;     ((error line-start (file-name) ":" line ": error:" (message) line-end))
;;     :modes python-mode)

(add-to-list 'flycheck-checkers 'python-mypy t)
(flycheck-add-next-checker 'python-pylint 'python-mypy t)
(setq flycheck-check-syntax-automatically '(mode-enabled save))
;; (setq flycheck-check-syntax-automatically '(mode-enabled idle-change))
