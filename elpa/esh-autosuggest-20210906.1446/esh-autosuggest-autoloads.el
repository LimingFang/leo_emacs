;;; esh-autosuggest-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "esh-autosuggest" "esh-autosuggest.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from esh-autosuggest.el

(autoload 'esh-autosuggest "esh-autosuggest" "\
`company-mode' backend to provide eshell history suggestion.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

(autoload 'esh-autosuggest-mode "esh-autosuggest" "\
Enable fish-like autosuggestions in eshell.

If called interactively, enable Esh-Autosuggest mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

You can use <right> to select the suggestion. This is
customizable through `esh-autosuggest-active-map'. If
you prefer to use the default value of `company-active-map', you
may set the variable
`esh-autosuggest-use-company-map', though this isn't
recommended as RET and TAB may not work as expected (send input,
trigger completions, respectively) when there is an active
suggestion.

The delay defaults to 0 seconds to emulate fish shell's
instantaneous suggestions, but is customizable with
`esh-autosuggest-delay'.

Note: This assumes you want to use something other than company
for shell completion, e.g. `eshell-pcomplete',
`completion-at-point', or helm-esh-pcomplete, since
`company-active-map', `company-backends', and `company-frontends'
will be locally overriden and company will be used solely for
history autosuggestions.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "esh-autosuggest" '("esh-autosuggest-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; esh-autosuggest-autoloads.el ends here
