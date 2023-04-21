;;;  -*- lexical-binding: t; -*-
;;; lsp-setup.el -- Setup for Language Server Protocall integration
;;;

(use-package lsp-mode
  :ensure t)

(add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)

(add-hook 'lsp-mode-hook (lambda ()
			   (local-set-key (kbd "M-.") 'lsp-find-definition)))
