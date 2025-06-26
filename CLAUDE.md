# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository contains Go types and API client for the Rootly incident management platform, auto-generated from OpenAPI/Swagger specifications. The generated code provides comprehensive type definitions and HTTP client functionality for interacting with the Rootly API.

## Development Commands

### Code Generation
- `make fetch-spec` - Downloads the latest swagger.json from Rootly's S3 bucket
- `make gen` - Generates Go types and client code from the OpenAPI specification using oapi-codegen
- `make fetch-spec gen` - Full regeneration workflow (recommended)

### Build and Test
- `make build` - Builds all Go packages in the repository
- `make test` - Runs all tests
- `go build ./...` - Alternative build command
- `go test ./...` - Alternative test command

## Architecture

### Generated Code Structure
The main generated file `schema.gen.go` (~110k lines) contains:
- **Type definitions**: Comprehensive struct definitions for all Rootly API entities (ActionItems, Alerts, Incidents, etc.)
- **Constants**: Enum values and configuration constants for API parameters
- **Client interface**: `ClientInterface` defining all API operations
- **HTTP client**: `Client` struct implementing the interface with standard HTTP transport
- **Response client**: `ClientWithResponses` providing structured response handling

### Code Generation Configuration
- **Generator**: Uses `oapi-codegen` v2 with configuration in `config.yaml`
- **Tool isolation**: Code generation tools are managed in separate `tools/` module to avoid dependency pollution
- **Output options**: Configured with `skip-prune: true` to generate all types regardless of usage

### Manual Post-Processing
After code generation, duplicates must be manually removed from the generated file. This is typically done using the VS Code Go extension and requires manual verification to ensure correctness.

## Key Files
- `generate.go` - Contains the go:generate directive for code generation
- `config.yaml` - oapi-codegen configuration (package name, output file, generation options)
- `swagger.json` - OpenAPI specification downloaded from Rootly
- `schema.gen.go` - Generated Go types and client (do not edit manually)
- `tools/` - Isolated module for build-time dependencies