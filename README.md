#My Own Emacs Configuration

This is my personal emacs configuration. It changes as often as possible.

## Requirements

Emacs 23 or greater

##Installation

To install this configuration, clone this repo to `~/.emacs.d` (`init.el` contained in this repo):

```
git clone https://github.com/bjakushka/.emacs.d.git ~/.emacs.d
```

## Features

###Installed plugins

These plugins/modes are used in this configuration (in v.0.2):

* color themes
* linum+
* autopair.el
* Yasnippet
* Auto Complete
* moz-repl
* emmet
* lua-mode
* web-mode

###Some key bindings

* Global:
  * <kbd>C-c C-c m r</kbd> - toggle moz-reload mode (moz-repl) after saving file
  * <kbd>M-f12</kbd> - turning on fullscreen mode
  * <kbd>Tab</kbd> - autocompletion
  * <kbd>f2</kbd - show buffer selection
  * <kbd>C-c C-c t</kbd> - toggle truncate lines
* Org-mode:
  * <kbd>C-c l</kbd> - store link
  * <kbd>C-c a</kbd> - display agenda list
* Yasnippet:
  * <kbd>RET</kbd> - jump to end of snippet difinition
  * <kbd>Tab</kbd> - expand snippet autocompletion
* Emmet:
  * <kbd>C-RET</kbd> - expand line
  * <kbd>C-c w</kbd> - wrapp with abbreviation
* Web-mode:
  * <kbd>M-;</kbd> - comment/uncomment
  * <kbd>C-c C-f</kbd> - fold/unfol
  * <kbd>C-c c-m</kbd> - mark end expand
  * <kbd>C-c C-w</kbd> - show whitespaces
