TAG     := chickenmaru/mininet
NAME    := mininet
VERSION := 1.0

all: build

build:
	git clone https://github.com/frankzhao/mininet
	sed -i -e 's/sudo //g' mininet/util/install.sh
	@docker build -t $(TAG):$(VERSION) .

run:
	@docker run -it --privileged --publish-all=true \
		-d --name $(NAME) $(TAG):$(VERSION) init_ovs

shell:
	@docker exec -it $(NAME) bash
