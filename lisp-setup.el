;;;  -*- lexical-binding: t; -*-
;;; lisp-setup.el -- Configurations for (Common) Lisp
;;;

(use-package sly
  :ensure t)

(setq inferior-lisp-program (executable-find "sbcl"))

