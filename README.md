# homebrew-cldr

The Homebrew tap for [Cldr](https://github.com/matthewsinclair/cldr): a re-runnable renderer for a plain-text time journal, from Day Notes and the calendar.

```sh
brew install matthewsinclair/cldr/cldr
cldr doctor
```

Supports Homebrew on macOS and Linux. The formula builds from the release tag's source with Rust and `Cargo.lock`. An example configuration is installed at `$(brew --prefix)/share/cldr/config.toml`; copy it to `~/.config/cldr/config.toml` and edit.

The formula's source of truth is `packaging/homebrew/cldr.rb` in the [Cldr repository](https://github.com/matthewsinclair/cldr); its `tools/release` renders it for each tag and publishes it here.
