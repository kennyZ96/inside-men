OUTPUT_PATH=output

all: build

build: output
	go build -o $(OUTPUT_PATH)

output:
	mkdir -p $(OUTPUT_PATH)

clean:
	[ -d $(OUTPUT_PATH) ] && rm -r $(OUTPUT_PATH)/*