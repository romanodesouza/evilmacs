; Font
(defun fontify-frame (frame)
  "Set font face in the current frame."
  (set-frame-parameter frame 'font "Monospace-10"))

; Sets the window size
; Taken from: http://stackoverflow.com/a/94277/1787194
(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if window-system
    (progn
      ;; use 120 char wide window for largeish displays
      ;; and smaller 80 column windows for smaller displays
      ;; pick whatever numbers make sense for you
      (if (> (x-display-pixel-width) 1280)
        (add-to-list 'default-frame-alist (cons 'width 120))
        (add-to-list 'default-frame-alist (cons 'width 80)))
      ;; for the height, subtract a couple hundred pixels
      ;; from the screen height (for panels, menubars and
      ;; whatnot), then divide by the height of a char to
      ;; get the height we want
      (add-to-list 'default-frame-alist
                   (cons 'height (/ (- (x-display-pixel-height) 200)
                                    (frame-char-height)))))))

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

; Ident buffer in evil-mode
(defun indent-buffer()
  "Indent buffer in evil mode."
  (interactive)
  (evil-ex "normal mzgg=G`zzz"))

(provide 'init-functions)
