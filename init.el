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
