class Pgfmt < Formula
  desc "A PostgreSQL SQL formatter"
  homepage "https://github.com/gmr/pgfmt"
  version "2.3.2"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.2/pgfmt-aarch64-apple-darwin.tar.gz"
      sha256 "81ab084855b590cdd8da2b0fda39dc93638a7cb97bf8f554854a4b870ad6625d"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.2/pgfmt-x86_64-apple-darwin.tar.gz"
      sha256 "981b31a19b34a16f53764d0e2171e5c698b904c40ae3cd3dc0616ebbf972aed3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.2/pgfmt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "806746c2eecfcb5eda8560233d4cdeac0313e0a7a859f49252a8db23fc2822b5"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.2/pgfmt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0be344788124ee52f943655a1ca60b6bec37ff541b5207af1c1284bd44950886"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "Format PostgreSQL SQL", shell_output("#{bin}/pgfmt --help")
  end
end
