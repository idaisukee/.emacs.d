;; whitespace-mode の 色設定
;;http://ergoemacs.org/emacs/whitespace-mode.html

;;; derived from http://d.hatena.ne.jp/t_ume_tky/20120906/1346943019
(require 'whitespace)
(setq whitespace-style 
 '(face tabs tab-mark spaces space-mark newline newline-mark))

(setq whitespace-display-mappings
 '(
   (space-mark ?\u3000 [?□])  ; 全角スペース
;;;        (space-mark ?\u0020 [?\xB7])  ; 半角スペース -> centerdot
   (space-mark ?\u0020 [?\x5f])  ; 半角スペース -> underscore
;;;        (newline-mark ?\n   [?$ ?\n]) ; 改行記号
;;;		(newline-mark ?\n   [?\u2193 ?\n]) ; 改行記号 -> downarrow
   (newline-mark ?\n   [?v ?\n]) ; 改行記号 -> v
;;;		(tab-mark ?\t [?> ?\t]) ; tab -> >
   (tab-mark ?\t [?\xBB ?-]) ; tab -> left guillemet - 
   ) )

(setq whitespace-space-regexp "\\([\x0020\x3000]+\\)" )

;;;正規表現に関する文書。 Emacs Lispには、正規表現リテラルがないことへの言及
;;;http://www.mew.org/~kazu/doc/elisp/regexp.html
;;;
;;;なぜか、全体をグループ化 \(\) しておかないと、うまくマッチしなかった罠
;;;

(provide 'whitespace-init)
