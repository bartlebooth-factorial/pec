;;;  -*- lexical-binding: t; -*-
;;; js-setup.el -- Configurations for Javascript editing
;;;

(add-hook 'js-mode-hook (lambda ()
			  (lsp-mode)))
