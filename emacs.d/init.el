(require 'package)

(setq viper-mode t)
(viper-mode)

(global-set-key (kbd "C-c c") 'compile)
(global-set-key (kbd "C-c n") 'next-error)
(global-set-key (kbd "C-c p") 'prev-error)
(global-set-key (kbd "C-c k") 'kill-compilation)


(copilot-mode)
(define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)
(define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion)

(global-set-key (kbd "<tab>") 'copilot-accept-completion)
(global-set-key (kbd "TAB") 'copilot-accept-completion)
