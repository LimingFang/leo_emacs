;; (setq org-log-done 'note)
(setq org-agenda-files '("~/Dropbox/org/" "~/Dropbox/org/storage/"  "~/Dropbox/org/cppcon/" "~/Dropbox/org/rcore/" "~/Dropbox/org/cpp" "~/Dropbox/org/db" "~/Dropbox/org/emacs" "~/Dropbox/org/rust"))

;; org-mode 界面快捷键
(global-set-key (kbd "C-c a") (lambda () (interactive) (org-agenda) (delete-other-windows)))

;; ;; ;; eval-buffer key
(global-set-key (kbd "C-c b") 'eval-buffer)

;; ;; ;; hide tool bar
(tool-bar-mode -1)

;; ;; ;; set font size
(set-face-attribute 'default nil :height 165)

;; ;; ;; set package-archive
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
 	("melpa" .  "https://melpa.org/packages/")))

(setq org-columns-default-format "%25ITEM %TODO %3PRIORITY %TAGS %17Effort(Estimated Effort){:} %CLOCKSUM")

			  


