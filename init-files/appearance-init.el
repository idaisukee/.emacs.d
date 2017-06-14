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




(setq height 100)
(defun init-face ()
 (set-face-attribute 'default nil
  :family "inconsolata"
  :height height))

(init-face)

(when (eq window-system 'ns)
  (setq height 200)

;;; 半角カナをヒラギノ角ゴProNにする
  (set-fontset-font "fontset-default" 'katakana-jisx0201
    '("Hiragino Maru Gothic ProN"))

;;; 日本語をヒラギノ角ゴProNにする
  (set-fontset-font "fontset-default" 'japanese-jisx0208
    '("Hiragino Mincho ProN"))
)

(provide 'appearance-init)
