# .emacs.d
Emacs settings for vim users.

## Motivation
Vim is a great and powerful editor with awesome and clever motions for fast editing, but when you intend to use it like an ide with some plugins, it becomes slow, mainly because its lack of asynchronous I/O.
Emacs is another great editor, fully responsive and fast, but its bindings isn't fluent and ergonomic like vim. This is a try to bring the best of both worlds.

## How?
Thanks to [evil-mode](http://www.emacswiki.org/Evil). It's simply the best vim emulator made ever. With it we can have a sweet experience feeling like home. The plugin is developed by advanced vim users and the Emacs's extensibility makes this possible.

## Requirements
The specific requirements are listed below. From here you need to install Emacs >=24.

## Install
Just clone it in your $HOME directory:

`git clone --depth 1 https://github.com/romanoaugusto88/.emacs.d ~/.emacs.d`

## Custom key bindings
| Key binding               | Action                                                                      | Insert Mode   | Normal Mode   | Visual Mode   |
| -----------               | -----------                                                                 | ---------     | -----------   | ------------  |
| <kbd>C-p</kbd>            | Find files                                                                  | y             | y             | y             |
| <kbd>C-S-p</kbd>          | Find **in** files(requires [ag](http://geoff.greer.fm/ag/))                 | y             | y             | y             |
| <kbd>C-=</kbd>            | Expand selection                                                            | y             | y             | y             |
| <kbd>C-S-=</kbd>          | Contract selection                                                          | y             | y             | y             |
| <kbd>C-]</kbd>            | Jump to definition                                                          | n             | y             | y             |
| <kbd>K</kbd>              | Show doc                                                                    | n             | y             | y             |
| <kbd>M-S-up</kbd>         | Moves line or selection up                                                  | y             | y             | y             |
| <kbd>M-S-down</kbd>       | Moves line or selection down                                                | y             | y             | y             |
| <kbd>,</kbd><kbd>q</kbd>  | **q** uit window(actually deletes the current window)                       | y             | y             | y             |
| <kbd>,</kbd><kbd>e</kbd>  | Goes to **e** nd of line                                                    | y             | y             | y             |
| <kbd>,</kbd><kbd>a</kbd>  | Find **a** ny occurrence in current buffer                                  | y             | y             | y             |
| <kbd>,</kbd><kbd>s</kbd>  | **s** ave and goes to normal mode                                           | y             | y             | y             |
| <kbd>,</kbd><kbd>d</kbd>  | Goes to symbol **d** efinition in current buffer                            | y             | y             | y             |
| <kbd>,</kbd><kbd>g</kbd>  | To **g** gle with last opened buffer                                        | y             | y             | y             |
| <kbd>,</kbd><kbd>h</kbd>  | Clear previous **h** ighlighted search in current buffer                    | y             | y             | y             |
| <kbd>,</kbd><kbd>c</kbd>  | Ace jump **c** har mode                                                     | y             | y             | y             |
| <kbd>,</kbd><kbd>b</kbd>  | Switch to **b** uffer                                                       | y             | y             | y             |
| <kbd>,</kbd><kbd>v</kbd>  | **v** ertical split                                                         | y             | y             | y             |
| <kbd>tab</kbd>            | Expand snippet or print a tab stop                                          | y             | y             | y             |

where `C` is <kbd>Ctrl</kbd>, `S` is <kbd>Shift</kbd> and `M` could be <kbd>Alt</kbd> or <kbd>Command</kbd> depending on OS.

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

### Javascript
It uses tern and support js-beautify after saving the file.
Install:
```
npm install tern
npm install js-beautify 
```


### Python
It is bound to [pyenv](https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer).
Once you have it OK, you can install:
```
pip install jedi
```


## Other modes
There are a basic, but very good support to `nginx`, `Dockerfile`, `php`, `html`, `yaml`, `css` and `scss` modes.

## Customizing
You can change the color theme, font face, add or change some key bindings without touching the general config
by creating a file `local-config/init-local-config.el`. Something like that:
```lisp
; Load color theme
(require-package 'color-theme-solarized)
(load-theme 'solarized-light t)

(provide 'init-local-config)
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
