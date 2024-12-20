;;;  -*- lexical-binding: t; -*-
;;; builtin-options-setup.el -- Settings for builtin options
;;;

(setq backup-by-copying t)
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq bookmark-save-flag 1)
(ifmac (setq confirm-kill-emacs (lambda (prompt) (yes-or-no-p "Quit?"))))
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(setq delete-old-versions t)
(setq display-time-day-and-date nil)
(setq display-time-default-load-average nil)
(setq eshell-hitory-size 1024)
(setq gc-cons-threshold 20000000)
(setq global-auto-revert-non-file-buffers t)
(setq grep-use-headings t)
(setq inhibit-startup-screen t)
(setq initial-buffer-choice t)
(setq initial-scratch-message ";; Scratch\n\n")
(setq kept-new-versions 6)
(setq kept-old-versions 2)
(setq recentf-max-saved-items 500)
(setq set-mark-command-repeat-pop t)
(setq tab-bar-show 1)
(setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))
(setq use-dialog-box nil)
(setq version-control t)

;; (ifmac nil
 (progn
   (setq native-comp-async-report-warnings-errors 'silent)
   (setq native-compile-prune-cache t))
;; )

(add-to-list 'exec-path "/Library/TeX/texbin")
(add-to-list 'exec-path "/Library/Frameworks/Python.framework/Versions/3.10/bin")
(add-to-list 'exec-path "~/.ghcup/bin")
(add-to-list 'exec-path "/usr/local/smlnj/bin")
(add-to-list 'exec-path "~/.opam/default/bin")
(add-to-list 'exec-path "/Users/ericfrederickson/.opam/CP.2023.03.0~8.17~2023.08/bin")
(add-to-list 'exec-path "/opt/homebrew/bin/")
(add-to-list 'exec-path "/opt/local/bin/")
