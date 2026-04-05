class Cnctl < Formula
  desc "Organizer CLI for Cloud Native Days Norway"
  homepage "https://github.com/CloudNativeBergen/cnctl"
  version "2026.04.05-d81a252"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.05-d81a252/cnctl-aarch64-apple-darwin.tar.gz"
      sha256 "c1750cc2f1e7e8471bcde26b29a2519ca5518be948435ce2d2f5d81990d8591d"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.05-d81a252/cnctl-x86_64-apple-darwin.tar.gz"
      sha256 "662cec1035cb65068e16e614d524f0bde2d253d9ba29b8b40ea9560b5f904eb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.05-d81a252/cnctl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5a8e46da0b89d65369f0f2f05035db6b9547210c768f1821f984ddbf82fba87"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.05-d81a252/cnctl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a514e7c1c482c73b3242418e77669835e297d52efec092c0ab2472714b0a3a56"
    end
  end

  def install
    bin.install "cnctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cnctl --version")
  end
end
