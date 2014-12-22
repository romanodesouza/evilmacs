(require-package 'multiple-cursors)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-,") 'mc/mark-all-like-this-dwim)
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

(provide 'init-multiple-cursors)
