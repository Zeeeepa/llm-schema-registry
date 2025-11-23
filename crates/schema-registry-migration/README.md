# schema-registry-migration

Schema migration tools with multi-language code generation.

## Features

- **Code Generation**: Python, TypeScript, Java, Go, SQL
- **Migration Planning**: Risk analysis and staging strategies
- **Validation**: Dry-run testing before deployment
- **Rollback**: Automatic rollback script generation
- **Complexity Scoring**: Estimate migration effort

## Supported Languages

- Python 3.8+
- TypeScript 4.0+
- Java 11+
- Go 1.18+
- SQL (PostgreSQL, MySQL)

## Usage

```rust
use schema_registry_migration::MigrationEngine;

let engine = MigrationEngine::new();
let migration = engine.generate(from_schema, to_schema, "python").await?;
let plan = engine.plan_migration(from_version, to_version).await?;
```

## License

Apache-2.0
