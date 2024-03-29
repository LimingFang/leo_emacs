;; CAUTION: dir path,dap-mode url.

(defun open-init-el ()
  "Open the init.el"
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(defun buffer-face-variable()
  "Sets jetbrain-mono font in current buffer"
  (interactive)
  (setq buffer-face-mode-face '(:family "JetBrains Mono" :height 170))
  (buffer-face-mode)
  )

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq inhibit-splash-screen t)

(add-hook 'rust-mode-hook 'buffer-face-variable)
(add-hook 'c++-mode-hook 'buffer-face-variable)
;; (add-hook 'org-mode-hook #'valign-mode)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "/Users/fangliming/.emacs.d/lisp/")
(load-file "~/.emacs.d/custom.el")
(load-file "~/.emacs.d/perl.el")
(load-file "~/.emacs.d/scheme.el")
(load "~/.emacs.d/org.el")
(exec-path-from-shell-initialize)

(global-set-key (kbd "C-c C-;") 'open-init-el)
(global-set-key (kbd "C-c t") 'ansi-term)

(add-hook 'sh-mode-hook 'format-all-mode)
(add-hook 'awk-mode-hook 'format-all-mode)
(add-hook 'cperl-mode-hook 'format-all-mode)
(use-package format-all
  :ensure t
  :bind (("C-c C-c C-f"  . format-all-buffer))
  )

(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize)
  )

(use-package hackernews
  :ensure t
  )

(use-package winum
  :ensure t
  :init
  (setq winum-keymap
    (let ((map (make-sparse-keymap)))
      (define-key map (kbd "M-1") 'winum-select-window-1)
      (define-key map (kbd "M-2") 'winum-select-window-2)
      (define-key map (kbd "M-3") 'winum-select-window-3)
      (define-key map (kbd "M-4") 'winum-select-window-4)
      map))
  :config
  (winum-mode)
  )

(use-package multiple-cursors
  ;; QuickStart
  ;; First <C-@> mark a line, then use <C->> or <C-<> add/delete lines region
  ;; at last edit.
  :ensure t
  :bind (("C-x C-m C-c"  . mc/edit-lines)
	 ("C->" . mc/mark-next-like-this)
	 ("C-<" . mc/mark-previous-like-this)
	 ("C-c C-<" . mc/mark-all-like-this))
  )

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :bind-keymap
  ("C-c l" . lsp-command-map)
  :init
  (global-unset-key (kbd "C-'"))
  (setq lsp-clients-clangd-executable "/opt/homebrew/opt/llvm/bin/clangd")
  (bind-key "C-c ." 'lsp)
  (use-package lsp-ui
    :custom
    (lsp-ui-sideline-enable nil)
    (lsp-ui-doc-enable nil)
    (lsp-ui-doc-show-with-mouse nil)
    (lsp-ui-peek-enable t)
    (lsp-ui-imenu-enable t)
    (lsp-ui-imenu-buffer-position 'left)
    (lsp-ui-imenu-kind-position 'left)
    (lsp-ui-imenu-auto-refresh t)
    (lsp-ui-imenu-refresh-delay 2.0)
    (lsp-ui-imenu-window-width 80)
    :config
    (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
    (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
    :bind
    ("C-c i" . lsp-ui-imenu)
    )
  (setq lsp-keymap-prefix "C-c l")
  :custom
  ;;  (lsp-enable-links nil)
  (lsp-diagnostics--flycheck-enabled t)
  (lsp-enable-snippet nil)
  (lsp-clients-clangd-args
   '("-j=4" "--background-index" "--header-insertion-decorators=0" "--compile-commands-dir=build"))
  (company-idle-delay 0.1)
  (gc-cons-threshold 300000000)
  (read-process-output-max 3145728)
  (lsp-log-io nil)
  (lsp-diagnostics-provider :flycheck)
  (lsp-rust-analyzer-cargo-all-targets nil)
  :hook
  ((c-mode . lsp-deferred)
   (c++-mode . lsp-deferred)
   (rust-mode . lsp-deferred)
   ))

;; (use-package projectile
;;   :ensure t
;;   :config
;;   (projectile-mode +1)
;;   (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;;   :custom
;;   (projectile-completion-system 'ivy)
;;   )

(use-package flycheck
  :ensure t
  ;; turn on flycheck mode when editing c/c++
  :hook ((c++-mode . flycheck-mode)
	 (c-mode . flycheck-mode)
	 (cperl-mode-hook . flycheck-mode)
  )

(use-package ivy
  :ensure t
  :init
  (use-package avy
    :ensure t
    :config
    (use-package org
      :config
      (unbind-key "C-'" org-mode-map)
      )
    (global-set-key (kbd "C-'") 'avy-goto-char-timer)
    (global-set-key (kbd "M-g m") 'avy-move-region)
    (global-set-key (kbd "M-g c") 'avy-copy-region)
    )
  (use-package counsel
    :ensure t
    :config
    (counsel-mode 1)
    )
  (use-package swiper
    :ensure t
    )
  (global-set-key (kbd "C-s") 'swiper-isearch)
  (global-set-key (kbd "C-r") 'swiper-isearch-backward)
  :config
  (ivy-mode 1)
  :custom
  (ivy-use-virtual-buffers t)
  (ivy-count-format "(%d/%d) ")
  (ivy-height 15)
  )

(use-package toml-mode :ensure)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(lua-mode lsp-mode dap-mode golden-ratio lsp-ui zenburn-theme github-theme vs-light-theme load-theme-buffer-local slime projectile hackernews valign atom-one-dark-theme darcula-theme magit ox-hugo rust-mode counsel swiper ivy-avy ivy posframe cmake-mode company flycheck exec-path-from-shell which-key use-package))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:weight normal :height 170 :width normal :foundry "nil" :family "JetBrains Mono")))))
