#!/bin/bash
# Script to add crates.io metadata to all crates

# Function to add metadata after license line
add_metadata() {
    local cargo_toml="$1"
    local description="$2"
    local keywords="$3"
    local categories="$4"

    # Check if metadata already exists
    if grep -q "^description = " "$cargo_toml"; then
        echo "Metadata already exists in $cargo_toml, skipping..."
        return
    fi

    # Add metadata after license.workspace = true line
    sed -i '/^license\.workspace = true$/a\
repository.workspace = true\
homepage.workspace = true\
description = "'"$description"'"\
keywords = ['"$keywords"']\
categories = ['"$categories"']\
readme = "README.md"' "$cargo_toml"

    echo "Updated $cargo_toml"
}

# Update schema-registry-storage
add_metadata "crates/schema-registry-storage/Cargo.toml" \
    "Storage backends for the LLM Schema Registry (PostgreSQL, S3, Redis)" \
    '"schema", "registry", "storage", "database", "cache"' \
    '"database", "caching", "development-tools"'

# Update schema-registry-validation
add_metadata "crates/schema-registry-validation/Cargo.toml" \
    "Schema validation engine supporting JSON Schema, Avro, Protobuf, and Thrift" \
    '"schema", "validation", "json-schema", "avro", "protobuf"' \
    '"parser-implementations", "development-tools", "data-structures"'

# Update schema-registry-compatibility
add_metadata "crates/schema-registry-compatibility/Cargo.toml" \
    "Schema compatibility checking with backward, forward, and full compatibility modes" \
    '"schema", "compatibility", "versioning", "migration", "semver"' \
    '"development-tools", "data-structures"'

# Update schema-registry-security
add_metadata "crates/schema-registry-security/Cargo.toml" \
    "Security, authentication, authorization, and SOC 2 compliance for LLM Schema Registry" \
    '"security", "authentication", "authorization", "soc2", "compliance"' \
    '"authentication", "cryptography", "development-tools"'

# Update schema-registry-observability
add_metadata "crates/schema-registry-observability/Cargo.toml" \
    "Observability, metrics, tracing, and monitoring for the Schema Registry" \
    '"observability", "metrics", "tracing", "monitoring", "prometheus"' \
    '"development-tools", "asynchronous"'

# Update schema-registry-analytics
add_metadata "crates/schema-registry-analytics/Cargo.toml" \
    "Analytics engine for usage tracking, metrics collection, and reporting" \
    '"analytics", "metrics", "reporting", "telemetry", "usage-tracking"' \
    '"development-tools", "data-structures"'

# Update schema-registry-lineage
add_metadata "crates/schema-registry-lineage/Cargo.toml" \
    "Schema lineage tracking with dependency graphs, impact analysis, and visualization" \
    '"lineage", "dependency-graph", "impact-analysis", "schema-evolution"' \
    '"development-tools", "visualization", "data-structures"'

# Update schema-registry-migration
add_metadata "crates/schema-registry-migration/Cargo.toml" \
    "Schema migration tools with multi-language code generation (Python, TypeScript, Java, Go, SQL)" \
    '"schema", "migration", "code-generation", "evolution", "transformation"' \
    '"development-tools", "template-engine"'

# Update schema-registry-api
add_metadata "crates/schema-registry-api/Cargo.toml" \
    "gRPC and REST API definitions for the LLM Schema Registry" \
    '"api", "grpc", "rest", "schema-registry", "protobuf"' \
    '"api-bindings", "web-programming::http-server"'

# Update schema-registry-cli
add_metadata "crates/schema-registry-cli/Cargo.toml" \
    "Command-line interface for managing schemas, lineage, analytics, and migrations" \
    '"cli", "schema", "registry", "command-line", "terminal"' \
    '"command-line-utilities", "development-tools"'

# Update schema-registry-server
add_metadata "crates/schema-registry-server/Cargo.toml" \
    "Production-ready server for the LLM Schema Registry with gRPC and REST APIs" \
    '"server", "schema-registry", "grpc", "rest-api", "microservice"' \
    '"web-programming::http-server", "development-tools"'

# Update llm-integrations
add_metadata "crates/llm-integrations/Cargo.toml" \
    "LLM integrations for schema generation (OpenAI, Anthropic, Gemini, Cohere)" \
    '"llm", "ai", "openai", "anthropic", "schema-generation"' \
    '"api-bindings", "development-tools"'

echo "All crates updated successfully!"
