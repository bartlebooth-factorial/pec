;;;  -*- lexical-binding: t; -*-
;;; markdown-setup.el -- Customizations for writing Markdown
;;;

(add-hook 'markdown-mode-hook (lambda ()
				(auto-fill-mode 1)
				(setq-local fill-column 80)))
