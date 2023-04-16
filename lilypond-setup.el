;;;  -*- lexical-binding: t; -*-
;;; lilypond-setup.el -- Configure LilyPond mode installed with homebrew
;;;

(load-file "/opt/homebrew/share/emacs/site-lisp/lilypond/lilypond-init.el")

(eval-after-load 'flycheck '(require 'flycheck-lilypond))

(add-hook 'LilyPond-mode-hook (lambda ()
				(flycheck-mode)))

