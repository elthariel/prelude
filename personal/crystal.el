;;; crystal.el --- Crystal editing config

;;; Commentary:
;; Crystal language specific things

;;; Code:
(add-to-list 'load-path (expand-file-name "~/code/elisp/cr-mode"))

;; Preload cedet from git to get a recent version
(load-file (concat prelude-vendor-dir "/cr-mode/cr-mode.el"))

; Delete me
(eval-after-load 're-builder '(setq reb-re-syntax 'rx))
;;; crystal.el ends here
