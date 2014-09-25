(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))


;; web-mode hook
(add-hook 'web-mode-hook
	  #'(lambda ()
	      ;; activate yas/html-mode for web-mode
	      ;; for working with yasnippet
	      (yas-activate-extra-mode 'html-mode)

	      (setq indent-tabs-mode nil)
	      
	      (setq web-mode-markup-indent-offset 2)
	      (setq web-mode-css-indent-offset 2)
	      (setq web-mode-code-indent-offset 2)
	      (setq web-mode-style-padding 2)
	      (setq web-mode-script-padding 2)
	      (setq web-mode-block-padding 2)
              (setq web-mode-enable-pairing t)
              (setq web-mode-enable-current-element-highlight t)))
(provide 'init-web-mode)