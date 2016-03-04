;;; code.el --- Code editing config

;;; Commentary:
;; Tweaks and features related to programming in general

;;; Code:

;; Comment current line or region
(defun toggle-comment ()
  (interactive)
  (let ((start (line-beginning-position))
        (end (line-end-position)))
    (when (or (not transient-mark-mode) (region-active-p))
      (setq start (save-excursion
                    (goto-char (region-beginning))
                    (beginning-of-line)
                    (point))
            end (save-excursion
                  (goto-char (region-end))
                  (end-of-line)
                  (point))))
    (comment-or-uncomment-region start end)))
(global-set-key (kbd "C-x ;") 'toggle-comment)


;; Random shortcuts
(global-set-key (kbd "<f2>") 'query-replace)

;;; code.el ends here
