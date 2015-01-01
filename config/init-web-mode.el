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

(eval-after-load 'sgml-mode
                 '(add-hook 'html-mode-hook
                            (lambda ()
                              (add-hook 'before-save-hook 'web-beautify-html-buffer t t))))
(eval-after-load 'css-mode
                 '(add-hook 'css-mode-hook
                            (lambda ()
                              (add-hook 'before-save-hook 'web-beautify-css-buffer t t))))

(provide 'init-web-mode)
