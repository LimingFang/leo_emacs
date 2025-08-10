;; -*- lexical-binding: t -*-
(add-hook 'emacs-startup-hook (lambda () (text-scale-set -1)))
(add-hook 'emacs-startup-hook (lambda () (tool-bar-mode -1)))
(add-hook 'emacs-startup-hook (lambda () (scroll-bar-mode -1)))
(add-hook 'emacs-startup-hook (lambda () (menu-bar-mode -1)))

(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
 	("melpa" .  "https://melpa.org/packages/")))

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq inhibit-splash-screen t)
;; ;; ;; hide tool bar
(setq column-number-mode t)
;; ;; ;; set font size
(set-face-attribute 'default nil :height 150)
(setq dired-listing-switches "-alh")

(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :custom
  (doom-modeline-buffer-encoding nil)
  )

(use-package nerd-icons
  :ensure t
  :if (display-graphic-p)
  )

(when-let* (window-system)
  (let* ((variable-tuple
          (cond ((x-family-fonts "Maple Mono NF CN")    '(:family "Maple Mono NF CN"))
		(nil (warn "Cannot find a Maple Font."))))
	 (base-font-color     (face-foreground 'default nil 'default))
	 (headline           `(:inherit default :weight bold :foreground ,base-font-color)))

    (custom-theme-set-faces
     'user
     `(org-level-8 ((t (,@headline ,@variable-tuple))))
     `(org-level-7 ((t (,@headline ,@variable-tuple))))
     `(org-level-6 ((t (,@headline ,@variable-tuple))))
     `(org-level-5 ((t (,@headline ,@variable-tuple))))
     `(org-level-4 ((t (,@headline ,@variable-tuple :height 1.1))))
     `(org-level-3 ((t (,@headline ,@variable-tuple :height 1.25))))
     `(org-level-2 ((t (,@headline ,@variable-tuple :height 1.5))))
     `(org-level-1 ((t (,@headline ,@variable-tuple :height 1.75))))
     `(org-document-title ((t (,@headline ,@variable-tuple :height 2.0 :underline nil))))))
  )
