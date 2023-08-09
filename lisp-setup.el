;;;  -*- lexical-binding: t; -*-
;;; lisp-setup.el -- Configurations for (Common) Lisp
;;;

(use-package sly
  :defer t)

(setq inferior-lisp-program (executable-find "sbcl"))

