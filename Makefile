TAG  := frankzhao/docker-mininet
NAME := mininet

all: build

build:
	@docker build -t $(TAG) .

run:
	@docker run -it --privileged --publish-all=true \
		-d --name $(NAME) $(TAG) init_ovs

shell:
	@docker exec -it $(NAME) bash