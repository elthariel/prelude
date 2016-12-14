;;; go.el --- Lta's tweaks
;;; Commentary:
;;; I hate this tab thing with go -_-
;;; Code:

; Let's reduce the tab size and save poor pixels
(add-hook 'go-mode-hook (lambda ()
                           (setq tab-width 4)))

;;; go.el ends here
