;;-=====================================================
;; Emacs themes customization
(add-to-list 'load-path (expand-file-name "plugins/color-themes" user-emacs-directory))
(require 'color-theme)
(color-theme-initialize)
(color-theme-sublime-text-2)



(provide 'init-themes)
