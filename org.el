;; -*- lexical-binding: t -*-
(add-hook 'org-mode-hook (lambda () (setq org-hide-emphasis-markers t)))
;; (add-hook 'org-mode-hook 'visual-line-mode)
;; 将 list - 替换成 ·，和飞书文档一致
(font-lock-add-keywords 'org-mode
                          '(("^ *\\([-]\\) "
                             (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

(use-package org-bullets
  :ensure t
  :hook ((org-mode . (lambda () (org-bullets-mode 1)))
	 )
  )

;; (custom-theme-set-faces
;;  'user
;;  ;; 可变宽度字体用于普通文档显示，等宽字体 mono 等用于 coding
;;  '(variable-pitch ((t (:family "Helvetica" :height 170))))
;;  '(fixed-pitch ((t ( :family "Maple Mono NF" :height 150))))
;;    '(org-block ((t (:inherit fixed-pitch))))
;;    '(org-code ((t (:inherit (shadow fixed-pitch)))))
;;    '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
;;    '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
;;    '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
;;    '(org-property-value ((t (:inherit fixed-pitch))) t)
;;    '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
;;    '(org-tag ((t (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
;; )
