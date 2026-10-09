class Pglifecycle < Formula
  desc "PostgreSQL schema management tool"
  homepage "https://github.com/gmr/pglifecycle"
  version "2.0.0-beta.2"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-beta.2/pglifecycle-aarch64-apple-darwin.tar.gz"
      sha256 "359da1128e1b8d9d309b89736bda7e405fb9dc52f05fa1070664539344222bd7"
    end
    on_intel do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-beta.2/pglifecycle-x86_64-apple-darwin.tar.gz"
      sha256 "c44e5f3d61cc9c8b53d7e95575e1d68bc31aacf132f9703bcf10b1c2945a09d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-beta.2/pglifecycle-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6fcd0175f70814460ccf2d9168e9427f9c3ff4313ca7f3f855c7cb42edb313c2"
    end
    on_intel do
      url "https://github.com/gmr/pglifecycle/releases/download/2.0.0-beta.2/pglifecycle-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b6e7608ee20964be4fb45a0e2cf7fe84492cca7f036142bac8e62d91157e568c"
    end
  end

  def install
    bin.install "pglifecycle"
  end

  test do
    assert_match "PostgreSQL Schema Management", shell_output("#{bin}/pglifecycle --help")
  end
end
