;;;  -*- lexical-binding: t; -*-
;;; package-setup-optm.el -- Package management with optimized loading
;;;

(require 'package)

(add-to-list 'package-archives '("MELPA" . "http://melpa.org/packages/"))

(setq package-install-upgrade-builtin t)

(package-initialize)

(setq use-package-always-ensure t)

(use-package 0xc
  :bind ("C-x ~" . 0xc-convert-point))

(use-package accent
  :bind ("C-x C-a" . accent-menu))

(use-package ace-window
  :defer t)

(use-package beginend
  :config
  (beginend-global-mode 1))

(use-package centered-cursor-mode
  :bind ("C-c c" . centered-cursor-mode))

(use-package chess
  :defer t
  :config
  (setq chess-images-default-size 70))

(use-package consult
  :defer t
  :config
  (setq register-preview-delay 0.8
        register-preview-function #'consult-register-format))

(use-package csv-mode
  :defer t)

(use-package d-mode
  :defer t)

(use-package dired-hide-dotfiles
  :hook (dired-after-readin . dired-hide-dotfiles--hide)
  :bind (:map dired-mode-map
	      ("," . dired-hide-dotfiles-mode)))

(use-package dired-preview
  :demand t
  :bind (:map dired-mode-map
	      ("[" . dired-preview-mode))
  :config (setq dired-preview-delay 0.2))

(use-package eat
  :hook (eshell-mode . eat-eshell-mode))

(use-package embark
  :bind (("C-." . embark-act)))

(use-package embark-consult
  :after (embark consult))

(use-package edit-indirect
  :defer t)

(use-package eglot
  :defer t)

(use-package expand-region
  :bind ("C-=" . er/expand-region))

(use-package haskell-mode
  :defer t)

(use-package ido-yes-or-no
  :config
  (ido-yes-or-no-mode 1))

(use-package magit
  :defer t)

(use-package marginalia
  :config
  (marginalia-mode 1))

(use-package markdown-mode
  :defer t)

(use-package multiple-cursors
  :bind (("C-S-c" . mc/edit-lines)
	 ("C->" . mc/mark-next-like-this)
	 ("C-<" . mc/mark-previous-like-this)
	 ("C-c C->" . mc/mark-all-like-this)))

(use-package pdf-tools
  :hook (doc-view-mode . pdf-tools-install))

(use-package pulsar
  :hook ((next-error . (lambda ()
			(setq-local pulsar-highlight-face 'pulsar-red)
			(pulsar-highlight-line)))
	 (isearch-mode-end . pulsar-pulse-line)))

(use-package rainbow-mode
  :defer t)

(use-package shell-command+
  :bind ("M-!" . shell-command+))

(use-package spacious-padding
  :hook ((after-init . spacious-padding-mode)
	 (server-after-make-frame . spacious-padding-mode)))

(use-package smartparens)

(use-package substitute
  :bind (("M-# b" . substitute-target-in-buffer)
	 ("M-# d" . substitute-target-in-defun)
	 ("M-# s" . substitute-target-below-point)
	 ("M-# r" . substitute-target-above-point))
  :config (add-to-list 'substitute-post-replace-hook 'substitute-report-operation))

(use-package vertico
  :config
  (vertico-mode 1))

(use-package vterm
  :defer t
  :config
  (setq vterm-timer-delay nil)
  (setq vterm-max-scrollback 10000))

(use-package which-key
  :config
  (which-key-mode 1))

(use-package yasnippet
  :config
  (yas-global-mode 1))
