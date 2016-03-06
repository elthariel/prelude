;;; complete.el -- Autocomplete and reference search

;;; Commentary:

;; Configure stuff like company, rtags && stuff


;;; Code:

;;--------------- Config ------------------
(setq lta-include-path
      '((concat "/Applications/Xcode.app/Contents/Developer/Platforms/"
                "MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/usr/include")
        "/usr/local/include/boost"
        ))

;;------------ Install stuff --------------
(prelude-require-packages
 '(helm-gtags
   function-args
   rtags
   company-c-headers)
 )

;;---------------- Helm -------------------

;;---------------- Rtags ------------------

(require 'flycheck-rtags)
(defun lta-rtags-setup ()
  (progn
    (rtags-start-process-unless-running)
    (flycheck-select-checker 'rtags)
    ))

(add-hook 'c-mode-common-hook 'lta-rtags-setup)
(add-hook 'c++-mode-common-hook 'lta-rtags-setup)

; Enable completion
(setq rtags-autostart-diagnostics t)
(setq rtags-completions-enabled t)
(rtags-diagnostics t)

; Symbol jump and related
(setq rtags-use-helm t)
(setq rtags-tooltips-enabled t)
(setq rtags-rdm-includes lta-include-path)
;; (setq rtags-jump-to-first-match nil)

;; Bindings
(rtags-enable-standard-keybindings c-mode-base-map (kbd "C-."))
(define-key c-mode-base-map (kbd "<C-tab>") (function company-complete))

;;--------------- Company -----------------

(setq company-backends (delete 'company-semantic company-backends))
(setq company-backends (delete 'company-clang company-backends))
(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-backends 'company-rtags)

;;; complete.el ends here
