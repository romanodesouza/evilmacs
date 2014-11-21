; Add config dir to load path
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))
; Add local config dir to load path
(add-to-list 'load-path (expand-file-name "local-config" user-emacs-directory))

;;
;; Custom config
;
; Enable deletion of selected text
(delete-selection-mode 1)
; Disable backup
(setq make-backup-files nil)
; Disable auto saving
(setq auto-save-default nil)
; Default indentation
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(electric-indent-mode t)
; Don't show me the startup screen
(setq inhibit-startup-screen t)
; Disable menu bar
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
; Disable tool bar
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
; Disable scroll bar
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
; Encoding
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
; Aliases
(defalias 'yes-or-no-p 'y-or-n-p)
; imenu
(setq-default imenu-auto-rescan t)
; Parens mode
(show-paren-mode 1)
(setq show-paren-delay 0)
; Line spacing
(setq-default line-spacing 3)
; Inital message in *scratch* buffer
(setq-default initial-scratch-message "; Emacs + evil rocks!! ;D")

;;
;; Packages
;
(require 'init-elpa)
(require 'init-projectile)
(require 'init-ace-jump-mode)
(require 'init-evil-mode)
(require 'init-linum-relative)
(require 'init-smooth-scrolling)
(require 'init-uniquify)
(require 'init-smex)
(require 'init-ido)
(require 'init-helm)
(require 'init-company-mode)
(require 'init-expand-region)
(require 'init-flycheck)
(require 'init-ag)
(require 'init-yasnippet)
(require 'init-key-chord)
(require 'init-multiple-cursors)

(require 'init-go-mode)
(require 'init-javascript-mode)
(add-hook 'python-mode-hook
          (lambda ()
            (require 'init-python-mode)))
(require 'init-yaml-mode)

;;
;; Custom key bindings
;
(require 'init-key-bindings)


;;
;; Local Config
;
(require 'init-local-config nil 'noerror)
