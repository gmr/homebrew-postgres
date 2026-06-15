class Pgfmt < Formula
  desc "A PostgreSQL SQL formatter"
  homepage "https://github.com/gmr/pgfmt"
  version "2.1.7"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.7/pgfmt-aarch64-apple-darwin.tar.gz"
      sha256 "fc0c0c5763f241702ee2a441de0324d07902fe43b4d1ac6ad8fed0229abd4772"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.7/pgfmt-x86_64-apple-darwin.tar.gz"
      sha256 "fdaac8c199a6572e18de647c6948df7cc6c7d92c740a59382b3bfaf148fb35dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.7/pgfmt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe3c1863374a6f1fb48982f2b21719294f0f7dd4b66b64afbe2378f3c2ac8934"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.7/pgfmt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef32f7e74b8fd9261224835c4df33383963cb457176155400e77e9db8808e6f5"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "Format PostgreSQL SQL", shell_output("#{bin}/pgfmt --help")
  end
end
