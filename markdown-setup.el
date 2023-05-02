;;;  -*- lexical-binding: t; -*-
;;; markdown-setup.el -- Customizations for writing Markdown
;;;

(setq markdown-fontify-code-blocks-natively t)

(add-hook 'markdown-mode-hook (lambda ()
				(auto-fill-mode 1)
				(setq-local fill-column 80)))
