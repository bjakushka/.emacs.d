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

;; Toggle fullscreen
(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
      (if (equal 'fullboth current-value)
        (if (boundp 'old-fullscreen) old-fullscreen nil)
        (progn (setq old-fullscreen current-value)
          'fullboth)))))
(global-set-key [f11] 'toggle-fullscreen)

;; Delete selected text when typing
(delete-selection-mode 1)



(provide 'init-interface)
