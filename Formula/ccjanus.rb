class Ccjanus < Formula
  desc "Claude Code PreToolUse Hook for auto-approving bash commands"
  homepage "https://github.com/miya10kei/ccjanus"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/miya10kei/ccjanus/releases/download/v#{version}/ccjanus-x86_64-apple-darwin.tar.gz"
      sha256 "42ac0a01633aa8a56008fd1696d8024bc44515689400d30b343a1abee9a3b678"
    end
    if Hardware::CPU.arm?
      url "https://github.com/miya10kei/ccjanus/releases/download/v#{version}/ccjanus-aarch64-apple-darwin.tar.gz"
      sha256 "0ef8f28142ff1cb65d0d88ec4f972aef80ca3986f5b112be9740e78063ebfc74"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/miya10kei/ccjanus/releases/download/v#{version}/ccjanus-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f13b3715b721b16e635a36c07ca17b4f6e97fbf842b040c1dfa0a003620817ca"
    end
    if Hardware::CPU.arm?
      url "https://github.com/miya10kei/ccjanus/releases/download/v#{version}/ccjanus-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0062ca52267ec5ba7e270ed674947079c2e3e21c096cfe26ffa20116591ce2be"
    end
  end

  def install
    bin.install "ccjanus"
  end

  test do
    assert_match "ccjanus #{version}", shell_output("#{bin}/ccjanus --version")
  end
end
