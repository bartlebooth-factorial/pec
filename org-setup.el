;;;  -*- lexical-binding: t; -*-
;;; org-setup.el -- Configurations for org-mode
;;;

(add-hook 'org-mode-hook (lambda ()
			   (org-bullets-mode 1)
			   (org-indent-mode 1)
			   (setq captain-predicate
				 (lambda () (not (org-in-src-block-p))))))
