;;;  -*- lexical-binding: t; -*-
;;; c-family-setup.el -- Configurations for C-like languages
;;;

(add-hook 'c-mode-common-hook (lambda ()
				;; (c-set-style "bsd")
				(c-set-style "stroustrup")
				;; (lsp-mode)
				;; (flyspell-prog-mode)
				))
