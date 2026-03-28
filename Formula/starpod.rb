class Starpod < Formula
  desc "Personal AI assistant platform"
  homepage "https://starpod.sh"
  license "MIT"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.1.7/starpod-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "cfbb8139eb774b8a9f89e9b5a75dac1f0b7977fcdb6c357e4b43f6e6001cca21"
    else
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.1.7/starpod-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "20c2d978393ee5b0a0fa8800463a5a692ff64e2f66759a8f6d6d89237f1270f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.1.7/starpod-v0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd03d711c7519bd97a91a6483f37f494fa58503f6e9721c98bbc403704b4f959"
    else
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.1.7/starpod-v0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f6ab4090252ef6f3c000fec0d1a2292ec2f6572027671f3c5501ffce011717a1"
    end
  end

  def install
    bin.install "starpod"
  end

  test do
    assert_match "starpod", shell_output("#{bin}/starpod --version")
  end
end
