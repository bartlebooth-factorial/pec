;;;  -*- lexical-binding: t; -*-
;;; init.el -- Emacs startup file
;;;

;; Platform
(defcustom myOs "linux"
  "Variable used to guard settings that only work on Linux or MacOs"
  :type 'string)

;; Uncomment on MacOs!
;; (setq myOs "macOs")

;; Packages
;; (load this first so that the remaining *-setup files
;; can declare their dependencies with use-package)
(load-file (locate-user-emacs-file "package-setup.el"))

;; Appearance
(load-file (locate-user-emacs-file "appearance-setup.el"))

;; Builtin Modes and Options
(load-file (locate-user-emacs-file "builtin-modes-setup.el"))
(load-file (locate-user-emacs-file "builtin-options-setup.el"))

;; Keybinds
(load-file (locate-user-emacs-file "keys-setup.el"))

;; Customizations from M-x Customize
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; Languages
; plaintext, natural language, and markup
(load-file (locate-user-emacs-file "plaintext-setup.el"))
(load-file (locate-user-emacs-file "poem-setup.el"))
(load-file (locate-user-emacs-file "org-setup.el"))
(load-file (locate-user-emacs-file "lilypond-setup.el"))
; programming
(load-file (locate-user-emacs-file "programming-setup.el"))
(load-file (locate-user-emacs-file "c-family-setup.el"))
(load-file (locate-user-emacs-file "d-setup.el"))
(load-file (locate-user-emacs-file "lsp-setup.el"))
(load-file (locate-user-emacs-file "ocaml-setup.el"))

