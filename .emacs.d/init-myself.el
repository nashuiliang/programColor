
;;设置缩进
(setq indent-tabs-mode nil)
(setq tab-width 4)
(global-set-key (kbd "RET") 'newline-and-indent)

;;设置透明度
(set-frame-parameter (selected-frame) 'alpha (list 85 50))
(add-to-list 'default-frame-alist (cons 'alpha (list 85 50)))

;;显示行号
;;(require 'linum)
;;(global-linum-mode t)

;;括号自动配对
;;自动补全括号
(defun my-common-mode-auto-pair () 
(interactive) 
(make-local-variable 'skeleton-pair-alist) 
(setq skeleton-pair-alist '( 
(? ? _ "''")
(? ? _ """")
(? ? _ "()")
(? ? _ "[]")
(?{ \n > _ \n ?} >)))
(setq skeleton-pair t)
(local-set-key (kbd "(") 'skeleton-pair-insert-maybe) 
(local-set-key (kbd "\"") 'skeleton-pair-insert-maybe) 
(local-set-key (kbd "{") 'skeleton-pair-insert-maybe) 
(local-set-key (kbd "\'") 'skeleton-pair-insert-maybe) 
(local-set-key (kbd "[") 'skeleton-pair-insert-maybe)) 

(add-hook 'c-mode-hook 'my-common-mode-auto-pair) 
(add-hook 'c++-mode-hook 'my-common-mode-auto-pair) 


;; 填入大中小括号，双单引号的匹配
;; 详细格式可以参照C-h f skeleton-pair-alist  
(setq skeleton-pair-alist  
      '((?\" _ "\"" >)
	(?\' _ "\'" >)
	(?\( _ ")" >)
	(?\[ _ "]" >)
	(?\{ _ "}" >)))

(setq skeleton-pair t)

;; 绑定全局键值
;; 也可以绑定单独到某个mode，比如cc-mode (define-key cc-mode-map (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "(")  'skeleton-pair-insert-maybe)
(global-set-key (kbd "{")  'skeleton-pair-insert-maybe)
(global-set-key (kbd "\'") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[")  'skeleton-pair-insert-maybe)

;;设置标题栏显示文件的完整路径名 
(setq frame-title-format 
'("%S" (buffer-file-name "%f" 
        (dired-directory dired-directory "%b"))))

;;语法高亮
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)


(add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes


(desktop-save-mode 1)


(provide 'init-myself)


