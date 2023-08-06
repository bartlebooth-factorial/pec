;;;  -*- lexical-binding: t; -*-
;;; package-setup.el -- Email config using notmuch.el
;;;

;; for reading mail
(use-package notmuch
  :ensure t
  :init
  (setq notmuch-fcc-dirs nil
	notmuch-hello-thousands-separator ","
	notmuch-show-logo nil
	notmuch-show-empty-saved-searches nil
	notmuch-hello-recent-searches-max 5
	notmuch-search-oldest-first nil)
  (add-hook 'notmuch-search-mode-hook (lambda ()
					(setq-local notmuch-search-oldest-first nil))))

;; for sending mail
(setq send-mail-function 'sendmail-send-it
      sendmail-program (executable-find "msmtp")
      mail-specify-envelope-from t
      message-sendmail-envelope-from 'header
      mail-envelope-from 'header)

(global-set-key (kbd "C-z m") (lambda ()
				(interactive)
				(notmuch-search-by-tag "inbox")))
