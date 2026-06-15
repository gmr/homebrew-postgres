class Pgfmt < Formula
  desc "A PostgreSQL SQL formatter"
  homepage "https://github.com/gmr/pgfmt"
  version "2.1.6"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.6/pgfmt-aarch64-apple-darwin.tar.gz"
      sha256 "fae3bc81de87301b68d6f2f84f327adaad576cc43d1ece2e088b2c54540f69c3"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.6/pgfmt-x86_64-apple-darwin.tar.gz"
      sha256 "2d10054be3a2095a111c07f707672816394b818abd98f3cdf4052b4c897e1946"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.6/pgfmt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ca07e55003493029132afc190567525d93b967837f43664140050a37a3dcf9fe"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.6/pgfmt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65331288e05d8892178e7bad066e9191439ccb6da82ac079a3485e5e91a04c2e"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "Format PostgreSQL SQL", shell_output("#{bin}/pgfmt --help")
  end
end
