default:	docker

docker:
	docker build -t pragsmike/hosting-docs-builder builder

test:
	docker run --rm -v `pwd`/target:/target -v `pwd`/example:/src pragsmike/hosting-docs-builder -f Makefile-docs

clean:
	rm -rf target
