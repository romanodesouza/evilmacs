(require-package 'ag)

(setq ag-highlight-search t)
(setq ag-reuse-buffers 't)

; Fix "k" key for evil-mode
(add-hook 'ag-mode-hook (lambda()
                          (define-key ag-mode-map (kbd "k") nil)))

(provide 'init-ag)
