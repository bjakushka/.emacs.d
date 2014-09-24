;;-=====================================================
;; Yasnippet - template system for Emacs
;; URL: https://github.com/capitaomorte/yasnippet
;;
(require 'yasnippet)
;; use only own snippets
(setq yas-snippet-dirs (eval (expand-file-name "snippets" user-emacs-directory)))
(yas-global-mode 1)

;; Jump to end of snippet definition 
(define-key yas-keymap (kbd "<return>") 'yas/exit-all-snippets)

;; Wrap around region
(setq yas-wrap-around-region t)



(provide 'init-yasnippet)