;;-=====================================================
;; Emmet mode - renamed and updated Zen Coding
;;
(require 'emmet-mode)
(add-hook  'web-mode-hook 'emmet-mode)

;; indent 2 spaces
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2)))



(provide 'init-emmet-mode)