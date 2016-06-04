TEST?=$$(go list ./... | grep -v /vendor/)
VETARGS?=-all
GOFMT_FILES?=$$(find . -name '*.go' | grep -v vendor)


default:
	go build -o terraform-provider-dummy

run:
	./terraform-provider-dummy
clean:
	rm terraform-provider-dummy
