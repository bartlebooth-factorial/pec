;;;  -*- lexical-binding: t; -*-
;;; dired-setup.el -- configurations for Dired
;;;

(defun dired-sysopen-file-at-point ()
  (interactive)
  (async-shell-command (concat "open " (dired-file-name-at-point)) nil nil))

(add-hook 'dired-mode-hook
	  (lambda ()
	    (keymap-set dired-mode-map (kbd ";") 'dired-sysopen-file-at-point)))
