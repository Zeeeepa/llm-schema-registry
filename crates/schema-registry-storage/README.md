# schema-registry-storage

Storage backends for the LLM Schema Registry.

## Features

- **PostgreSQL**: Primary storage with ACID guarantees
- **S3**: Object storage for schema content and backups
- **Redis**: High-performance caching layer
- Connection pooling and retry logic
- Migration support

## Supported Backends

- PostgreSQL 14+
- S3-compatible object storage
- Redis 6+

## License

Apache-2.0
