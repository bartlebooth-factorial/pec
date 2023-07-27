;;;  -*- lexical-binding: t; -*-
;;; package-setup.el -- Package management
;;;

(require 'package)

(add-to-list 'package-archives '("MELPA" . "http://melpa.org/packages/"))

(package-initialize)

(require 'use-package)

;; General packages with some configuration

(use-package 0xc
  :ensure t
  :bind ("C-x ~" . 0xc-convert-point))

(use-package accent
  :ensure t
  :bind ("C-x C-a" . accent-menu))

(use-package ace-window
  :ensure t)

(use-package beginend
  :ensure t
  :config
  (beginend-global-mode 1))

(use-package bufler
  :ensure t)

(use-package centered-cursor-mode
  :ensure t
  :bind ("C-c c" . centered-cursor-mode))

(use-package chess
  :ensure t
  :config
  (setq chess-images-default-size 70))

(use-package consult
  :ensure t
  :bind (("C-c b" . consult-buffer)
	 ("C-c C-f" . consult-recent-file)
	 ("C-c C-l" . consult-line)
	 ("M-g g" . consult-goto-line)))

(use-package csv-mode
  :ensure t)

(use-package d-mode
  :ensure t)

(use-package dired-hide-dotfiles
  :ensure t
  :config
  (dired-hide-dotfiles-mode 1)
  (add-hook 'dired-mode-hook (lambda ()
			       (beginend-dired-mode 1)
			       (local-set-key "," 'dired-hide-dotfiles-mode))))

(use-package dired-preview
  :ensure t
  :config
  (dired-preview-global-mode 0)
  (setq dired-preview-delay 0.2))

(use-package embark
  :ensure t
  :bind (("C-." . embark-act)))

(use-package embark-consult
  :ensure t)

(use-package edit-indirect
  :ensure t)

(use-package eglot
  :ensure t)

(use-package eyebrowse
  :ensure t
  :config
  (eyebrowse-mode 1))

(use-package expand-region
  :ensure t
  :config
  (global-set-key (kbd "C-=") 'er/expand-region))

(use-package haskell-mode
  :ensure t)

(use-package ido-yes-or-no
  :ensure t
  :config
  (ido-yes-or-no-mode 1))

(use-package magit
  :ensure t)

(use-package marginalia
  :ensure t
  :config
  (marginalia-mode 1))

(use-package markdown-mode
  :ensure t)

(use-package multiple-cursors
  :ensure t
  :bind (("C-S-c" . mc/edit-lines)
	 ("C->" . mc/mark-next-like-this)
	 ("C-<" . mc/mark-previous-like-this)
	 ("C-c C->" . mc/mark-all-like-this)))

(use-package org-bullets
  :ensure t)

(use-package pdf-tools
  :ensure t
  :config
  (add-hook 'doc-view-mode-hook (lambda ()
				  (pdf-tools-install))))

(use-package rainbow-mode
  :ensure t)

(use-package shell-command-x
  :ensure t
  :config
  (shell-command-x-mode 1))

(use-package smartparens
  :ensure t)
  ;; :config
  ;; (smartparens-global-mode 1))

(use-package swiper
  :ensure t)
  ;; :bind (("C-s" . swiper)))
	 ;; ("C-r" . swiper-backward)))

(use-package vertico
  :ensure t
  :config
  (vertico-mode 1))

(use-package vterm
  :ensure t
  :config
  (setq vterm-timer-delay nil)
  (setq vterm-max-scrollback 10000))

(use-package which-key
  :ensure t
  :config
  (which-key-mode 1))

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))
