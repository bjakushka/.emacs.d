;; Turn off toolbar, menu and scroll early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Setup load-path variablen
(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "plugins" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "libs" user-emacs-directory))


;;-============================================================
;; SETUP
(require 'maxframe) ;; for toggle fullscreen
(require 'init-interface)
(require 'init-themes)
(require 'init-graphical-emacs)



;;-============================================================
;; ADDITIONAL LIBRARIES
(require 'cl-lib)
(add-to-list 'load-path (expand-file-name "libs/es-lib" user-emacs-directory))
(require 'es-lib)



;;-============================================================
;; PLUGINS
;; built-in plugins
;;
(require 'init-bs)
(require 'init-ido)
(require 'init-org-mode)
(require 'init-git)
;;
;; external plugins
;;
(require 'init-linum+)
(require 'init-autopair)
(require 'init-yasnippet)
(require 'init-auto-complete)
(require 'init-text-mode)
(require 'init-moz-reload-mode)
(require 'init-emmet-mode)
(require 'init-browser)
(require 'init-project-explorer)
;;
;; languages
;;
;;(require 'init-lua)
(require 'init-web-mode)
;;
;; key bindings
;;
(require 'init-keybindings)
