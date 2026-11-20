class PostgresLsp < Formula
  desc "Language Server Protocol implementation for PostgreSQL and PL/pgSQL"
  homepage "https://github.com/gmr/postgres-lsp"
  version "1.3.1"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.3.1/postgres-lsp-aarch64-apple-darwin.tar.gz"
      sha256 "64a3a81cf5ef63a67c2f50eadb78b77b3eb16fb10bb49e9a18f14e5fff9afe48"
    end
    on_intel do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.3.1/postgres-lsp-x86_64-apple-darwin.tar.gz"
      sha256 "fb6f0b984e98ddd416007188aa6b5e7fa8eea2fe8925e1b1ae8f7b49dbed79a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.3.1/postgres-lsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9f0db150ebb1a87bf804c6019f0dc03746ad1d409faa55f84711b083f319bba9"
    end
    on_intel do
      url "https://github.com/gmr/postgres-lsp/releases/download/v1.3.1/postgres-lsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab25fbaea7c0cd22acd81736be2278620ae8412c25590df67ee8c2d077be35be"
    end
  end

  def install
    bin.install "postgres-lsp"
  end

  test do
    assert_match "Language Server for PostgreSQL and PL/pgSQL", shell_output("#{bin}/postgres-lsp --help")
  end
end
