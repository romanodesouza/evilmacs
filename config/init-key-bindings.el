; Disable the Ctrl+Z to void put Emacs on background job
; Notice that the evil-mode might override this setting to
; switch between evil/emacs mode
(global-unset-key (kbd "C-z"))
; BOL
(global-set-key (kbd "<home>") 'back-to-indentation)
(global-set-key (kbd "\C-a") 'back-to-indentation)
; Moving line
(global-set-key (kbd "<C-S-down>") 'move-line-down)
(global-set-key (kbd "<C-S-up>") 'move-line-up)
; Opening lines
(global-set-key (kbd "<C-return>") 'open-line-below)
(global-set-key (kbd "<C-S-return>") 'open-line-above)
; Scrolling 1 line
(global-set-key (kbd "<C-down>") 'gcm-scroll-down)
(global-set-key (kbd "<C-up>") 'gcm-scroll-up)
;; Enter for new line and indent
(global-set-key (kbd "RET") 'newline-and-indent)

; Moving lines down
(defun move-line-down ()
  (interactive)
  (let ((col (current-column)))
    (save-excursion
      (forward-line)
      (transpose-lines 1))
    (forward-line)
    (move-to-column col)))

; Moving lines up
(defun move-line-up ()
  (interactive)
  (let ((col (current-column)))
    (save-excursion
      (forward-line)
      (transpose-lines -1))
    (move-to-column col)))

; Open line below
(defun open-line-below ()
  (interactive)
  (end-of-line)
  (newline)
  (indent-for-tab-command))

; Open line above
(defun open-line-above ()
  (interactive)
  (beginning-of-line)
  (newline)
  (forward-line -1)
  (indent-for-tab-command))

; Scroll down 1 line
(defun gcm-scroll-down ()
  (interactive)
  (scroll-up 1))

; Scroll up 1 line
(defun gcm-scroll-up ()
  (interactive)
  (scroll-down 1))


(provide 'init-key-bindings)
