(require-package 'web-mode)
(require-package 'scss-mode)
(require-package 'rainbow-mode)
(require-package 'css-eldoc)
(require-package 'php-mode)
(require-package 'emmet-mode)

(setq web-mode-engines-alist '(("jinja2" . "\\.html\\'") ("jinja2" . "\\.volt\\'")))
(setq-default scss-compile-at-save nil)

(add-to-list 'auto-mode-alist '("\\.html" . web-mode))
(add-to-list 'auto-mode-alist '("\\.volt" . web-mode))

(add-hook 'html-mode-hook 'rainbow-mode)
(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'scss-mode-hook 'rainbow-mode)
(add-hook 'web-mode-hook 'rainbow-mode)

(autoload 'turn-on-css-eldoc "css-eldoc")
(add-hook 'css-mode-hook 'turn-on-css-eldoc)

(add-hook 'css-mode-hook 'my-emmet-mode)
(add-hook 'sgml-mode-hook 'my-emmet-mode)
(add-hook 'web-mode-hook 'my-emmet-mode)

(add-hook 'css-mode-hook 'my-local-electric-pair-mode)

(defun my-emmet-tab ()
  (interactive)
  (when (null (emmet-expand-yas))
    (tab-to-tab-stop)))

(defun my-emmet-mode ()
  (setq yas-dont-activate t)
  (emmet-mode)
  (evil-define-key 'insert emmet-mode-keymap (kbd "<tab>") 'my-emmet-tab)
  (define-key emmet-mode-keymap (kbd "C-j") nil)
  (define-key emmet-mode-keymap (kbd "<C-return>") nil))

(provide 'init-web-mode)
