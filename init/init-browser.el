;;-=====================================================
;; Initialize files opening in browsers
;;

(defun open-current-file-in-default-browser()
  (interactive)
  (let ((filename (buffer-file-name)))
    (browse-url (concat "file://" filename))))

(defun open-current-file-in-firefox()
  (interactive)
  (let ((filename (buffer-file-name)))
    (browse-url-firefox (concat "file://" buffer-file-name))))

(global-set-key (kbd "C-c C-S-b") 'open-current-file-in-default-browser)
(global-set-key (kbd "C-c C-S-f") 'browse-url-of-buffer-with-firefox)



(provide 'init-browser)