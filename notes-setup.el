;;;  -*- lexical-binding: t; -*-
;;; notes-setup.el -- Note-taking infrastructure
;;;

(use-package denote
  :bind ("C-z n n" . denote)
  :init
  (setq denote-directory "~/files/text/notes")
  (setq denote-known-keywords nil)
  (setq denote-infer-keywords t)
  (setq denote-sort-keywords t)
  (setq denote-prompts '(title keywords file-type)))

(use-package denote-menu
  :bind ("C-z n l" . denote-menu-list-notes)
  :init
  (setq denote-menu-title-column-width 50))

(use-package consult-notes
  :bind ("C-z n SPC" . consult-notes)
  :init
  (setq consult-notes-sources
        `(("Notes"  ?n ,denote-directory))))
