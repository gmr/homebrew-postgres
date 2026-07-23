class Pgfmt < Formula
  desc "A PostgreSQL SQL formatter"
  homepage "https://github.com/gmr/pgfmt"
  version "2.2.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.2.0/pgfmt-aarch64-apple-darwin.tar.gz"
      sha256 "567270e60eb8f5804684a84074a399824143fc79fe6ff55b1d06f3ef8bea7457"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.2.0/pgfmt-x86_64-apple-darwin.tar.gz"
      sha256 "f0d85256cd596377dc4e06dd40518e105176b65a5a0a7d272e90adcff3c4cef8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.2.0/pgfmt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d052d4f26fb9e078a86428b7db1f7cabe9223e60002c660812c07172fc8fdf3"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.2.0/pgfmt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7f2ca1286915da878cd572e8ca2b2ac4b51519d259b9c5db047822c40b6fa56"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "Format PostgreSQL SQL", shell_output("#{bin}/pgfmt --help")
  end
end
