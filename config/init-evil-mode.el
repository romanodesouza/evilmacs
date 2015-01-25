(require-package 'evil)
(require-package 'evil-nerd-commenter)
(require-package 'evil-jumper)
(require-package 'evil-visualstar)
(require-package 'evil-matchit)

(setq evil-search-module 'evil-search)
(setq evil-magic 'very-magic)
(setq evil-want-C-u-scroll t)
; Enable evil mode
(evil-mode t)
; Enable evil-nerd-commenter
(evilnc-default-hotkeys)

(global-evil-jumper-mode t)
(global-evil-visualstar-mode t)
(global-evil-matchit-mode t)

(define-key evil-motion-state-map (kbd "C-]") nil)
(define-key evil-motion-state-map (kbd "K") nil)
(define-key evil-normal-state-map (kbd "C-p") 'file-fuzzy-finder)
(define-key evil-insert-state-map (kbd "C-p") 'file-fuzzy-finder)
(define-key evil-insert-state-map (kbd "<tab>") 'my-company-tab)
(define-key evil-insert-state-map (kbd "<backtab>") 'evil-shift-left-line)
(define-key evil-insert-state-map (kbd "C-h") 'evil-delete-backward-char)
(define-key evil-insert-state-map (kbd "C-i") 'tab-to-tab-stop)

(define-key evil-normal-state-map           [escape] 'keyboard-quit)
(define-key evil-visual-state-map           [escape] 'keyboard-quit)
(define-key minibuffer-local-map            [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map         [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map    [escape] 'minibuffer-keyboard-quit)

; Simulate the "vmap y ygv<Esc>" vim conf
(define-key evil-visual-state-map (kbd "y") 'my-evil-yank)
(evil-define-operator my-evil-yank (beg end type register yank-handler)
                      (interactive "<R><x><y>")
                      (evil-yank beg end type register yank-handler)
                      (run-at-time "000 msec" nil 'evil-visual-restore)
                      (run-at-time "001 msec" nil 'keyboard-quit))

(provide 'init-evil-mode)
