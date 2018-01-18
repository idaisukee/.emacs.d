(makunbound 'popup-menu-keymap)

(setq popup-menu-keymap (make-sparse-keymap))
(define-key popup-menu-keymap (kbd "M-h") 'popup-next)
(define-key popup-menu-keymap (kbd "M-t") 'popup-previous)



(provide 'popup-init)
