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
(require 'init-interface)
(require 'init-themes)
(require 'init-graphical-emacs)



;;-============================================================
;; ADDITIONAL LIBRARIES
(require 'cl-lib)



;;-============================================================
;; PLUGINS
;; built-in plugins
;;
(require 'init-bs)
(require 'init-ido)
(require 'init-org-mode)
;;
;; external plugins
;;
(require 'init-linum+)
(require 'init-autopair)
(require 'init-mmm)
(require 'init-php)
(require 'init-lua)
