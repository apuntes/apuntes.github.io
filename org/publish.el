#!/bin/bash
":"; exec emacs -Q  --script "$0" -f main -- "$@" # -*-emacs-lisp-*-
(defun main ()
  (require 'ox-publish)
  (setq org-html-mathjax-options
        '((path "http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML")
          (scale "100")
          (align "center")
          (indent "2em")
          (mathml t)))

  (setq org-html-mathjax-template
        "
<script type=\"text/javascript\" src=\"%PATH\"></script>
<script type=\"text/javascript\">
<!--/*--><![CDATA[/*><!--*/
    MathJax.Hub.Config({
        jax: [\"input/TeX\", \"output/HTML-CSS\"],
        extensions: [\"tex2jax.js\",\"TeX/AMSmath.js\",\"TeX/AMSsymbols.js\",
                     \"TeX/noUndefined.js\", \"[Contrib]/siunitx/siunitx.js\", \"[Contrib]/mhchem/mhchem.js\"],
        tex2jax: {
            inlineMath: [ [\"\\\\(\",\"\\\\)\"] ],
            displayMath: [ ['$$','$$'], [\"\\\\[\",\"\\\\]\"], [\"\\\\begin{displaymath}\",\"\\\\end{displaymath}\"] ],
            skipTags: [\"script\",\"noscript\",\"style\",\"textarea\",\"pre\",\"code\"],
            ignoreClass: \"tex2jax_ignore\",
            processEscapes: false,
            processEnvironments: true,
            preview: \"TeX\"
        },
        TeX: {extensions: [\"AMSmath.js\",\"AMSsymbols.js\",  \"[Contrib]/siunitx/siunitx.js\", \"[Contrib]/mhchem/mhchem.js\"]},
        showProcessingMessages: true,
        displayAlign: \"%ALIGN\",
        displayIndent: \"%INDENT\",

        \"HTML-CSS\": {
             scale: %SCALE,
             availableFonts: [\"STIX\",\"TeX\"],
             preferredFont: \"TeX\",
             webFont: \"TeX\",
             imageFont: \"TeX\",
             showMathMenu: true,
        },
        MMLorHTML: {
             prefer: {
                 MSIE:    \"MML\",
                 Firefox: \"MML\",
                 Opera:   \"HTML\",
                 other:   \"HTML\"
             }
        }
    });
/*]]>*///-->
</script>")

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
