(defface ieremii-face0
 '((t
    (
     :background "#ff00ff"
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
        (face0 (if active 'ieremii-face0 'powerline-inactive1))
        (face1 (if active 'ieremii-face1 'powerline-inactive2))
        (face2 (if active 'ieremii-face2 'powerline-inactive2))
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
           (powerline-buffer-size face1 'l))
          (when powerline-display-mule-info
           (powerline-raw mode-line-mule-info face2 'l))
          (powerline-raw "%f" face1)
          ;;          (powerline-buffer-id mode-line-buffer-id 'l)
          (when (and (boundp 'which-func-mode) which-func-mode)
           (powerline-raw which-func-format nil 'l))
          (powerline-raw " " face0)
          ;; (funcall separator-left mode-line face1)
          (when (and (boundp 'erc-track-minor-mode) erc-track-minor-mode)
           (powerline-raw erc-modified-channels-object face0 'l))
          (powerline-major-mode face1 'l)
          (powerline-process face2)
          (powerline-narrow face1 'l)
          (powerline-raw " " face0)
          ;;          (funcall separator-left face1 face2)
          (powerline-vc face1 'r)
          (when (bound-and-true-p nyan-mode)
           (powerline-raw (list (nyan-create)) face2 'l))))
        (rhs
         (list
          (powerline-raw global-mode-string face2 'r)
          ;;          (funcall separator-right face2 face1)
          (unless window-system
           (powerline-raw (char-to-string #xe0a1) face1 'l))
          (powerline-raw "%4l" face1 'l)
          (powerline-raw ":" face1 'l)
          (powerline-raw "%3c" face1 'r)
          ;;          (funcall separator-right face1 mode-line)
          (powerline-raw " " face0)
          (powerline-raw "%6p" face2 'r)
          (when powerline-display-hud
           (powerline-hud face2 face1 2)))))
       (concat
        (powerline-render lhs)
        (powerline-fill face2 (powerline-width rhs))
        (powerline-render rhs)))))))
(powerline-ieremii-theme)

(provide 'powerline-init)
