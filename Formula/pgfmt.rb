class Pgfmt < Formula
  desc "A PostgreSQL SQL formatter"
  homepage "https://github.com/gmr/pgfmt"
  version "2.1.8"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.8/pgfmt-aarch64-apple-darwin.tar.gz"
      sha256 "8b08bc3e22caa845283640b154a1888725f33a3b8ef3b0adb1d3356ae7e1262c"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.8/pgfmt-x86_64-apple-darwin.tar.gz"
      sha256 "f585dc87340a05f76730e51a45dc0aa137e63a14c609e774973cd4b8d774da66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.8/pgfmt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c4392ac6e3c8c8bf88946ebfffcf4b13b5b77228679b2f182ebd8d20f29546d8"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.8/pgfmt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad0c654bf8321b29a557f20dfa6a1deb78e1ed4c79a6ad22653fff4e8f517277"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "Format PostgreSQL SQL", shell_output("#{bin}/pgfmt --help")
  end
end
