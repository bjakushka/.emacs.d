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
;; on windows systems fontsize == 11
(if (eq system-type 'windows-nt)
    (set-default-font "Consolas-11")
  (set-default-font "Consolas-14"))

;; Delete selected text when typing
(delete-selection-mode 1)



(provide 'init-interface)
