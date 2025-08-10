;; -*- lexical-binding: t -*-
(global-set-key (kbd "C-c b") 'eval-buffer)
(global-set-key (kbd "C-c C-;") 'open-init-el)
(global-set-key (kbd "C-c t") 'ansi-term)

(defun remember-init ()
  "Remember current position and setup."
  (interactive)
  (point-to-register 8)
  (message "Have remember one position"))

(defun remember-jump ()
  "Jump to latest position and setup."
  (interactive)
  (let ((tmp (point-marker)))
    (jump-to-register 8)
    (set-register 8 tmp))
  (message "Have back to remember position"))
(global-set-key (kbd "C-c i") 'remember-init)
(global-set-key (kbd "C-c j") 'remember-jump)

(use-package winum
  :ensure t
  :init
  (setq winum-keymap
    (let ((map (make-sparse-keymap)))
      (define-key map (kbd "M-1") 'winum-select-window-1)
      (define-key map (kbd "M-2") 'winum-select-window-2)
      (define-key map (kbd "M-3") 'winum-select-window-3)
      (define-key map (kbd "M-4") 'winum-select-window-4)
      (define-key map (kbd "s-1") 'winum-select-window-1)
      (define-key map (kbd "s-2") 'winum-select-window-2)
      (define-key map (kbd "s-3") 'winum-select-window-3)
      (define-key map (kbd "s-4") 'winum-select-window-4)
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

(use-package vertico
  :ensure t
  :init
  (vertico-mode)
  )

(use-package orderless
  :ensure t
  :config
  (setq completion-styles '(orderless))
  )

(use-package marginalia
  :ensure t
  :init
  (marginalia-mode)
  )

(use-package consult
  :ensure  t
  :config
  (global-set-key (kbd "C-s") 'consult-line)
  )
