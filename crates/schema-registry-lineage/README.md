# schema-registry-lineage

Schema lineage tracking with dependency graphs and impact analysis.

## Features

- **Dependency Tracking**: Upstream and downstream relationships
- **Impact Analysis**: Identify affected schemas and applications
- **Circular Detection**: Find and prevent circular dependencies
- **Path Finding**: Shortest path between schemas
- **Export**: GraphML, DOT, JSON formats

## Usage

```rust
use schema_registry_lineage::LineageTracker;

let tracker = LineageTracker::new();
let dependencies = tracker.trace_upstream(schema_id, Some(3)).await?;
let impact = tracker.analyze_impact(schema_id, change_type).await?;
```

## License

Apache-2.0
