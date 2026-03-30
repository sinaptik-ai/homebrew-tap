class Starpod < Formula
  desc "Personal AI assistant platform"
  homepage "https://starpod.sh"
  license "MIT"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.3.1/starpod-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "5d6d04140189f4c93430777e976edf4a90d5c7aa4b4bc67645580fbe57c3fb04"
    else
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.3.1/starpod-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "4d65c7223a8908dc7f2786c907a13da9196089a1080b1c6586eb70521012fe3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.3.1/starpod-v0.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2f69d3eb02caa99d7da6b4601ed7573d7bd00b4189f6c359e9b8341e76913555"
    else
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.3.1/starpod-v0.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "84de384b13e7cb30796cbabbe9ba2260636cf936fd317f5af4c055a0f620e67d"
    end
  end

  def install
    bin.install "starpod"
  end

  test do
    assert_match "starpod", shell_output("#{bin}/starpod --version")
  end
end
