class Ccjanus < Formula
  desc "Claude Code PreToolUse Hook for auto-approving bash commands"
  homepage "https://github.com/miya10kei/ccjanus"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/miya10kei/ccjanus/releases/download/v#{version}/ccjanus-x86_64-apple-darwin.tar.gz"
      sha256 "06520128d267cbcf1234f0fffdcf7275a243917c41a44c989cdc3d6b0df4a39b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/miya10kei/ccjanus/releases/download/v#{version}/ccjanus-aarch64-apple-darwin.tar.gz"
      sha256 "bda7f3ceed95331ca0e2938beed274bfd6f09364aeba230cfafd98c8850c3938"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/miya10kei/ccjanus/releases/download/v#{version}/ccjanus-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a087668caf80dae55a5f15cc66c906494608d8c69c2b1ffbfcacd3dcea858c4e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/miya10kei/ccjanus/releases/download/v#{version}/ccjanus-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a985827aae1563750ab3d6e132ad5e4509d9e1c47c80de93321af396b7f58ac"
    end
  end

  def install
    bin.install "ccjanus"
  end

  test do
    assert_match "ccjanus #{version}", shell_output("#{bin}/ccjanus --version")
  end
end
