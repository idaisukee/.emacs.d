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
        'face-init
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
        'powerline-init
        'smart-compile-init
        'auto-mode-init
        'css-mode-init
        'git-gutter-init
        'hiyositiyau
        'auto-complete-init
        'popwin-init
        'anzu-init
        'stripe-buffer-init
        'avy-migemo-init
        'rainbow-delimiters-init
        )
    'require)
(ieremii-prepare-grep)
