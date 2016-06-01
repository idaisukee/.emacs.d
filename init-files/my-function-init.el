(defun move-line-to-opposite-window nil
  (interactive)
  (kill-line)
  (yank)
  (next-line)
  (beginning-of-line)
  (other-window 1)
  (yank)
  (newline)
  (beginning-of-line)
  (other-window 1))

(defun my-buffer-menu nil
  (interactive)
  (buffer-menu-other-window)
  (other-window 0))

(defun my-buffer-menu2 nil
  (interactive)
  (ibuffer-other-window)
  (other-window 0))

(defun open-init-el nil
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(defun my-kill-region nil
  (interactive)
  (kill-region (point) (mark)))

(defun my-copy-region-as-kill nil
  (interactive)
  (copy-region-as-kill (point) (mark)))

(defun insert-date-time nil
  (interactive)
  (insert (format-time-string "%m %d %H%M" (current-time))))

(defun insert-year-date-time nil
  (interactive)
  (insert (format-time-string "%Y %m%d %H%M" (current-time))))

(defun prepare-article nil
  (interactive)
  (insert "---
article:
  time: ")
  (insert-year-date-time)
  (insert "
  main: | 
  range:
    - public
  tag:"))

(defun prepare-article-2 nil
  (interactive)
  (insert "- time: ")
  (insert-year-date-time)
  (insert "
  main: | 
  range:
    - public
  tag:"))

(defun insert-rc-datetime-jp nil
  (interactive)
  (shell-command "ruby $PRD/src/rc/bin/current_datetime_in_jp.rb" t))

(defun dired-pwd nil
  (interactive)
  (dired default-directory))

(defun my-search-forward (char)
  (interactive "sSearch: ")
  (search-forward char)
  (backward-char))

(defun blank-line? ()
  (string-match "^\n$" (substring-no-properties (thing-at-point 'line))))

;;; move-to-(next|previous)-blank-line
;;; derived from http://mint.hateblo.jp/entry/2012/06/05/154009

(defun move-to-next-blank-line ()
  (interactive)
  (progn (forward-line 1)
	 (if (blank-line?) () (move-to-next-blank-line))))

(defun move-to-previous-blank-line ()
  (interactive)
  (progn (forward-line -1)
   (if (blank-line?) () (move-to-previous-blank-line))))

(defun end-of-block ()
 (interactive)
 (progn
  (move-to-next-blank-line)
  (forward-char -1)))

(defun beginning-of-block ()
 (interactive)
 (progn
  (move-to-previous-blank-line)
  (forward-char 1)))

(provide 'my-function-init)
