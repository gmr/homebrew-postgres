class PostgresLsp < Formula
  desc "Language Server Protocol implementation for PostgreSQL and PL/pgSQL"
  homepage "https://github.com/gmr/postgres-lsp"
  version "1.2.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.2.0/postgres-lsp-aarch64-apple-darwin.tar.gz"
      sha256 "457d4305a5e88213200ea6b9c7dde5b57caa00b20d1f589f70b4bafe6744ce58"
    end
    on_intel do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.2.0/postgres-lsp-x86_64-apple-darwin.tar.gz"
      sha256 "45d8b1a0ceb91191d8bc538aa4d5b9a0da0d884dc9e68c25aee37ce4ea781e16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.2.0/postgres-lsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11f7a3e1f08933da446a009c842aba1c4b910ae029f52a2abfc3f643087cdcd5"
    end
    on_intel do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.2.0/postgres-lsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a2618d9dcc21578084fa1b9305d6fe74a11859f779d3eb79feb9d5c78ea1c97"
    end
  end

  def install
    bin.install "postgres-lsp"
  end

  test do
    assert_match "Language Server for PostgreSQL and PL/pgSQL", shell_output("#{bin}/postgres-lsp --help")
  end
end
