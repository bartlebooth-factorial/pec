;;;  -*- lexical-binding: t; -*-
;;; c-family-setup.el -- Configurations for C-like languages
;;;

(add-hook 'c-mode-common-hook (lambda ()
				(c-set-style "bsd")
				;; (lsp-mode)
				;; (flyspell-prog-mode)
				))

;; (add-hook 'c-mode-common-hook 'google-set-c-style)

(sp-local-pair 'c-mode "{" nil :post-handlers '(:add ("||\n[i]" "RET")))
(sp-local-pair 'c++-mode "{" nil :post-handlers '(:add ("||\n[i]" "RET")))
(sp-local-pair 'js-mode "{" nil :post-handlers '(:add ("||\n[i]" "RET")))

