;;;  -*- lexical-binding: t; -*-
;;; keys-setup.el -- Keybindings and some function definitions
;;;

;; Swap meta and super on Linux
(ifmac ()
       (setq  x-meta-keysym 'super
	      x-super-keysym 'meta))

(global-set-key (kbd "C-c f") 'toggle-frame-fullscreen)
(global-set-key (kbd "C-c l") 'display-line-numbers-mode)
(global-set-key (kbd "C-x C-b") 'ibuffer-other-window)
(global-set-key (kbd "C-x C-d") 'dired) ; Don't accidentally call list-directory
(global-set-key (kbd "C-c p") 'find-file-at-point)
(global-set-key (kbd "C-c w") 'whitespace-mode)

(defun edit-config ()
  "Open init.el for editing"
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(defun eshell-other-window ()
  "Open `eshell' in a new window; match caller's dir"
  (interactive)
  (let ((curdir (pwd)) (buf (eshell)))
    (switch-to-buffer (other-buffer buf))
    (switch-to-buffer-other-window buf)
    (eshell/cd (substring curdir (length "Directory ")))
    (eshell/clear-scrollback)
    (eshell-send-input)))

(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z ,") 'vterm-other-window)
(global-set-key (kbd "C-z .") 'eshell-other-window)
(global-set-key (kbd "C-z =") 'edit-config)
(global-set-key (kbd "C-z SPC") 'consult-recent-file)
(global-set-key (kbd "C-z p") 'package-list-packages)
(global-set-key (kbd "C-z t") 'ef-themes-select)
