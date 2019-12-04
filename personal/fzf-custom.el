(defun fzf-node-project ()
  (interactive)
  (let ((process-environment
         (cons (concat "FZF_DEFAULT_COMMAND=ag -g \"\" --ignore .git --ignore node_modules")
               process-environment)))
    (fzf/start default-directory)))
