# evilmacs
Emacs settings for vim users.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [Motivation](#motivation)
- [How?](#how)
- [Screenshot](#screenshot)
- [Supported versions](#supported-versions)
- [Install](#install)
- [Custom key bindings](#custom-key-bindings)
  - [Key bindings from evil-nerd-commenter plugin](#key-bindings-from-evil-nerd-commenter-plugin)
  - [Multiple cursors](#multiple-cursors)
- [Programming modes setup](#programming-modes-setup)
  - [Go](#go)
  - [JavaScript](#javascript)
- [Other modes](#other-modes)
- [Customizing](#customizing)
- [License](#license)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Motivation
Vim is a great and powerful editor with awesome and clever motions for fast editing, but when you intend to use it like an ide with some plugins, it becomes slow, mainly because its lack of asynchronous I/O.
Emacs is another great editor, fully responsive and relatively fast, but its bindings aren't fluent and ergonomic like vim. This is a try to bring the best of both worlds.

## How?
Thanks to [evil-mode](http://www.emacswiki.org/Evil). It's simply the best vim emulator made ever. With it we can have a sweet experience feeling like home. The plugin is developed by advanced vim users and the Emacs's extensibility makes this possible.

## Screenshot
![Screenshot](http://oi61.tinypic.com/2n0pirs.jpg "Emacs in Go mode")

## Supported versions
Emacs >= 24

## Install
```
git clone --depth 1 https://github.com/romanoaugusto88/evilmacs ~/.emacs.d
```

## Custom key bindings
Consider <kbd>C</kbd> as <kbd>Ctrl</kbd>, <kbd>S</kbd> as <kbd>Shift</kbd> and <kbd>M</kbd> as <kbd>Alt</kbd> or <kbd>Command</kbd>, depending on OS.

| Key binding                      | Action                                                             | Insert Mode   | Normal Mode   | Visual Mode   |
| -----------                      | -----------                                                        | ---------     | -----------   | ------------  |
| <kbd>C-p</kbd>                   | Find files                                                         | y             | y             | y             |
| <kbd>C-=</kbd>                   | Expand selection                                                   | y             | y             | y             |
| <kbd>C--</kbd>                   | Contract selection                                                 | y             | y             | y             |
| <kbd>C-]</kbd> or <kbd>gd</kbd>  | Jump to definition                                                 | n             | y             | y             |
| <kbd>K</kbd>                     | Show doc                                                           | n             | y             | y             |
| <kbd>,</kbd><kbd>q</kbd>         | Kill buffer and **q** uit indow                                    | y             | y             | y             |
| <kbd>,</kbd><kbd>w</kbd>         | Delete another opened **w** indows                                 | y             | y             | y             |
| <kbd>,</kbd><kbd>e</kbd>         | Goes to **e** nd of line                                           | y             | y             | y             |
| <kbd>,</kbd><kbd>a</kbd>         | **a** g: find in files(requires [ag](http://geoff.greer.fm/ag/))   | y             | y             | y             |
| <kbd>,</kbd><kbd>s</kbd>         | **s** ave and goes to normal mode                                  | y             | y             | y             |
| <kbd>,</kbd><kbd>d</kbd>         | Goes to symbol **d** efinition in current buffer                   | y             | y             | y             |
| <kbd>,</kbd><kbd>g</kbd>         | To **g** gle with last opened buffer                               | y             | y             | y             |
| <kbd>,</kbd><kbd>h</kbd>         | Clear previous **h** ighlighted search in current buffer           | y             | y             | y             |
| <kbd>,</kbd><kbd>x</kbd>         | Call sme **x**                                                     | y             | y             | y             |
| <kbd>,</kbd><kbd>b</kbd>         | Switch to **b** uffer                                              | y             | y             | y             |
| <kbd>,</kbd><kbd>v</kbd>         | **v** ertical split                                                | y             | y             | y             |
| <kbd>C-return</kbd>              | Open new line below                                                | y             | y             | y             |
| <kbd>S-return</kbd>              | Open new line above                                                | y             | y             | y             |
| <kbd>M-/</kbd>                   | Alternative search using helm-swoop                                | y             | y             | y             |
| <kbd>tab</kbd>                   | Expand snippet/emmet or print a tab stop                           | y             | y             | y             |
| <kbd>f5</kbd>                    | Revert buffer                                                      | y             | y             | y             |


Note: Use <kbd>C-n</kbd> and <kbd>C-p</kbd> to cycle between menu items, like company or ido.

Note 2: The key bindings leading with <kbd>,</kbd> has a delay and should be pressed quickly, otherwise, the keyboard characters will be printed.

### Key bindings from evil-nerd-commenter plugin
| Key binding                           | Action                           | Insert Mode   | Normal Mode   | Visual Mode   |
| -----------                           | -----------                      | ---------     | -----------   | ------------  |
| <kbd>,</kbd><kbd>,</kbd>              | Comment or uncomment lines       | n             | n             | y             |
| <kbd>,</kbd><kbd>c</kbd><kbd>i</kbd>  | Comment or uncomment lines       | n             | y             | n             |
| <kbd>,</kbd><kbd>c</kbd><kbd>l</kbd>  | Comment or uncomment to the line | n             | y             | n             |
| <kbd>,</kbd><kbd>c</kbd><kbd>c</kbd>  | Copy and comment lines           | n             | y             | n             |
| <kbd>,</kbd><kbd>c</kbd><kbd>p</kbd>  | Comment or uncomment paragraphs  | n             | y             | n             |
| <kbd>,</kbd><kbd>c</kbd><kbd>r</kbd>  | Comment or uncomment region      | n             | y             | n             |


### Multiple cursors
| Binding                           | Action                                                    | Insert Mode   | Normal Mode   | Visual Mode   |
| -----------                       | -----------                                               | ---------     | -----------   | ------------  |
| <kbd>C-></kbd>                    | Mark next occurrence of selected region                   | n             | n             | y             |
| <kbd>C-<</kbd>                    | Mark previous occurrence of selected region               | n             | n             | y             |
| <kbd>C-,</kbd>                    | Mark all occurrences of selected region                   | n             | n             | y             |
| <kbd>C-;</kbd>                    | Mark next occurrence of selected region interactively     | n             | y             | y             |
| <kbd>C-S-mouse1</kbd>             | Add new cursor on click                                   | y             | y             | y             | 


## Programming modes setup

### Go
```
go get golang.org/x/tools/cmd/goimports
go get golang.org/x/tools/cmd/oracle
go get golang.org/x/tools/cmd/gorename
go get golang.org/x/tools/refactor/rename
go get github.com/golang/lint
go get github.com/nsf/gocode
go get code.google.com/p/rog-go/exp/cmd/godef
```
Tip: Emacs must be aware of `$GOPATH` env variable. The easy way is just open it from the shell.


Custom key bindings:

| Key binding                                         | Action                | Insert Mode   | Normal Mode   | Visual Mode   |
| -----------                                         | -----------           | ---------     | -----------   | ------------  |
| <kbd>SPC</kbd><kbd>g</kbd><kbd>r                    | Go rename             | n             | y             | n             |
| <kbd>SPC</kbd><kbd>g</kbd><kbd>o</kbd><kbd>i</kbd>  | Go oracle implements  | n             | y             | n             |
| <kbd>SPC</kbd><kbd>g</kbd><kbd>o</kbd><kbd>c</kbd>  | Go oracle callers     | n             | y             | n             |
| <kbd>SPC</kbd><kbd>g</kbd><kbd>o</kbd><kbd>s</kbd>  | Go oracle callstack   | n             | y             | n             |

### JavaScript
```
npm install tern
npm install js-beautify 
```

## Other modes
There are a basic, but very good support to:

- NGINX
- Dockerfile
- lua
- php
- yaml
- html
- css
- scss

## Customizing
You can customize evilmacs by creating a `local-config/init-local-config.el` file like the example below:
```lisp
; Load color theme
(require-package 'color-theme-solarized)
(load-theme 'solarized-light t)

(provide 'init-local-config)
```

For a more realistic example, check out [this one](https://github.com/romanoaugusto88/dotfiles/tree/master/emacs/init-local-config.el).

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
