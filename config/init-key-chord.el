(require-package 'key-chord)

(key-chord-define-global ",f" 'ag-project-regexp)
(key-chord-define-global ",s" 'save-buffer-and-goes-to-normal-mode)
(key-chord-define-global ",g" 'switch-to-previous-buffer)
(key-chord-define-global ",b" 'switch-to-buffer)
(key-chord-define-global ",q" 'quit-window)
(key-chord-define-global ",h" 'evil-ex-nohighlight)
(key-chord-define-global ",r" 'ido-goto-symbol)
(key-chord-define-global ",c" 'evil-ace-jump-char-mode)
(key-chord-define-global "//" 'helm-swoop)

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

(defun ido-goto-symbol (&optional symbol-list)
  "Refresh imenu and jump to a place in the buffer using Ido."
  (interactive)
  (unless (featurep 'imenu)
    (require 'imenu nil t))
  (cond
    ((not symbol-list)
     (let ((ido-mode ido-mode)
           (ido-enable-flex-matching
             (if (boundp 'ido-enable-flex-matching)
               ido-enable-flex-matching t))
           name-and-pos symbol-names position)
       (unless ido-mode
         (ido-mode 1)
         (setq ido-enable-flex-matching t))
       (while (progn
                (imenu--cleanup)
                (setq imenu--index-alist nil)
                (ido-goto-symbol (imenu--make-index-alist))
                (setq selected-symbol
                      (ido-completing-read "Symbol? " symbol-names))
                (string= (car imenu--rescan-item) selected-symbol)))
       (unless (and (boundp 'mark-active) mark-active)
         (push-mark nil t nil))
       (setq position (cdr (assoc selected-symbol name-and-pos)))
       (cond
         ((overlayp position)
          (goto-char (overlay-start position)))
         (t
           (goto-char position)))))
    ((listp symbol-list)
     (dolist (symbol symbol-list)
       (let (name position)
         (cond
           ((and (listp symbol) (imenu--subalist-p symbol))
            (ido-goto-symbol symbol))
           ((listp symbol)
            (setq name (car symbol))
            (setq position (cdr symbol)))
           ((stringp symbol)
            (setq name symbol)
            (setq position
                  (get-text-property 1 'org-imenu-marker symbol))))
         (unless (or (null position) (null name)
                     (string= (car imenu--rescan-item) name))
           (add-to-list 'symbol-names name)
           (add-to-list 'name-and-pos (cons name position))))))))

(provide 'init-key-chord)
