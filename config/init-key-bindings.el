; Disable the Ctrl+Z to avoid put Emacs on background job
; Notice that the evil-mode might override this setting to
; switch between evil/emacs mode
(global-unset-key (kbd "C-z"))
; Enter for new line and indent
(global-set-key (kbd "RET") 'newline-and-indent)
; Alternative search using helm-swoop
(global-set-key (kbd "M-/") 'helm-swoop)
; Revert buffer
(global-set-key (kbd "<f5>") 'revert-buffer-no-confirm)
; Smart beginning of line
(global-set-key [home] 'smart-beginning-of-line)
; Opening lines
(global-set-key (kbd "<C-return>") 'open-line-below)
(global-set-key (kbd "<C-S-return>") 'open-line-above)

(defun revert-buffer-no-confirm ()
  "Revert buffer without confirmation."
  (interactive) (revert-buffer t t))

(defun smart-beginning-of-line ()
  "Move point to first non-whitespace character or beginning-of-line.

  Move point to the first non-whitespace character on this line.
  If point was already at that position, move point to beginning of line."
  (interactive) ; Use (interactive "^") in Emacs 23 to make shift-select work
  (let ((oldpos (point)))
    (back-to-indentation)
    (and (= oldpos (point))
         (beginning-of-line))))

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

(provide 'init-key-bindings)
