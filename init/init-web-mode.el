(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-enable-pairing t)

;; web-mode hook
(add-hook 'web-mode-hook
	  #'(lambda ()
	      ;; activate yas/html-mode for web-mode
	      ;; for working with yasnippet
	      (yas-activate-extra-mode 'html-mode)))



(provide 'init-web-mode)