# schema-registry-compatibility

Schema compatibility checking with multiple compatibility modes.

## Features

- **Backward**: New schema can read data written by old schema
- **Forward**: Old schema can read data written by new schema
- **Full**: Both backward and forward compatible
- **None**: No compatibility checking
- Detailed violation reporting

## Usage

```rust
use schema_registry_compatibility::{CompatibilityChecker, CompatibilityMode};

let checker = CompatibilityChecker::new();
let result = checker.check(old_schema, new_schema, CompatibilityMode::Backward).await?;

if result.is_compatible {
    println!("Schemas are compatible!");
} else {
    println!("Violations: {:?}", result.violations);
}
```

## License

Apache-2.0
