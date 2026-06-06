class Cnctl < Formula
  desc "Organizer CLI for Cloud Native Days Norway"
  homepage "https://github.com/CloudNativeBergen/cnctl"
  version "2026.06.06-a53e54e"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.06-a53e54e/cnctl-aarch64-apple-darwin.tar.gz"
      sha256 "b3ee4d7b224badf384ff458a7f318743ff2a9b600805ec64b6b4617ab7457853"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.06-a53e54e/cnctl-x86_64-apple-darwin.tar.gz"
      sha256 "03bd6139a59d8647379d856dcc79e843be2d55426e4efcdd65bf428fd97c7058"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.06-a53e54e/cnctl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2b5a7e3dec027afbabd8d9fb10a5366dfb00c5a884eb575afd163697a0d30db9"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.06.06-a53e54e/cnctl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1bfd19dd2ffab7718a0153b6051a8e9297ff0c9d49e748ee6ef7e3c504cbef42"
    end
  end

  def install
    bin.install "cnctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cnctl --version")
  end
end
