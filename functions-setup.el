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

(ifmac (defun gd (&optional arg)
	 "Goto Directory"
	 (interactive "P")
	 (let ((target-dir (completing-read
			    "Directory: "
			    (with-temp-buffer
			      (insert-file-contents "~/.gd_idx.txt")
			      (split-string (buffer-string) "\n" t)))))
	   (if arg
	       (dired-other-window target-dir)
	     (dired (concat "~/" target-dir)))))
;; ELSE
       (defun gd (&optional arg)
	 "Goto Directory"
	 (interactive "P")
	 (let ((target-dir (completing-read
			    "Directory: "
			    (with-temp-buffer
			      (insert-file-contents "/home/eric/.gd_idx.txt")
			      (split-string (buffer-string) "\n" t)))))
	   (if arg
	       (dired-other-window target-dir)
	     (dired target-dir)))))

(defun change-num-at-point (change-func)
  "Replace the number under the point with (change-func number)"
  (if (number-at-point)
      (let ((new-num (funcall change-func (number-at-point))))
	(backward-sexp)
	(kill-sexp)
	(insert (number-to-string new-num)))))

(defun seek-to-num ()
  "Move the point to the next number in the buffer"
  (if (number-at-point)
      t
    (if (= (point) (buffer-end 1))
	nil
      (progn
	(forward-word)
	(seek-to-num)))))

(defun seek-to-num-and-change (change-func)
  "Go to next number in buffer and replace it with (change-func number)"
  (push-mark)
  (if (seek-to-num)
      (change-num-at-point change-func)
    (progn
      (message "No number found in buffer after point"))))

(defun incr-num-at-point ()
  (interactive)
  (seek-to-num-and-change (lambda (x) (+ x 1))))

(defun decr-num-at-point ()
  (interactive)
  (seek-to-num-and-change (lambda (x) (- x 1))))



(defun copy-line (&optional arg)
  (interactive "P")
  (save-mark-and-excursion
    (unless arg
      (back-to-indentation))
    (push-mark)
    (move-end-of-line 1)
    (activate-mark)
    (kill-ring-save nil nil t)))
