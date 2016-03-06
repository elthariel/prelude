;;; cxx.el --- Lta's tweaks
;;; Commentary:

;;; Code:


(defun c-mode-defaults ()
  (

  (setq c-default-style "bsd"
        c-basic-offset 2)
  (c-set-offset 'substatement-open 0))

(setq prelude-c-mode-common-hook
      '(c-mode-defaults))

;;; cxx.el ends here
