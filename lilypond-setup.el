;;;  -*- lexical-binding: t; -*-
;;; lilypond-setup.el -- Configure LilyPond mode installed with homebrew
;;;

(if (string-equal myOs "macOs")
    (load-file "/opt/homebrew/share/emacs/site-lisp/lilypond/lilypond-init.el")
  (load-file "/usr/share/emacs/site-lisp/lilypond-init.el"))

(if (string-equal myOs "macOs")
    (setq load-path (append '("/opt/homebrew/share/emacs/site-lisp/lilypond") load-path)))

(eval-after-load 'flycheck '(require 'flycheck-lilypond))

(add-hook 'LilyPond-mode-hook (lambda ()
				(flycheck-mode)))

