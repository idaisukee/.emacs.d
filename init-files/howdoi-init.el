(require 'howdoi)
;;; 質問も表示する(なぜデフォルトで無効だし？)
(setq howdoi-display-question t)
;;; *How do I*表示後にURLを表示する
(defun howdoi-show-url (&rest ignore)
  (interactive)
  (message "%s" howdoi-current-stackoverflow-url))
;;; (advice-add 'howdoi-pop-answer-to-buffer-callback :after 'howdoi-show-url) 
;;; cで現在のURLを表示する
(define-key howdoi-mode-map (kbd "c") 'howdoi-show-url)

(provide 'howdoi-init)
