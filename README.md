# evilmacs
Emacs settings for vim users.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [Motivation](#motivation)
- [How?](#how)
- [Screenshot](#screenshot)
- [Requirements](#requirements)
- [Install](#install)
- [Plugins](#installed-plugins)
- [Custom key bindings](#custom-key-bindings)
  - [Key bindings from evil-nerd-commenter plugin](#key-bindings-from-evil-nerd-commenter-plugin)
- [Programming modes](#programming-modes)
  - [Go](#go)
  - [Javascript](#javascript)
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

## Requirements
The specific requirements are listed below. From here you need to install Emacs >=24.

## Install
Just clone it in your $HOME directory:

```
git clone --depth 1 https://github.com/romanoaugusto88/evilmacs ~/.emacs.d
```

## Plugins
These plugins will be installed automatically when you open Emacs for the first time:

- [evil](https://gitorious.org/evil/evil)
- [evil-nerd-commenter](https://github.com/redguardtoo/evil-nerd-commenter)
- [evil-jumper](https://github.com/bling/evil-jumper)
- [evil-visualstar](https://github.com/bling/evil-visualstar)
- [evil-matchit](https://github.com/redguardtoo/evil-matchit)
- [key-chord](http://www.emacswiki.org/emacs/key-chord.el)
- [linum-relative](https://github.com/coldnew/linum-relative)
- [projectile](https://github.com/bbatsov/projectile)
- [expand-region](https://github.com/magnars/expand-region.el)
- [ag](https://github.com/Wilfred/ag.el)
- [smooth-scrolling](https://github.com/aspiers/smooth-scrolling)
- [smex](https://github.com/nonsequitur/smex)
- [ido-vertical-mode](https://github.com/gempesaw/ido-vertical-mode.el)
- [ido-ubiquitous](https://github.com/DarwinAwardWinner/ido-ubiquitous)
- [flx-ido](https://github.com/lewang/flx)
- [helm](https://github.com/emacs-helm/helm)
- [helm-swoop](https://github.com/ShingoFukuyama/helm-swoop)
- [smart-mode-line](https://github.com/Bruce-Connor/smart-mode-line)
- [company-mode](https://github.com/company-mode/company-mode)
- [flycheck](https://github.com/flycheck/flycheck)
- [yasnippet](https://github.com/capitaomorte/yasnippet)
- [dockerfile-mode](https://github.com/spotify/dockerfile-mode)
- [nginx-mode](https://github.com/ajc/nginx-mode)
- [go-mode](https://github.com/dominikh/go-mode.el)
- [go-eldoc](https://github.com/syohex/emacs-go-eldoc)
- [go-snippets](https://github.com/toumorokoshi/go-snippets)
- [company-go](https://github.com/nsf/gocode)
- [js2-mode](https://github.com/mooz/js2-mode)
- [tern](https://github.com/marijnh/tern)
- [company-tern](https://github.com/proofit404/company-tern)
- [web-beautify](https://github.com/yasuyk/web-beautify)
- [scss-mode](https://github.com/antonj/scss-mode)
- [rainbow-mode](http://elpa.gnu.org/packages/rainbow-mode.html)
- [css-eldoc](https://github.com/zenozeng/css-eldoc)
- [php-mode](https://github.com/ejmr/php-mode)
- [web-mode](https://github.com/fxbois/web-mode)
- [emmet-mode](https://github.com/smihica/emmet-mode)
- [yaml-mode](https://github.com/yoshiki/yaml-mode)

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


## Programming modes

### Go
First of all, you need to know that Emacs should be aware about the `$GOPATH` env variable. The easy way is just open it from the shell.
Now install:
```
go get golang.org/x/tools/cmd/goimports
go get golang.org/x/tools/cmd/oracle
go get golang.org/x/tools/cmd/gorename
go get golang.org/x/tools/refactor/rename
go get github.com/golang/lint
go get github.com/nsf/gocode
go get code.google.com/p/rog-go/exp/cmd/godef
```

Custom key bindings:

| Key binding                                         | Action                | Insert Mode   | Normal Mode   | Visual Mode   |
| -----------                                         | -----------           | ---------     | -----------   | ------------  |
| <kbd>SPC</kbd><kbd>g</kbd><kbd>r                    | Go rename             | n             | y             | n             |
| <kbd>SPC</kbd><kbd>g</kbd><kbd>o</kbd><kbd>i</kbd>  | Go oracle implements  | n             | y             | n             |
| <kbd>SPC</kbd><kbd>g</kbd><kbd>o</kbd><kbd>c</kbd>  | Go oracle callers     | n             | y             | n             |
| <kbd>SPC</kbd><kbd>g</kbd><kbd>o</kbd><kbd>s</kbd>  | Go oracle callstack   | n             | y             | n             |

### Javascript
It uses tern and support js-beautify after saving the file.
Install:
```
npm install tern
npm install js-beautify 
```

## Other modes
There are a basic, but very good support to:

- NGINX
- Dockerfile
- php
- yaml
- html
- css
- scss

## Customizing
You can change the color theme, font face, add or change some key bindings without touching the general config
by creating a file `local-config/init-local-config.el`. Something like that:
```lisp
; Load color theme
(require-package 'color-theme-solarized)
(load-theme 'solarized-light t)

(provide 'init-local-config)
```

For a more realistic example, check out [my personal config](https://github.com/romanoaugusto88/dotfiles/tree/master/emacs).

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
