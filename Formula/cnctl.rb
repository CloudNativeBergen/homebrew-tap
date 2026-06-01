class Cnctl < Formula
  desc "Organizer CLI for Cloud Native Days Norway"
  homepage "https://github.com/CloudNativeBergen/cnctl"
  version "2026.06.01-9f9ff04"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.01-9f9ff04/cnctl-aarch64-apple-darwin.tar.gz"
      sha256 "a2846439adc12fa94149761ca7385dfc446759f79dcddbe45582394604dd93a0"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.01-9f9ff04/cnctl-x86_64-apple-darwin.tar.gz"
      sha256 "ad28d1e89a44d9b132131a0bb8105e4f7b7ccdfe1873e7a6273b54ba079a5645"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.01-9f9ff04/cnctl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c206061d3e1611f4a674e45d10b6e69981dd345057393f4e731d55138a8a284a"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.01-9f9ff04/cnctl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e44e987a40969b809bfecae6799e11e5fb31ec9380935a8c5626d467de884f0"
    end
  end

  def install
    bin.install "cnctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cnctl --version")
  end
end
