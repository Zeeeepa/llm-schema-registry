# llm-integrations

LLM integrations for automatic schema generation.

## Supported Providers

- **OpenAI**: GPT-4, GPT-3.5
- **Anthropic**: Claude 3 (Opus, Sonnet, Haiku)
- **Google**: Gemini Pro, Gemini Ultra
- **Cohere**: Command R+

## Features

- Natural language to JSON Schema
- Schema validation and refinement
- Multi-provider support with fallback
- Streaming responses
- Cost tracking

## Usage

```rust
use llm_integrations::{OpenAIClient, SchemaGenerator};

let client = OpenAIClient::new(api_key);
let schema = client.generate_schema(
    "Create a schema for a user profile with name, email, and age"
).await?;
```

## License

Apache-2.0
