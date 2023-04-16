;;;  -*- lexical-binding: t; -*-
;;; programming-setup.el -- Customizations for coding
;;;

(use-package cape
  :ensure t
  :bind ("M-/" . cape-dabbrev))

(use-package captain
  :ensure t)

(add-hook 'prog-mode-hook (lambda ()
			    (setq-local completion-at-point-functions '(cape-dabbrev cape-keyword))
			    (setq captain-predicate
				  (lambda () (nth 8 (syntax-ppss (point)))))
			    (display-line-numbers-mode 1)))
