;;;  -*- lexical-binding: t; -*-
;;; init.el -- Emacs startup file
;;;

;; Platform
(defcustom myOs "linux"
  "Variable used to guard settings that only work on Linux or MacOs"
  :type 'string)

;; Uncomment on MacOs!
;; (setq myOs "macOs")

(defmacro ifmac (then &optional else)
  `(if (string-equal myOs "macOs")
       ,then
     ,else))

(defun load-these (files)
  (mapcar
   (lambda (file)
     (load-file (locate-user-emacs-file file)))
   files))

(load-these '("package-setup-optm.el"
	      ;; (load this first so that the remaining *-setup files
	      ;; can declare their dependencies with use-package)

	      ;; * Custom functions
	      "functions-setup.el"

	      ;; * Appearance
	      "appearance-setup.el"
	      "mode-line-setup.el"

	      ;; * Builtins
	      "builtin-modes-setup.el"
	      "builtin-options-setup.el"
	      "tabs-setup.el"
	      "dired-setup.el"

	      ;; * Keybinds
	      "keys-setup.el"

	      ;; * Completion
	      "completion-setup.el"

	      ;; * Email
	      "mail-setup.el"

	      ;; * Languages
	      ;; * * Plaintext, natural, and markup
	      "plaintext-setup.el"
	      "poem-setup.el"
	      "markdown-setup.el"
	      "org-setup.el"
	      "notes-setup.el"
	      "lilypond-setup.el"

	      ;; * * Programming
	      "programming-setup.el"
	      "c-family-setup.el"
	      "d-setup.el"
	      "js-setup.el"
	      "lisp-setup.el"
	      "lsp-setup.el"
	      "python-setup.el"
	      "ocaml-setup.el"))

;; M-x customize
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)
