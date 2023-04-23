;;;  -*- lexical-binding: t; -*-
;;; notes-setup.el -- Note-taking infrastructure
;;;

(use-package denote
  :ensure t
  :init
  (setq denote-directory "~/files/text/notes")
  (setq denote-known-keywords nil)
  (setq denote-infer-keywords t)
  (setq denote-sort-keywords t)
  (setq denote-prompts '(title keywords file-type)))

(use-package denote-menu
  :ensure t)

(use-package consult-notes
  :ensure t
  :init
  (setq consult-notes-sources
        `(("Notes"  ?n ,denote-directory))))

(global-set-key (kbd "C-z n n") 'denote)
(global-set-key (kbd "C-z n l") 'denote-menu-list-notes)
(global-set-key (kbd "C-z n SPC") 'consult-notes)

