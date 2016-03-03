;;;(load-theme 'manoj-dark t)
(load-theme 'deeper-blue t)
(setq height 140)

(set-face-attribute 'default nil
  :family "inconsolata"
  :height height)

(when (eq window-system 'x)
  (set-fontset-font "fontset-default" 'japanese-jisx0208
    '("Migu 1M"))
  (set-fontset-font "fontset-default" 'katakana-jisx0201
    '("Migu 1M")))


(when (eq window-system 'ns)
  (setq height 200)

;;; 日本語をヒラギノ角ゴProNにする
  (set-fontset-font "fontset-default" 'japanese-jisx0208
    '("Hiragino Mincho ProN"))
;;; 半角カナをヒラギノ角ゴProNにする
  (set-fontset-font "fontset-default" 'katakana-jisx0201
    '("Hiragino Maru Gothic ProN")))

(provide 'appearance-init)
