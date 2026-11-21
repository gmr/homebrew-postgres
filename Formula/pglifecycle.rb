class Pglifecycle < Formula
  desc "PostgreSQL schema management tool"
  homepage "https://github.com/gmr/pglifecycle"
  version "2.0.0-beta.4"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-beta.4/pglifecycle-aarch64-apple-darwin.tar.gz"
      sha256 "deb855431f4c935bc4faf7afdb93061f5c43f54f5fc21715bf562b5cb97bf765"
    end
    on_intel do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-beta.4/pglifecycle-x86_64-apple-darwin.tar.gz"
      sha256 "06a895d0f55e603be9fe076573129ce6af5ef48f3017b7ee7c3b37f0f50bcfc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-beta.4/pglifecycle-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "420892b6f651fd287ab5a36d5fa825bc791fabb9c9b0cf983342ebbdc80a02f6"
    end
    on_intel do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-beta.4/pglifecycle-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9673febe3f17a3286d53a87e722501a7f1c1a08876e2d27717f4aa297ef9cf7a"
    end
  end

  def install
    bin.install "pglifecycle"
  end

  test do
    assert_match "PostgreSQL Schema Management", shell_output("#{bin}/pglifecycle --help")
  end
end
