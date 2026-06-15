class PostgresLsp < Formula
  desc "Language Server Protocol implementation for PostgreSQL and PL/pgSQL"
  homepage "https://github.com/gmr/postgres-lsp"
  version "0.0.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/postgres-lsp/releases/download/v0.0.0/postgres-lsp-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/gmr/postgres-lsp/releases/download/v0.0.0/postgres-lsp-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/postgres-lsp/releases/download/v0.0.0/postgres-lsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/gmr/postgres-lsp/releases/download/v0.0.0/postgres-lsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "postgres-lsp"
  end

  test do
    assert_match "Language Server for PostgreSQL and PL/pgSQL", shell_output("#{bin}/postgres-lsp --help")
  end
end
