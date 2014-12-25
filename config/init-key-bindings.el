; Enable CUA mode for better ergonomics
(cua-mode t)
; Disable the Ctrl+Z to void put Emacs on background job
; Notice that the evil-mode might override this setting to
; switch between evil/emacs mode
(global-unset-key (kbd "C-z"))
; Enter for new line and indent
(global-set-key (kbd "RET") 'newline-and-indent)
; Find in files
(global-set-key (kbd "C-S-p") 'ag-project-regexp)

; Evil key bindings
(define-key evil-normal-state-map (kbd "C-p") 'file-fuzzy-finder)
(define-key evil-insert-state-map (kbd "C-p") 'file-fuzzy-finder)
(define-key evil-normal-state-map (kbd "C-j") 'gcm-scroll-down)
(define-key evil-normal-state-map (kbd "C-k") 'gcm-scroll-up)
(define-key evil-normal-state-map (kbd "M-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "M-l") 'evil-window-right)
(define-key evil-normal-state-map (kbd "C-S-l") 'evil-window-move-far-right)
(define-key evil-normal-state-map (kbd "C-S-h") 'evil-window-move-far-left)
(define-key evil-normal-state-map (kbd "C-l") 'forward-word)
(define-key evil-normal-state-map (kbd "C-h") 'backward-word)
(define-key evil-insert-state-map (kbd "<tab>") 'my-company-tab)
(define-key evil-insert-state-map (kbd "<backtab>") 'evil-shift-left-line)


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
