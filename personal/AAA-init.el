;;; init.el --- Mads' configuration file
;;; Commentary:
;;; Code:

;; Package Manager
;; ---------------------------------
(eval-and-compile
  (require 'package)
  (setq package-archives '(("elpa" . "https://elpa.gnu.org/packages/")
                           ("marmalade" . "https://marmalade-repo.org/packages/")
                           ("melpa" . "https://melpa.org/packages/")))

  ;; i always fetch the archive contents on startup and during compilation, which is slow
  (package-refresh-contents)
  (unless (package-installed-p 'use-package)
    (package-install 'use-package))
  (require 'use-package)
  ;; i don't really know why this isn't the default...
  (setf use-package-always-ensure t))

(require 'package)

(when (not package-archive-contents)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; Global Variables
;; ---------------------------------
(setq
 inhibit-startup-screen t
 create-lockfiles nil
 make-backup-files nil
 auto-save-default nil
 column-number-mode t
 scroll-error-top-bottom t
 ;;show-paren-delay 0.1
 use-package-verbose nil
 use-package-always-ensure t
 package-enable-at-startup nil
 sentence-end-double-space nil
 split-width-threshold nil
 split-height-threshold nil
 ring-bell-function 'ignore
 inhibit-startup-echo-area-message t
 inhibit-startup-message t
 frame-title-format '((:eval buffer-file-name))
 enable-local-variables :all
 mouse-1-click-follows-link t
 mouse-1-click-in-non-selected-windows t
 select-enable-clipboard t
 mouse-wheel-scroll-amount '(0.01)
 column-number-mode t
 confirm-kill-emacs (quote y-or-n-p)
 debug-on-error nil
 line-move-visual t
 ;;explicit-shell-file-name "/bin/bash"
 shell-file-name "bash"
 ;;imenu-auto-rescan t
 )


;; Buffer Local Variables
;; ---------------------------------
(setq-default
 fill-column 100
 indent-tabs-mode nil
 truncate-lines t
 require-final-newline t
 indicate-empty-lines t
 fringe-mode '(4 . 2))

(use-package ace-jump-mode
  ;; Quick way to jump to a given char.
  :bind ("C-<tab>" . ace-jump-mode))


;; (use-package dired-subtree
;;   ;; Very helpful package that makes it possible to insert a dired
;;   ;; subtree buffer directly below a folder in a dired buffer. Give
;;   ;; you something similar to a tree explorer.
;;   :demand
;;   :bind
;;   (:map dired-mode-map
;;         ("<enter>" . mhj/dwim-toggle-or-open)
;;         ("<return>" . mhj/dwim-toggle-or-open)
;;         ("<tab>" . mhj/dwim-toggle-or-open)
;;         ("<down-mouse-1>" . mhj/mouse-dwim-to-toggle-or-open))
;;   :config
;;   (progn
;;     (setq dired-subtree-line-prefix (lambda (depth) (make-string (* 2 depth) ?\s)))
;;     (setq dired-subtree-use-backgrounds nil)))
