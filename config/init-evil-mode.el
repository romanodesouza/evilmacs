(require-package 'evil)
(require-package 'evil-nerd-commenter)

; Config
(setq evil-search-module 'evil-search)
; Enable evil mode
(evil-mode t)
; Enable evil-nerd-commenter
(evilnc-default-hotkeys)
; Key bindings
(define-key evil-normal-state-map (kbd "C-p") 'fuzzy-finder)
(define-key evil-insert-state-map (kbd "C-p") 'fuzzy-finder)
(define-key evil-normal-state-map (kbd "C-S-j") 'move-line-down)
(define-key evil-normal-state-map (kbd "C-S-k") 'move-line-up)

(provide 'init-evil-mode)
