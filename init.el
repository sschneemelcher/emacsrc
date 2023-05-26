(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)

;; so that Emacs finds the binaries that are installed via Nix
(add-to-list 'exec-path "~/.nix-profile/bin")

(setq inhibit-startup-screen t)
(setq ring-bell-function 'ignore)
(setq backup-directory-alist '(("." . "~/.emacs_saves")))

(global-display-line-numbers-mode 1)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode -1)
(ido-mode 1)
(set-frame-font "FuraMono Nerd Font 18" nil t)

(load-theme 'gruber-darker t)
(toggle-frame-fullscreen)

(setq corfu-auto t
      corfu-auto-delay 0
      corfu-auto-prefix 2
      completion-styles '(basic)
      corfu-quit-no-match 'separator)

(global-corfu-mode 1)

(dolist (mode '(c-mode latex-mode rust-mode shell-script-mode javascript-mode))
  (add-hook (intern (concat (symbol-name mode) "-hook")) 'eglot-ensure))

;; dont ask for confirmation on saving
(setq confirm-kill-emacs nil)

;; practice Emacs keybindings
(global-unset-key (kbd "<left>"))
(global-unset-key (kbd "<right>"))
(global-unset-key (kbd "<up>"))
(global-unset-key (kbd "<down>"))
(global-unset-key (kbd "<C-left>"))
(global-unset-key (kbd "<C-right>"))
(global-unset-key (kbd "<C-up>"))
(global-unset-key (kbd "<C-down>"))
(global-unset-key (kbd "<M-left>"))
(global-unset-key (kbd "<M-right>"))
(global-unset-key (kbd "<M-up>"))
(global-unset-key (kbd "<M-down>"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("bddf21b7face8adffc42c32a8223c3cc83b5c1bbd4ce49a5743ce528ca4da2b6" default))
 '(package-selected-packages
   '(rust-mode eglot python-mode racket-mode corfu gruber-darker-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
