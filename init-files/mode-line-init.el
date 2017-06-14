

(defvar mode-line-cleaner-alist
  `( ;; For minor-mode, first char is 'space'
    (yas-minor-mode . ,(propertize " ●" 'face '(((:bold t :foreground "yellow")))))
    (paredit-mode . ,(propertize " ●" 'face '(((:bold t :foreground "red")))))
    (undo-tree-mode . ,(propertize " ●" 'face '(((:bold t :foreground "RoyalBlue1")))))
    (elisp-slime-nav-mode . ,(propertize " ●" 'face '(((:bold t :foreground "blue")))))
    (auto-complete-mode . ,(propertize " ●" 'face '(((:bold t :foreground "orange")))))
    ;; Major modes
    (emacs-lisp-mode . ,(propertize "●" 'face '(((:bold t :foreground "chartreuse")))))))

(defun clean-mode-line ()
  (interactive)
  (loop for (mode . mode-str) in mode-line-cleaner-alist
        do
        (let ((old-mode-str (cdr (assq mode minor-mode-alist))))
          (when old-mode-str
            (setcar old-mode-str mode-str))
          ;; major mode
          (when (eq mode major-mode)
            (setq mode-name mode-str)))))

;;(add-hook 'after-change-major-mode-hook 'clean-mode-line)


;;(setq mode-line-format (list "%b %f %I %n %Z %["))

(setq
 mode-line-format
 '("" skk-modeline-input-mode "%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position evil-mode-line-tag
 (vc-mode vc-mode)
 "  " mode-line-modes mode-line-misc-info mode-line-end-spaces))

(provide 'mode-line-init)
