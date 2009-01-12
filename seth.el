(setq sf-lisp-dir (concat dotfiles-dir "sf-list"))
(mapc (lambda (dir) (add-to-list 'load-path dir))
      (cons sf-lisp-dir '("bbdb" "epg-0.0.16")))
(setq tool-bar-mode nil
      visible-bell nil
      ring-bell-function '(lambda () nil)
      default-frame-alist '((width . 85) (height . 33)
                            (font
                             .
                             "-apple-monaco-medium-r-normal--18-140-72-72-m-140-mac-roman")))

(require 'starter-kit-org)
(require 'sf-misc)
(require 'sf-email)
(require 'sf-bbdb)
(require 'epa-setup)
(epa-file-enable)

(server-start)

