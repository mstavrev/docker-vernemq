TAG = 2.0.1
REGISTRY = docker.io/mstavrev

all: release

.PHONY: release
release:
	echo "Building docker image of VerneMQ $(TAG)..."
	docker buildx build \
		--no-cache \
		--push \
		--pull \
		--progress plain \
		--build-arg vernemq_version="$(TAG)" \
		-f Dockerfile.alpine \
		-t $(REGISTRY)/vernemq:$(TAG) .
