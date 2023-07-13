;;;  -*- lexical-binding: t; -*-
;;; lilypond-setup.el -- Configure LilyPond mode installed with homebrew
;;;

(ifmac (load-file "/opt/homebrew/share/emacs/site-lisp/lilypond/lilypond-init.el")
       (load-file "/usr/share/emacs/site-lisp/lilypond-init.el"))

(ifmac (setq load-path (append '("/opt/homebrew/share/emacs/site-lisp/lilypond") load-path)))

(ifmac (eval-after-load 'flycheck '(require 'flycheck-lilypond)))

(add-hook 'LilyPond-mode-hook (lambda ()
				(flycheck-mode 1)
				(display-line-numbers-mode 1)))

