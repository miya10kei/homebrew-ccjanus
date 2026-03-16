class Ccjanus < Formula
  desc "Claude Code PreToolUse Hook for auto-approving bash commands"
  homepage "https://github.com/miya10kei/ccjanus"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/miya10kei/ccjanus/releases/download/v#{version}/ccjanus-x86_64-apple-darwin.tar.gz"
      sha256 "2151bb6d49d92c2529f2ad8283521068546269ab986654edec9d95ac53ce9365"
    end
    if Hardware::CPU.arm?
      url "https://github.com/miya10kei/ccjanus/releases/download/v#{version}/ccjanus-aarch64-apple-darwin.tar.gz"
      sha256 "24bc2394aa6e834bd8d7c2c74a9f5256691ba4d965cdc9278f70825028d23bfc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/miya10kei/ccjanus/releases/download/v#{version}/ccjanus-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0bc6a7aa6fc54e41be767670f88c001984ac7faae3125749f2736af886c3d95"
    end
    if Hardware::CPU.arm?
      url "https://github.com/miya10kei/ccjanus/releases/download/v#{version}/ccjanus-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a647d6c11eba05187756a6a20d49b86ab6fcc7573692079653e63535efe272a"
    end
  end

  def install
    bin.install "ccjanus"
  end

  test do
    assert_match "ccjanus #{version}", shell_output("#{bin}/ccjanus --version")
  end
end
