(define-key helm-find-files-map "\t" 'helm-execute-persistent-action)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

(eval-after-load 'helm '(progn (setq helm-ff-auto-update-initial-value nil) (define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)))
