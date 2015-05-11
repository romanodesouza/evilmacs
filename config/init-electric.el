; Electric indent mode
(electric-indent-mode t)

; Electric pair mode
(defun my-local-electric-pair-mode ()
  (when electric-pair-mode
    (progn
      (make-variable-buffer-local 'electric-pair-mode)
      (electric-pair-mode t))))

(provide 'init-electric)
