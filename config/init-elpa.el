(setq package-archives '(
  ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")
  ("melpa" . "http://melpa.milkbox.net/packages/")
))
(setq package-enable-at-startup nil)
(defvar packages-refreshed nil)
(package-initialize)

(defun require-package (package)
  "Install given PACKAGE."
  (unless (package-installed-p package)
    (unless packages-refreshed
      (setq packages-refreshed t)
      (package-refresh-contents))
    (package-install package)))

(provide 'init-elpa)
