VERSION = 2.0.1
REGISTRY = docker.io/mstavrev

all: release

.PHONY: release
release:
	echo "Building docker image of VerneMQ $(VERSION)-alpine..."
	docker buildx build \
		--no-cache \
		--push \
		--pull \
		--progress plain \
		--build-arg vernemq_version="$(VERSION)" \
		-f Dockerfile.alpine \
		-t $(REGISTRY)/vernemq:$(VERSION)-alpine .
