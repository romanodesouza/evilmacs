; Emacs key bindings
;
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
; Enter for new line and indent
(global-set-key (kbd "RET") 'newline-and-indent)
; Find in files
(global-set-key (kbd "C-S-p") 'ag-project-regexp)

; Evil key bindings
;
(define-key evil-normal-state-map (kbd "C-S-j") 'move-line-down)
(define-key evil-normal-state-map (kbd "C-S-k") 'move-line-up)
(define-key evil-normal-state-map "\C-p" 'fuzzy-finder)
(define-key evil-insert-state-map "\C-p" 'fuzzy-finder)
(define-key evil-insert-state-map "\C-e" 'end-of-line)
(define-key evil-insert-state-map "\C-h" 'left-char)
(define-key evil-insert-state-map "\C-l" 'right-char)
(define-key evil-insert-state-map "\C-k" 'previous-line)
(define-key evil-insert-state-map "\C-j" 'next-line)
(define-key evil-insert-state-map (kbd "<tab>") 'my-company-tab)
(define-key evil-insert-state-map (kbd "<backtab>") 'evil-shift-left-line)

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
