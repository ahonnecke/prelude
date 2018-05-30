;; (require 'pytest)

;; (add-hook 'python-mode-hook
;;           (lambda ()
;;             (local-set-key "\C-ca" 'pytest-all)
;;             (local-set-key "\C-cm" 'pytest-module)
;;             (local-set-key "\C-c." 'pytest-one)
;;             (local-set-key "\C-cd" 'pytest-directory)
;;             (local-set-key "\C-cpa" 'pytest-pdb-all)
;;             (local-set-key "\C-cpm" 'pytest-pdb-module)
;;             (local-set-key "\C-cp." 'pytest-pdb-one)))

;; ;;(add-to-list 'pytest-project-root-files ".circleci")
;; (add-to-list 'pytest-project-names "pipenv run pytest")
;; (setq pytest-project-root-test (lambda (dirname) (equal dirname "~/Code/repos/web")))
