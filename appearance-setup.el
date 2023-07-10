;;;  -*- lexical-binding: t; -*-
;;; appearance-setup.el -- Configurations for how Emacs looks
;;;

;; Use the wonderful ef-themes
(use-package ef-themes
  :ensure t)

(require-theme 'ef-themes)

;; (load-theme 'ef-kassio t) ; light
(load-theme 'ef-trio-dark t) ; dark

;; Ensure fullscreen at startup
(unless (frame-parameter nil 'fullscreen)
    (toggle-frame-fullscreen))

;; Bigger font
(ifmac (set-face-attribute 'default nil :height 190)
       (set-face-attribute 'default nil :height 180))

;; ;; Wrap long lines instead of truncating them
;; (set-default 'truncate-lines nil)
(set-default 'truncate-lines t)

;; Show the current time in the modeline
(display-time)
