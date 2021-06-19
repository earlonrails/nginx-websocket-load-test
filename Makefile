.PHONY: install clean run

install:
	@docker build -t nginx ./Dockerfile.nginx
	@docker build -t artillery ./Dockerfile.artillery

run:
	kubectl apply -f ./local/kubernetes.yaml

clean:
	@docker stop nginx
	@docker stop artillery
	@docker rm nginx
	@docker rm artillery
