(setq helm-quick-update t)
(setq helm-bookmark-show-location t)
(setq helm-buffers-fuzzy-matching t)
(setq helm-swoop-pre-input-function
      (lambda () ""))

(require-package 'helm)
(require-package 'helm-swoop)

(require 'helm-config)

(provide 'init-helm)
