;;-=====================================================
;; nXhtml 
;; 
(add-to-list 'load-path (expand-file-name "plugins/hxtml" user-emacs-directory))
(load "~/.emacs.d/plugins/nxhtml/autostart.el")

;;
;;(add-to-list 'auto-mode-alist '("\\.php$" . nxhtml-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . nxhtml-mode))

;; disable region colors
(setq mumamo-background-colors nil)
;;(setq mumamo-chunk-coloring 'no-chunks-colored)



(provide 'init-nxhtml)