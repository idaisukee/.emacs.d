(define-key dired-mode-map (kbd "g") 'dired-k)

(add-hook 'dired-initial-position-hook 'dired-k)

(add-hook 'dired-after-readin-hook #'dired-k-no-revert)
(provide 'dired-init)
