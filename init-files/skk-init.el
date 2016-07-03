(setq-default skk-kutouten-type 'en)
;;;(setq-default skk-kutouten-type 'jp)



(require 'skk)

(add-hook 'skk-j-mode-hook
  '(lambda ()
     (define-key skk-j-mode-map (kbd "S-<tab>") nil)
     (define-key skk-j-mode-map (kbd "S-<tab>") 'skk-j-mode-save-buffer)
     (define-key skk-j-mode-map (kbd "<backtab>") nil)
     (define-key skk-j-mode-map (kbd "<backtab>") 'skk-j-mode-save-buffer)
     (define-key skk-j-mode-map (kbd "C-<tab>") 'skk-j-mode-save-buffer)))

(defun skk-j-mode-save-buffer nil
  (interactive)
  (skk-latin-mode t)
  (save-buffer)
  (skk-kakutei))

(setq skk-cursor-hiragana-color "#FFC43C")
(setq skk-cursor-katakana-color "green3")
(setq skk-cursor-latin-color "#884488")
(setq skk-isearch-mode-enable nil)
(setq skk-large-jisyo "~/ldic_kyuji.dic")
(setq skk-jisyo "~/udic_kyuji.dic")
(setq skk-backup-jisyo "~/udic_kyuji.dic.BAK")
(setq skk-auto-start-henkan-keyword-list nil)


(defun kyu-shin (x) (replace-regexp-in-string "kyu" "shin" x))
(defun shin-kyu (x) (replace-regexp-in-string "shin" "kyu" x))

(defun shinji-to-kyuji nil
  (interactive)
  (progn 
    (skk-mode -1)
    (skk-save-jisyo)
    (setq lub (list skk-large-jisyo skk-jisyo skk-backup-jisyo))
    (setq newlub (mapcar (function shin-kyu) lub))
    (setq skk-large-jisyo (nth 0 newlub))
    (setq skk-jisyo (nth 1 newlub))
    (setq skk-backup-jisyo (nth 2 newlub))
    (setq skk-cursor-hiragana-color "#FFC43C")
;;;    (setq skk-large-jisyo "~/ldic_kyuji.dic")
;;;    (setq skk-jisyo "~/udic_kyuji.dic")
;;;    (setq skk-backup-jisyo "~/udic_kyuji.dic.BAK")
    (skk-mode 1)))


(defun kyuji-to-shinji nil
  (interactive)
  (progn 
    (skk-mode -1)
    (skk-save-jisyo)
    (setq lub (list skk-large-jisyo skk-jisyo skk-backup-jisyo))
    (setq newlub (mapcar (function kyu-shin) lub))
    (setq skk-large-jisyo (nth 0 newlub))
    (setq skk-jisyo (nth 1 newlub))
    (setq skk-backup-jisyo (nth 2 newlub))
    (setq skk-cursor-hiragana-color "yellow3")
;;;    (setq skk-large-jisyo "~/ldic_shinji.dic")
;;;    (setq skk-jisyo "~/udic_shinji.dic")
;;;    (setq skk-backup-jisyo "~/udic_shinji.dic.BAK")
    (skk-mode 1)))

(defun toggle-jitai nil
  (interactive)
  (cond 
   ((and 
    (equal skk-large-jisyo "~/ldic_shinji.dic")
    (equal skk-jisyo "~/udic_shinji.dic")
    (equal skk-backup-jisyo "~/udic_shinji.dic.BAK"))
   (shinji-to-kyuji))

   ((and 
    (equal skk-large-jisyo "~/ldic_kyuji.dic")
    (equal skk-jisyo "~/udic_kyuji.dic")
    (equal skk-backup-jisyo "~/udic_kyuji.dic.BAK"))
   (kyuji-to-shinji))
   ((t nil))))

(defun toggle-and-print-jitai nil
  (interactive)
  (toggle-jitai)
  (princ skk-large-jisyo))


(defun toggle-skk-kutouten-type nil
  (interactive)
  (cond
   ((equal skk-kutouten-type 'en)
    (setq-default skk-kutouten-type 'jp))
   ((equal skk-kutouten-type 'jp)
    (setq-default skk-kutouten-type 'en))
   ((t nil))))

(defun toggle-and-print-skk-kutouten-type nil
  (interactive)
  (toggle-skk-kutouten-type)
  (princ skk-kutouten-type))
   
   
	  

(defun show-lub nil
  (interactive)
  (setq lub (list skk-large-jisyo skk-jisyo skk-backup-jisyo))
  (princ lub))

(defun skk-hiragana-set nil
  (interactive)
  (cond (skk-katakana
	 (skk-toggle-kana nil))
	(t
	 (skk-kakutei))))

(defun skk-katakana-set nil
  (interactive)
  (cond (skk-katakana
          (lambda))
    (skk-j-mode
      (skk-toggle-kana nil))
    (skk-latin-mode
      (dolist (skk-kakutei (skk-toggle-kana nil))))))

(defun skk-toggle-kana-and-latin nil
  (interactive)
  (cond (skk-latin-mode
          (skk-kakutei))
    (t
      (skk-latin-mode t))))



(setq skk-egg-like-newline t)
(setq skk-henkan-show-candidates-keys '(?a ?o ?e ?u ?h ?t ?n))
(setq skk-rom-kana-rule-list '(
                                ("ca" nil ("カ" . "か"))
                                ("ci" nil ("キ" . "き"))
                                ("cu" nil ("ク" . "く"))
                                ("ce" nil ("ケ" . "け"))
                                ("co" nil ("コ" . "こ"))
                                ("cya" nil ("キャ" . "きゃ"))
                                ("cyu" nil ("キュ" . "きゅ"))
                                ("cye" nil ("キェ" . "きぇ"))
                                ("cyo" nil ("キョ" . "きょ"))
                                ("wi" nil ("ヰ" . "ゐ"))
                                ("we" nil ("ヱ" . "ゑ"))
))



(provide 'skk-init)
