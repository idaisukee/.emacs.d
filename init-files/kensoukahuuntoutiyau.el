(defun ksu-init nil
 (interactive)
 (let*
  (
   (time (s-replace "." "d" (hiyositiyau-now6)))
   (shell (s-concat time ".shell")))
  (generate-new-buffer shell)
  (switch-to-buffer shell)
  (delete-other-windows)))


(defun ksu-exec (time)
 (interactive)
 (let*
  (
   (stdout (s-concat time ".stdout"))
   (stderr (s-concat time ".stderr")))
  (async-shell-command (region-to-string (point-min) (point-max)) stdout stderr)))

(defun ksu-set-window (time)
 (interactive)
 (let*
  (
   (stdout (s-concat time ".stdout"))
   (stderr (s-concat time ".stderr")))
  (delete-other-windows)
  (split-window-horizontally)
  (other-window 1)
  (switch-to-buffer stdout)
  (display-ansi-colors)
  (split-window-vertically)
  (other-window 1)
  (switch-to-buffer stderr)
  (display-ansi-colors)
  (other-window 1)))

;;(ksu-set-window "aa")

(defun ksu ()
 (interactive)
 (let*
  (
   (time (s-replace "." "d" (hiyositiyau-now6))))
  (ksu-exec time)
  (ksu-set-window time)))

(require 'ansi-color)

;; from https://stackoverflow.com/questions/23378271/how-do-i-display-ansi-color-codes-in-emacs-for-any-mode
(defun display-ansi-colors ()
  (interactive)
  (ansi-color-apply-on-region (point-min) (point-max)))


(provide 'kensoukahuuntoutiyau)