class Pgfmt < Formula
  desc "A PostgreSQL SQL formatter"
  homepage "https://github.com/gmr/pgfmt"
  version "2.3.1"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.1/pgfmt-aarch64-apple-darwin.tar.gz"
      sha256 "4a44d57d0bc2d6a2b1dd0e7f67ce0156c7a5f3787a4ae46ed728b073b753cebf"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.1/pgfmt-x86_64-apple-darwin.tar.gz"
      sha256 "d11e2e310f3826c618d3708c1fb5bdc06d87959074e4672be46aea69dc5be596"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.1/pgfmt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b80e450b837d98accb2c685251dff82682a64562863e0e5b39014a79adb2561"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.1/pgfmt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "355fc4a7b8005a29f069063ce3dbbc0e2da8df6761ca0b767839110400dd1f31"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "Format PostgreSQL SQL", shell_output("#{bin}/pgfmt --help")
  end
end
