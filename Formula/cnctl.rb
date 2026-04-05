class Cnctl < Formula
  desc "Organizer CLI for Cloud Native Days Norway"
  homepage "https://github.com/CloudNativeBergen/cnctl"
  version "2026.04.05-421ebfe"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.05-421ebfe/cnctl-aarch64-apple-darwin.tar.gz"
      sha256 "3b4a7e6df2cb678e8b07c06d086284dac25f9463f85e23bc9e0b8adc89aea191"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.05-421ebfe/cnctl-x86_64-apple-darwin.tar.gz"
      sha256 "aade6530dfb572e501fe41ed5de2a59e41b0753dae924ea33e0f41fc999e0b68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.05-421ebfe/cnctl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "720f0bbb3ebf64ae67802dec121e606574633df6993fd513c4fb45dc5b885165"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.05-421ebfe/cnctl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "734478de7cfe548cb63c60b23725717fffbdb239211ef2c94b701e620c897280"
    end
  end

  def install
    bin.install "cnctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cnctl --version")
  end
end
