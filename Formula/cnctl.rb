class Cnctl < Formula
  desc "Organizer CLI for Cloud Native Days Norway"
  homepage "https://github.com/CloudNativeBergen/cnctl"
  version "2026.06.07-b98b818"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.07-b98b818/cnctl-aarch64-apple-darwin.tar.gz"
      sha256 "54048004e3bb46d0bf8673b43f0958a5360c5816eee97f0159bfa78e8deb77b3"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.07-b98b818/cnctl-x86_64-apple-darwin.tar.gz"
      sha256 "c49311d53ffd9efc94864cd0e5b0c20a8156107648ada1aee73529e7e7ff829b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.07-b98b818/cnctl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f7b614e5290f49258111fc80979c92a6020b42afe54e4b9fc8bb48c31080b189"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.07-b98b818/cnctl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95db71665fad31367565ff8d7408bad9a606869993fe889efbd784e2f0277d73"
    end
  end

  def install
    bin.install "cnctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cnctl --version")
  end
end
