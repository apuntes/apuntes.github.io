publicar: imagenes

clean-ltxpng:
	find . -type d -name ltxpng -exec rm -r {} +

org: clean-ltxpng
	./org/publicar-org.el

imagenes: org
	./publicar-imagenes

