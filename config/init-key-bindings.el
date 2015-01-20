; Disable the Ctrl+Z to void put Emacs on background job
; Notice that the evil-mode might override this setting to
; switch between evil/emacs mode
(global-unset-key (kbd "C-z"))
; Moving text
(global-set-key (kbd "<M-S-down>") 'move-text-down)
(global-set-key (kbd "<M-S-up>") 'move-text-up)
; Enter for new line and indent
(global-set-key (kbd "RET") 'newline-and-indent)
; Find files
(global-set-key (kbd "C-x C-f") 'file-fuzzy-finder)
; Find in files
(global-set-key (kbd "C-S-p") 'ag-project-regexp)

(defun move-text-internal (arg)
  "Move region (transient-mark-mode active) or current line."
  (let ((remember-point (point)))
    ;; Can't get correct effect of `transpose-lines'
    ;; when `point-max' is not at beginning of line
    ;; So fix this bug.
    (goto-char (point-max))
    (if (not (bolp)) (newline))         ;add newline to fix
    (goto-char remember-point)
    ;; logic code start
    (cond ((and mark-active transient-mark-mode)
           (if (> (point) (mark))
             (exchange-point-and-mark))
           (let ((column (current-column))
                 (text (delete-and-extract-region (point) (mark))))
             (forward-line arg)
             (move-to-column column t)
             (set-mark (point))
             (insert text)
             (exchange-point-and-mark)
             (setq deactivate-mark nil)))
          (t
            (let ((column (current-column)))
              (beginning-of-line)
              (when (or (> arg 0) (not (bobp)))
                (forward-line 1)
                (when (or (< arg 0) (not (eobp)))
                  (transpose-lines arg))
                (forward-line -1))
              (move-to-column column t))
            ))))

(defun move-text-up (arg)
  "Move region (transient-mark-mode active) or current line ARG lines up."
  (interactive "*p")
  (move-text-internal (- arg)))

(defun move-text-down (arg)
  "Move region (transient-mar-mode active) or current line (ARG lines) down."
  (interactive "*p")
  (move-text-internal arg))

(provide 'init-key-bindings)
