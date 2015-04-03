(require-package 'centered-window-mode)

(defun toggle-mode-line ()
  (interactive) 
  (setq mode-line-format
        (if (equal mode-line-format nil)
          (default-value 'mode-line-format)) )
  (redraw-display))

(defun toggle-distraction-free ()
  (interactive)
  (toggle-frame-fullscreen)
  (centered-window-mode)
  (toggle-mode-line))

(global-set-key (kbd "<f11>") 'toggle-distraction-free)

(provide 'init-distraction-free)
