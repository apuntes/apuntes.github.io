publicar: imagenes

clean-ltxpng:
	find . -type d -name ltxpng -exec rm -r {} +

org: clean-ltxpng
	./elisp/publicar-org.el

imagenes: org
	./publicar-imagenes

