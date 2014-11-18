(require-package 'evil)
(require-package 'evil-nerd-commenter)

; Config
(setq evil-search-module 'evil-search)
; Enable evil mode
(evil-mode t)
; Enable evil-nerd-commenter
(evilnc-default-hotkeys)
; Key bindings
(define-key evil-normal-state-map (kbd"C-S-j") 'move-line-down)
(define-key evil-normal-state-map (kbd"C-S-k") 'move-line-up)
(define-key evil-normal-state-map "\C-p" 'fuzzy-finder)
(define-key evil-insert-state-map "\C-p" 'fuzzy-finder)
(define-key evil-insert-state-map "\C-e" 'end-of-line)
(define-key evil-insert-state-map "\C-h" 'left-char)
(define-key evil-insert-state-map "\C-l" 'right-char)
(define-key evil-insert-state-map "\C-k" 'previous-line)
(define-key evil-insert-state-map "\C-j" 'next-line)
(define-key evil-insert-state-map (kbd "<tab>") 'tab-to-tab-stop)
(define-key evil-insert-state-map (kbd "<backtab>") 'evil-shift-left-line)

(provide 'init-evil-mode)
