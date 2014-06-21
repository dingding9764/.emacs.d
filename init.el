;; enable ido
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; enable ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; add package melpa
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpha.milkbox.net/pakcages/") t)

;; enable ggtags-mode 
(add-hook 'c-mode-common-hook
	  (lambda ()
	    (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
	      (ggtags-mode 1))))
(add-hook 'dired-mode-hook 'ggtags-mode)
