(require-package 'scss-mode)
(require-package 'rainbow-mode)
(require-package 'css-eldoc)

(setq-default scss-compile-at-save nil)

(add-hook 'html-mode-hook 'rainbow-mode)
(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'scss-mode-hook 'rainbow-mode)

(autoload 'turn-on-css-eldoc "css-eldoc")
(add-hook 'css-mode-hook 'turn-on-css-eldoc)

; Indent after delete and/or close
(defadvice sgml-delete-tag (after reindent activate)
           (indent-region (point-min) (point-max)))
(defadvice sgml-close-tag (after reindent activate)
           (indent-region (point-min) (point-max)))

(provide 'init-web-mode)
