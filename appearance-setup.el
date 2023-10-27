;;;  -*- lexical-binding: t; -*-
;;; appearance-setup.el -- Configurations for how Emacs looks
;;;

;; Use the wonderful ef-themes
(use-package ef-themes
  :config
  (setq ef-melissa-dark-palette-overrides
        '((prompt yellow-warmer))))

(require-theme 'ef-themes)

(ifmac (load-theme 'ef-melissa-dark t)
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
