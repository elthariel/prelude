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

;; Disable autosave
(setq prelude-auto-save nil)

;; Default font size
(set-face-attribute 'default nil :font
                    "-*-Inconsolata-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")
(set-face-attribute 'default nil :height 150)

; Random shortcuts
;; Quick access to query replace
(global-set-key (kbd "<f2>") 'query-replace)
;; My undo/redo
(global-set-key (kbd "C--") 'undo-tree-undo)
(global-set-key (kbd "M--") 'undo-tree-redo)

;; Clang format
(prelude-require-packages
 '(clang-format
   ))
(global-set-key [M-tab] 'clang-format-region)

;; Let's disable those FUCKING ANNOYING smartparens shortcuts
(custom-set-variables
 '(sp-override-key-bindings (quote (("C-<right>") ("C-<left>")))))

;;; code.el ends here
