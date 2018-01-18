;(package-initialize)

(when load-file-name
    (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/init-files/")

(require 'el-get-init)

(-each
    (list
        'color-init
        'appearance-init
        'misc-init
        'my-function-init
        'alias-init
        'whitespace-init
        'shell-mode-init
        'skk-init
        'edit-text-object
        'web-mode-init
        'migemo-init
        'howdoi-init
        'eldoc-init
        'anything-init
        'dired-init
        'bind-key-init
        'yasnippet-init
        'smart-compile-init
        'auto-mode-init
        'css-mode-init
        'git-gutter-init
        'hiyositiyau
;;;        'auto-complete-init
        'popwin-init
        'anzu-init
        'stripe-buffer-init
        'avy-migemo-init
        'rainbow-delimiters-init
        'theme-init
;;;        'powerline-init
        'direx-init
        'company-mode-init
        'recentf-init
        )
    'require)

(require 'Akihamiti)
(powerline-Akihamiti)


(require 'Nisikuho)
(ieremii-prepare-grep)

(require 'Tusimati)

(setq popup-menu-keymap
  (let ((map (make-sparse-keymap)))
    (define-key map "\M-h"      'popup-next)
    (define-key map "\M-t"      'popup-previous)
    map))
