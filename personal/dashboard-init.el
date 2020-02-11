(use-package dashboard
  :ensure t
  :diminish dashboard-mode
  :config
  (setq dashboard-banner-logo-title "You're happier when you have a discrete task to crush.")
  (setq dashboard-startup-banner "/home/ahonnecke/digital_assets_data_logo.png")
  (setq dashboard-items '((recents  . 10)
                          (bookmarks . 20)))
  (dashboard-setup-startup-hook))
