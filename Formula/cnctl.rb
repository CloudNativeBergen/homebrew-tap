class Cnctl < Formula
  desc "Organizer CLI for Cloud Native Days Norway"
  homepage "https://github.com/CloudNativeBergen/cnctl"
  version "2026.04.08-2268a2b"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.08-2268a2b/cnctl-aarch64-apple-darwin.tar.gz"
      sha256 "debcc4f66df5341349509b1709537e7fc679e71bbefb66bcfbf11a9b310d45fe"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.08-2268a2b/cnctl-x86_64-apple-darwin.tar.gz"
      sha256 "afeee1a15683cc73a9a5d5b3be758d9674d7a85be263be6c93caf05037493c26"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.08-2268a2b/cnctl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "987c622b2c0a447beede3e38c3ee48ea2e7885dbde7a73a9c26706eb82196e93"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.08-2268a2b/cnctl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea01cce76c120c7ef051a543f3a7a8d7de6ac14d1815bd030860afdd79f3f81f"
    end
  end

  def install
    bin.install "cnctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cnctl --version")
  end
end
