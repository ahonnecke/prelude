;; (when (executable-find "ipython")
;;   (setq python-shell-interpreter "ipython"))

;; (when (executable-find "ipython")
;;   (setq
;;    python-shell-interpreter "ipython"
;;    python-shell-interpreter-args ""
;;    python-shell-prompt-regexp "In \\[[0-9]+\\]: "
;;    python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
;;    python-shell-completion-setup-code
;;    "from IPython.core.completerlib import module_completion"
;;    python-shell-completion-module-string-code
;;    "';'.join(module_completion('''%s'''))\n"
;;    python-shell-completion-string-code
;;    "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")
;;   )

;; ====================================

;; Development Setup

;; ====================================

;; Enable elpy

(elpy-enable)


;; Use IPython for REPL

(setq python-shell-interpreter "ipython3")
;; (setq python-shell-interpreter "jupyter"
;;       python-shell-interpreter-args "console --simple-prompt"
;;       python-shell-prompt-detect-failure-warning nil)

;; (add-to-list 'python-shell-completion-native-disabled-interpreters
;;              "jupyter")


;; Enable Flycheck
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(defvar myPackages
  '(better-defaults                 ;; Set up some better Emacs defaults
    elpy                            ;; Emacs Lisp Python Environment
    flycheck                        ;; On the fly syntax checking
    py-autopep8                     ;; Run autopep8 on save
    blacken                         ;; Black formatting on save
    ein                             ;; Emacs IPython Notebook
    material-theme                  ;; Theme
    )
  )

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
