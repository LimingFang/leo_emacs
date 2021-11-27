;;; fanyi-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "fanyi" "fanyi.el" (0 0 0 0))
;;; Generated autoloads from fanyi.el

(autoload 'fanyi-dwim "fanyi" "\
Translate WORD.

\(fn WORD)" t nil)

(autoload 'fanyi-dwim2 "fanyi" "\
A more dwim version of `fanyi-dwim'. No prompt if the region is
active or `thing-at-point' return non-nil." t nil)

(autoload 'fanyi-from-history "fanyi" "\
Invoke `fanyi-dwim' from history." t nil)

(autoload 'fanyi-bookmark-jump "fanyi" "\
Default bookmark handler for fanyi.

\(fn BOOKMARK)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "fanyi" '("fanyi-")))

;;;***

;;;### (autoloads nil "fanyi-ah" "fanyi-ah.el" (0 0 0 0))
;;; Generated autoloads from fanyi-ah.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "fanyi-ah" '("fanyi-ah-")))

;;;***

;;;### (autoloads nil "fanyi-base" "fanyi-base.el" (0 0 0 0))
;;; Generated autoloads from fanyi-base.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "fanyi-base" '("fanyi-")))

;;;***

;;;### (autoloads nil "fanyi-etymon" "fanyi-etymon.el" (0 0 0 0))
;;; Generated autoloads from fanyi-etymon.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "fanyi-etymon" '("fanyi-etymon-")))

;;;***

;;;### (autoloads nil "fanyi-haici" "fanyi-haici.el" (0 0 0 0))
;;; Generated autoloads from fanyi-haici.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "fanyi-haici" '("fanyi-haici-")))

;;;***

;;;### (autoloads nil "fanyi-libre" "fanyi-libre.el" (0 0 0 0))
;;; Generated autoloads from fanyi-libre.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "fanyi-libre" '("fanyi-libre-")))

;;;***

;;;### (autoloads nil "fanyi-longman" "fanyi-longman.el" (0 0 0 0))
;;; Generated autoloads from fanyi-longman.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "fanyi-longman" '("fanyi-longman-")))

;;;***

;;;### (autoloads nil "fanyi-youdao-thesaurus" "fanyi-youdao-thesaurus.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from fanyi-youdao-thesaurus.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "fanyi-youdao-thesaurus" '("fanyi-youdao-thesaurus-")))

;;;***

;;;### (autoloads nil "ol-fanyi" "ol-fanyi.el" (0 0 0 0))
;;; Generated autoloads from ol-fanyi.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ol-fanyi" '("fanyi-org-")))

;;;***

;;;### (autoloads nil nil ("fanyi-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; fanyi-autoloads.el ends here
