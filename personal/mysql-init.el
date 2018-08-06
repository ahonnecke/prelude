(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))

;;TODO get this to read from .my.cnf
(load "~/.mysql-login.el")

;; Of the format
;; (setq sql-connection-alist
;;       '((server1 (sql-product 'postgres)
;;                  (sql-port 5432)
;;                  (sql-server "localhost")
;;                  (sql-user "user")
;;                  (sql-password "password")
;;                  (sql-database "db1"))
;;         (server2 (sql-product 'postgres)
;;                  (sql-port 5432)
;;                  (sql-server "localhost")
;;                  (sql-user "user")
;;                  (sql-password "password")
;;                  (sql-database "db2"))))

(defun my-local-db ()
  (interactive)
  (my-sql-connect 'mysql 'local))

(defun my-dev-db ()
  (interactive)
  (my-sql-connect 'mysql 'dev))

(setq sql-product 'mysql)

(defun my-sql-connect (product connection)
  ;; remember to set the sql-product, otherwise, it will fail for the first time
  ;; you call the function
  (setq sql-product product)
  (sql-rename-buffer)
  (sql-connect connection))

(defun my-local-db ()
  (interactive)
  (my-sql-connect 'mysql 'local))

(defun my-dev-db ()
  (interactive)
  (my-sql-connect 'mysql 'dev))

(setq sql-product 'mysql)

(defun my-sql-connect (product connection)
  ;; remember to set the sql-product, otherwise, it will fail for the first time
  ;; you call the function
  (setq sql-product product)
  (sql-rename-buffer)
  (sql-connect connection))

(add-hook 'sql-interactive-mode-hook
          (lambda () (sql-rename-buffer)))
