start:
	docker run -v $(CURDIR)/src:/documents --name honkit-daemon --rm -h honkit-daemon -p 4000:4000 -d yukatayu/honkit_env_v1:v1.1 serve

stop:
	docker stop honkit-daemon

build:
	docker run -v $(CURDIR)/src:/documents --rm -h honkit yukatayu/honkit_env_v1:v1.1 build

pdf:
	docker run -v $(CURDIR)/src:/documents --rm -h honkit yukatayu/honkit_env_v1:v1.1 pdf

