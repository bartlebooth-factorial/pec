;;;  -*- lexical-binding: t; -*-
;;; mode-line-setup.el -- Mode-line configurations
;;;

(use-package diminish
  :demand t
  :config
  (diminish 'auto-revert-mode "autoRev")
  (diminish 'beginend-global-mode)
  (diminish 'beginend-outline-mode)
  (diminish 'eldoc-mode "doc")
  (diminish 'which-key-mode)
  (diminish 'yas-minor-mode))
