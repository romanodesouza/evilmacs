(require-package 'company)
(require 'company)

(setq company-idle-delay 0.1)
(setq company-minimum-prefix-length 1)
(setq company-tooltip-limit 20)
(setq company-dabbrev-ignore-case t)
(setq company-dabbrev-downcase nil)

(global-company-mode)

(define-key company-active-map (kbd "\C-n") 'company-select-next)
(define-key company-active-map (kbd "\C-p") 'company-select-previous)

(defadvice company-complete-common (around advice-for-company-complete-common activate)
           (when (null (yas-expand))
             ad-do-it))

(defun my-company-tab ()
  (interactive)
  (when (null (yas-expand))
    (tab-to-tab-stop)))

(provide 'init-company-mode)
