(require-package 'nginx-mode)
(add-to-list 'auto-mode-alist '("/etc/nginx/sites-available/.*" . nginx-mode))

(provide 'init-nginx-mode)
