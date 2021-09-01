;;-=====================================================
;; Org-Mode (built-in)
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org%" . org-mode))
(setq org-log-done t)
(add-hook 'org-mode-hook (lambda ()
    (auto-fill-mode -1)
    (global-visual-line-mode t)
))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)



(provide 'init-org-mode)
