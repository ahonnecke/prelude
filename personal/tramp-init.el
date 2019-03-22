(require 'tramp)
(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))

(add-to-list 'tramp-default-proxies-alist
             '("10.0.134.161" nil "/ssh:ubuntu@dev-bastion:"))
