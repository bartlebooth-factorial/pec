;;;  -*- lexical-binding: t; -*-
;;; poem-setup.el -- Custom file extension for poetry
;;;

(use-package olivetti
  :ensure t
  :bind ("C-c o" . olivetti-mode))

(add-to-list 'auto-mode-alist
             '("\\.poem\\'" . (lambda ()
                                (text-mode)
				(olivetti-mode 1)
				(text-scale-adjust 1)
				(setq-local completion-at-point-functions nil))))
