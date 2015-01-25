(require-package 'scss-mode)
(require-package 'rainbow-mode)
(require-package 'css-eldoc)
(require-package 'php-mode)
(require-package 'jinja2-mode)

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

; Jinja2
(add-to-list 'auto-mode-alist '("\\.html" . jinja2-mode))
(add-to-list 'auto-mode-alist '("\\.volt" . jinja2-mode))
(add-hook 'sgml-mode-hook 'setup-sgml-custom-keybinds)

(defun setup-sgml-custom-keybinds ()
  (interactive)
  (evil-define-key 'normal sgml-mode-map (kbd "<SPC> t d") 'sgml-delete-tag)
  (evil-define-key 'normal sgml-mode-map (kbd "<SPC> t f") 'sgml-skip-tag-forward)
  (evil-define-key 'normal sgml-mode-map (kbd "<SPC> t b") 'sgml-skip-tag-backward)
  (evil-define-key 'normal sgml-mode-map (kbd "<SPC> t c") 'sgml-close-tag)

  (evil-define-key 'normal jinja2-mode-map (kbd "<SPC> j o") 'jinja2-insert-tag)
  (evil-define-key 'normal jinja2-mode-map (kbd "<SPC> j c") 'my-jinja2-close-tag))

(defun my-jinja2-close-tag ()
  "Close the previously opened template tag."
  (interactive)
  (let ((open-tag (save-excursion (jinja2-find-open-tag))))
    (if open-tag
      (insert
        (format "{%% end%s %%}"
                (match-string 2)))
      (error "Nothing to close")))
  (save-excursion (jinja2-indent-line)))

(provide 'init-web-mode)
