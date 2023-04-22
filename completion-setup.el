;;;  -*- lexical-binding: t; -*-
;;; completion-setup.el -- Configurations for (auto) completion
;;;

;; Orderless: brilliant completion style that I use everywhere
(use-package orderless
  :ensure t)

;; (setq completion-styles '(basic substring partial-completion flex initials orderless))
(setq completion-styles '(orderless basic))
(setq completion-ignore-case t)
(setq read-buffer-completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)
(setq completion-category-defaults nil)
(setq completion-category-overrides '((file (styles . (partial-completion)))))

;; Corfu: frontend for auto completion with various backends
(use-package corfu
  :ensure t
  :custom
  (corfu-auto t)
  (corfu-auto-delay 0.0)
  (corfu-auto-prefix 2)
  (corfu-cycle t)                ;; Enable cycling for `corfu-next/previous'
  (corfu-echo-delay 0.25)
  (corfu-separator ?\s)          ;; Orderless field separator
  (corfu-quit-at-boundary nil)   ;; Never quit at completion boundary
  (corfu-quit-no-match t)        ;; Never quit, even if there is no match
  (corfu-preview-current nil)    ;; Disable current candidate preview
  (corfu-preselect 'first)            ;; Preselect the prompt
  (corfu-on-exact-match nil)     ;; Configure handling of exact matches
  (corfu-scroll-margin 5)        ;; Use scroll margin
  :init
  (corfu-echo-mode)
  (corfu-history-mode)
  (global-corfu-mode))

(setq completion-cycle-threshold 3)
(setq tab-always-indent 'complete)

;; Pabbrev: a great simple completion solution.
;; Using Corfu at the moment but keeping
;; this here in case I switch back.
;; (use-package pabbrev
;;   :ensure t
;;   :config
;;   (setq pabbrev-idle-timer-verbose nil)
;;   (global-pabbrev-mode 0))

