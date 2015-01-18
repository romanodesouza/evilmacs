(require-package 'nginx-mode)
(add-to-list 'auto-mode-alist '("nginx.conf" . nginx-mode))
(add-to-list 'auto-mode-alist '("nginx/sites-available/.*" . nginx-mode))

(provide 'init-nginx-mode)
