(defun ieremii-previous-window nil
 (interactive)
 (other-window -1))

(bind-keys*
 ("<backtab>" . save-buffer)
 ("<down>" . next-line)
 ("<f11>" . dired-pwd)
 ("<f2>" . my-buffer-menu2)
 ("<f3>" . other-window)
 ("<f4>" . open-init-el)
 ("<f6>" . shell)
 ("<f7>" . toggle-and-print-skk-kutouten-type)
 ("<f8>" . toggle-and-print-jitai)
 ("<left>" . backward-char)
 ("<right>" . forward-char)
 ("<tab>" . execute-extended-command)
 ("<up>" . previous-line)
 ("C-'" . er/expand-region)
 ("C-," . my-copy-region-as-kill)
 ("C--" . universal-argument)
 ("C-." . my-kill-region)
 ("C-< b" . copy-block)
 ("C-< t" . copy-whole-buffer)
 ("C-<f11>" . dired)
 ("C-<f6>" . eshell)
 ("C-<f8>" . show-lub)
 ("C-=" . goto-line)
 ("C-@" . undo)
 ("C-S-SPC" . ieremii-return-to-mark)
 ("C-S-a" . move-to-open-paren)
 ("C-S-b" . ieremii-backward-kill-word)
 ("C-S-d" . my-backward-word)
 ("C-S-e" . beginning-of-buffer)
 ("C-S-f" . goto-last-change-reverse)
 ("C-S-h" . forward-paragraph)
 ("C-S-k" . ieremii-kill-line-contents)
 ("C-S-n" . exit-white-space-or-forward-word)
 ("C-S-o" . end-of-buffer)
 ("C-S-p" . anything-show-kill-ring)
 ("C-S-r" . ieremii-kill-word)
 ("C-S-s" . isearch-backward)
 ("C-S-t" . backward-paragraph)
 ("C-S-u" . move-to-close-paren)
 ("C-S-v" . ieremii-lookup-sauketu)
 ("C-S-w" . save-buffers-kill-terminal)
 ("C-S-z" . toggle-and-print-jitai)
 ("C-\"" . mark-all-pair)
 ("C-a" . beginning-of-line)
 ("C-b" . delete-backward-char)
 ("C-d" . backward-char)
 ("C-e" . scroll-down-command)
 ("C-f" . goto-last-change)
 ("C-h" . next-line)
 ("C-k" . ieremii-kill-line)
 ("C-n" . forward-char)
 ("C-o" . scroll-up-command)
 ("C-p" . yank)
 ("C-r" . delete-char)
 ("C-t" . previous-line)
 ("C-u" . end-of-line)
 ("C-v" . Yunoki-dwim)
 ("C-w" . my-search-forward)
 ("C-x C-h" . skk-mode)
 ("C-x j" . ieremii-open-junk-file)
 ("C-z" . ieremii-next-input-mode)
 ("M-'" . anything-M-x)
 ("M--" . decr-height-10)
 ("M-;" . delete-window)
 ("M-_" . incr-height-10)
 ("M-b" . find-file-and-prepare-prd-article)
 ("M-c" . smart-compile)
 ("M-d" . dired-pwd)
 ("M-e" . eval-last-sexp)
 ("M-g" . magit-status)
 ("M-j" . other-window)
 ("M-k" . delete-other-windows)
 ("M-m" . anything-mini)
 ("M-o" . find-file-at-point)
 ("M-q" . ieremii-previous-window)
 ("M-s" . save-buffer)
 ("M-u" . comment-dwim)
 ("M-v" . evil-mode)
 ("S-<muhenkan>" . delete-window)
 )

(bind-keys :map global-map
 ("<f10>" . nil)
 ("<insert>" . nil)
 ("<tab>" . nil)
 ("C--" . nil)
 ("C-<insert>" . nil)
 ("C-S-h" . nil)
 ("C-S-t" . nil)
 ("C-\\" . nil)
 ("C-_" . nil)
 ("C-f" . nil)
 ("C-o" . nil)
 ("C-p" . nil)
 ("C-u" . nil)
 ("C-v" . nil)
 ("C-w" . nil)
 ("C-x C-c" . nil)
 ("C-x C-f" . nil)
 ("C-y" . nil)
 ("M-c" . nil)
 ("M-h" . nil)
 ("M-t" . nil)
 ("M-w" . nil)
 ("M-y" . nil)
 ("M-z" . nil))


(bind-keys :map anything-map
 ("C-a" . beginning-of-line)
 ("C-u" . end-of-line)
 ("C-d" . backward-char)
 ("M-h" . anything-next-line)
 ("M-t" . anything-previous-line)
 ("C-n" . forward-char)
 ("C-o" . anything-next-page)
 ("C-e" . anything-previous-page)
 ("C-r" . delete-char)
 ("C-b" . delete-backward-char)
 ("C-p" . yank))

(bind-keys :map minibuffer-local-map
 ("M-t" . previous-history-element)
 ("M-h" . next-history-element))


(add-hook 'markdown-mode-hook
 '(lambda ()
   (bind-keys :map markdown-mode-map
    ("C-m" . newline))))

(add-hook 'dired-mode-hook 
 '(lambda ()
   (bind-keys :map dired-mode-map
    ("e" . dired-up-directory)
    ("f" . find-file)
    ("O" . dired-open-file))))

(add-hook 'isearch-mode-hook 
 '(lambda ()
   (bind-keys :map isearch-mode-map
    ("C-S-s" . isearch-repeat-backward))))

(add-hook 'sh-mode-hook
 '(lambda ()
   (bind-keys :map sh-mode-map
    ("M-h" . ksu)
    ("M-H" . ksu-save-current))))


(provide 'bind-key-init)
