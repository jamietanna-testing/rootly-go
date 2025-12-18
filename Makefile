build:
	go build ./...

test:
	go test ./...

fetch-spec:
	curl -fs https://rootly-heroku.s3.amazonaws.com/swagger/v1/swagger.json -o swagger.json

gen:
	go generate ./...
	@$(MAKE) dedup

dedup:
	@awk 'BEGIN { seen_id0 = 0; seen_id1 = 0 } \
		/^\/\/ Id0 defines/ { if (seen_id0++ > 0) { getline; next } } \
		/^\/\/ Id1 defines/ { if (seen_id1++ > 0) { getline; next } } \
		{ print }' schema.gen.go > schema.gen.go.tmp && mv schema.gen.go.tmp schema.gen.go
