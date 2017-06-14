(defface ieremii-aoi
 '((t
    (
     :background "#69d2e7"
     :inherit mode-line)))
  "ieremii face 0."
 :group 'powerline)

(defface ieremii-clean-pondwater
 '((t
    (
     :background "#a7dbd8"
     :foreground "black"
     :inherit mode-line)))
  "ieremii face 0."
 :group 'powerline)

(defface ieremii-beach-storm
 '((t
    (
     :background "#e0e4cc"
     :inherit mode-line)))
  "ieremii face 0."
 :group 'powerline)


(defface ieremii-giant-goldfish
 '((t
    (
     :background "#f38630"
     :inherit mode-line)))
  "ieremii face 0."
 :group 'powerline)

(defface ieremii-unreal-food-pills
 '((t
    (
     :background "#fa6900"
     :inherit mode-line)))
  "ieremii face 0."
 :group 'powerline)


(defface ieremii-face1
 '((t
    (
     :background "#bb00bb"
     :inherit mode-line)))
  "ieremii face 1."
 :group 'powerline)

(defface ieremii-face2
 '((t
    (
     :background "#990099"
     :inherit mode-line)))
  "ieremii face 1."
 :group 'powerline)


(defun powerline-ieremii-theme ()
  "Setup the default mode-line."
  (interactive)
  (setq-default mode-line-format
   '("%e"
     (:eval
      (let*
       ((active (powerline-selected-window-active))
        (mode-line-buffer-id (if active 'mode-line-buffer-id 'mode-line-buffer-id-inactive))
        (mode-line (if active 'mode-line 'mode-line-inactive))
        (face0 (if active 'ieremii-aoi 'powerline-inactive2))
        (face1 (if active 'ieremii-clean-pondwater 'powerline-inactive2))
        (face2 (if active 'ieremii-beach-storm 'powerline-inactive2))
        (face3 (if active 'ieremii-giant-goldfish 'powerline-inactive2))
        (face4 (if active 'ieremii-unreal-food-pills 'powerline-inactive1))
        (separator-left
         (intern
          (format "powerline-%s-%s"
           (powerline-current-separator)
           (car powerline-default-separator-dir))))
        (separator-right
         (intern
          (format "powerline-%s-%s"
           (powerline-current-separator)
           (cdr powerline-default-separator-dir))))
        (lhs
         (list
          (powerline-raw "%*" face0 'l)
          (when powerline-display-buffer-size
           (powerline-buffer-size face0 'l))
          (when powerline-display-mule-info
           (powerline-raw mode-line-mule-info face0 'l))
          (powerline-raw "%f" face0)
          ;;          (powerline-buffer-id mode-line-buffer-id 'l)
          (when (and (boundp 'which-func-mode) which-func-mode)
           (powerline-raw which-func-format nil 'l))
          (powerline-raw " " face1)
          ;; (funcall separator-left mode-line face1)
          (when (and (boundp 'erc-track-minor-mode) erc-track-minor-mode)
           (powerline-raw erc-modified-channels-object face0 'l))
          (powerline-major-mode face0 'l)
          (powerline-process face0)
          (powerline-narrow face0 'l)
          (powerline-raw " " face1)
          ;;          (funcall separator-left face1 face2)
          (powerline-vc face4 'r)
          (when (bound-and-true-p nyan-mode)
           (powerline-raw (list (nyan-create)) face0 'l))))
        (rhs
         (list
          (powerline-raw global-mode-string face3 'r)
          ;;          (funcall separator-right face2 face1)
          (unless window-system
           (powerline-raw (char-to-string #xe0a1) face4 'l))
          (powerline-raw "%4l" face3 'l)
          (powerline-raw ":" face3 'l)
          (powerline-raw "%3c" face3 'r)
          ;;          (funcall separator-right face1 mode-line)
          (powerline-raw " " face4)
          (powerline-raw "%6p" face4 'r)
          (when powerline-display-hud
           (powerline-hud face3 face2 2)))))
       (concat
        (powerline-render lhs)
        (powerline-fill face2 (powerline-width rhs))
        (powerline-render rhs)))))))
(powerline-ieremii-theme)

(provide 'powerline-init)
