(add-hook
    'ruby-mode-hook
    '(lambda ()
         (robe-mode)
         (robe-start)))

(eval-after-load 'company
  '(push 'company-robe company-backends))
