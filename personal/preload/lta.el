;;; lta.el --- Lta's theme settings

;;; Commentary:
;; Configuring prelude to my taste

;;; Code:

;; Tomorrow neat theme:
(setq prelude-theme 'sanityinc-tomorrow-night)

;; Disabling shitty spellcheck
;;(setq prelude-flyspell nil)

;; Fuck that shit
(setq prelude-guru nil)

;; Preload cedet from git to get a recent version
(load-file (concat vendor-nopath-dir "/cedet/cedet-devel-load.el"))
(load-file (concat vendor-nopath-dir "/cedet/contrib/cedet-contrib-load.el"))

;;; lta.el ends here
