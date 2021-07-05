OUTPUT_PATH=output

all: build

build_image: clean output fmt
	GOOS=linux GOARCH=amd64 go build -o $(OUTPUT_PATH)/inside-men-amd64-debian

build: clean output fmt
	go build -o $(OUTPUT_PATH)

output:
	mkdir -p $(OUTPUT_PATH)

fmt:
	go fmt ./...

clean:
	[ -d $(OUTPUT_PATH) ] && rm -r $(OUTPUT_PATH)/*