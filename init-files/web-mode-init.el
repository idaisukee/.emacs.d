(add-to-list 'auto-mode-alist '("\\.ctp\\'"   . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-hook 'web-mode-hook '(lambda ()
                            (setq web-mode-engines-alist
                              '(("php"    . "\\.ctp\\'"))
                              )
                            ))

(provide 'web-mode-init)
