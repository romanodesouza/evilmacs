(require-package 'key-chord)

(key-chord-define-global ",q" 'delete-window)
(key-chord-define-global ",e" 'end-of-line)
(key-chord-define-global ",a" 'helm-swoop)
(key-chord-define-global ",s" 'save-buffer-and-goes-to-normal-mode)
(key-chord-define-global ",d" 'helm-semantic-or-imenu)
(key-chord-define-global ",g" 'switch-to-previous-buffer)
(key-chord-define-global ",h" 'evil-ex-nohighlight)
(key-chord-define-global ",c" 'evil-ace-jump-char-mode)
(key-chord-define-global ",b" 'switch-to-buffer)
(key-chord-define-global ",v" 'evil-window-vsplit)

; Enable key-chord mode
(key-chord-mode t)

; Switch to previous buffer
(defun switch-to-previous-buffer ()
  "Switch to previously open buffer.
  Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

; Fast save and normal mode
(defun save-buffer-and-goes-to-normal-mode ()
  "Save buffer and goes to normal mode."
  (interactive)
  (save-buffer)
  (evil-normal-state))

(provide 'init-key-chord)
