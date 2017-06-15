(defun ksu-init nil
 (interactive)
 (let*
  (
   (time (format-time-string "%s" (current-time)))
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
  (shell-command (region-to-string (point-min) (point-max)) stdout stderr)))


(provide 'kensoukahuuntoutiyau)
