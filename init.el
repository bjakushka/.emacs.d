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
(set-default-font "Consolas-16")

;; Delete selected text when typing
(delete-selection-mode 1)



;;-=====================================================
;; Emacs themes customization
(add-to-list 'load-path "~/.emacs.d/plugins/color-themes")
(require 'color-theme)
(color-theme-initialize)
(color-theme-sublime-text-2)



;;-=====================================================
;; Special settings for graphical emacs
(when (display-graphic-p)
  ;; Highlight current line
  (global-hl-line-mode 1)
  (set-face-background 'hl-line "#2A2A2A")

  ;; Color of highlighted expression
  (set-face-background 'show-paren-match-face "#3a3a3a")
  (set-face-attribute 'show-paren-match nil :weight 'extra-bold)
)



;;-=====================================================
;; Buffer Selection (built-in)
(require 'bs)
(setq bs-configurations
      '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))
(global-set-key (kbd "<f2>") 'bs-show)



;;-=====================================================
;; IDO-Mode (built-in)
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode t)



;;-=====================================================
;; Org-Mode (built-in)
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org%" . org-mode))
(setq org-log-done t)
(add-hook 'org-mode-hook (lambda ()
			      (auto-fill-mode t)))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)



;; Autoload plugins
(add-to-list 'load-path "~/.emacs.d/plugins")
;; Autoload extra libraries
(add-to-list 'load-path "~/.emacs.d/libs")
(require 'cl-lib)


;;-=====================================================
;; Linum+ (plugin) - line numbering
(require 'linum+)
(setq linum-format "%d ")
(global-linum-mode 1)



;;-=====================================================
;; Auto Pair (plugin) - auto closing pairs (parens, quotes, etc)
(require 'autopair)
(autopair-global-mode)



;;
;; Lua-Mode - for Lua language
(require 'lua-mode)
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\*.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))
