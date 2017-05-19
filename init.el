(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(add-to-list 'load-path "~/.emacs.d/init-files/")

(require 'el-get-init)

(setq files-to-require
 (list
  'keybind-init
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
;;  'appearance-init
  ))
(require 'appearance-init)
(mapcar 'require files-to-require)
