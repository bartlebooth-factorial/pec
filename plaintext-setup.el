;;;  -*- lexical-binding: t; -*-
;;; plaintext-setup.el -- Customizations for writing plain text
;;;

;; Capitalization
(use-package captain
  :ensure t
  :init
  (setq sentence-end-double-space nil)
  :config
  (global-captain-mode 0)
  :bind ("C-c u" . captain-capitalize-word))

(add-hook 'text-mode-hook (lambda ()
			    (setq captain-predicate
				  (lambda () t))
			    (local-set-key (kbd "M-/") 'cape-ispell)
			    (setq-local completion-at-point-functions 'cape-ispell)
			    (setq-local corfu-auto t)
			    (setq-local corfu-auto-delay 0.2)
			    (set-fill-column 80)
			    (auto-fill-mode 1)))
