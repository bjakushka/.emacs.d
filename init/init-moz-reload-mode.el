;;-=====================================================
;; MozREPL integration
;; 
;;; Usage
;; Run M-x moz-reload-mode to switch moz-reload on/off in the
;; current buffer.
;; When active, every change in the buffer triggers Firefox
;; to reload its current page.

(require 'moz)
 
(define-minor-mode moz-reload-save-mode
  "Moz Reload Minor Mode (after save)"
  nil " Reload-S" nil
  (if moz-reload-save-mode
      ;; Edit hook buffer-locally.
      (add-hook 'after-save-hook 'moz-firefox-reload nil t)
    (remove-hook 'after-save-hook 'moz-firefox-reload t)))

(defalias 'moz-reload-mode 'moz-reload-save-mode)

(define-minor-mode moz-reload-always-mode
  "Moz Reload Minor Mode (in every change)"
  nil " Reload-A" nil
  (if moz-reload-always-mode
      ;; Edit hook buffer-locally.
      (add-hook 'post-command-hook 'moz-reload-always nil t)
    (remove-hook 'post-command-hook 'moz-reload-always t)))
  
(defun moz-reload-always ()
  "Save file after every change and reload firefox"
  (when (buffer-modified-p)
    (save-buffer)
    (moz-firefox-reload)))
 
(defun moz-firefox-reload ()
  (ignore-errors
    (comint-send-string (inferior-moz-process) "BrowserReload();")))


;; bind to C-c C-m r
(global-set-key (kbd "C-c C-c m r") 'moz-reload-mode)



(provide 'init-moz-reload-mode)