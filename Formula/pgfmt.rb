class Pgfmt < Formula
  desc "A PostgreSQL SQL formatter"
  homepage "https://github.com/gmr/pgfmt"
  version "2.3.3"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.3/pgfmt-aarch64-apple-darwin.tar.gz"
      sha256 "8f00f3e6d20ad58a710682a0ada6d05ea8ad3f23ef6ebed9c7f44b7685418e73"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.3/pgfmt-x86_64-apple-darwin.tar.gz"
      sha256 "424c4c61dceae4b42bbc5fd8350ff4c834bfde4b0570c53744ef00dad5950d36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.3/pgfmt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f8d524affa85cd87583b8ee10b0f9a20847b2ee096f3cad4e08b8da84b73570d"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.3.3/pgfmt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5104455c5b37cf8f6f4f2ee471cc20fbdda34b1567711fbcbef9a635c359915c"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "Format PostgreSQL SQL", shell_output("#{bin}/pgfmt --help")
  end
end
