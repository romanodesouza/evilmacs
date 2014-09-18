; Font
(defun fontify-frame (frame)
  "Set font face in the current frame"
  (set-frame-parameter frame 'font "Droid Sans Mono-11"))

; Switch to previous buffer
(defun switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

; Fast save and normal mode
(defun save-buffer-and-goes-to-normal-mode()
  "Save buffer and goes to normal mode"
   (interactive)
   (save-buffer)
   (evil-normal-state))

(provide 'init-functions)
