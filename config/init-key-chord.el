(require-package 'key-chord)

(key-chord-define-global ",f" 'ag-project-regexp)
(key-chord-define-global ",s" 'save-buffer-and-goes-to-normal-mode)
(key-chord-define-global ",g" 'switch-to-previous-buffer)
(key-chord-define-global ",b" 'switch-to-buffer)
(key-chord-define-global ",k" 'kill-buffer)
(key-chord-define-global ",q" 'quit-window)
(key-chord-define-global ",j" 'ace-jump-char-mode)
(key-chord-define-global ",t" 'indent-buffer)
(key-chord-define-global ",h" 'evil-ex-nohighlight)
(key-chord-define-global "aa" 'back-to-indentation)
(key-chord-define-global "ee" 'end-of-line)

; Enable key-chord mode
(key-chord-mode t)

(provide 'init-key-chord)
