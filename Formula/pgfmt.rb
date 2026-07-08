class Pgfmt < Formula
  desc "A PostgreSQL SQL formatter"
  homepage "https://github.com/gmr/pgfmt"
  version "2.1.9"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.9/pgfmt-aarch64-apple-darwin.tar.gz"
      sha256 "370cfb7cdb6f97b52a337436d20f7f7fb9939ea7854e11e2b725e6c614abd58b"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.9/pgfmt-x86_64-apple-darwin.tar.gz"
      sha256 "30939f2f13c7697619d3a3e0b49594896f5686fe26db93fa73dda341df52bfb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.9/pgfmt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b2a9318db3dd00d5bcaedf2c6479eca4b5bb3b241bd4f0d7206878c44e321632"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.9/pgfmt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1f4e64386eccaa49c3b7cf80aa892d912cde21a6a109b55b8847740269bd1c6"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "Format PostgreSQL SQL", shell_output("#{bin}/pgfmt --help")
  end
end
