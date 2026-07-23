class Pgfmt < Formula
  desc "A PostgreSQL SQL formatter"
  homepage "https://github.com/gmr/pgfmt"
  version "2.1.10"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.10/pgfmt-aarch64-apple-darwin.tar.gz"
      sha256 "19b92b1cfa762e59c4b6e947928d9c7338699c06f927140191b7f360138873f2"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.10/pgfmt-x86_64-apple-darwin.tar.gz"
      sha256 "b6e9ffccc1fdba49503aee8b6bd823ec66becf4d610889e5c9c3eaa313992b2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.10/pgfmt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c36f16c27696ab4d035f80e46723fdbd798464c21143be5cb7fb7bdf116013fc"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.10/pgfmt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a5f52001c3765485315545b1c6b779a60b5cd1a629c6b8b4e9c815d843f19d5"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "Format PostgreSQL SQL", shell_output("#{bin}/pgfmt --help")
  end
end
