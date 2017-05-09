(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get-bundle! f)
(el-get-bundle! helm)
(el-get-bundle! php-mode)
(el-get-bundle! yaml-mode)
(el-get-bundle ddskk)
(el-get-bundle zenitani/elisp)
(el-get-bundle syohex/emacs-git-gutter)
(el-get-bundle! editorconfig)
(el-get-bundle evil :info nil)
(el-get-bundle! fxbois/web-mode)
(el-get-bundle! lua-mode)
(el-get-bundle multi-term)
(el-get-bundle! sequential-command)
(el-get-bundle! minor-mode-hack)
(el-get-bundle migemo)
(el-get-bundle! open-junk-file)
(el-get-bundle! markdown-mode)
(el-get-bundle! coffee-mode)
(el-get-bundle! ag)
(el-get-bundle jacktasia/dumb-jump)
(el-get-bundle m2ym/auto-complete)
(el-get-bundle helm-gtags)
(el-get-bundle goto-chg)
;;;(el-get-bundle! magit)
(el-get-bundle! helm-descbinds)
(el-get-bundle howdoi)
(el-get-bundle Wilfred/ez-query-replace.el)
(el-get-bundle! expand-region)
(el-get-bundle! gnugo)
(el-get-bundle! summarye)
(el-get-bundle! eldoc-extension)
(el-get-bundle visual-regexp)
(if (string= emacs-version "24.5.1")
 (progn
  (el-get-bundle! magit)
  (el-get-bundle! elpa:let-alisnt)
  (el-get-bundle! elpa:seq)
  (el-get-bundle! flycheck/flycheck)
  )
 nil)

(provide 'el-get-init)
