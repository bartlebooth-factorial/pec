;;;  -*- lexical-binding: t; -*-
;;; builtin-options-setup.el -- Settings for builtin options
;;;

(setq backup-by-copying t)
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(ifmac (setq confirm-kill-emacs (lambda (prompt) (yes-or-no-p "Quit?"))))
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(setq delete-old-versions t)
(setq display-time-day-and-date nil)
(setq display-time-default-load-average nil)
(setq eshell-hitory-size 1024)
(setq gc-cons-threshold 20000000)
(setq global-auto-revert-non-file-buffers t)
(setq inhibit-startup-screen t)
(setq initial-buffer-choice "~/csci/todo-csci.org")
(setq initial-scratch-message ";; Scratch\n\n")
(setq kept-new-versions 6)
(setq kept-old-versions 2)
(setq recentf-max-saved-items 50)
(setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))
(setq use-dialog-box nil)
(setq version-control t)
