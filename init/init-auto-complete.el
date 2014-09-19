;;-=====================================================
;; Auto Complete - autocompletion
;; Some configuration was taken from github.com/webus/emacs.d/
(add-to-list 'load-path (expand-file-name "plugins/auto-complete" user-emacs-directory))
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories (expand-file-name "plugins/auto-complete/dict" user-emacs-directory))
(global-auto-complete-mode t)

(setq-default ac-expand-on-auto-complete nil)
(setq-default ac-auto-start nil) ;; not to complete automatically
(global-set-key "\M-/" 'auto-complete) ;; use for complete M-tab
(setq-default ac-dwim nil) ;; do not use 'Do What I Means'

;; Emacs' built-in TAB completions hooks to trigger AC
(setq tab-always-indent 'complete)
(add-to-list 'completion-styles 'initials t)
(setq completion-cycle-threshold 5)

;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")


;; hook AC into completion-at-point
(defun sanityinc/auto-complete-at-point ()
  (when (and (not (minibufferp))
	     (fboundp 'auto-complete-mode)
	     auto-complete-mode)
    (auto-complete)))
(defun sanityinc/never-indent ()
  (set (make-local-variable 'indent-line-function) (lambda () 'noindent)))
(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions
	(cons 'sanityinc/auto-complete-at-point
	      (remove 'sanityinc/auto-complete-at-point completion-at-point-functions))))
(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)


;;(set-default 'ac-sources
;;	     '(ac-source-imenu
;;	       ac-source-dictionary
;;	       ac-source-words-in-buffer
;;	       ac-source-words-in-same-mode-buffers
;;	       ac-source-words-in-all-buffer))



(provide 'init-auto-complete)