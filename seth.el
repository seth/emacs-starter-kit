(setq sf-lisp-dir (concat dotfiles-dir "sf-lisp"))
(add-to-list 'load-path sf-lisp-dir)

(setq sf-lisp-subdirs
      '("bdb"))
(mapc (lambda (dir) (add-to-list 'load-path (concat sf-lisp-dir "/" dir)))
      sf-lisp-subdirs)
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
(require 'sf-ess)
;(epa-file-enable)
(load "sf-confluence.el")
;; starter kit adds flyspell-mode to text-mode,
;; I've been finding it too slow.
(setq flyspell-delay 6)
(remove-hook 'text-mode-hook 'flyspell-mode)

(server-start)
