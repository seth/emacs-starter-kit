;; starter-kit-org.el --- Basic configuration for org-mode
;;
;; (could be) Part of the Emacs Starter Kit

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(provide 'starter-kit-org)
;;; starter-kit-org.el ends here
