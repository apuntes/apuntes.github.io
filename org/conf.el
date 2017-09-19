(require 'ox-publish)

(setq org-publish-project-alist
      `(("apuntes"
         :base-directory "~/apuntes.github.io/org"
         :recursive t
         :publishing-directory "~/apuntes.github.io/"
         :publishing-function org-html-publish-to-html)))

;(org-publish-current-project)        
