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

(provide 'my-function-init)

