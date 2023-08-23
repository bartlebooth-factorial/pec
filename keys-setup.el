;;;  -*- lexical-binding: t; -*-
;;; keys-setup.el -- Keybindings
;;;

;; Swap meta and super on Linux
(ifmac nil
       (setq x-meta-keysym 'super
	     x-super-keysym 'meta))

;; Tweaks to default bindings
(global-set-key (kbd "C-x C-b") 'ibuffer-other-window) ; better buffer menu
(global-set-key (kbd "C-x C-d") 'dired) ; Don't accidentally call list-directory

;; Custom bindings
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z ,") 'vterm-other-window)
(global-set-key (kbd "C-z .") 'eshell-other-window)
(global-set-key (kbd "C-z =") 'edit-config)
(global-set-key (kbd "C-z SPC") 'consult-recent-file)
(global-set-key (kbd "C-z [") 'find-file-at-point)
(global-set-key (kbd "C-z d") 'gd)
(global-set-key (kbd "C-z f") 'toggle-frame-fullscreen)
(global-set-key (kbd "C-z g") 'consult-ripgrep)
(global-set-key (kbd "C-z h") 'hl-line-mode)
(global-set-key (kbd "C-z i") 'sp-change-inner)
(global-set-key (kbd "C-z l") 'display-line-numbers-mode)
(global-set-key (kbd "C-z o") 'sp-change-enclosing)
(global-set-key (kbd "C-z p") 'package-list-packages)
(global-set-key (kbd "C-z t") 'ef-themes-select)
(global-set-key (kbd "C-z w") 'whitespace-mode)
