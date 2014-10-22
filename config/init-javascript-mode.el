(require-package 'js2-mode)
(require-package 'tern)
(require-package 'company-tern)
(require-package 'web-beautify)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook (lambda ()
                           (tern-mode t)
                           (js2-imenu-extras-mode)
                           (add-hook 'before-save-hook 'web-beautify-js-buffer t t)
                           (add-to-list 'company-backends 'company-tern)

                           (setq-default js2-global-externs
                                         '("module" "require" "__dirname" "process" "console" "define"
                                           "JSON" "$" "_" "Backbone" "buster" "sinon" "moment" "_gaq"
                                           "Zenbox" "Mousetrap" "Comoyo"))
                           (setq-default js2-indent-tabs-mode t)
                           (setq-default js2-indent-level 4)
                           (setq-default js2-auto-indent-p t)         ; it's nice for commas to right themselves.
                           (setq-default js2-enter-indents-newline t) ; don't need to push tab before typing
                           (setq-default js2-indent-on-enter-key t)))

(provide 'init-javascript-mode)
