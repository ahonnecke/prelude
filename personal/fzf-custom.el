(use-package "fzf" :init (setenv "FZF_DEFAULT_COMMAND" "fd --type f"))

;; (defun fzf-node-project ()
;;   (interactive)
;;   (let ((process-environment
;;          (cons (concat "FZF_DEFAULT_COMMAND" "fd --type f")
;;                process-environment)))
;;     (fzf/start default-directory)))
