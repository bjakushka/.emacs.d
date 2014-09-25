;;-=====================================================
;; Emmet mode - renamed and updated Zen Coding
;;
(require 'emmet-mode)

;; emmet hook
(add-hook 'emmet-mode-hook
	  (lambda ()
	    ;; indent 2 spaces
	    (setq emmet-indentation 2)))

;; emmet in web-mode
(add-hook 'web-mode-hook 'emmet-mode)



(provide 'init-emmet-mode)