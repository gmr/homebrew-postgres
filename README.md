# homebrew-gmr

Homebrew tap for [gmr](https://github.com/gmr)'s tools.

```bash
brew tap gmr/gmr
```

| Formula | Description |
| --- | --- |
| [`pgfmt`](https://github.com/gmr/pgfmt) | PostgreSQL SQL formatter |
| [`pglifecycle`](https://github.com/gmr/pglifecycle) | PostgreSQL schema management tool |

```bash
brew install pgfmt
brew install pglifecycle
```

> [!NOTE]
> Homebrew 6.0 added [tap trust](https://docs.brew.sh/Tap-Trust), and some
> versions fail to install third-party taps inside the build sandbox (the
> error mentions `build.rb ... exited with 1`). If you hit this, trust the
> formula first (e.g. `brew trust --formula gmr/gmr/pgfmt`), or set
> `HOMEBREW_NO_REQUIRE_TAP_TRUST=1` for the install.

Formulas are updated automatically by each project's release workflow.
