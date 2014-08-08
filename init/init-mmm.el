;;-=====================================================
;; MMM-Mode (plugin) - Multiple Major Modes
(add-to-list 'load-path (expand-file-name "plugins/mmm-mode" user-emacs-directory))
(require 'mmm-auto)
(setq mmm-global-mode 'buffers-with-submode-classes)
(setq mmm-submode-decoration-level 20)



(provide 'init-mmm)