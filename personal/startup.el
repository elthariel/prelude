;;; startup.el --- Start things
;;; Code:

;; Additional packages to install automatically
(prelude-require-packages
 '(ample-theme
   color-theme-sanityinc-tomorrow
   nyan-mode
   )
 )

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

;; Enable the fancy nyan mode (\o/)
(nyan-mode t)

;;; startup.el ends here
