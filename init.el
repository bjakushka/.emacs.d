;; Turn off toolbar, menu and scroll early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen
(setq inhibit-startup-message t)

;; Disable autosave and creation temporary files
(setq make-backup-files nil)
(setq auto-save-list-file-name nil)
(setq auto-save-default nil)

;; Highlight an expression between parens
(setq show-paren-style 'expression)
(setq show-paren-delay 0)
(show-paren-mode 2)

;; Set default font and font size
(set-default-font "Consolas-16") ;; use (display-graphic-p) - nil on terminal

;; Delete selected text when typing
(delete-selection-mode 1)
