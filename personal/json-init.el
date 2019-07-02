;;(rassq-delete-all 'json-mode auto-mode-alist)
;; (rassq-delete-all 'js-mode auto-mode-alist)

;; ;; (add-hook 'json-mode-hook
;; ;;           (lambda ()
;; ;;             (make-local-variable 'js-indent-level)
;; ;;             (setq js-indent-level 2)))

;; (setq focus-out-hook nil)

;; ;; '(js3-auto-indent-p t)         ; it's nice for commas to right themselves.
;; ;; '(js3-enter-indents-newline t) ; don't need to push tab before typing
;; ;; '(js3-indent-on-enter-key t)   ; fix indenting before moving on

(setq-default js2-basic-offset 2)
;; ;; (setq-default js-indent-level 2)

;; ;; (customize-set-variable 'js2-mode-show-parse-errors nil)
;; ;; (customize-set-variable 'js2-strict-missing-semi-warning nil)
;; ;; (customize-set-variable 'js2-strict-trailing-comma-warning nil)
;; ;; (customize-set-variable 'js2-strict-inconsistent-return-warning   nil)


;; ;; (add-hook 'js2-mode-hook 'prettier-js-mode)
;; ;; (add-hook 'js3-mode-hook 'prettier-js-mode)
;; ;; (add-hook 'json-mode 'prettier-js-mode)

;; ;; (setq prettier-js-args '(
;; ;;                          "--trailing-comma" "none"
;; ;;                          "--bracket-spacing" "false"
;; ;;                          ))

;; (use-package prettier-js
;;   :mode ("\\.json\\'" . prettier-mode)
;;   :init
;;   (remove-hook 'before-save-hook t)
;;   )

(add-to-list 'auto-mode-alist '("\\.js\\'"    . prettier-js-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'"    . prettier-js-mode))

;; (add-hook 'prettier-mode-hook (lambda () (js-mode -1)))
;; (add-hook 'js-mode-hook (lambda () (js-mode -1)))
;; (add-hook 'json-mode-hook (lambda () (json-mode -1)))

;; (setq prettier-js-args '(
;;                          "--trailing-comma" "none"
;;                          "--bracket-spacing" "false"
;;                          "--tab-width" "2"
;;                          ))


;; (add-to-list 'auto-mode-alist
;;              '("\\.json\\'" . (lambda ()
;;                                ;; add major mode setting here, if needed, for example:
;;                                (text-mode)
;;                                (insert ""))))

(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))
