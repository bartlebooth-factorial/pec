;;;  -*- lexical-binding: t; -*-
;;; functions-setup.el -- Custom function definitions
;;;

(defun edit-config ()
  "Open init.el for editing"
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(defun eshell-other-window ()
  "Open `eshell' in a new window; opens in the caller's working directory"
  (interactive)
  (let ((curdir (pwd)) (buf (eshell)))
    (switch-to-buffer (other-buffer buf))
    (switch-to-buffer-other-window buf)
    (eshell/cd (substring curdir (length "Directory ")))
    (eshell/clear-scrollback)
    (eshell-send-input)))

(defun gd ()
  "Fuzzy directory jumper"
  (interactive)
  (let ((target-dir (completing-read
		     "Directory: "
		     (with-temp-buffer
		       (insert-file-contents "/home/eric/.gd_idx.txt")
		       (split-string (buffer-string) "\n" t)))))
    (dired target-dir)))
