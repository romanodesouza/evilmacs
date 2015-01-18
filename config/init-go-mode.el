(require-package 'go-mode)
(require-package 'company-go)
(require-package 'go-eldoc)
(require-package 'go-snippets)
(require 'go-mode)

(setq company-go-insert-arguments t)
(setq gofmt-command "goimports")

(add-hook 'go-mode-hook 'go-eldoc-setup)
(add-hook 'go-mode-hook 'go-company)
(add-hook 'before-save-hook #'gofmt-before-save)

(defun go-company ()
  (set (make-local-variable 'company-backends) '((company-go company-yasnippet))))

(evil-define-key 'normal go-mode-map (kbd "C-]") 'godef-jump)
(evil-define-key 'normal go-mode-map (kbd "K") 'godef-describe)

(provide 'init-go-mode)
