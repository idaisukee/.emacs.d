(provide 'misc-init)

(global-whitespace-mode t)
(blink-cursor-mode -1)
(global-hl-line-mode -1)
(global-linum-mode 1)
(setq linum-format "%5d")
(savehist-mode 1)
(show-paren-mode 1)
(line-number-mode -1)
(column-number-mode -1)
(transient-mark-mode 1)
(setq message-log-max 10000)
(setq enable-recursive-minibuffers t)
(setq use-dialog-box nil)
(defalias 'message-box 'message)
(setq history-length 1000)
(setq echo-keystrokes 0.1)
(defalias 'yes-or-no-p 'y-or-n-p)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq scroll-step 1)
(setq inhibit-startup-message t)
(setq shift-select-mode nil)
(setq default-directory "~/") 
(setq command-line-default-directory "~/")

(setq-default show-trailing-whitespace nil) ; 行末の空白をハイライトするか

;;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

(setq inhibit-splash-screen t)


(if (string= emacs-version "24.5.1")
 (lambda ()
  (add-hook 'after-init-hook #'global-flycheck-mode))
 nil)

(setq editorconfig-get-properties-function
      'editorconfig-core-get-properties-hash)

(editorconfig-mode t)

(when (require 'multi-term nil t)
  (setq multi-term-program "/usr/bin/zsh"))

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(setq split-height-threshold nil)
(setq split-width-threshold 100)


(require 'generic-x)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

(require 'server)
(unless (server-running-p)
  (server-start))
