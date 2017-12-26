;; https://qiita.com/syohex/items/8d21d7422f14e9b53b17

(global-company-mode +1)

;; 自動補完を offにしたい場合は, company-idle-delayを nilに設定する
;; auto-completeでいうところの ac-auto-start にあたる.
(custom-set-variables
 '(company-idle-delay nil))

(company-quickhelp-mode 1)

(provide 'company-mode-init)
