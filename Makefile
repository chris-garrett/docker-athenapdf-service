
VERSION=20210414
IMAGE_NAME=chrisgarrett/athenapdf-service

build:
	VERSION=${VERSION} envsubst < ./templates/Dockerfile.template > Dockerfile
	VERSION=${VERSION} envsubst < ./templates/README.md.template > README.md

	docker build --rm=true -t ${IMAGE_NAME}:${VERSION} .

bash:
	docker run --rm -it ${IMAGE_NAME}:${VERSION} bash

run:
	docker run --rm -it -p 7080:8080 ${IMAGE_NAME}:${VERSION}

test:
	curl \
		-X POST \
		--form "file=@test.html;filename=test.html" \
		--header "authorization:arachnys-weaver" \
		"http://localhost:7080/convert?auth=arachnys-weaver&ext=html" \
		> test.pdf
