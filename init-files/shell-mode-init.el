(add-hook 'shell-mode-hook
 '(lambda ()
   (define-key shell-mode-map (kbd "C-S-t") 'comint-previous-input)
   (define-key shell-mode-map (kbd "C-S-h") 'comint-next-input)
   (define-key shell-mode-map (kbd "C-c C-t") 'comint-previous-prompt)
   (define-key shell-mode-map (kbd "C-c C-h") 'comint-next-prompt)))

(add-hook 'shell-mode-hook
 #'(lambda ()
    (setq comint-password-prompt-regexp
     (replace-regexp-in-string "for \\[\\^:\\]\\+" "for .+"
      comint-password-prompt-regexp t t))))


(provide 'shell-mode-init)
