;;; Behaviour
(setq inhibit-startup-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(setq ring-bell-function 'ignore)

(setq-default cursor-type 'bar)

(cua-mode t)

(setq backup-directory-alist `(("." . "~/.saves")))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)

(electric-pair-mode t)

(setq scroll-step 1
      scroll-conservatively 10000)

(setq switch-to-buffer-obey-display-actions t)

; (load "~/.emacs.d/wren-mode.el")

;;; Visual stuff
(set-frame-font "AnonymicePro Nerd Font Propo 15" nil t)

; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'modus-operandi t)

(setq initial-frame-alist
  (append initial-frame-alist
    '((width  . 128) (height . 32))))

(global-hl-line-mode t)

(setq-default mode-line-format nil)
