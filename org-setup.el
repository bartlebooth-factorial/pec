;;;  -*- lexical-binding: t; -*-
;;; org-setup.el -- Configurations for org-mode
;;;

(use-package org-bullets
  :hook (org-mode . org-bullets-mode))

(add-hook 'org-mode-hook (lambda ()
			   (org-indent-mode 1)
			   (setq captain-predicate
				 (lambda () (not (org-in-src-block-p))))))
