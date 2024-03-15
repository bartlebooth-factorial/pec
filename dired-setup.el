;;;  -*- lexical-binding: t; -*-
;;; dired-setup.el -- configurations for Dired
;;;

(ifmac (progn (defun dired-sysopen-file-at-point ()
		(interactive)
		(async-shell-command (concat "open " (dired-file-name-at-point)) nil nil))

	      (use-package dired
		:bind (:map dired-mode-map
			    (";" . dired-sysopen-file-at-point)))))
