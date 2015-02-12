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
(setq-default make-backup-files nil)
; Disable auto saving
(setq auto-save-default nil)
; Default indentation
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
; Show full path of file in title bar
(setq-default frame-title-format "%b (%f)")
; Open buffers always on bottom
(setq split-height-threshold nil)
(setq split-width-threshold most-positive-fixnum)
; Don't show me the startup screen
(setq inhibit-startup-screen t)
; Show column number in mode line
(setq column-number-mode t)
; Don't ring at error
(setq ring-bell-function 'ignore)
(setq visible-bell 'top-bottom)
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
; Starts in text-mode
(setq initial-major-mode 'text-mode)
; Inital message in *scratch* buffer
(setq initial-scratch-message "")

;;
;; Packages
;
(require 'init-elpa)

(require 'init-evil-mode)
(require 'init-electric)
(require 'init-linum-relative)
(require 'init-projectile)
(require 'init-expand-region)
(require 'init-ag)

(require 'init-smooth-scrolling)
(require 'init-uniquify)
(require 'init-smex)
(require 'init-ido)
(require 'init-helm)
(require 'init-smart-mode-line)

(require 'init-company-mode)
(require 'init-flycheck)
(require 'init-yasnippet)

(require 'init-dockerfile-mode)
(require 'init-nginx-mode)

(require 'init-go-mode)
(require 'init-javascript-mode)
(require 'init-web-mode)
(require 'init-yaml-mode)

;;
;; Custom key bindings
;
(require 'init-key-chord)
(require 'init-key-bindings)

;;
;; Default theme
;
(if (display-graphic-p)
  (progn
    (require-package 'seti-theme)
    (load-theme 'seti t))
  (progn
    (require-package 'ujelly-theme)
    (load-theme 'ujelly t)))

;;
;; Local Config
;
(require 'init-local-config nil 'noerror)
