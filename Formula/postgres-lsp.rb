class PostgresLsp < Formula
  desc "Language Server Protocol implementation for PostgreSQL and PL/pgSQL"
  homepage "https://github.com/gmr/postgres-lsp"
  version "1.3.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.3.0/postgres-lsp-aarch64-apple-darwin.tar.gz"
      sha256 "e87423f90bec0a0a9d12e0693ab32d63daece6900ddf3a4f5c33fb9543e47933"
    end
    on_intel do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.3.0/postgres-lsp-x86_64-apple-darwin.tar.gz"
      sha256 "f5b8c83153748f4f95dd4e793f4c82782679f2ee822b641a62b21c915798d054"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.3.0/postgres-lsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c2b66255c0b7202e8beecf97ba8c429ea44fbf68483733ea86f150a6a9772b4"
    end
    on_intel do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.3.0/postgres-lsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b40165e3b0701554c5b76db046f61fcfdda739c2ba53c305f871cb1f6e653e9d"
    end
  end

  def install
    bin.install "postgres-lsp"
  end

  test do
    assert_match "Language Server for PostgreSQL and PL/pgSQL", shell_output("#{bin}/postgres-lsp --help")
  end
end
