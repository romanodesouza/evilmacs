(require-package 'anaconda-mode)
(require-package 'pyenv-mode)
(require-package 'company-anaconda)

(anaconda-mode)
(pyenv-mode)
(add-hook 'python-mode-hook
          (lambda ()
            (set (make-local-variable 'company-backends)
                 '((company-anaconda company-yasnippet)))))

(provide 'init-python-mode)
