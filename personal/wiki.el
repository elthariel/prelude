;;; wiki.el --- org-wiki mode config

;;; Commentary:
;; Configure the various org-wiki features, including wiki paths

;;; Code:

;;
;; Load the org-wiki mode
;;
(require 'org-wiki)

;;
;; Setup the (default) wiki path(s)
;;
(setq org-wiki-location-list
      '(
        "~/txt/wiki"    ;; First wiki (root directory) is the default.
        ))
;; Initialize first org-wiki-directory or default org-wiki
(setq org-wiki-location (car org-wiki-location-list))
