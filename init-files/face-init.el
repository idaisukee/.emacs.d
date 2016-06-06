(set-face-background 'hl-line "cyan4")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default
   ((t (
        :inherit nil
        :stipple nil
        :background "black"
        :foreground "white"
        :inverse-video nil
        :box nil
        :strike-through nil
        :overline nil
        :underline nil
        :slant normal
        :weight normal
        :height 120
        :width normal
        :foundry "unknown"
        :family "Inconsolata"))))
 '(button
   ((t (
        :background "white"
        :foreground "black"
        :weight light))))
 '(comint-highlight-prompt
   ((t (
        :inherit minibuffer-prompt
        :foreground "cyan1"
        :inverse-video t))))
 '(completions-common-part
   ((t (
        :inherit default
        :background "black"
        :foreground "yellow"
        :slant normal
        :weight normal
        :height 150
        :width normal))))
 '(font-lock-comment-delimiter-face
   ((t (
        :inherit font-lock-comment-face
        :foreground "#D0D102"))))
 '(font-lock-comment-face
   ((t (
        :foreground "#01A4A4"
        :slant normal))))
 '(font-lock-constant-face
   ((t (
        :foreground "#D70060"
        :weight bold))))
 '(font-lock-function-name-face
   ((t (
        :foreground "#F18D05"
        :height 1.0))))
 '(font-lock-string-face
   ((t (
        :foreground "#00A1CB"))))
 '(font-lock-type-face
   ((t (
        :foreground "#9BF0E9"))))
 '(font-lock-variable-name-face
   ((t (
        :foreground "DodgerBlue1"))))
 '(font-lock-builtin-face
   ((t (
        :foreground "#E54028"))))
 '(mode-line
   ((t (
        :inherit default
        :background "#32742C"
        :foreground "white"
        :box nil
        :weight normal))))
 '(mode-line-buffer-id
   ((t (
        :background "white"
        :foreground "black"
        :weight normal))))
 '(mode-line-inactive
   ((t (
        :inherit default
        :background "#616161"
        :foreground "white"
        :weight normal
        :box nil))))
 '(org-meta-line
   ((t (
        :inherit font-lock-comment-face
        :background "black"
        :foreground "white"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#00ff00"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#0000ff"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#00ff00"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#0000ff"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#00ff00"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#0000ff"))))
 '(trailing-whitespace
   ((t (
        :background "#222222"))))
 '(twittering-username-face
   ((t (
        :foreground "orange"
        :underline t))))
 '(whitespace-space
   ((t (
;;;        :background "#151515"
        :foreground "darkgray"))))
 '(whitespace-tab
   ((t (
;;;        :background "#151515"
        :foreground "darkgray"))))
 '(dired-marked
   ((t (
        :background "#14b9d5"))))
 '(helm-selection
   ((t (
        :background "darkgray"
        :distant-foreground "black"))))
 '(helm-source-header
   ((t (
        :background "#22083397778B"
        :foreground "white"
        :weight normal))))
)
  


(provide 'face-init)
