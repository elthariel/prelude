;;; Lta's config for javascript :'()

;; Set indentation to 2 spaces
(setq js-indent-level 2)

;; Some vue-mode related config
(add-hook 'mmm-mode-hook
          (lambda ()
            (set-face-background 'mmm-default-submode-face "#272727")))
