class PostgresLsp < Formula
  desc "Language Server Protocol implementation for PostgreSQL and PL/pgSQL"
  homepage "https://github.com/gmr/postgres-lsp"
  version "1.1.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.1.0/postgres-lsp-aarch64-apple-darwin.tar.gz"
      sha256 "a9fce9a84c054b9b41b518cf84a873da176263a62f49bde820e2b79508410cf0"
    end
    on_intel do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.1.0/postgres-lsp-x86_64-apple-darwin.tar.gz"
      sha256 "425b8969c1939e975318e3b0ba696458b958ecffcb00a28313ffcc01c7a7e468"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.1.0/postgres-lsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "20979c67c1ce1ae1d6f1162994e5c318e0757c49bc48841257d42e78890cf8ba"
    end
    on_intel do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.1.0/postgres-lsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ad6d858a231056bd03085d9d0244a1e5123d783f3de9bf1f3db2c889db44fac"
    end
  end

  def install
    bin.install "postgres-lsp"
  end

  test do
    assert_match "Language Server for PostgreSQL and PL/pgSQL", shell_output("#{bin}/postgres-lsp --help")
  end
end
