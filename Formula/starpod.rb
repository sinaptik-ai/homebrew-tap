class Starpod < Formula
  desc "Personal AI assistant platform"
  homepage "https://starpod.sh"
  license "MIT"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.3.2/starpod-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "523c94e657b4f916b2534defc6d8cb6490fda0e5e713c6bcd0644c1445460921"
    else
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.3.2/starpod-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "933ad97ecbcd4cc4ba14c10729035b424b9a49afdaf8aba98f891f2769883543"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.3.2/starpod-v0.3.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "751f27216f6ced2f5eb819577459d6ea262c11894f00cc68e7183c3184b0d358"
    else
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.3.2/starpod-v0.3.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "246dc119af20d6a07e29c363c83a9d6616eafbfdb51b0d395a311e418c03ebaa"
    end
  end

  def install
    bin.install "starpod"
  end

  test do
    assert_match "starpod", shell_output("#{bin}/starpod --version")
  end
end
