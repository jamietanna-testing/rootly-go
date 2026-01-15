# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v0.5.0] - 2016-01-15

### Added

- Added `Meta` struct for pagination support 
- Added `ISNOT` condition for workflow tasks via SDK.


### Fixed 

- Fixed `Shift` struct for correct response type 
- Fixed required and optional types for Dashboard Params. 
- Fixed LCR required and optional params.

## [Unreleased]

## [v0.4.0] - 2026-01-06

### Added
- Add `Meta` struct for pagination support (`CurrentPage`, `NextPage`, `PrevPage`, `TotalCount`, `TotalPages`)
- Add `Meta` field to list response types for pagination metadata
- Add `ShortId` field to `Alert` type for human-readable short identifiers
- Add `StartedAt` and `EndedAt` fields to `Alert` type for alert timing

## [v0.3.0] - 2026-01-05

### Added
- Add `MutedServiceIds` field to `Incident`, `NewIncident`, and `UpdateIncident` types for muting alerts during maintenance windows
- Add `Labels` union type support for `Alert`, `NewAlert`, and `UpdateAlert` (string, float32, or bool values)
- Add granular permissions to `OnCallRole` types:
  - `AlertFieldsPermissions`
  - `AlertGroupsPermissions`
  - `AlertRoutingRulesPermissions`
  - `OnCallReadinessReportPermissions`
  - `OnCallRolesPermissions`
  - `ScheduleOverridePermissions`
  - `SchedulesPermissions`
  - `ServicesPermissions`

### Changed
- Change `VoicemailGreeting` field in `LiveCallRouter` from optional to required

## [v0.2.0] - 2025-12-18

### Added
- Add `nullable-type: true` configuration for oapi-codegen
- Add `github.com/oapi-codegen/nullable` v1.1.0 dependency
- Add `dedup` Makefile target to remove duplicate type declarations automatically
- Add mise.toml for Go version management
- Add Dependabot configuration for automated dependency updates

### Changed
- Upgrade Go minimum version to 1.24.0
- Upgrade `github.com/getkin/kin-openapi` to v0.133.0
- Upgrade `github.com/oapi-codegen/runtime` to v1.1.2
- Upgrade oapi-codegen to v2.5.1 in tools
- Upgrade GitHub Actions: checkout v4 → v6, setup-go v5 → v6
- Upgrade golangci-lint-action to v6 with 5m timeout

### Fixed
- Fix golangci-lint timeout on large generated files

## [v0.1.0] - 2025-04-23

### Added
- Include all types from the OpenAPI spec in generated code (`skip-prune: true`)
- Base CI checks (build, test, lint workflows)
- Development documentation (CLAUDE.md)

### Changed
- Migrate to `oapi-codegen` v2
- Enhance README with installation and usage instructions

## [Pre-release]

Initial development from February 2021 to April 2025:

- Initial project setup with Go code generation from Rootly OpenAPI spec
- Automatic schema generation from Rootly's swagger.json
- MIT License
- Multiple schema updates and dependency upgrades

[Unreleased]: https://github.com/rootlyhq/rootly-go/compare/v0.4.0...HEAD
[v0.4.0]: https://github.com/rootlyhq/rootly-go/compare/v0.3.0...v0.4.0
[v0.3.0]: https://github.com/rootlyhq/rootly-go/compare/v0.2.0...v0.3.0
[v0.2.0]: https://github.com/rootlyhq/rootly-go/compare/v0.1.0...v0.2.0
[v0.1.0]: https://github.com/rootlyhq/rootly-go/releases/tag/v0.1.0
