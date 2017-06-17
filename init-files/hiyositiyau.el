(defun hiyositiyau-now6 nil
 (interactive)
 (let*
  (
   (ruby (s-concat (getenv "SRC") "/rdatetime/rc_ajd_now_6_deg.rb"))
   (command (s-concat "ruby " ruby))
   (rd (shell-command-to-string command)))
  rd))

(provide 'hiyositiyau)
