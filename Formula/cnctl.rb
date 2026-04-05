class Cnctl < Formula
  desc "Organizer CLI for Cloud Native Days Norway"
  homepage "https://github.com/CloudNativeBergen/cnctl"
  version "2026.04.05-93d8f13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.05-93d8f13/cnctl-aarch64-apple-darwin.tar.gz"
      sha256 "f3a8386884eb04d1368ab12fb55cd3fc1d39a24e400bc95d108ca364da32a46e"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.05-93d8f13/cnctl-x86_64-apple-darwin.tar.gz"
      sha256 "cc411c0ee3a145478f7923de9ba2ae8dc47a0d37f2169e45ac93d87d0aae4419"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.05-93d8f13/cnctl-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4f5e312374b7a8ee48fdb4fa2beafdd36185508d15dd93622e5efcaca78e205e"
    else
      url "https://github.com/CloudNativeBergen/cnctl/releases/download/2026.04.05-93d8f13/cnctl-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "39f8105a2507abaaf7e9e61b402e91d8eed20b7442fd31c5170e85b1f6ec1fd4"
    end
  end

  def install
    bin.install "cnctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cnctl --version")
  end
end
