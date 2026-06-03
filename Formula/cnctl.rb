class Cnctl < Formula
  desc "Organizer CLI for Cloud Native Days Norway"
  homepage "https://github.com/CloudNativeBergen/cnctl"
  version "2026.06.03-5f845af"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.03-5f845af/cnctl-aarch64-apple-darwin.tar.gz"
      sha256 "9e20adbbf02c25c5d0a815569c2edf849805cc9a2652302e17a7e22b4dc3430e"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.03-5f845af/cnctl-x86_64-apple-darwin.tar.gz"
      sha256 "665a8ab55f08bd6262c7516ccba61937768af052ea0ca927710b06ce82ac6e58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.03-5f845af/cnctl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1c2309f546d4cee6c0a9bf7767d20cd7c1fc8ead3a0dea7ad210def1e78da7ef"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.03-5f845af/cnctl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e71836733baaf9f218d21d6d06f76c62618f5ed8d3f80ebed149ac38accb1a6"
    end
  end

  def install
    bin.install "cnctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cnctl --version")
  end
end
