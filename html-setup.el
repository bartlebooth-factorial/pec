;;;  -*- lexical-binding: t; -*-
;;; html-setup.el -- Configurations for mhtml mode (a.k.a. HTML+ mode)
;;;

(add-hook 'mhtml-mode-hook (lambda ()
			     (sgml-electric-tag-pair-mode 1)))
