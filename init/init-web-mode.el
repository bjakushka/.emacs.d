(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-enable-pairing t)

;; turn on moz-reload-mode
;;(add-hook 'html-mode-hook 'moz-reload-mode t)
;;(add-hook 'css-mode-hook 'moz-reload-mode t)
;;(add-hook 'web-mode-hook 'moz-reload-mode t)



(provide 'init-web-mode)