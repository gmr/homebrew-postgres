class Pglifecycle < Formula
  desc "PostgreSQL schema management tool"
  homepage "https://github.com/gmr/pglifecycle"
  version "2.0.0-beta.3"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-beta.3/pglifecycle-aarch64-apple-darwin.tar.gz"
      sha256 "99877b833021e3e8b3e3fde26698b2d5a595427dc30a1d2f195d3d83d4d4ff95"
    end
    on_intel do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-beta.3/pglifecycle-x86_64-apple-darwin.tar.gz"
      sha256 "860853f509524a677cb0a5560f7d8ce64613cc85b5fa8ea980e8e31e464203f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-beta.3/pglifecycle-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9159b0eb9a1d594ce245ea2f66a21eb5949391b4bb60b82bb6f983a6cd5c86ba"
    end
    on_intel do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-beta.3/pglifecycle-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "458b4274e73e00b7f8a20f3ed9b9ae90ccb7de1e84794645472871de8c2cb802"
    end
  end

  def install
    bin.install "pglifecycle"
  end

  test do
    assert_match "PostgreSQL Schema Management", shell_output("#{bin}/pglifecycle --help")
  end
end
