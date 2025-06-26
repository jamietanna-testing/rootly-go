# rootly-go

Go types and API client for Rootly incident management platform, auto-generated from OpenAPI specifications.

## Installation

```bash
go get github.com/rootlyhq/rootly-go
```

## Usage

```go
package main

import (
    "context"
    "fmt"
    "net/http"
    
    "github.com/rootlyhq/rootly-go"
)

func main() {
    // Create a new client
    client, err := rootly.NewClient("https://api.rootly.com", rootly.WithRequestEditorFn(
        func(ctx context.Context, req *http.Request) error {
            req.Header.Set("Authorization", "Bearer YOUR_API_TOKEN")
            return nil
        },
    ))
    if err != nil {
        panic(err)
    }
    
    // Use the client to make API calls
    ctx := context.Background()
    // Example: List incidents
    // response, err := client.GetIncidents(ctx, &rootly.GetIncidentsParams{})
}
```

## Development

### Prerequisites

- Go 1.21 or later
- [oapi-codegen](https://github.com/oapi-codegen/oapi-codegen) v2

### Generating the Code

1. **Fetch latest API specification**: `make fetch-spec`
2. **Generate Go code**: `make gen`
3. **Complete workflow**: `make fetch-spec gen`

### Building and Testing

- **Build**: `make build` or `go build ./...`
- **Test**: `make test` or `go test ./...`

## Generated Code Structure

- **Types**: Comprehensive struct definitions for all Rootly API entities
- **Client**: HTTP client implementing all API operations
- **Constants**: Enum values and configuration constants
- **Response handling**: Structured response types with error handling

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for development guidelines.
