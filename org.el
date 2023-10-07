(defun open-main-org ()
  "Open main org file"
  (interactive)
  (find-file "~/Dropbox/org/readme.org"))

(setq org-agenda-log-mode-items '(clock closed))
(setq org-image-actual-width nil)
(setq org-refile-allow-creating-parent-nodes t)
(setq org-agenda-files '("~/Dropbox/org/inbox.org"
			 "~/Dropbox/org/work_life.org"
			 "~/Dropbox/org/repeaters.org"
			 "~/Dropbox/org/projects.org"
			 "~/Dropbox/org/"
			 "~/Dropbox/org/storage/"
			 "~/Dropbox/org/os/"
			 "~/Dropbox/org/utility/"
			 "~/Dropbox/org/cpp"
			 "~/Dropbox/org/db"
			 "~/Dropbox/org/emacs"
			 "~/Dropbox/org/rust"))
(setq org-refile-targets '((nil :maxlevel . 9)
			   (org-agenda-files . (:maxlevel . 6))))
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "DOING(g)" "REVIEWING(r)" "|"  "DONE(d)"))))
(setq org-capture-templates
     '(("t" "Todo" entry (file "~/Dropbox/org/inbox.org")
        "* TODO %?\n  %i\n  %a")))
(setq org-outline-path-complete-in-steps nil)         ; Refile in a single go
(setq org-refile-use-outline-path 'file)   
(setq org-default-notes-file "~/Dropbox/org/work_life.org")
(setq org-export-backends '(ascii html icalendar latex md odt))
(setq org-display-remote-inline-images 'download)
(setq org-archive-location "~/Dropbox/org/archive/archive.org::* From %s")

(global-set-key (kbd "C-c C-;") 'open-init-el)
(global-set-key (kbd "C-c o") 'open-main-org)
(global-set-key (kbd "C-c c") 'org-capture)

;; action when start up
(org-agenda-list)
(delete-other-windows)

(require 'org-bars)
(add-hook 'org-mode-hook #'org-bars-mode)
