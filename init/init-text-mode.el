;;-=====================================================
;; text-mode configuration
(add-hook 'text-mode-hook
	  (lambda()
	    (set-fill-column 110)
	    (longlines-mode 1)))



(provide 'init-text-mode)