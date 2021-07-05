OUTPUT_PATH=output

all: build

build_linux_amd64: clean output fmt
	GOOS=linux GOARCH=amd64 go build -o $(OUTPUT_PATH)/inside-men-amd64-debian

build: clean output fmt
	go build -o $(OUTPUT_PATH)

output:
	mkdir -p $(OUTPUT_PATH)

fmt:
	go fmt ./...

clean:
	[ -d $(OUTPUT_PATH) ] && rm -r $(OUTPUT_PATH)/*

build_image: build_linux_amd64
	docker build . -t inside-men

deploy: build_image
	([ `docker ps -a --format inside-men` ] && docker stop inside-men ) || true
	([ `docker ps -a --format inside-men` ] && docker rm inside-men) || true
	docker run --name inside-men -p 8080:8080 -it inside-men
