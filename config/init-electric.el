; Electric indent mode
(electric-indent-mode t)
; Electric pair mode
(defun enable-electric-pair-mode ()
  (if (fboundp 'electric-pair-mode)
    (electric-pair-mode)))

(defun disable-electric-pair-mode ()
  (if (fboundp 'electric-pair-mode)
    (electric-pair-mode -1)))

; Enable it by default
(enable-electric-pair-mode)

; Disable electric pair mode in minibuffer to avoid annoying in Ex commands
(add-hook 'minibuffer-setup-hook #'disable-electric-pair-mode)
(add-hook 'minibuffer-exit-hook #'enable-electric-pair-mode)

(provide 'init-electric)
