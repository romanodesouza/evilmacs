# .emacs.d
Emacs settings for vim users.

## Motivation
Vim is a great and powerful editor with awesome and clever motions for fast editing, but when you intend to use it like an ide with some plugins, it becomes slow, mainly because its lack of asynchronous I/O.
Emacs is another great editor, fully responsive and fast, but its bindings isn't fluent and [ergonomic](#ergonomics) like vim. This is a try to bring the best of both worlds.

## How?
Thanks to [evil-mode](http://www.emacswiki.org/Evil). It's simply the best vim emulator made ever. With it we can have a sweet experience feeling like home. The plugin is developed by advanced vim users and the Emacs's extensibility makes this possible.

## Requirements
The specific requirements are listed below. From here you need to install Emacs >=24.

## Custom key bindings
| Key binding               | Action                                                                      | Insert Mode   | Normal Mode   | Visual Mode   |
| -----------               | -----------                                                                 | ---------     | -----------   | ------------  |
| `Ctrl+p`                  | Find files                                                                  | y             | y             | y             |
| `Ctrl+Shift+p`            | Find **in** files(requires [ag](http://geoff.greer.fm/ag/))                 | y             | y             | y             |
| `Ctrl+=`                  | Expand selection                                                            | y             | y             | y             |
| `Ctrl+Shift+=`            | Contract selection                                                          | y             | y             | y             |
| `Ctrl+k`                  | Scrolls one screen line up                                                  | n             | y             | n             |
| `Ctrl+j`                  | Scrolls one screen line down                                                | n             | y             | n             |
| `Ctrl+l`                  | Forwards one word                                                           | n             | y             | n             |
| `Ctrl+h`                  | Backwards one word                                                          | n             | y             | n             |
| `Ctrl+Shift+l`            | Shifts window to the right                                                  | n             | y             | n             |
| `Ctrl+Shift+h`            | Shifts window to the left                                                   | n             | y             | n             |
| `Meta+l`                  | Jumps to window in the left                                                 | n             | y             | n             |
| `Meta+h`                  | Jumps to window in the right                                                | n             | y             | n             |
| `Meta+Shift+up`           | Moves line or selection up                                                  | y             | y             | y             |
| `Meta+Shift+down`         | Moves line or selection down                                                | y             | y             | y             |
| `,+q`                     | **q** uit window(actually deletes the current window)                       | y             | y             | y             |
| `,+a`                     | Find **a** ny occurrence in current buffer                                  | y             | y             | y             |
| `,+s`                     | **s** ave and goes to normal mode                                           | y             | y             | y             |
| `,+d`                     | Goes to **d** efinition in current buffer                                   | y             | y             | y             |
| `,+g`                     | To **g** gle with last opened buffer                                        | y             | y             | y             |
| `,+h`                     | Clear previous **h** ighlighted search in current buffer                    | y             | y             | y             |
| `,+c`                     | Ace jump **c** har mode                                                     | y             | y             | y             |
| `,+b`                     | Switch to **b** uffer                                                       | y             | y             | y             |
| `,+v`                     | **v** ertical split                                                         | y             | y             | y             |
| `<tab>`                   | Expand snippet or print a tab stop                                          | y             | y             | y             |

where `Meta` could be `Alt` or `Command` depending on OS or personal config.

## Programming modes
All of these modes have at minimum a smart code completion integration. Check it out:

### Go
First of all, you need to know that Emacs should be aware about the `$GOPATH` env variable. The easy way is just open it from shell.
Now install:
```
go get github.com/nsf/gocode
go get github.com/bradfitz/goimports
go get github.com/golang/lint
go get code.google.com/p/rog-go/exp/cmd/godef
```
Key bindings in Go mode:

| Key binding               | Action                                                                      | Insert Mode   | Normal Mode   | Visual Mode   |
| -----------               | -----------                                                                 | ---------     | -----------   | ------------  |
| `Ctrl+c Ctrl+j`           | Jumps to definition                                                         | y             | y             | y             |
| `Ctrl+c Ctrl+d`           | Describes symbol on modeline                                                | y             | y             | y             |

### Javascript
It uses tern and support js-beautify after saving the file.
Install:
```
npm install tern
npm install js-beautify 
```
Key bindings in Javascript mode:

| Key binding               | Action                                                                      | Insert Mode   | Normal Mode   | Visual Mode   |
| -----------               | -----------                                                                 | ---------     | -----------   | ------------  |
| `Meta+.`                  | Jumps to definition                                                         | y             | y             | y             |

### Python
It is bound to [pyenv](https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer).
Once you have it OK, you can install:
```
pip install jedi
```
Key bindings in Python mode:

| Key binding               | Action                                                                      | Insert Mode   | Normal Mode   | Visual Mode   |
| -----------               | -----------                                                                 | ---------     | -----------   | ------------  |
| `Ctrl+c ?`                | Shows doc                                                                   | y             | y             | y             |
| `Ctrl+c .`                | Jumps to definition                                                         | y             | y             | y             |

## Customizing
You can change the color theme, font face, add or change some key bindings without touching the general config
by creating a file `local-config/init-local-config.el`. Something like that:
```lisp
; Load color theme
(require-package 'color-theme-solarized)
(load-theme 'solarized-light t)

(provide 'init-local-config)
```

## Ergonomics
In a near future, if you get fascinated with the power of Emacs, curious and feeling confidence to try out Emacs's default keybindings, I have to advice you to be careful with RSI!!
There is a **great** project called "[Ergoemacs](http://ergoemacs.org/)" that isn't just a remap of keybindings for Windows users, but a wonderful work to try to protect you against the painful Emacs's keybindings. In its wiki there is a list showing many people that got a RSI using Emacs in a QWERTY keyboard layout.


If you don't wanna to try it out, check out this basic keybindings and put them in your `init-local-config.el`. The Emacs CUA mode is enabled by default:

```lisp
  (global-set-key (kbd "C-a") 'mark-whole-buffer)
  (global-set-key (kbd "C-s") 'save-buffer)
  (global-set-key (kbd "C-f") 'helm-swoop)
  (global-set-key (kbd "C-r") 'helm-semantic-or-imenu)
  (global-set-key (kbd "C-d") 'duplicate-line)
  (local-set-key (kbd "C-d") 'duplicate-line)

  (global-set-key (kbd "C-S-f") 'ag-project-regexp)
  (global-set-key (kbd "C-S-n") 'fuzzy-file-finder)
  (global-set-key (kbd "C-S-b") 'ibuffer)

  (global-set-key [escape] 'keyboard-quit) 
  (define-key yas-minor-mode-map (kbd "<tab>") 'my-company-tab)
  (global-set-key (kbd "<backtab>") 'un-indent-by-removing-4-spaces)
  (global-set-key (kbd "<f5>") 'revert-buffer)
  (global-set-key (kbd "<S-delete>") 'kill-whole-line)
  (global-set-key (kbd "<M-S-down>") 'move-text-down)
  (global-set-key (kbd "<M-S-up>") 'move-text-up)
  (global-set-key (kbd "<C-return>") 'open-line-below)
  (global-set-key (kbd "<C-S-return>") 'open-line-above)
  (global-set-key (kbd "<C-down>") 'gcm-scroll-down)
  (global-set-key (kbd "<C-up>") 'gcm-scroll-up))

(defun un-indent-by-removing-4-spaces ()
  "remove 4 spaces from beginning of of line"
  (interactive)
  (save-excursion
    (save-match-data
      (beginning-of-line)
      ;; get rid of tabs at beginning of line
      (when (looking-at "^\\s-+")
        (untabify (match-beginning 0) (match-end 0)))
      (when (looking-at "^    ")
        (replace-match "")))))

(defun duplicate-line ()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank))
```

## License
The MIT License (MIT)

Copyright (c) 2014 Romano Augusto

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
