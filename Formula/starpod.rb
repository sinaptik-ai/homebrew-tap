class Starpod < Formula
  desc "Personal AI assistant platform"
  homepage "https://starpod.sh"
  license "MIT"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.1.7/starpod-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "53ccf27f789a45af79332924ea0ef02b4c10af5d46480f23cd972247df3958c6"
    else
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.1.7/starpod-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "c5a63038ffbb0325233a0dc2418125547273c5b439a38845b156be108398154a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.1.7/starpod-v0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "064d26f3d2bc886811a057708acf86e1172b3e3433bf3fbf4218d77184176626"
    else
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.1.7/starpod-v0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e6066950639e8ba7b59a01396473d3e3bfe1ce37025a11c296723e1db1204c09"
    end
  end

  def install
    bin.install "starpod"
  end

  test do
    assert_match "starpod", shell_output("#{bin}/starpod --version")
  end
end
