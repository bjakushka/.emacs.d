;;-=====================================================
;; text-mode configuration
(add-hook 'text-mode-hook
	  (lambda()
	    (set-fill-column 110)
	    ))



(provide 'init-text-mode)