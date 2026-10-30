class PostgresLsp < Formula
  desc "Language Server Protocol implementation for PostgreSQL and PL/pgSQL"
  homepage "https://github.com/gmr/postgres-lsp"
  version "1.2.1"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.2.1/postgres-lsp-aarch64-apple-darwin.tar.gz"
      sha256 "e96e5abf304b057ac0d41d8f2681a2d5cbc4e4f9ecd264aff5534119cd4b8a2b"
    end
    on_intel do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.2.1/postgres-lsp-x86_64-apple-darwin.tar.gz"
      sha256 "5c9d0a7bd40432037ada82b014a51d9f74acd065f6e8a0f42a80fcd600f84144"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.2.1/postgres-lsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "40f98014ccc4085e657999b4a3206cad6db8faee2762a38a13d2d28e3de1eb4e"
    end
    on_intel do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.2.1/postgres-lsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a69b2f152482a20461a39425b2c63c45b1c55e2e5cfed2d040ce68d286493ac"
    end
  end

  def install
    bin.install "postgres-lsp"
  end

  test do
    assert_match "Language Server for PostgreSQL and PL/pgSQL", shell_output("#{bin}/postgres-lsp --help")
  end
end
