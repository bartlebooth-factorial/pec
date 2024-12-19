;;;  -*- lexical-binding: t; -*-
;;; package-setup-optm.el -- Package management with optimized loading
;;;

(require 'package)

;; (add-to-list 'package-archives '("MELPA" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(setq package-install-upgrade-builtin t)

(package-initialize)

(setq use-package-always-ensure t)

;; (use-package 0xc
;;   :bind ("C-x ~" . 0xc-convert-point))

(use-package accent
  :bind ("C-x M-a" . accent-menu))

(use-package ace-window
  :defer t)

;; (use-package aes
;;   :commands
;;   aes-encrypt-current-buffer
;;   aes-decrypt-current-buffer
;;   aes-insert-password)

(use-package activities
  :init
  (activities-mode)
  (activities-tabs-mode)
  ;; Prevent `edebug' default bindings from interfering.
  (setq edebug-inhibit-emacs-lisp-mode-bindings t)

  :bind
  (("C-z a n" . activities-new)
   ("C-z a d" . activities-define)
   ("C-z a a" . activities-resume)
   ("C-z a s" . activities-suspend)
   ("C-z a k" . activities-kill)
   ("C-z a SPC" . activities-switch)
   ("C-z a b" . activities-switch-buffer)
   ("C-z a g" . activities-revert)
   ("C-z a l" . activities-list)))


(use-package beginend
  :config
  (beginend-global-mode 1))

;; (use-package casual
;;   :demand t
;;   :bind (:map calc-mode-map
;; 	      ("C-o" . casual-main-menu)))

;; (use-package centered-cursor-mode
;;   :bind ("C-c c" . centered-cursor-mode))

;; (use-package chess
;;   :defer t
;;   :config
;;   (setq chess-images-default-size 70))

;; (ifmac (use-package combobulate
;;   :preface
;;   ;; You can customize Combobulate's key prefix here.
;;   ;; Note that you may have to restart Emacs for this to take effect!
;;   (setq combobulate-key-prefix "C-c o")

;;   ;; Optional, but recommended.
;;   ;;
;;   ;; You can manually enable Combobulate with `M-x
;;   ;; combobulate-mode'.
;;   :hook ((python-ts-mode . combobulate-mode)
;;          (js-ts-mode . combobulate-mode)
;;          (css-ts-mode . combobulate-mode)
;;          (yaml-ts-mode . combobulate-mode)
;;          (json-ts-mode . combobulate-mode)
;;          (typescript-ts-mode . combobulate-mode)
;;          (tsx-ts-mode . combobulate-mode))
;;   ;; Amend this to the directory where you keep Combobulate's source
;;   ;; code.
;;   :load-path ("/Users/ericfrederickson/repos/combobulate")))

(use-package consult
  :defer t
  :config
  (setq register-preview-delay 0.8
        register-preview-function #'consult-register-format))

(use-package csv-mode
  :defer t)

;; (use-package d-mode
;;   :defer t)

(use-package dired-hide-dotfiles
  :hook (dired-after-readin . dired-hide-dotfiles--hide)
  :bind (:map dired-mode-map
	      ("," . dired-hide-dotfiles-mode)))

;; (use-package dired-preview
;;   :demand t
;;   :bind (:map dired-mode-map
;; 	      ("[" . dired-preview-mode))
;;   :config (setq dired-preview-delay 0.2))

;; (use-package eat
;;   :hook (eshell-mode . eat-eshell-mode))

;; (use-package embark
;;   :bind (("C-." . embark-act)))

;; (use-package embark-consult
;;   :after (embark consult))

;; (use-package edit-indirect
;;   :defer t)

;; (use-package eglot
;;   :defer t)

;; (use-package enlight
;;   :custom
;;   (enlight-content
;;    (concat
;;     (propertize "MENU" 'face 'highlight)
;;     "\n"
;;     (enlight-menu
;;      '(("Org Mode"
;; 	("Org-Agenda (current day)" (org-agenda nil "a") "a"))
;;        ("Downloads"
;; 	("Transmission" transmission "t")
;; 	("Downloads folder" (dired "~/downloads") "a"))
;;        ("Other"
;; 	("Projects" project-switch-project "p")))))))

(use-package expand-region
  :bind ("C-=" . er/expand-region))

(use-package file-info)

(use-package filladapt
  :ensure t
  :config
  (setq-default filladapt-mode t))

(use-package git-gutter-fringe)

(use-package haskell-mode
  :defer t)

;; (use-package hyperbole
;;   :defer t)
;;   ;; :bind (("M-RET" . hkey-either))
;;   ;; :config
;;   ;; (hyperbole-mode 1)
;;   ;; :demand t)

(use-package ido-yes-or-no
  :config
  (ido-yes-or-no-mode 1))

(use-package magit
  :defer t
  :config
  (keymap-set magit-section-mode-map "C-<tab>" #'other-window))

(use-package marginalia
  :config
  (marginalia-mode 1))

(use-package markdown-mode
  :defer t)

;; (use-package multiple-cursors
;;   :bind (("C-S-c" . mc/edit-lines)
;; 	 ("C->" . mc/mark-next-like-this)
;; 	 ("C-<" . mc/mark-previous-like-this)
;; 	 ("C-c C->" . mc/mark-all-like-this)))

;; (use-package logos
;;   :commands logos-focus-mode
;;   ;; :bind ("C-z q" . logos-focus-mode)
;;   :config
;;   (setq logos-hide-mode-line t
;; 	logos-olivetti t)
;;   (let ((map global-map))
;;     (define-key map [remap narrow-to-region] #'logos-narrow-dwim)
;;     (define-key map [remap forward-page] #'logos-forward-page-dwim)
;;     (define-key map [remap backward-page] #'logos-backward-page-dwim))
;;   (repeat-mode 1))

;; (use-package olivetti
;;   :config
;;   (setq olivetti-body-width 0.6))

;; (use-package origami
;;   :config (global-origami-mode))

(use-package pdf-tools
  :hook (doc-view-mode . pdf-tools-install))

;; (use-package proof-general
;;   :config
;;   (setq proof-splash-enable nil))
;;   ;; (add-hook 'coq-mode-hook (lambda ()
;;   ;; 			     (abbrev-mode 0))))

(use-package pulsar
  :hook ((next-error . (lambda ()
			(pulsar-highlight-line)))
	 (isearch-mode-end . pulsar-pulse-line)))

(use-package rainbow-mode
  :defer t
  :init
  (setq rainbow-ansi-colors nil
	rainbow-html-colors nil
	rainbow-latex-colors nil
	rainbow-r-colors nil
	rainbow-x-colors nil))

;; (use-package reverso
;;   :commands
;;   reverso)

;; (use-package shell-command+
;;   :bind ("M-!" . shell-command+))

;; (use-package shell-command-x
;;   :config
;;   (shell-command-x-mode 1))

(use-package spacious-padding
  :init (setq spacious-padding-subtle-mode-line nil)
  :hook ((after-init . spacious-padding-mode)
	 (server-after-make-frame . spacious-padding-mode)))

(use-package smartparens)

(use-package substitute
  :bind (("M-# b" . substitute-target-in-buffer)
	 ("M-# d" . substitute-target-in-defun)
	 ("M-# s" . substitute-target-below-point)
	 ("M-# r" . substitute-target-above-point))
  :config (add-to-list 'substitute-post-replace-hook 'substitute-report-operation))

;; (use-package theme-buffet)

;; (use-package theme-buffet
;;   :demand t
;;   :functions calendar-current-time-zone
;;   theme-buffet-modus-ef theme-buffet-timer-hours
;;   :config
;;   (require 'cal-dst)
;;   (setopt theme-buffet-time-offset
;;           (1+ (/ (cadr (calendar-current-time-zone)) 60)))
;;   (theme-buffet-modus-ef)
;;   (theme-buffet-timer-hours 1))

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
