(add-hook 'python-mode-hook
 (lambda ()(add-hook 'before-save-hook 'elpy-autopep8-fix-code nil 'local)))
