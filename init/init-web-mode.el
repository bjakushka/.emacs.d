(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-enable-pairing t)

;; for working with yasnippet
(add-hook 'web-mode-hook #'(lambda () (yas-activate-extra-mode 'html-mode)))



(provide 'init-web-mode)