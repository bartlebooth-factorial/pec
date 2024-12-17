;;;  -*- lexical-binding: t; -*-
;;; appearance-setup.el -- Configurations for how Emacs looks
;;;

;; Use the wonderful ef-themes
(use-package ef-themes
  :config
  (setq ef-melissa-dark-palette-overrides
        '((prompt yellow-warmer))
	ef-melissa-light-palette-overrides
	'((bg-mode-line bg-blue-intense))
	ef-dream-palette-overrides
	'((prose-done green-warmer)))
  (setq ef-themes-to-toggle
	'(ef-day ef-dream)))

(use-package modus-themes)

(require-theme 'ef-themes)

(require-theme 'modus-themes)

(ifmac (load-theme 'ef-dream t)
       (load-theme 'ef-winter t))

;; Ensure fullscreen at startup
(ifmac (unless (frame-parameter nil 'fullscreen)
    (toggle-frame-fullscreen)))

;; Bigger font
(ifmac (set-face-attribute 'default nil :height 200)
       (set-face-attribute 'default nil :height 180))

;; (ifmac (set-face-attribute 'default nil :family "Menlo"))
(ifmac (set-face-attribute 'default nil :family "Iosevka Comfy"))

;; Truncate long lines (wrapping causes too much visual interference)
(set-default 'truncate-lines t)

;; Show the current time in the modeline
(display-time)

;; Smooth scrolling
(pixel-scroll-precision-mode 1)
