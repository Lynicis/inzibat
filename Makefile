dev:
	air

run:
	go run .

build:
	go build .

lint:
	golangci-lint --verbose run .

test:
	go test .

coverage:
	go test -tags=unit -coverprofile=coverage.out -covermode=atomic ./...
	go test -coverprofile coverage.out
	go tool cover -html=coverage.out