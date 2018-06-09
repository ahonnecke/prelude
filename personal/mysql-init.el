(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))

(load "~/.emacs.d/personal/mysql-login.el")

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
  (sql-connect connection))
