(require-package 'flycheck)
(require 'flycheck)

(setq flycheck-idle-change-delay 0.2)

(defun add-flycheck-list-hook()
  (add-hook 'flycheck-after-syntax-check-hook #'flycheck-list-errors-only-when-errors))

(defun remove-flycheck-list-hook()
  (remove-hook 'flycheck-after-syntax-check-hook #'flycheck-list-errors-only-when-errors))

(defun flycheck-list-errors-only-when-errors ()
  (remove-flycheck-list-hook)
  (if flycheck-current-errors
    (flycheck-list-errors)
    (-when-let (buffer (get-buffer flycheck-error-list-buffer))
               (dolist (window (get-buffer-window-list buffer))
                 (quit-window nil window)))))

(add-hook 'before-save-hook #'add-flycheck-list-hook)
(global-flycheck-mode t)

(provide 'init-flycheck)
