(defun publicar ()
  (interactive)
  (load-file "~/apuntes.github.io/org/publish.el"))

(global-set-key (kbd "C-c p") 'publicar)
