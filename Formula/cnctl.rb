class Cnctl < Formula
  desc "Organizer CLI for Cloud Native Days Norway"
  homepage "https://github.com/CloudNativeBergen/cnctl"
  version "2026.04.05-60a73b8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.05-60a73b8/cnctl-aarch64-apple-darwin.tar.gz"
      sha256 "b46c3a639eb3f62a3dc4cd5c685a67f30cd2d597cc2ec3271dec06759102e64d"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.05-60a73b8/cnctl-x86_64-apple-darwin.tar.gz"
      sha256 "acfb4dfb6756d51f322f8dc99da0b6339d394b28f52bdb5f1644a9f8826aa411"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.05-60a73b8/cnctl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "92f8c979b9766adbf8112fa5ce7dd6d0485141ae5221439ba31fc3b7a8e87725"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.05-60a73b8/cnctl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "729abf853d106983412f6549bc5097a86b34083a74586e956ce23074743683ab"
    end
  end

  def install
    bin.install "cnctl"
  end

  test do
    assert_match "cnctl", shell_output("#{bin}/cnctl --version")
  end
end
