class Pglifecycle < Formula
  desc "PostgreSQL schema management tool"
  homepage "https://github.com/gmr/pglifecycle"
  version "2.0.0-beta.1"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-beta.1/pglifecycle-aarch64-apple-darwin.tar.gz"
      sha256 "b4d0b24a9f1eea4ad184cd98aaa3eaba96fc683a6aac039a8a0174500ebd5f6f"
    end
    on_intel do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-beta.1/pglifecycle-x86_64-apple-darwin.tar.gz"
      sha256 "bd47ebd93584157d25bc5267e65f3d1eb6f083bedc6941545a95f4904b26423d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-beta.1/pglifecycle-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f0e212cf839751108363b054c381ac2a35ddeca0c129a1400a4633a231e8fa8"
    end
    on_intel do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-beta.1/pglifecycle-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e66700f3ead2a4620dc9d0ddfeba4a670733270d2a15e4156261ef4c45aa99e"
    end
  end

  def install
    bin.install "pglifecycle"
  end

  test do
    assert_match "PostgreSQL Schema Management", shell_output("#{bin}/pglifecycle --help")
  end
end
