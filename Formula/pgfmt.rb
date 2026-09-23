class Pgfmt < Formula
  desc "A PostgreSQL SQL formatter"
  homepage "https://github.com/gmr/pgfmt"
  version "2.3.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.0/pgfmt-aarch64-apple-darwin.tar.gz"
      sha256 "ed1c0aab1e732cb98f2af9dc4df739aac674787bbda90c8a00f2d6fa061851fb"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.0/pgfmt-x86_64-apple-darwin.tar.gz"
      sha256 "c4efca27754638d2a1d7834f255268094f7c9cf1c9fa3fdcf90cf352316a5461"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.0/pgfmt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "34a45e6aa8a39faedaa9486664967098e86cf4363703471431de4323e823b3e8"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.0/pgfmt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "982ffbc96bebf279786db3e38a15228db43365239c0856ce57ec70496f7b89c4"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "Format PostgreSQL SQL", shell_output("#{bin}/pgfmt --help")
  end
end
