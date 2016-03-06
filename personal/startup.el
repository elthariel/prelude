;;; startup.el --- Start things
;;; Code:

; Graphical tweaks
;; Start fullscreen
;; Disable scrollbar
(if window-system
    (progn
      (toggle-frame-fullscreen)
      (scroll-bar-mode -1)
      )
  )

;; Start splitted
(progn
  (split-window-right)
;  (windmove-right)
;  (split-window-below)
;  (windmove-left)
  )

;; Let's start emacs server if we're the first instance
(progn
  (load "server")
  (unless (server-running-p) (server-start)))

;; Disable IDO crappy shit
(setq ido-use-filename-at-point nil)

;;; startup.el ends here
