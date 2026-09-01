class Pglifecycle < Formula
  desc "PostgreSQL schema management tool"
  homepage "https://github.com/gmr/pglifecycle"
  version "2.0.0-alpha.1"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-alpha.1/pglifecycle-aarch64-apple-darwin.tar.gz"
      sha256 "c6ae45098649dc14d8fc5ec2ebf0e51cc98a508cefa836b730d3237e0ca16bea"
    end
    on_intel do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-alpha.1/pglifecycle-x86_64-apple-darwin.tar.gz"
      sha256 "ed97927875eb1bfb820978fc7c87ba3f4689b9b3e72dfabf91c9b9f393825283"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-alpha.1/pglifecycle-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2477fce1435db159d5d2f57f5c63419f4bbba1842bc83560507b6d41e216a964"
    end
    on_intel do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-alpha.1/pglifecycle-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "027df442acd003496d5041efb1594f4badbafddd40d6afd5fdf8e5d80604b476"
    end
  end

  def install
    bin.install "pglifecycle"
  end

  test do
    assert_match "PostgreSQL Schema Management", shell_output("#{bin}/pglifecycle --help")
  end
end
