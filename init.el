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

;(load "~/.emacs.d/lang.el")
;(load "~/.emacs.d/wren-mode.el")
;(load "~/.emacs.d/3rd-party/zig-mode.el")
;(load "~/.emacs.d/zig-mode.el")
; (load "~/.emacs.d/ligature.el")

(load "~/.emacs.d/odin-mode.el")
(load "~/.emacs.d/lua-mode.el")
(load "~/.emacs.d/wren-mode.el")

(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(autoload 'wren-mode "wren-mode" "Wren editing mode." t)
(add-to-list 'auto-mode-alist '("\\.wren$" . wren-mode))
(add-to-list 'interpreter-mode-alist '("wren" . wren-mode))

;;; Visual stuff
;(set-frame-font "AnonymicePro Nerd Font Propo 14" nil t)
;(set-frame-font "Miracode 13" nil t)
(set-frame-font "mononoki 14" nil t)

(setq-default line-spacing 5)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;(load-theme 'modus-operandi t)
(load-theme 'timu-caribbean t)

(setq initial-frame-alist
  (append initial-frame-alist
    '((width  . 128) (height . 38))))

(global-hl-line-mode t)

; (setq-default mode-line-format nil)

;(use-package ligature
;  :config
;  ;; Enable the "www" ligature in every possible major mode
;  (ligature-set-ligatures 't '("www"))
;  ;; Enable traditional ligature support in eww-mode, if the
;  ;; `variable-pitch' face supports it
;  (ligature-set-ligatures 'eww-mode '("ff" "fi" "ffi"))
;  ;; Enable all Cascadia Code ligatures in programming modes
;  (ligature-set-ligatures 'prog-mode '(
;    "==" "===" "!=" "!==" "<=" ">=" "<-" "->" "=>" "<=>" "+=" "-=" "TODO:" "NOTE:" "/**" "/*"
;  ))
;  ;; Enables ligature checks globally in all buffers. You can also do it
;  ;; per mode with `ligature-mode'.
;  (global-ligature-mode t))
