(require-package 'ido-vertical-mode)
(require-package 'ido-ubiquitous)
(require-package 'flx-ido)

(ido-mode t)
(ido-vertical-mode t)
(ido-everywhere t)
(ido-ubiquitous-mode t)
(flx-ido-mode t)

(setq ido-enable-flex-matching t)
(setq ido-ignore-buffers '("\\` " "^\*"))

(defun ido-define-keys ()
  (define-key ido-completion-map [up] 'ido-prev-match)
  (define-key ido-completion-map [down] 'ido-next-match))
(add-hook 'ido-setup-hook 'ido-define-keys)

(provide 'init-ido)
