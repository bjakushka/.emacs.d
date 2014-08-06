;;-=====================================================
;; Special settings for graphical emacs
(when (display-graphic-p)
  ;; Highlight current line
  (global-hl-line-mode 1)
  (set-face-background 'hl-line "#2A2A2A")

  ;; Color of highlighted expression
  (set-face-background 'show-paren-match-face "#3a3a3a")
  (set-face-attribute 'show-paren-match nil :weight 'extra-bold)

  ;; Window size and position for emacs with graphical interface
  (set-frame-position (selected-frame) 0 0)
  (set-frame-size (selected-frame) 100 25)
)

(provide 'init-graphical-emacs)