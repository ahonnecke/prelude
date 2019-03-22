(defun pre-commit ()
  "runs the git pre-commit hooks"
  (interactive)
  (start-process
   "pre-commit"
   "pre-commit-buffer"
   "/Users/ahonnecke/bin/run-pre-commit-hooks"
   ))
