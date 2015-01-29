# .emacs.d
Emacs settings for vim users.

## Motivation
Vim is a great and powerful editor with awesome and clever motions for fast editing, but when you intend to use it like an ide with some plugins, it becomes slow, mainly because its lack of asynchronous I/O.
Emacs is another great editor, fully responsive and relatively fast, but its bindings isn't fluent and ergonomic like vim. This is a try to bring the best of both worlds.

## How?
Thanks to [evil-mode](http://www.emacswiki.org/Evil). It's simply the best vim emulator made ever. With it we can have a sweet experience feeling like home. The plugin is developed by advanced vim users and the Emacs's extensibility makes this possible.

## Screenshot
![Screenshot](http://oi61.tinypic.com/2n0pirs.jpg "Emacs in Go mode")

## Requirements
The specific requirements are listed below. From here you need to install Emacs >=24.

## Install
Just clone it in your $HOME directory:

`git clone --depth 1 https://github.com/romanoaugusto88/.emacs.d ~/.emacs.d`

## Custom key bindings
| Key binding                 | Action                                                             | Insert Mode   | Normal Mode   | Visual Mode   |
| -----------                 | -----------                                                        | ---------     | -----------   | ------------  |
| <kbd>C-p</kbd>              | Find files                                                         | y             | y             | y             |
| <kbd>C-=</kbd>              | Expand selection                                                   | y             | y             | y             |
| <kbd>C--</kbd>              | Contract selection                                                 | y             | y             | y             |
| <kbd>C-]</kbd>              | Jump to definition                                                 | n             | y             | y             |
| <kbd>K</kbd>                | Show doc                                                           | n             | y             | y             |
| <kbd>,</kbd><kbd>w</kbd>    | Delete another opened **w** indows                                 | y             | y             | y             |
| <kbd>,</kbd><kbd>e</kbd>    | Goes to **e** nd of line                                           | y             | y             | y             |
| <kbd>,</kbd><kbd>a</kbd>    | **a** g: find in files(requires [ag](http://geoff.greer.fm/ag/))   | y             | y             | y             |
| <kbd>,</kbd><kbd>s</kbd>    | **s** ave and goes to normal mode                                  | y             | y             | y             |
| <kbd>,</kbd><kbd>d</kbd>    | Goes to symbol **d** efinition in current buffer                   | y             | y             | y             |
| <kbd>,</kbd><kbd>g</kbd>    | To **g** gle with last opened buffer                               | y             | y             | y             |
| <kbd>,</kbd><kbd>h</kbd>    | Clear previous **h** ighlighted search in current buffer           | y             | y             | y             |
| <kbd>,</kbd><kbd>b</kbd>    | Switch to **b** uffer                                              | y             | y             | y             |
| <kbd>,</kbd><kbd>v</kbd>    | **v** ertical split                                                | y             | y             | y             |
| <kbd>M-/</kbd>              | Alternative search using helm-swoop                                | y             | y             | y             |
| <kbd>tab</kbd>              | Expand snippet or print a tab stop                                 | y             | y             | y             |
| <kbd>f5</kbd>               | Revert buffer                                                      | y             | y             | y             |

where `C` is <kbd>Ctrl</kbd>, `S` is <kbd>Shift</kbd> and `M` could be <kbd>Alt</kbd> or <kbd>Command</kbd> depending on OS.

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

### HTML
Custom key bindings:

| Key binding                             | Action                                               | Insert Mode   | Normal Mode   | Visual Mode   |
| -----------                             | -----------                                          | ---------     | -----------   | ------------  |
| <kbd>SPC</kbd><kbd>t</kbd><kbd>d</kbd>  | Delete open and close tag, and then reindent buffer  | n             | y             | y             |
| <kbd>SPC</kbd><kbd>t</kbd><kbd>f</kbd>  | Skip tag forward                                     | n             | y             | y             |
| <kbd>SPC</kbd><kbd>t</kbd><kbd>b</kbd>  | Skip tag backward                                    | n             | y             | y             |
| <kbd>SPC</kbd><kbd>t</kbd><kbd>c</kbd>  | Close tag                                            | n             | y             | y             |

#### Jinja2 mode
| Key binding                             | Action                                               | Insert Mode   | Normal Mode   | Visual Mode   |
| -----------                             | -----------                                          | ---------     | -----------   | ------------  |
| <kbd>SPC</kbd><kbd>j</kbd><kbd>o</kbd>  | Insert jinja2 tag(`{% %}`)                           | n             | y             | y             |
| <kbd>SPC</kbd><kbd>j</kbd><kbd>c</kbd>  | Close jinja2 tag(Ex.: `{% endblock %}`)              | n             | y             | y             |


## Other modes
There are a basic, but very good support to `nginx`, `Dockerfile`, `php`, `yaml`, `css` and `scss` modes.

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
