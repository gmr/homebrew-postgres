class PostgresLsp < Formula
  desc "Language Server Protocol implementation for PostgreSQL and PL/pgSQL"
  homepage "https://github.com/gmr/postgres-lsp"
  version "1.0.2"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.0.2/postgres-lsp-aarch64-apple-darwin.tar.gz"
      sha256 "a6829a5d3a3486d36c0b823cde09eee08f5daad1a2c55ca4aff1160cc14c3d8d"
    end
    on_intel do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.0.2/postgres-lsp-x86_64-apple-darwin.tar.gz"
      sha256 "979849f6a1f22d071f892aa2f4868ae09856f50a062a4279e39c510fa3d8b24f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.0.2/postgres-lsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "de94b396383dea71f6df54e74ee5dc6559041e65d16275e10e8f7a696c4a7e17"
    end
    on_intel do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.0.2/postgres-lsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8166406e6ac13862ca2e3cf3c772b0b8126ffba8be8e12be290938732db20693"
    end
  end

  def install
    bin.install "postgres-lsp"
  end

  test do
    assert_match "Language Server for PostgreSQL and PL/pgSQL", shell_output("#{bin}/postgres-lsp --help")
  end
end
