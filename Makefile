OUTPUT_PATH=output

all: build

build_image: output
	GOOS=linux GOARCH=amd64 go build -o $(OUTPUT_PATH)/inside-men-amd64-debian

build: output
	go build -o $(OUTPUT_PATH)

output:
	mkdir -p $(OUTPUT_PATH)

clean:
	[ -d $(OUTPUT_PATH) ] && rm -r $(OUTPUT_PATH)/*