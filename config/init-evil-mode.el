(require-package 'evil)
(require-package 'evil-nerd-commenter)

; Config
(setq evil-search-module 'evil-search)
; Enable evil mode
(evil-mode t)
; Enable evil-nerd-commenter
(evilnc-default-hotkeys)

(provide 'init-evil-mode)
