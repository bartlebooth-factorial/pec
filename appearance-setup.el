;;;  -*- lexical-binding: t; -*-
;;; appearance-setup.el -- Configurations for how Emacs looks
;;;

;; Use the wonderful ef-themes
(use-package ef-themes
  :ensure t)

(require-theme 'ef-themes)

(load-theme 'ef-frost t) ; light
;; (load-theme 'ef-night t) ; dark

;; Ensure fullscreen at startup
(unless (frame-parameter nil 'fullscreen)
    (toggle-frame-fullscreen))

;; Bigger font
(if (string-equal myOs "linux")
    (set-face-attribute 'default nil :height 180)
  (set-face-attribute 'default nil :height 220))

;; Wrap long lines instead of truncating them
(set-default 'truncate-lines nil)

;; Show the current time in the modeline
(display-time)
