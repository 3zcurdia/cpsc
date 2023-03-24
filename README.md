# Cpsc

A simple Elixir wrapper for the [Consumer Product Safety Commission](https://cpsc.gov/) api.

## Installation

The package can be installed by adding `cpsc` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:cpsc, "~> 0.1.0"}
  ]
end
```

## Usage

```elixir
  Cpsc.yearly_recalls(2019)
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/cpsc>.

