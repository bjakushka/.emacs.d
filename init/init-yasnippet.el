;;-=====================================================
;; Yasnippet - template system for Emacs
;; URL: https://github.com/capitaomorte/yasnippet
;;
(require 'yasnippet)
(yas-global-mode 1)

;; Jump to end of snippet definition 
(define-key yas-keymap (kbd "<return>") 'yas/exit-all-snippets)



(provide 'init-yasnippet)