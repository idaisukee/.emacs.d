(defun ksu-init nil
 (interactive)
 (let*
  (
   (time (s-replace "." "d" (hiyositiyau-now6)))
   (shell (s-concat time ".shell")))
  (generate-new-buffer shell)
  (switch-to-buffer shell)
  (delete-other-windows)))


(defun ksu-shell-command nil
 (interactive)
 (let*
  (
   (time (format-time-string "%s" (current-time)))
   (stdout (s-concat time ".stdout"))
   (stderr (s-concat time ".stderr")))
  (shell-command (region-to-string (point-min) (point-max)) stdout stderr)
  (switch-to-buffer stdout)
  (display-ansi-colors)
  ))

(require 'ansi-color)

;; from https://stackoverflow.com/questions/23378271/how-do-i-display-ansi-color-codes-in-emacs-for-any-mode
(defun display-ansi-colors ()
  (interactive)
  (ansi-color-apply-on-region (point-min) (point-max)))


(provide 'kensoukahuuntoutiyau)
