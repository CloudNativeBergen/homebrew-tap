class Cnctl < Formula
  desc "Organizer CLI for Cloud Native Days Norway"
  homepage "https://github.com/CloudNativeBergen/cnctl"
  version "2026.06.01-d7bcab4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.01-d7bcab4/cnctl-aarch64-apple-darwin.tar.gz"
      sha256 "9759d75a3944ea36187eb46a3046d31e97bcd1d02f25b2f88c15ec371d865167"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.01-d7bcab4/cnctl-x86_64-apple-darwin.tar.gz"
      sha256 "43f74b076618de1098efa08b03e76f31bdcee8a854af429fdb6cf72e2565d623"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.01-d7bcab4/cnctl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47bdabf1ebb17921e0ff685d10f3a9b39fea2191a18ba0cde9c03120fa41abd1"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.01-d7bcab4/cnctl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26f49f423dc586cd6dafc84530123381aca2c649c245557b07323b1783970212"
    end
  end

  def install
    bin.install "cnctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cnctl --version")
  end
end
