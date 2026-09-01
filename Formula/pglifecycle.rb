class Pglifecycle < Formula
  desc "PostgreSQL schema management tool"
  homepage "https://github.com/gmr/pglifecycle"
  version "2.0.0-alpha.2"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-alpha.2/pglifecycle-aarch64-apple-darwin.tar.gz"
      sha256 "b073cebf9a30d059b6c030d4fb426bf923452a42eb061ed886a3f9067bbbc6d1"
    end
    on_intel do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-alpha.2/pglifecycle-x86_64-apple-darwin.tar.gz"
      sha256 "5298358116470a242c39ebbae65fcaa47a109502adc5fb2a650b87078d2f0765"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-alpha.2/pglifecycle-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a7833ec05b99e7aff5ba04f0f0da22cb295f8e26e5bda82c69fb429755e283e"
    end
    on_intel do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-alpha.2/pglifecycle-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9367b187bf51504ea2b3b64910e55c4a9ad1947c9c2f33e933cb895ee9c1c289"
    end
  end

  def install
    bin.install "pglifecycle"
  end

  test do
    assert_match "PostgreSQL Schema Management", shell_output("#{bin}/pglifecycle --help")
  end
end
