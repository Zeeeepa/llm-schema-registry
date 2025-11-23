# schema-registry-cli

Command-line interface for the LLM Schema Registry.

## Installation

```bash
cargo install schema-registry-cli
```

## Features

- 40+ commands across 5 categories
- Multiple output formats (Table, JSON, YAML, Plain)
- Configuration management
- Environment variable support
- Beautiful terminal UI with colors and tables

## Command Groups

- **Schema**: List, register, validate, search schemas
- **Lineage**: Trace dependencies, impact analysis
- **Analytics**: Usage statistics, performance metrics
- **Migration**: Generate migration code, plan deployments
- **Admin**: Health checks, SOC 2 compliance, backup/restore

## Quick Start

```bash
# Initialize configuration
schema-cli init --url http://localhost:8080

# List schemas
schema-cli schema list

# Check SOC 2 compliance
schema-cli admin soc2-status

# Trace schema dependencies
schema-cli lineage trace <schema-id> --upstream
```

## License

Apache-2.0
