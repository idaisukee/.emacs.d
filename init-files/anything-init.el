(require 'anything-config)
(provide 'anything-init)

(setq anything-enable-shortcuts 'prefix)
(define-key anything-map (kbd "@") 'anything-select-with-prefix-shortcut)
