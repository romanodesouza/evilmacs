(require-package 'evil)
(require-package 'evil-nerd-commenter)

; Config
(setq evil-search-module 'evil-search)
; Enable evil mode
(evil-mode t)
; Enable evil-nerd-commenter
(evilnc-default-hotkeys)
; Key bindings
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-prev)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-next)

(provide 'init-evil-mode)
