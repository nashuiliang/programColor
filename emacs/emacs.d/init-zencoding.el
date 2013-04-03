(add-to-list 'load-path "/home/lygu/.emacs.d/site-lisp/zencoding-mode/")
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)
(provide 'init-zencoding)
