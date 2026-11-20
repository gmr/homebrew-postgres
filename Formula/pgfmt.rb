class Pgfmt < Formula
  desc "A PostgreSQL SQL formatter"
  homepage "https://github.com/gmr/pgfmt"
  version "2.3.4"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.4/pgfmt-aarch64-apple-darwin.tar.gz"
      sha256 "e38b4e4cee3ba5dc6b7074c9c5881082eaa71ef6034ae96a43b8cdf8f55de20f"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.4/pgfmt-x86_64-apple-darwin.tar.gz"
      sha256 "19b104625d8076411359a53ac599abf35c5499389f5df5be7b2c386ccbba585e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.4/pgfmt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "82bd1ae35195856371fabbedf6ffe03224f10de15c437901a20331a4eac5f622"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.4/pgfmt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55a99eba5e9a62ce1f69b68c66d388029f5758093ae7bfb3b91821f418dc1feb"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "Format PostgreSQL SQL", shell_output("#{bin}/pgfmt --help")
  end
end
