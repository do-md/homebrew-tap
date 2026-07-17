# do-md/homebrew-tap

Homebrew tap for [HomeKB](https://github.com/do-md/homekb) — a personal knowledge base whose data always stays on your own computer.

## Install the engine

```sh
brew install do-md/tap/homekb
```

Then get started:

```sh
homekb init
homekb reindex
homekb ask "hello"
```

The engine is a self-contained single binary (bundled SQLite + rustls TLS) — no runtime dependencies. Works on macOS (Apple Silicon and Intel) and Linux (x86_64).

Other install channels: `curl -fsSL https://raw.githubusercontent.com/do-md/homekb/main/install.sh | sh`, or Windows via [Scoop](https://github.com/do-md/scoop-bucket).
