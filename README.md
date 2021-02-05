# MergeATSAPI

The unified API for building rich integrations with multiple Applicant Tracking System platforms.

### Building

To install the required dependencies and to build the elixir project, run:
```
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `merge_ats_client` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:merge_ats_client, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/merge_ats_client](https://hexdocs.pm/merge_ats_client).
