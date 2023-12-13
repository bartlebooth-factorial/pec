;;;  -*- lexical-binding: t; -*-
;;; keys-setup.el -- Keybindings
;;;

;; Swap meta and super on Linux
;; (ifmac nil
;;        (setq x-meta-keysym 'super
;; 	     x-super-keysym 'meta))

;; Tweaks to default bindings
(global-set-key (kbd "C-x C-b") 'ibuffer-other-window) ; better buffer menu
(global-set-key (kbd "C-x C-d") 'dired) ; Don't accidentally call list-directory

;; Custom bindings
(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z ,") 'vterm-other-window)
(global-set-key (kbd "C-z .") 'eshell-other-window)
(global-set-key (kbd "C-z 6") 'file-info-show)
(global-set-key (kbd "C-z =") 'edit-config)
(global-set-key (kbd "C-z C-a") 'incr-num-at-point)
(global-set-key (kbd "C-z C-x") 'decr-num-at-point)
(global-set-key (kbd "C-z SPC") 'consult-recent-file)
(global-set-key (kbd "C-z [") 'find-file-at-point)
(global-set-key (kbd "C-z c") 'copy-line)
(global-set-key (kbd "C-z d") 'gd)
(global-set-key (kbd "C-z f") 'toggle-frame-fullscreen)
(global-set-key (kbd "C-z g") 'consult-ripgrep)
(global-set-key (kbd "C-z h") 'hl-line-mode)
(global-set-key (kbd "C-z i") 'sp-change-inner)
(global-set-key (kbd "C-z l") 'display-line-numbers-mode)
(global-set-key (kbd "C-z o") 'sp-change-enclosing)
(global-set-key (kbd "C-z p") 'package-list-packages)
(global-set-key (kbd "C-z s") 'consult-line)
(global-set-key (kbd "C-z t") 'ef-themes-select)
(global-set-key (kbd "C-z u d") 'update-directory-index)
(global-set-key (kbd "C-z u g") 'update-git-repos)
(global-set-key (kbd "C-z w") 'whitespace-mode)
(global-set-key (kbd "C-z {") 'beginning-of-defun)
(global-set-key (kbd "C-z }") 'end-of-defun)
(global-set-key (kbd "C-z '") 'origami-close-node)
(global-set-key (kbd "C-z :") 'origami-open-node)
(global-set-key (kbd "C-z ;") 'origami-open-node-recursively)
(global-set-key (kbd "M-n") 'scroll-up-one)
(global-set-key (kbd "M-p") 'scroll-down-one)
