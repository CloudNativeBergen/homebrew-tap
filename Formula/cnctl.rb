class Cnctl < Formula
  desc "Organizer CLI for Cloud Native Days Norway"
  homepage "https://github.com/CloudNativeBergen/cnctl"
  version "2026.06.02-d890d41"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.02-d890d41/cnctl-aarch64-apple-darwin.tar.gz"
      sha256 "289b21f2905b9b9e448a29bd8774498752b6da89cc0939893b1e41ec8d8b4c84"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.02-d890d41/cnctl-x86_64-apple-darwin.tar.gz"
      sha256 "68a026e99cfb0558c100ba2b110e547692a79406458ad79c690295c5405c337c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.02-d890d41/cnctl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89e8946b88054fce519d8dfda3c4ebc38d3a3079706b7c89080af6a1d4332ec2"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.02-d890d41/cnctl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f8cd0b2f6250c377c615f088110a63f9b49942f006322f90ff4ad8ec967cced"
    end
  end

  def install
    bin.install "cnctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cnctl --version")
  end
end
