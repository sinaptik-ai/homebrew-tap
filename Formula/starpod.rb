class Starpod < Formula
  desc "Personal AI assistant platform"
  homepage "https://starpod.sh"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.2.0/starpod-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "ffb1f7543c82ac6715f98002dcc78864031cc156f1a1b86309a736f1bb894d48"
    else
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.2.0/starpod-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "1a4bba9cf5ff6b09364fc98a8cc09b9ac7291388b5dc7c0ef335556f4d234e0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.2.0/starpod-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5dde3b9e93d63405ba3cf2e5dcaaeeaac8abb0a7b4bcb1ac36ce565017edbbde"
    else
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.2.0/starpod-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7f959950690173a663a0e0af1bd0484767ac468f00cadfe4cea0a2dcecf43961"
    end
  end

  def install
    bin.install "starpod"
  end

  test do
    assert_match "starpod", shell_output("#{bin}/starpod --version")
  end
end
