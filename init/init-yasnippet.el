;;-=====================================================
;; Yasnippet - template system for Emacs
;; URL: https://github.com/capitaomorte/yasnippet
;;
(add-to-list 'load-path (expand-file-name "plugins/yasnippet" user-emacs-directory))
(require 'yasnippet)
(setq yas-snippet-dirs '("~/.emacs.d/snippets"))
(yas-global-mode 1)



(provide 'init-yasnippet)