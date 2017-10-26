#!/bin/bash
":"; exec emacs -Q  --script "$0" -f main -- "$@" # -*-emacs-lisp-*-
(defun main ()
  (require 'ox-publish)
  (setq org-publish-project-alist
        `(("apuntes"
           :with-author nil
           :with-toc nil
           ;:with-creator nil
           :base-directory "~/apuntes.github.io/org"
           :recursive t
           :publishing-directory "~/apuntes.github.io/"
           :publishing-function org-html-publish-to-html)))
  
  (org-publish "apuntes" t)        )

(main)
