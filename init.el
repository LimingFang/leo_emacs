;; -*- lexical-binding: t -*-

(add-to-list 'load-path "~/.emacs.d/lisp/")
(load-file "~/.emacs.d/custom.el")
(load-file "~/.emacs.d/prog.el")
(load-file "~/.emacs.d/key.el")
(when (window-system)
  (load-file "~/.emacs.d/org.el")
  )
