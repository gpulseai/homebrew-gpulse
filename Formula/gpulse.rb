class Gpulse < Formula
  desc "Real-time GPU monitoring with leak detection and OOM prediction"
  homepage "https://gpulse.ai"
  version "2.2.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gpulseai/gpulse/releases/download/v2.2.0/gpulse-v2.2.0-darwin-arm64.tar.gz"
      sha256 "f33edcde57ed0f4f15a0d158fa6994974ebfbc0e718d505c8a10a0ec13c8f744"
    end
  end

  def install
    bin.install "gpulse"
  end

  test do
    assert_match "gpulse", shell_output("#{bin}/gpulse --version", 0)
  end
end
