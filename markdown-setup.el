;;;  -*- lexical-binding: t; -*-
;;; markdown-setup.el -- Customizations for writing Markdown
;;;

(setq markdown-fontify-code-blocks-natively t)

(add-hook 'markdown-mode-hook (lambda ()
				(setq-local completion-at-point-functions 'cape-dabbrev)
				(setq-local fill-column 80)
				(auto-fill-mode 1)
				(flyspell-mode 1)))
