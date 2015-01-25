; Disable the Ctrl+Z to avoid put Emacs on background job
; Notice that the evil-mode might override this setting to
; switch between evil/emacs mode
(global-unset-key (kbd "C-z"))
; Enter for new line and indent
(global-set-key (kbd "RET") 'newline-and-indent)
; Find files
(global-set-key (kbd "C-x C-f") 'file-fuzzy-finder)
; Find in files
(global-set-key (kbd "C-S-p") 'ag-project-regexp)
; Revert buffer
(global-set-key (kbd "<f5>") 'revert-buffer-no-confirm)
(defun revert-buffer-no-confirm ()
  "Revert buffer without confirmation."
  (interactive) (revert-buffer t t))
; Smart beginning of line
(global-set-key [home] 'smart-beginning-of-line)
(defun smart-beginning-of-line ()
  "Move point to first non-whitespace character or beginning-of-line.

  Move point to the first non-whitespace character on this line.
  If point was already at that position, move point to beginning of line."
  (interactive) ; Use (interactive "^") in Emacs 23 to make shift-select work
  (let ((oldpos (point)))
    (back-to-indentation)
    (and (= oldpos (point))
         (beginning-of-line))))

(provide 'init-key-bindings)
