start:
	cp src/_setting/setting_html.json src/book.json
	docker run -v $(CURDIR)/src:/documents --name honkit-daemon --rm -h honkit-daemon -p 4000:4000 -d yukatayu/honkit_env_v1:v1.2 serve

stop:
	docker stop honkit-daemon

build:
	cp src/_setting/setting_html.json src/book.json
	docker run -v $(CURDIR)/src:/documents --rm -h honkit yukatayu/honkit_env_v1:v1.2 build

pdf:
	cp src/_setting/setting_pdf.json src/book.json
	docker run -v $(CURDIR)/src:/documents --rm -h honkit yukatayu/honkit_env_v1:v1.2 pdf
	cp src/_setting/setting_html.json src/book.json

