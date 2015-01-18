(require-package 'anaconda-mode)
(require-package 'pyenv-mode)
(require-package 'company-anaconda)

(anaconda-mode)
(pyenv-mode)
(add-hook 'python-mode-hook 'company-python)

(defun company-python ()
  (set (make-local-variable 'company-backends) '((company-anaconda company-yasnippet))))

(evil-define-key 'normal jedi-mode-map (kbd "C-]") 'jedi:goto-definition)
(evil-define-key 'normal jedi-mode-map (kbd "K") 'jedi:show-doc)

(provide 'init-python-mode)
