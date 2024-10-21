(setq wren-fontlock
  '(("Sin\\|Cos" . 'font-lock-function-name-face)
    ("[A-Za-z]+?(?=\()" . 'font-lock-constant-face)))

(define-derived-mode wren-mode fundamental-mode "Wren"
  "major mode for editing Wren code."
  (setq font-lock-defaults '(wren-fontlock)))
