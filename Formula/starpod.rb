class Starpod < Formula
  desc "Personal AI assistant platform"
  homepage "https://starpod.sh"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.2.1/starpod-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "1a76567df856f6ba0cda2a1168688eec17572be9e5bd0026b4bd88d65bb19497"
    else
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.2.1/starpod-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "bb6d522a347ee58cf7938085c746c2318d3c15308433f628e50fb0c1a88d27ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.2.1/starpod-v0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5b0e449999c9cb0ca9d8c123e18a668469b2226c0cb5d7608e26e06ce27b5534"
    else
      url "https://github.com/sinaptik-ai/starpod/releases/download/v0.2.1/starpod-v0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cdefd42d042d1f85e21a83724edeee2db3c556dcc6b58040dcced9d770822e7e"
    end
  end

  def install
    bin.install "starpod"
  end

  test do
    assert_match "starpod", shell_output("#{bin}/starpod --version")
  end
end
