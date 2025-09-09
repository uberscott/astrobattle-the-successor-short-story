TAG := "0.0.4"
TAR := "book.tar.gz"
OUt := "book"

clean-tar-gz:
	rm ${TAR}

clean:  clean-tar-gz
	rm -rf ${OUT}

build:
	mdbook build

tar: build
	tar cvf ${TAR} ./${OUT}

