class Pglifecycle < Formula
  desc "PostgreSQL schema management tool"
  homepage "https://github.com/gmr/pglifecycle"
  version "2.0.0-alpha.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pglifecycle/releases/download/v2.0.0-alpha.0/pglifecycle-aarch64-apple-darwin.tar.gz"
      sha256 "7b3be3c97cc7059381a6b6afbd3935d9ca621817f027e17d9dd410b7165fc149"
    end
    on_intel do
      url "https://github.com/gmr/pglifecycle/releases/download/v2.0.0-alpha.0/pglifecycle-x86_64-apple-darwin.tar.gz"
      sha256 "26da2f453a9c1a64c57dd4573feaacde8afd86ca8bc5abfa199319de7297b1cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pglifecycle/releases/download/v2.0.0-alpha.0/pglifecycle-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78e7841f6d7e716298a7c5669b37a00079a937e8bb86abb9b7262047b2d80340"
    end
    on_intel do
      url "https://github.com/gmr/pglifecycle/releases/download/v2.0.0-alpha.0/pglifecycle-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a9a433ce63faeaae733d42a0e9b75e2a455f6a459921b07e58c9cc5b4724ddc7"
    end
  end

  def install
    bin.install "pglifecycle"
  end

  test do
    assert_match "PostgreSQL Schema Management", shell_output("#{bin}/pglifecycle --help")
  end
end
