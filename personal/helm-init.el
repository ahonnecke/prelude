(helm-mode 1)

(define-key helm-find-files-map "\t" 'helm-execute-persistent-action)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

(eval-after-load 'helm '(progn (setq helm-ff-auto-update-initial-value nil) (define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)))

(use-package projectile
  :diminish ""
  :bind
  (:map projectile-mode-map
        ("C-c p f" . projectile-find-file)
        ("C-c p p" . projectile-switch-project))
  :init
  (progn
    (projectile-mode)
    (setq projectile-switch-project-action 'helm-projectile-find-file)
    (setq projectile-completion-system 'helm) ;; alternatively, 'ido
    (setq projectile-use-git-grep t)))

(use-package helm
  :bind (("C-." . helm-M-x)
         ("C-x b" . helm-buffers-list)
         ("M-y" . helm-show-kill-ring)
         ("M-s" . helm-occur))
  :init
  (progn
    (setq helm-follow-mode t)
    (setq helm-full-frame nil)
    (setq helm-split-window-inside-p t)
    (setq helm-split-window-default-side 'below)
    (setq helm-buffer-max-length nil)

    (setq helm-buffers-fuzzy-matching t)
    (setq helm-M-x-always-save-history nil)

    (setq helm-find-files-actions '
          (("Find File" . helm-find-file-or-marked)
           ("View file" . view-file)
           ("Zgrep File(s)" . helm-ff-zgrep)))

    (setq helm-type-file-actions
          '(("Find File" . helm-find-file-or-marked)
            ("View file" . view-file)
            ("Zgrep File(s)" . helm-ff-zgrep)))

    (add-to-list 'display-buffer-alist
                 `(,(rx bos "*helm" (+ anything) "*" eos)
                   (display-buffer-in-side-window)
                   (side            . bottom)
                   (window-height   . 0.3)))))

(use-package helm-c-yasnippet
  :demand
  :bind ("C-c y" . helm-yas-complete))

(use-package helm-projectile
  :bind (("s-t" . helm-projectile-find-file)
         ("C-," . helm-projectile))
  :config
  (progn
    ;; Removes 'helm-source-projectile-projects' from C-c p h as it is
    ;; possible to switch project using 'helm-projectile-switch-project'

    ;; other options:
    ;;    helm-source-projectile-files-list
    ;;    helm-source-projectile-recentf-list
    (setq helm-projectile-sources-list
          '(helm-source-projectile-buffers-list))))

(use-package helm-git-grep
  ;; Interactive git-grep using helm
  :bind (("s-F" . helm-git-grep)))

(use-package helm-ag
  ;; Interactive ag queries using helm.
  :disabled
  :bind (("s-F" . helm-projectile-ag)))

(use-package helm-ls-git
  ;; Pretty nice project overview
  :config
  (progn
    (setq helm-ls-git-default-sources
          '(helm-source-ls-git-buffers
            helm-source-ls-git-status
            helm-source-ls-git))
    (setq helm-ls-git-show-abs-or-relative 'relative)))

(global-set-key (kbd "C-x C-d") 'helm-browse-project)
