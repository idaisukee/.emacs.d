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



(defun prepare-article-3 ()
  (interactive)
  (progn
   (prepare-article-2)
   (search-backward "main" nil)
   (next-line)
   (end-of-line)))




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

;; (define-sequential-command seq-home
;;  beginning-of-line beginning-of-block seq-return)

;; (define-sequential-command seq-end
;;  end-of-line end-of-block seq-return)

(defun dired-xournal ()
 (interactive)
 (dired-do-shell-command "xournal ? &" 1))

(defun dired-open-file ()
 "In dired, open the file named on this line."
 (interactive)
 (let* ((file (dired-get-filename nil t)))
  (message "Opening %s..." file)
  (call-process "xdg-open" nil 0 nil file)
  (message "Opening %s done" file)))

(defun set-region (start end)
 (goto-char start)
 (set-mark-command nil)
 (goto-char end)
 (list start end))

(defun tweet-region ()
 (interactive)
 (shell-command-on-region (region-beginning) (region-end) "php ~/src/twm/tmhOAuthExamples/cli/tweet.php "))

(defun copy-full-path-to-kill-ring ()
  "copy buffer's full path to kill ring"
  (interactive)
  (when buffer-file-name
    (kill-new (file-truename buffer-file-name))))

(defun comment-or-uncomment-line ()
 (interactive)
 (beginning-of-line)
 (setq beg (point))
 (next-line)
 (setq end (point))
 (comment-or-uncomment-region beg end))

(provide 'my-function-init)
