;;;  -*- lexical-binding: t; -*-
;;; js-setup.el -- Configurations for Javascript editing
;;;

(use-package angular-mode
  :ensure t
  :defer t)

(add-hook 'js-mode-hook (lambda ()
			  (lsp-mode)))
