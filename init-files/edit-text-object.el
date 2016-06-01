;;; derived from http://superuser.com/questions/124246/emacs-equivalent-to-vim-ci

; Re-create ci" ca"...
(defun seek-backward-to-char (chr)
  "Seek backwards to a character"
  (interactive "cSeek back to char: ")
  (while (not (= (char-after) chr))
    (forward-char -1)))

(setq char-pairs
      '(( ?\" . ?\" )
        ( ?\' . ?\' )
        ( ?\( . ?\) )
        ( ?\[ . ?\] )
        ( ?\{ . ?\} )
        ( ?<  . ?>  )
        ( ?/  . ?/  )
        ( ?$  . ?$  )
        ( ?-  . ?-  )
        ( ?_  . ?_  )
        ( ?`  . ?`  )
        ( ?\u0020  . ?\u0020  ) ;;; hankaku space
        ))

(defun get-char-pair (chr)
  (let ((result ()))
    (dolist (x char-pairs)
      (setq start (car x))
      (setq end (cdr x))
      (when (or (= chr start) (= chr end))
        (setq result x)))
      result))

(defun get-start-char (chr)
  (car (get-char-pair chr)))
(defun get-end-char (chr)
  (cdr (get-char-pair chr)))

(defun seek-to-matching-char (start end count)
  (while (> count 0)
    (if (= (following-char) end)
        (setq count (- count 1))
      (if (= (following-char) start)
          (setq count (+ count 1))))
    (forward-char 1)))

(defun seek-backward-to-matching-char (start end count)
  (if (= (following-char) end)
      (forward-char -1))
  (while (> count 0)
    (if (= (following-char) start)
        (setq count (- count 1))
      (if (= (following-char) end)
          (setq count (+ count 1))))
    (if (> count 0)
        (forward-char -1))))

(defun delete-between-pair (char)
  "Delete in between the given pair"
  (interactive "cDelete between char: ")
  (seek-backward-to-matching-char (get-start-char char) (get-end-char char) 1)
  (forward-char 1)
  (setq mark (point))
  (seek-to-matching-char (get-start-char char) (get-end-char char) 1)
  (forward-char -1)
  (kill-region mark (point)))

(defun delete-all-pair (char)
  "Delete in between the given pair and the characters"
  (interactive "cDelete all char: ")
  (seek-backward-to-matching-char (get-start-char char) (get-end-char char) 1)
  (setq mark (point))
  (forward-char 1)
  (seek-to-matching-char (get-start-char char) (get-end-char char) 1)
  (kill-region mark (point)))

(defun select-between-pair (char)
 (interactive "c")
 (seek-backward-to-matching-char (get-start-char char) (get-end-char char) 1)
 (forward-char 1)
 (set-mark-command nil)
 (seek-to-matching-char (get-start-char char) (get-end-char char) 1)
 (forward-char -1))

(defun copy-whole-buffer ()
 (interactive)
 (copy-region-as-kill (point-min) (point-max)))

(global-set-key (kbd "C-c i") 'delete-between-pair)
(global-set-key (kbd "C-c a") 'delete-all-pair)

(global-set-key (kbd "C-'") 'select-between-pair)

(provide 'edit-text-object)
