# schema-registry-core

Core types and traits for the LLM Schema Registry platform.

## Features

- Core data structures for schemas, subjects, and versions
- Schema format support (JSON Schema, Avro, Protobuf, Thrift)
- Semantic versioning with compatibility modes
- Content hashing and integrity verification
- Async-first design with Tokio

## Usage

```rust
use schema-registry-core::{Schema, SchemaFormat, CompatibilityMode};

// Create a new schema
let schema = Schema::new(
    "com.example.User",
    "1.0.0",
    SchemaFormat::Json,
    r#"{"type": "object"}"#,
);
```

## License

Apache-2.0
