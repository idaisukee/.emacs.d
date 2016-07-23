;;;(load-theme 'manoj-dark t)
(load-theme 'deeper-blue t)


(defun incr-height (int)
 (setq height (+ height int))
 (init-face)
 (princ height))

(defun incr-height-10 ()
 (interactive)
 (incr-height 10))

(defun decr-height-10 ()
 (interactive)
 (incr-height -10))

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

(setq height 100)
(defun init-face ()
 (set-face-attribute 'default nil
  :family "inconsolata"
  :height height))

(init-face)

(provide 'appearance-init)
